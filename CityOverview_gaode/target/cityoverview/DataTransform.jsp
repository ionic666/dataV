<%--
  Created by IntelliJ IDEA.
  User: linyu
  Date: 2017/11/19
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<head>
    <title>GCJ-02地图纠偏</title>
</head>
<body>
<h1>写入JSON文件：<span id="result"></span></h1>
<script src="myjs/index.js"></script>
<script type="text/javascript" src="myjs/jquery-2.1.4.js"></script>
<script type="text/javascript" src="myjs/toastr.min.js"></script>
<script type="text/javascript" src="myjs/jquery.cookie.js"></script>
<script type="text/javascript" src="map/js/bootstrap.js"></script>
<script>
    $.ajax({    //所有小学学区绘制
        type: 'post',
        url: "jsonData/juniorRings.json",
        dataType: 'JSON',
        success: function (data) {
            var result = data;
            var arr=data.features;
            var len=arr.length;
            for(var i=0;i<len;i++){
                var ringlen = arr[i].geometry.rings.length;
                for(var k=0;k<ringlen;k++){
                    var len2 = arr[i].geometry.rings[k].length;
                    for(var j=0; j<len2; j++){
                        var lonlat = wgs84togcj02(arr[i].geometry.rings[k][j][0],arr[i].geometry.rings[k][j][1]);
                        result.features[i].geometry.rings[k][j][0] = lonlat[0];
                        result.features[i].geometry.rings[k][j][1] = lonlat[1];
                    }

                }
            }
            $.ajax({    //所有小学学区绘制
                type: 'post',
                url: "jsonwrite/jsonWrite.do",
                dataType: 'JSON',
                data:{filePath:"D:\\project\\CityOverview_gaode\\src\\main\\webapp\\jsonData\\juniorRings_forGIS.json",sets:JSON.stringify(result)},
                success:function(data){
                    if(data=="success"){
                        $("#result").html("成功");
                    }else{
                        $("#result").html("失败");
                    }
                }

            })

        }
    })


</script>
</body>
</html>
