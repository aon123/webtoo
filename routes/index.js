var express  = require('express');
var cheerio  = require('cheerio');
var request  = require('request');
var mysql    = require('mysql');
var client   = require('cheerio-httpcli');
var passport = require('passport');
var KakaoStrategy = require('passport-kakao').Strategy;
var NaverStrategy = require('passport-naver').Strategy;
var GoogleStrategy = require('passport-google-oauth').OAuth2Strategy;
var router   = express.Router();

// 설명
var kakaoKey = {
  clientID    : '5634a5f8ca5c9a5eb378d6b6e6e869a0',
  callbackURL : '/auth/login/kakao/callback'
};

//
var naverKey = {
  clientID     : 'OHmCrpQuVFnIEB4GkmF_',
  callbackURL  : '/auth/login/naver/callback',
  clientSecret : 'BBgcRdnj0M'
};

//
var googleKey = {
  clientID     : '924802195853-ir977i2ohnddaaninlqlbeg6sov629hq.apps.googleusercontent.com',
  callbackURL  : '/auth/login/google/callback',
  clientSecret : 'NaWeoJouUzYq4VfBesTkdUfA'
};

//
passport.use(new KakaoStrategy(kakaoKey,
  function(accessToken, refreshToken,params, profile, done) {
    console.log(profile);
    loginByThirdparty({
      'auth_type' : 'kakao',
      'auth_id'   : profile._json.id,
      'auth_name' : profile._json.properties.nickname
    }, done);
  }
));

//
passport.use(new NaverStrategy(naverKey,
  function (accessToken, refreshToken, profile, done) {
    console.log(profile);
    loginByThirdparty({
      'auth_type': 'naver',
      'auth_id': profile._json.id,
      'auth_name': profile._json.nickName
    }, done);
  }
));

//
passport.use(new GoogleStrategy(googleKey,
  function (accessToken, refreshToken, profile, done) {
   console.log(profile);
   loginByThirdparty({
     'auth_type': 'naver',
     'auth_id': profile._json.sub,
     'auth_name': profile._json.email
   }, done);
  }
));

// kakao 로그인, 로그인 콜백
router.get('/auth/login/kakao', passport.authenticate('kakao'));
router.get('/auth/login/kakao/callback', passport.authenticate('kakao', {
    successRedirect: '/mytoons',
    failureRedirect: '/'
    })
);

// naver 로그인
router.get('/auth/login/naver', passport.authenticate('naver'));
router.get('/auth/login/naver/callback',
  passport.authenticate('naver', {
    successRedirect: '/mytoons',
    failureRedirect: '/'
  })
);

// facebook 로그인, 로그인 콜백
router.get('/auth/login/google', passport.authenticate('google', { scope: ['email profile'] }));
router.get('/auth/login/google/callback', passport.authenticate('google', {
    successRedirect: '/mytoons',
    failureRedirect: '/'
  })
);

// 설명
function loginByThirdparty(info, done) {
  var stmt_duplicated = "select *from `user` where id = id";
  //'select *from `user` where `id` = ?
  //"INSERT INTO `user` (id) VALUES (?) ON DUPLICATE KEY UPDATE id=id"
  connection.query(stmt_duplicated, info.auth_id, function (err, result) {
    if (err) {
      return done(err);
    } else {
      if (result.length === 0) {
        // 신규 유저는 회원 가입 이후 로그인 처리
        var stmt_thridparty_signup = 'insert into `user` set `user_id`= ?, `nickname`= ?';
        //
        connection.query(stmt_thridparty_signup, [info.auth_id, info.auth_name], function (err, result) {
          if(err){
            return done(err);
          } else {
            done(null, {
              'user_id': info.auth_id,
              'nickname': info.auth_name
            });
          }
        });
      } else {
        //기존유저 로그인 처리
        console.log('Old User');
        done(null, {
          'user_id': info.auth_id,
          'nickname': info.auth_name
        });
      }
    }
  });
}

// 라우터 설정, 카카오
router.get('/auth/logout/kakao',function (req,res) {
    req.logout();
    res.redirect('/');
})

