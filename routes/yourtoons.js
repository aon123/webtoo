var express = require('express');
var async = require('async');
var router = express.Router();

//
function getYourToons(id,cb){
    //현재 로그인한 유저가 아닌 다른 유저들의 내툰리스트 가져오기
    var sqlquery = "SELECT  u.id, t.toon_index, t.name, t.thum_link, t.webtoon_link, t.week, t.site FROM user u, user_toon_relation ur, toon t WHERE u.id != '"+id+"' && u.id=ur.user_id && t.toon_index=ur.toon_index;";
    var yourlist = new Array();
    connection.query(sqlquery,id,function(err,rows,result){
        if(!err){
            yourlist=rows;
            cb(yourlist);
            console.log(yourlist);
        }else{
            console.log("니툰 리스트 가져오는데 실패했습니다!");
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
                    getYourToons(req.user.user_id, function (yourtoon_list) {
                        callback(null,yourtoon_list);
                    });
                }
            ],
            function(err, results){
                res.render('yourtoons', {
                    yourtoons: results[0]
                });
            }
        );
    }
});

module.exports = router;
