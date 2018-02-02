<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.cetc28.util.Web_srcUtil" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <style type="text/css">
        body,html,#container{
            height: 100%;
            margin: 0px;
            font-size: 12px;
        }
        .panel {
            color: #333;
            padding: 6px;
            border: 1px solid silver;
            box-shadow: 3px 4px 3px 0px silver;
            position: absolute;
            background-color: #eee;
            top: 10px;
            right: 10px;
            border-radius: 5px;
            overflow: hidden;
            line-height: 20px;
        }
        #input{
            width: 250px;
            height: 25px;
        }
    </style>
    <title>地理编码</title>

</head>
<body>
<div id="container" tabindex="0"></div>
<div class ='panel'>
    输入地址显示位置:<button onclick="add()"></button>
</div>
<script type="text/javascript" src="myjs/jquery-2.1.4.js"></script>
<script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.1&key=966008e8aaafb827acaa2f1bea731a60"></script>
<script type="text/javascript">
    var jwd=[];
    var school=[];
    $(function() {
        //加载高德地图
        var map = new AMap.Map('container', {
            resizeEnable: true,
            zoom: 13,
            center: [116.39, 39.9]
        });


               /* AMap.plugin('AMap.Geocoder',function(){
                var geocoder = new AMap.Geocoder({
                    city: "嘉兴"//城市，默认：“全国”
                });
                var marker = new AMap.Marker({
                    map:map,
                    bubble:true
                })
                geocoder.getLocation('富通住电光纤（嘉兴）有限公司',function(status,result){
                        if(status=='complete'&&result.geocodes.length>0){
                            if(result.geocodes[0].location.lng==null){
                                jwd.push(0);
                            }else {
                                jwd.push(result.geocodes[0].location.lng);
                            }
                            console.log(result.geocodes[0].location.lng+"  "+result.geocodes[0].location.lat);
                jwd.push(result.geocodes[0].location.lat);
                marker.setPosition(result.geocodes[0].location);
                map.setCenter(marker.getPosition())
            }else{

                }
            })
        });*/

            var state = false;
            //获取待检索的数据
            $.ajax({
                url: 'findLocation.do',
                type: 'post',
                async: false,
                dataType: 'json',
                success: function (data) {
//                    遍历企业地址
                    for (var z = 0; z < data.length; z++) {
                        AMap.plugin('AMap.Geocoder', function () {
                            var geocoder = new AMap.Geocoder({
                                city: "嘉兴"//城市，默认：“全国”
                            });
                            var marker = new AMap.Marker({
                                map: map,
                                bubble: true
                            })
                            var address = data[z];
                            console.log(data[z]);
                            geocoder.getLocation(address, function (status, result) {
                                if (status == 'complete'
                                    && result.geocodes.length > 0
                                    && result.geocodes[0].location.lng != null
                                    && result.geocodes[0].location.lat != null) {
                                    console.log("success")
                                    jwd.push(result.geocodes[0].location.lng + "," + result.geocodes[0].location.lat);
                                    school.push(address);
                                    marker.setPosition(result.geocodes[0].location);
                                    map.setCenter(marker.getPosition())
                                }
                            })
                        });
                    }
                }
            })
    })

    function add() {
        $.ajax({
            url: 'add.do',
            type: 'post',
            data: {
                jwd: jwd,
                address: school
            },
            success: function (data) {

            }
        })
    }

</script>
<script type="text/javascript" src="https://webapi.amap.com/demos/js/liteToolbar.js"></script>

</body>
</html>