// 라우터 설정, 페이스북
router.get('/auth/logout/naver',function (req,res) {
    req.logout();
    res.redirect('/');
})

// 라우터 설정, 구글
router.get('/auth/logout/google',function (req,res) {
    req.logout();
    res.redirect('/');
})

//
function getLatestToon(titleid, day ,cb) {

}

function getDaumToons(_day){
  // X요일 다음 웹툰
  var day = _day;
  var day_name = day;
  var daum = `http://webtoon.daum.net/data/pc/webtoon/list_serialized/${day}?timeStamp=1515819276574`;
  var site = 'daum';

  client.fetch(daum, {}, function (err, $, res, body) {

      var data = JSON.parse(body);
      var list = data["data"];

      list.forEach(function (item, idx) {

          var webtoon_link = 'http://webtoon.daum.net/webtoon/view/' + item.nickname.toString();
          var webtoon = {
              toon_index   : item.id,
              name         : item.title,
              thum_link    : item.pcThumbnailImage.url,
              webtoon_link : webtoon_link,
              week         : day_name,
              site         : site,
              latest       : 0
          };

      allWebtoonList.push(webtoon);
      });
  });
}

//
function getNaverToons(){
  var allWeeklyToonsUrl = "http://comic.naver.com/webtoon/weekday.nhn";
  request(allWeeklyToonsUrl,function (err, res, html) {
      if(!err){
          var $ = cheerio.load(html);
          var p = Promise.resolve();
          var eachs = $(".thumb").each(function (i) {
              var week = $(this).parent().parent().prev().attr('class');
              var webtoon_link = "http://comic.naver.com" + $(this).children().first().attr('href');
              var thumb_link = $(this).children().first().children().first().attr('src');
              var name = $(this).next().text();
              var titleid = webtoon_link.split('?')[1].split('&')[0].split('=')[1];
              var site = 'naver';
              var webtoon= {
                  toon_index: titleid,
                  name : name,
                  thum_link : thumb_link,
                  webtoon_link : webtoon_link,
                  week : week,
                  site : site,
                  latest : 0
              };
              allWebtoonList.push(webtoon);
          });

          p.then(function() {
              i = 0;
              allWebtoonList.forEach(function (webtoon) {
                  var sql= "INSERT INTO `toon` (toon_index, name, thum_link, webtoon_link, week, site, latest) VALUES(?) ON DUPLICATE KEY UPDATE latest=latest";
                  var values=[webtoon.toon_index, webtoon.name, webtoon.thum_link, webtoon.webtoon_link,webtoon.week, webtoon.site, webtoon.latest];

                  connection.query(sql,[values],function(err,result){
                      if (err) {
                          console.log("웹툰 DB 에러 : " + err);
                      } else {
                          console.log("웹툰 DB처리 완료!");
                      }
                  });
              })
          });
      }
  });
}

// 구현중
function getTomicsToons(){

}

// 설명
allWebtoons = new Array();

// 설명
function getAllToons() {

    allWebtoonList = new Array();

    //월요일 다음 웹툰
    getDaumToons('mon');
    //화요일 다음 웹툰
    getDaumToons('tue');
    //수요일 다음 웹툰
    getDaumToons('wed');
    //목요일 다음 웹툰
    getDaumToons('thu');
    //금요일 다음 웹툰
    getDaumToons('fri');
    //토요일 다음 웹툰
    getDaumToons('sat');
    //일요일 다음 웹툰
    getDaumToons('sun');
    //네이버 웹툰
    getNaverToons();
    //투믹스 웹툰
    getTomicsToons();

    allWebtoons = allWebtoonList;
};

//처음 한번 수행
getAllToons();

//5분에 한번 수행
setInterval(getAllToons, 5*60*1000);

/* GET home page. */
router.get('/', function(req,res,next) {

    if(req.isAuthenticated()) {
        res.redirect('/mytoons');
        console.log("(!)Already logined");
    } else {
        console.log("(!)로그인세션 없음");
        res.render('index',{
            title: "니툰내툰",
            list: allWebtoons
        });
    }
});

module.exports = router;
