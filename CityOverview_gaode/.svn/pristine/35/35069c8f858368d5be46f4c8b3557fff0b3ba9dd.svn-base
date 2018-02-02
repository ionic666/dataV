<%--
  Copyright(C):中国电子科技集团公司第二十八研究所民品部
  项目名称：CityOverview 
  设计人员：LiuDefeng
  创建日期：2017/9/14 10:28
  描述信息：城市生命线后台测试类
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="application/javascript" src="map/js/jquery-1.11.3.js"></script>
<html>
<head>
    <title></title>
    <style>
        body{
            background-color: #000000;
        }
        .header{
            float:inherit;
            width:55%;
            height:6%;
            margin:0 auto;
            background-image:url(images/logo.png);
            background-size:100% 100%;
            background-repeat:no-repeat;
            position:relative;
            z-index:1;
            top:2%;
        }
    </style>
</head>
<body>
<div class="header">
    <%--asds--%>
</div>
<script type="application/javascript">
  $(function(){
      $.ajax({
          url:"jxutility/water/waterSupplyByBh.do",
          type:"post",
          data:{
              "bH":'003001'
          },
          dataType:"json",
          success:function(msg){
          }
      })

      $.ajax({
          url:"jxutility/fault/faultLastMonthDate.do",
          type:"post",
          data:{
          },
          dataType:"json",
          success:function(msg){
          }
      })

      $.ajax({
        url:"jxutility/water/waterSupplyBySjbh.do",
        type:"post",
        data:{
            "sJBH":'003001'
        },
        dataType:"json",
        success:function(msg){
        }
      })

    $.ajax({
      url:"jxutility/water/tapWaterStsRateBySjbh.do",
      type:"post",
      data:{
          "monthSize":4,
          "sJBH":'003001'
      },
      dataType:"json",
      success:function(msg){
      }
    })

      $.ajax({
          url:"jxutility/water/tapWaterStsRateByBh.do",
          type:"post",
          data:{
              "monthSize":4,
              "bH":'003001'

          },
          dataType:"json",
          success:function(msg){
          }
      })

      $.ajax({
          url:"jxutility/drainage/waterDischargeByBh.do",
          type:"post",
          data:{
              "bH":'003001'
          },
          dataType:"json",
          success:function(msg){
          }
      })

    $.ajax({
      url:"jxutility/drainage/waterDischargeBySjbh.do",
      type:"post",
      data:{
             "sJBH":'003001'
      },
      dataType:"json",
      success:function(msg){
      }
    })

    $.ajax({
      url:"jxutility/elec/elecSupply.do",
      type:"post",
      data:{
        "bH":'003001'
      },
      dataType:"json",
      success:function(msg){
      }
    })

    $.ajax({
      url:"jxutility/elec/elecPowerLoadingRate.do",
      type:"post",
      data:{
        "monthSize":4,
        "bH":'003001'
      },
      dataType:"json",
      success:function(msg){
      }
    })

   $.ajax({
    url:"jxutility/gas/gasSupply.do",
    type:"post",
    data:{
      "bH":'003001'
    },
    dataType:"json",
    success:function(msg){
    }
   })

   $.ajax({
    url:"jxutility/gas/gasStsRate.do",
    type:"post",
    data:{
      "monthSize":4,
      "bH":'003001'
    },
    dataType:"json",
    success:function(msg){
    }
   })

    $.ajax({
      url:"jxutility/heat/heatSupply.do",
      type:"post",
      data:{
        "bH":'003001'
      },
      dataType:"json",
      success:function(msg){
      }
    })

    $.ajax({
      url:"jxutility/mantenance/manteCount.do",
      type:"post",
      data:{
        "bH":'003001'
      },
      dataType:"json",
      success:function(msg){
      }
    })

    $.ajax({
      url:"jxutility/utilitynet/netInfo.do",
      type:"post",
      data:{
        "yearSize":4,
        "bH":'003001'
      },
      dataType:"json",
      success:function(msg){
      }
    })

    $.ajax({
      url:"jxutility/utilitynet/pipeCoverRate.do",
      type:"post",
      data:{
        "yearSize":4,
        "bH":'003001'
      },
      dataType:"json",
      success:function(msg){
      }
    })

      $.ajax({
          url:"jxutility/internet/internetCoverRate.do",
          type:"post",
          data:{
              "yearSize":4,
              "bH":'003001'
          },
          dataType:"json",
          success:function(msg){
          }
      })

      $.ajax({
          url:"jxutility/distinct/distinctOverview.do",
          type:"post",
          data:{
              "bH":'003001'
          },
          dataType:"json",
          success:function(msg){
          }
      })

      $.ajax({
          url:"jxutility/fault/faultPointAll.do",
          type:"post",
          data:{
          },
          dataType:"json",
          success:function(msg){
          }
      })

     /* $.ajax({
          url:"jxutility/fault/faultListByUtility.do",
          type:"post",
          data:{
              "utilityTypeDes" :"供水管网",
              "orderDes" :"02",
              "dateBegin" :"2017-08-01",
              "dateEnd" :"2017-09-30",
              "faultState" :"FS001",
          },
          dataType:"json",
          success:function(msg){
          }
      })*/

      $.ajax({
          url:"jxutility/fault/findFault.do",
          type:"post",
          data:{
              "utilityTypeDes" :"供水管网",
              "dateBegin" :"2017-08-01",
              "dateEnd" :"2017-09-30",
              "faultStateDes" :"已处理",
              "order" :"rank"
          },
          dataType:"json",
          success:function(msg){
          }
      })

      /*$.ajax({
          url:"jxutility/fault/faultPointByUtility.do",
          type:"post",
          data:{
              "utilityTypeDes" :"供水管网",
              "dateBegin" :"2017-08-01",
              "dateEnd" :"2017-09-30",
              "faultState" :"FS001",
          },
          dataType:"json",
          success:function(msg){
          }
      })*/

      $.ajax({
          url:"jxutility/fault/faultNoByUtility.do",
          type:"post",
          data:{
          },
          dataType:"json",
          success:function(msg){
          }
      })

      $.ajax({
          url:"jxutility/fault/findFault.do",
          type:"post",
          data:{
              utilityTypeDes:"供水管网",
              dateBegin:"2017-07-01",
              dateEnd:"2017-07-18",
              faultStateDes:"未处理",
              order:"rank"
          },
          dataType:"json",
          success:function(msg){
          }
      })

      $.ajax({
          url:"jxutility/fault/faultTendency.do",
          type:"post",
          data:{
              "monthSize":4
          },
          dataType:"json",
          success:function(msg){
          }
      })

      $.ajax({
          url:"jxutility/alarm/alarmPointAll.do",
          type:"post",
          data:{
          },
          dataType:"json",
          success:function(msg){
          }
      })

      $.ajax({
          url:"jxutility/device/deviceState.do",
          type:"post",
          data:{
          },
          dataType:"json",
          success:function(msg){
          }
      })




  })

</script>
</body>
</html>
