var express = require('express');
var async = require('async');
var router = express.Router();

function getMyToons(id,cb){
    //id 값을 가진 user가 저장한 웹툰들 가져오기
    var sqlquery = "SELECT  t.toon_index, t.name, t.thum_link, t.webtoon_link, t.week, t.site FROM user u, user_toon_relation ur, toon t WHERE u.id = '"+id+"' && u.id=ur.user_id && t.toon_index=ur.toon_index;";
    var mylist = new Array();
    connection.query(sqlquery,id,function(err,rows,result){
        if(!err){
            mylist=rows;
            cb(mylist);
            console.log(mylist);
        }else{
            console.log("내 웹툰 리스트 가져오는데 실패했습니다!");
            //throw err;
        }
    });
}

/* GET home page. */
router.get('/', function(req, res, next) {
    if(!req.isAuthenticated()){
        res.redirect('/');
    }else{
        async.series(
            [
                function(callback){
                    getMyToons(req.user.user_id, function (mytoon_list) {
                        callback(null,mytoon_list);
                    });
                }
            ],
            function(err, results){
                res.render('mytoons', {
                    mytoons: results[0]
                });
            }
        );
    }
});

module.exports = router;
