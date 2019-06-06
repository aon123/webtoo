/*
bin - 이 폴더 안에는 www.js 파일이 잇으며 www.js는 http 서버를 구동시키는 로직이 들어있다.

node_modules - 모듈들이 설치되는 공간

public - http 서버의 root 폴더고 stylesheets나 images 같은 데이터를 저장할 때 사용한다.

routes - 라우팅을 해주는 역할, 주소를 입력했을 때 어디로 연결해 줄지 결정해주는 javaScript 파일들을 모아놓는 곳입니다.

views - 웹 브라우져에 보여질 디자인을 작성하는 곳이다
*/

// http웹 서버 구조를 쉽게 만들 수 있도록 도와주는 프레임워크
var express = require('express');
var session = require('express-session');

// 폴더와 파일의 경로를 쉽게 조작하도록 도와주는 모듈, https://horajjan.blog.me/221337515650
var path = require('path');

// favorites icon의 약자로 웹페이지나 웹사이트를 대표하는 아이콘
var favicon = require('serve-favicon');

// 웹 요청에 대해 로그를 출력하는 미들웨어, 외부 모듈이기 때문에 별도로 설치해서 사용
var logger = require('morgan');

// 쿠키를 제어하는 모듈
var cookieParser = require('cookie-parser');

// post 요청 데이터를 추출하는 미들웨어
var bodyParser = require('body-parser');

// mysql과 연동을 위한 모듈
var mysql = require('mysql');

// JQuery를 서버사이드에 맞게 수정한 것
var cheerio = require('cheerio');

// 웹페이지 크롤링과 파씽을 위한 HTTP 클라이언트 라이브러리
var request = require('request');

// 로그인, 인증관련 미들웨어
var passport = require('passport');

var index = require('./routes/index');
var users = require('./routes/users');
var mytoons = require('./routes/mytoons');
var yourtoons =require('./routes/yourtoons');
var setting = require('./routes/setting');

// 최초 로그인 성공시 (Strategy 성공시) 단 한번만 호출
passport.serializeUser(function(user, done) {
    console.log('serialized');
    done(null, user);
});

// 페이지 리로드마다 (서버로 들어오는 requset) 로그인한 사용자인지 조회
passport.deserializeUser(function(user, done) {
    console.log('deserialized');
    done(null, user);
});

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

// uncomment after placing your favicon in /public
// app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

// mysql properties
connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    port     : 3306,
    database : 'ytmt'
});

//
app.use(session({
    secret: 'secrettexthere',
    saveUninitialized: true,
    resave: true
}));

//app.use(express.static('views'));
app.use(passport.initialize());
app.use(passport.session());
app.use('/', index);
app.use('/users', users);
app.use('/mytoons', mytoons);
app.use('/setting', setting);
app.use('/yourtoons', yourtoons);

// catch 404 and forward to error handler, for wrong page
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

//
var server = app.listen(3000);
module.exports = app;
