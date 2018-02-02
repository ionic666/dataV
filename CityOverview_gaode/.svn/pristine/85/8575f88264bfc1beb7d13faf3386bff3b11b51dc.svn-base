<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.cetc28.util.Web_srcUtil" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=7" />
	<title>嘉兴城市运行全景图子系统</title>
	<link rel="stylesheet" type="text/css" href="map/css/mycss/hdt.css"/>
	<link rel="stylesheet" type="text/css" href="myCss/toolsInclude.css"/>
	<link rel="stylesheet" type="text/css" href="map/css/bootstrap.css"/>
	<%--<link rel="stylesheet" type="text/css" href="myCss/indexAndMain.css"/>--%>
	<link rel="stylesheet" type="text/css" href="myCss/include.css"/>
	<link rel="stylesheet" type="text/css" href="myCss/dataStatistics1.css"/>
	<link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>

	<script src="myjs/jedate.min.js"></script>
	<style type="text/css">
		*{
			box-sizing: border-box;
		}
		html,.tundra{
			padding:0;
			margin:0;
			width:100%;
			height:100%;
		}
		body{
			position: relative;
		}
		li{
			list-style: none;
		}

		.tools{
			position: relative;
			top: 4px;
		}
		.openToos{
			width:83px;
			height:30px;
		}
		.openToos img{
			width:100%;
			height:100%;
		}

		.pageReturn{
			height: 30px;
			position: absolute;
			right: 8px;
			top:19px;
			z-index: 666;
			display: block;
			cursor : pointer;
		}
		.pageReturn a{
			display:inline-block;
			width: 30px;
			height:30px;
			background:url('images/return.png') no-repeat center;
			background-size: 100% 100%;
		}
		.tooltip>div.tooltip-inner{
			background-color: rgba(0,0,0,0.8);
			width: 80px;
		}
		.tooltip.in{
			background-color: transparent;
			border: 0px;
		}

		.tooltip-arrow {
			display: none;
		}


		.main{
			background-color:rgba(0,40,45,0.75);
			/*background-size: 100% 100%;*/
			width:83px;height:0px;
			overflow: hidden;

		}
		.main>div span{
			font-size: 12px;
			height: 30px;
			line-height: 30px;
			display: block;
			color:rgb(16,169,190)
		}
		.main>div{height:32px;line-height: 32px;border-bottom: 1px solid #dadada}

		.ico{width:18px;height:18px;float: left;background-repeat: no-repeat;margin-left: 10px;margin-top: 8px;margin-right: 12px}
		.ico_1{background-image: url(images/tools/8-.png);background-size: 100%,100%;background-repeat: no-repeat;}
		.ico_1_1{background-image: url(images/tools/8.png);background-size: 100%,100%;background-repeat: no-repeat;}
		.ico_2{background-image: url(images/tools/3.png);background-size: 100%,100%;background-repeat: no-repeat;}
		.ico_2_2{background-image: url(images/tools/3-.png);background-size: 100%,100%;background-repeat: no-repeat;}
		.ico_3{background-image: url(images/tools/4.png);background-size: 100%,100%;background-repeat: no-repeat;}
		.ico_3_3{background-image: url(images/tools/4-.png);background-size: 100%,100%;background-repeat: no-repeat;}
		.ico_4{background-image: url(images/tools/5.png);background-size: 100%,100%;background-repeat: no-repeat;}
		.ico_4_4{background-image: url(images/tools/5-.png);background-size: 100%,100%;background-repeat: no-repeat;}
		.ico_5{background-image: url(images/tools/6.png);background-size: 100%,100%;background-repeat: no-repeat;}
		.ico_5_5{background-image: url(images/tools/6-.png);background-size: 100%,100%;background-repeat: no-repeat;}
		.ico_6_6{background-image: url(images/tools/7.png);background-size: 100%,100%;background-repeat: no-repeat;}
		.ico_6{background-image: url(images/tools/7-.png);background-size: 100%,100%;background-repeat: no-repeat;}
		.ico_7{background-image: url(images/tools/9.png);background-size: 100%,100%;background-repeat: no-repeat;}
		.ico_7_7{background-image: url(images/tools/9-.png);background-size: 100%,100%;background-repeat: no-repeat;}

		#toolsGather ul,#toolsGather>div{
			display: inline-block;
		}
		#toolsGather ul{
			margin-right:20px ;
		}
		#toolsGather ul,#toolsGather ul li{
			float:left;
		}
		#toolsGather ul li{
			margin:-12px 0px;
			padding: 5px 20px;
			background-image:url("images/listTitle.png");
			background-size: 100% 100%;
			color:rgb(21,203,227);
			cursor: pointer;
		}
		#toolsGather ul li.active {
			background-image: url("images/listTitleActive.png");
			background-size: 100% 100%;
			font-size: 20px;
			color: rgb(2, 14, 16)
		}

		#changeImg{
			position: absolute;
			right:70px;
			bottom:15px;
			z-index:200;
			/*border:1px solid red;*/
			width:120px;
			height:87px;
		}

		#changeImg img{
			width:120px;
			height:87px;
		}
		#changeImgFirst{
			position: absolute;
			top:0px;
			right:0px;
			z-index:100
		}
		#changeImgseSecond{
			position: absolute;
			top:0px;
			right:0px;
			z-index:200
		}
		#changeImgseThirdly{
			position: absolute;
			top:0px;
			right:0px;
			z-index:300
		}
		#bigLogo{
			position: absolute;
		}
		#bigLogo #cetc{
			float: left;
			width: 190px;
		}
		#bigLogo #logo{
			float: left;
			/*width: 250px;*/
			width: 100%;
		}

		#bigLogo{
			/*width:510px;*/
			position: absolute;
			left:0px;
			top:0px;
			/*height:20px;*/
			width: 22%;
			height:9%;
			border-left: 0.3em solid #0CDAF5;
			padding-left: 0.4em;
			margin-left: 1em;
			z-index:66;
		}
		div#right{
			float: left;
			/*width: 250px;*/
			width: 100%;
			height: 100%;
			padding-top: 10px;
			padding-left: 10px;
		}
		.timer{
			position: absolute;
			height: 30px;
			line-height: 30px;
			/*width: 250px;*/
			width: 100%;
			background-color: #0CDAF5;
			color: #02282D;
			margin-top: 1em;
			padding-left: 10px;
			top: 35px;
			z-index: 77;
			font-size: 1.2em;
		}

		#map_zoom_slider{
			display: none;
		}
		.modal-backdrop.in{
			display:none ;
		}
		.esriPopupWrapper{
			border-radius: 0;
			border:2px solid #4C96C5;
			background-color: #244C66;
			margin: 0;
			padding: 0;
			box-sizing: border-box;
		}
		.esriPopup .titlePane{
			background-color: #245273;
			padding-left: 10px;
			border-radius: 0;
		}
		.esriPopup .title{
			color: #3EA7F8;
		}
		.esriPopup .contentPane{
			background-color: #244C66;
			margin: 0;
			padding: 10px 5px 0 10px;
		}
		.esriPopup .actionsPane{
			padding: 0;
		}
		.mapDetails{
			color: #fff;
			background-color: #244C66;
		}
		.mapDetails p{
			margin: 0;
			padding: 0;
			padding-bottom: 5px;
			border-bottom: 1px dotted #3A79A5;
		}
		.mapDetails p:last-child{
			border-bottom: 0;
		}
		.mapDetails p span{
			color: #0CDAF5;
			margin-left: 5px;
		}
		/*.mapDetails p span.jcz{*/
			/*color: red;*/
		/*}*/
		.esriPopup .titleButton.maximize{
			display: none;
		}
		.esriPopup .outerPointer.left{
			background-color: #244C66;
			border:2px solid #4C96C5;
			left: 9px;
		}
		ul.threeChange{
			position: absolute;
			right: 10%;
			top:2%;
			display: none;
			z-index: 9999;
		}
		ul.threeChange li{
			text-align: center;
			padding: 5px 15px;
			width: 122px;
			line-height: 20px;
			background-image:url("images/threeBG.png");
			background-size: 100% 100%;
			color:rgb(21,203,227);
			cursor: pointer;
			float: left;
		}
		ul.threeChange li.active {
			background-image: url("images/threeBGHover.png");
			width: 122px;
			background-size: 100% 100%;
			font-size: 18px;
			color: rgb(2, 14, 16)
		}
		#coverageWindow .modal-dialog{
			width:100%;
			height: 390px;
		}
		#coverageWindow .modal-content{
			height: 92%;
			width: 100%;
			padding: 0;
			/*background: url("map/images/economicModel/bgw(1).png") no-repeat;
			background-position: -7px 0;
			background-size: 102% 101%;*/
		}
		#coverageWindow .modal-header{
			background-color: #06383F;
			border-bottom: 0;
			width: 100%;
			height: 12%;
			margin: 0;
			padding: 10px 20px;
		}
		#coverageWindow .modal-header img{
			top:11px;
		}
		#coverageWindow .modal-title{
			margin-top: -5px;
		}
		#coverageWindow .modal-body{
			padding: 0px;
			width: 100%;
			height: 100%;
		}
		ul.coverageChoose{
			height: 100%;
			width: 30%;
		}
		ul.coverageChoose li{
			float: left;
			width: 50%;
			cursor: pointer;
			text-align: center;
			font-size: 14px;
		}
		ul.coverageChoose li{
			color: #2282e4;
		}
		ul.coverageChoose li.active{
			color: #ec7603;
		}
		#warnListTable{
			color: #000000;
		}
		.menu-text{
			padding-left: 0px;
		}
		/*提示信息弹出框样式*/
		#myModal22 .modal-dialog{
			width:300px;
			margin: 0 auto;
		}
		#myModal22 .modal-header{
			background-color: #49A6E9;
			padding-top:2px;
			padding-bottom:2px;
		}
		#myModal22 .modal-body{
			font-size: 20px;
			text-align: center;
			padding-top:30px;
			padding-bottom:30px;
		}
		#myModal22 .modal-footer{
			background-color: #E4EAF6;
			border-top:none;
			padding-top:5px;
			padding-bottom:5px;
		}
		#paging{
			padding-left:42%;
		}
		#paging ul{
			margin:auto;
			list-style: none;
		}
		#paging li{
			float:left;
			text-align: center;
			margin-right:10px;
		}
		.pre,.next{
			width:20px;
			border:1px solid #808080;
			border-radius:50%;
			color:#808080;
			margin-top:2px;
		}
		.pre:hover,.next:hover{
			border:1px solid #699AB5;
			color:#699AB5;
		}
		select.startList{
			width: 20%;
			color: #39D1E5;
			border:1px solid #39D1E5;
			background-color: #02545D;
			padding: 5px;
			font-size: 14px;
			float: left;
			margin-bottom: 1%;
		}
		.tab-content{
			width: 100%;
			height: 100%;
		}
		#proSizewarn,#proStructurewarn_warning{
			display: none;
			width: 100%;
			height: 100%;
		}
		.yewu.active:before{
			content: "";
			display: inline-block;
			margin-right:10px;
			height:18px;
			width:20px;
			background:url(images/yw1.png) no-repeat;
		}
		.yewu:before{
			content: "";
			display: inline-block;
			margin-right:10px;
			height:18px;
			width:20px;
			background:url(images/yw2.png) no-repeat;
		}
		.jichu.active:before{
			content: "";
			display: inline-block;
			margin-right:10px;
			height:18px;
			width:20px;
			background:url(images/jc1.png) no-repeat;
		}
		.jichu:before{
			content: "";
			display: inline-block;
			margin-right:10px;
			height:18px;
			width:20px;
			background:url(images/jc2.png) no-repeat;
		}
		/*表格*/
		table.coManage{
			min-height:200px;
			border: 1px solid #00bbd4;
			font-weight: normal;
			color: #0CDAF4;
			table-layout: fixed;
		}
		table.coManage tbody tr td{
			vertical-align: middle;
			font-size:12px;
			padding:0;
			color: #0CDAF4;
			border:1px solid #00bbd4;
			/*自动换行*/
			word-wrap: break-word;
			word-break: break-all;
		}
		table.coManage tbody tr td img{
			width: 80%;
		}
		table.coManage thead{
			border:1px solid #00bbd4;
		}
		table.coManage thead th{
			border:1px solid #00bbd4;

		}
		.editList{
			border: none;
			outline: none;
			background-color: #008A9D;
			border-radius: 5px;
			padding: 5px 10px;
		}
		.editList{
			color: #fff;
		}
		#addView .modal-header button.close {
			display: inline-block;
			width: 20px;
			height: 20px;
			background: url("map/images/economicModel/close.png") no-repeat center;
			background-size: 100% 100%;
			opacity: 1;
			margin-top: 2px;
		}
		/*保存成功提示消息*/
		#warnning{
			width: 200px;
			height: 100px;
			color: #0CDAF4;
			z-index: 99999;
			font-weight: bold;
			background-color: #2A383B;
			border: 1px solid #3A858F;
			line-height: 100px;
			text-align: center;
			position: fixed;
			right:0;
			bottom: 0;
			display: none;
		}
		/*关闭按钮*/
		#warnning span{
			width: 10px;
			height: 10px;
			position: absolute;
			right: 5px;
			top: -41px;
			cursor: pointer;
		}
		/*编辑模态框*/
		#addView{
            background-color: #02191C;
		}
		#addView .modal-header{
			border: 0;
		}
		#addView .modal-title{
			color: #39D1E5;
			font-weight: bold;
		}
		#addView .modal-body .form-group{
			color: #39D1E5;
		}
		#addView .modal-body .form-group input,#addView .modal-body .form-group select{
			color: #39D1E5;
			background-color: #02191C;
			border: 1px solid #00AEC6;
		}
		/*按钮*/
		#uSave,#uCanel{
			margin-top: 30px;
			color: #39D1E5;
			width: 80px;
			height: 30px;
			line-height: 30px;
			background-color: #02545D;
			border: 1px solid #00AEC6;
		}
		/*地图测量工具信息显示--开始*/
		.amap-marker-content>div{
			background-color: rgba(153, 153, 153,0) !important;
			box-shadow: rgba(153, 153, 153,0) 0 0 0 !important;
		}
		.amap-ranging-label{
			border: 0 !important;
		}
		/*地图测量工具信息显示--结束*/
	</style>
	<script type="text/javascript" src="map/js/jquery-2.2.1.js"></script>
	<script type="text/javascript" src="map/js/bootstrap.js"></script>
	<%--<script type="text/javascript" src="map/js/jquery.dataTables.js"></script>--%>
	<script type="text/javascript" src="map/js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="myjs/jquery-ui.js"></script>
	<script type="text/javascript" src="map/js/echarts-all.js"></script>
	<script type="text/javascript" src="myjs/loadMapService.js"></script>
	<script type="text/javascript" src="myjs/heatmap.js"></script>
	<script type="text/javascript" src="myjs/myEcharts.js"></script>
	<script type="text/javascript" src="myjs/jquery.dataStatistics.js"></script>
	<script type="text/javascript" src=" http://webapi.amap.com/maps?v=1.4.0&key=966008e8aaafb827acaa2f1bea731a60"></script>
	<script src="//webapi.amap.com/ui/1.0/main.js?v=1.0.11"></script>
	<script type="text/javascript" src="http://a.amap.com/jsapi_demos/static/resource/heatmapData.js"></script>	<%--高德热力图--%>

	<script src="myjs/index.js"></script>

</head>
<body class="tundra">
<div id = "heatLayer">
</div>

<div id="map" style="width:100%; height:100%;background-color: black">
</div>

<div id="bigLogo">

	<div id="right">
		<img src="images/logo.png" alt="" id="logo"/>
		<div class="timer"></div>

	</div>
</div>
<div  id="toolsGather" style="position: absolute;right: 50px;top:15px;z-index: 666;display: block;">
	<%--<ul class="listTitle">--%>

	<%--</ul>--%>
	<div class="tools">
		<div class="openToos" onclick="openToos(this)" style="cursor: pointer"><img src="images/tools/1.png" alt=""></div>
		<div class="main">
			<div class="bi" style="cursor: pointer"><div class="ico ico_1"></div><span>测量</span></div>
			<%--<div class="map1" style="cursor: pointer"><div class="ico ico_2"></div><span>书签</span></div>--%>
			<div class="gui" style="cursor: pointer"><div class="ico ico_3"></div><span>全屏</span></div>
			<%--<div class="vedio" style="cursor: pointer"><div class="ico ico_7"></div><span>视频</span></div>--%>
			<div class="selectFixed" style="cursor: pointer"><div class="ico ico_4"></div><span>定位</span></div>
			<div class="cover" style="cursor: pointer" id="coverage"><div class="ico ico_5"></div><span>图层</span></div>
			<div class="mapChangeTools" style="cursor: pointer"  nO="1"><div class="ico ico_6"></div><span >地图</span></div>
		</div>
	</div>
</div>
<div class="pageReturn" onclick="returnMainPage()">
	<a href="javascript:;" data-toggle="tooltip" data-placement="bottom" title="返回首页" data-original-title="Tooltip on bottom" class="atip hidden-sm hidden-xs"></a>
	<%--img src="images/return.png" alt="">--%>
</div>
<ul class="threeChange">
	<li onclick="air()">空气质量</li>
	<li onclick="water()">水质监测</li>
	<li onclick="pollute()">重点污染源</li>
</ul>

<%--编辑框--%>
<div class="modal fade ui-draggable ui-draggable-handle in" style="z-index:1050; width: 550px;height: 335px;margin: 0 auto;top:20%" id="addView" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button id="ssss" type="button" class="close" data-dismiss="modal"><span aria-hidden="true"></span><span class="sr-only">Close</span></button>
				<h4 class="modal-title">编辑</h4>
			</div>
			<div class="modal-body">
				<div class="form-horizontal">
					<div class="form-group" style="display:none">
						<label for="tid" class="col-sm-3 control-label">图层ID </label>
						<div class="col-sm-8">
							<input type="text" class="form-control" name="tid" id="tid">
						</div>
					</div>
					<div class="form-group">
						<label for="tcName" class="col-sm-3 control-label">图层名称</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" name="tcName" id="tcName">
						</div>
					</div>
					<div class="form-group">
						<label for="tcLink" class="col-sm-3 control-label">图层链接</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" name="tcLink" id="tcLink">
						</div>
					</div>
					<div class="form-group">
						<label for="tcType" class="col-sm-3 control-label">图层类型</label>
						<div class="col-sm-8">
							<select name="tcType" id="tcType" class="form-control">
								<option value="Tiled">Tiled</option>
								<option value="Dynamic">Dynamic</option>
								<option value="Feature">Feature</option>
								<option value="WMTS">WMTS</option>
								<option value="WMS">WMS</option>
							</select>
						</div>
					</div>
					<div class="form-group btnGroupAdd">
						<div class="col-sm-offset-3 col-sm-4" id="choose">
							<button type="button" class="active uAdd" id="uSave">保存</button>
						</div>
						<div class="col-sm-offset-1 col-sm-4">
							<button type="button"  data-dismiss="modal" id="uCanel">取消</button>
						</div>

					</div>
				</div>
			</div>

		</div>
	</div>
</div>
<%--保存成功提示--%>
<div id="warnning">
	修改成功！
	<span>x</span>
</div>


<%--工具模块测量页面引入--%>
<jsp:include page="tool/drawTool.jsp"></jsp:include>
<jsp:include page="tool/coverageWindow.jsp"></jsp:include>  <%--图层--%>

<jsp:include page="include/air/kqzljc.jsp"></jsp:include>
<jsp:include page="tool/selectFixed.jsp"></jsp:include>
<%--&lt;%&ndash;水质监测&ndash;%&gt;--%>
<jsp:include page="include/water/waterTest.jsp"></jsp:include>
<%--&lt;%&ndash;重点污染源&ndash;%&gt;--%>
<jsp:include page="include/pollute/pollute.jsp"></jsp:include>
<%--&lt;%&ndash;教育资源分布情况&ndash;%&gt;--%>
<jsp:include page="include/education/education.jsp"></jsp:include>
<%--&lt;%&ndash;教育资源承载情况&ndash;%&gt;--%>
<jsp:include page="include/education/educationZYCZQK.jsp"></jsp:include>
<%--&lt;%&ndash;城市生命线&ndash;%&gt;--%>
<jsp:include page="include/lifeLine/gwgzTest.jsp"></jsp:include>
<%--&lt;%&ndash;社保使用情况&ndash;%&gt;--%>
<jsp:include page="include/socialSecurity/socialSecurityLeft.jsp"></jsp:include>
<jsp:include page="include/socialSecurity/socialSecurityRight.jsp"></jsp:include>

<script>
	var qhbh='<%=Web_srcUtil.getString("qybh")%>';
	var cityId='<%=Web_srcUtil.getString("cityId")%>';
	var mapHost='<%=Web_srcUtil.getString("mapHost")%>';
	var mapPort='<%=Web_srcUtil.getString("mapPort")%>';
	var arcgisServiceUrl='<%=Web_srcUtil.getString("arcgisServiceUrl")%>';
	var jiaxingJtSslkServiceUrl='<%=Web_srcUtil.getString("jiaxingJtSslkServiceUrl")%>';
	var mapServiceTpye='<%=Web_srcUtil.getString("mapServiceTpye")%>';
	var map; //定义地图变量

	$(function(){

		var url = location.search;
		if (url.indexOf("?") != -1) {
			var str = url.substr(1);
			var strs = new Array();
			strs = str.split('&');
			model = strs[0].slice(strs[0].indexOf("=")+1);
			mainWin = strs[1].slice(strs[1].indexOf("=")+1);
		}
		eval(model+"Ajax('"+qhbh+"')");
		$("#"+model).modal("show");
	})
//    function getServerDate(){
//	    console.log("11111111111111")
//	    console.log(new Date($.ajax({async: false}).getResponseHeader("Date")))
//        return new Date($.ajax({async: false}).getResponseHeader("Date"));
//    }


	/*共有方法区开始*********************************************************************/
	//返回宏观监测界面
	function returnMainPage(){
		location.href = "http://"+ mapHost+":" + mapPort + "/CityOverview/main.jsp?bh="+mainWin;
	}
	//左上角时间
	var timer={
		date:"",
		timeAjax:function(){
			var me=this;
			$.ajax({
				url:'jxsys/getCurrentTime.do',
				type:'POST',
				dataType:'json',
				success:function(date) {
					me.date=date;
					me.showCurDate();
				}
			});
			return this
		},
		showCurDate:function(){
			var me=this;
			function changeNumber(num){
				if(num<10){
					return '0'+num;
				}else{
					return ''+num;
				}
			}
			setInterval(function(){
				var T=new Date(me.date)
				newDate = changeNumber(T.getFullYear())+"年"+
				changeNumber((parseInt(T.getMonth())+1))+"月"+
				changeNumber(T.getDate())+"日  "+
				changeNumber(T.getHours())+":"+
				changeNumber(T.getMinutes())+":"+
				changeNumber(T.getSeconds())+""
				me.date+=1000;
				$(".timer").html(newDate)
			},1000)
			return this
		}
	}
	timer.timeAjax();

	$(function(){
		//加载地图的方法
		map = new AMap.Map('map', {
			mapStyle: 'amap://styles/e08db8ed18c196aa387f5352644fe504',//样式URL
			resizeEnable: true//开启测量功能
		});
		AMap.event.addListener(map,'click',function(e){
			map.clearInfoWindow();
            map_jd=e.lnglat.getLng();
            map_wd=e.lnglat.getLat();
            console.log(map_jd);
            console.log(map_wd);
		});
		map.panTo([120.851,30.722]);//默认移到南湖区
        var start=(window.location.href).indexOf("?");
        var end=(window.location.href).indexOf("&");
        var res=(window.location.href).substring(start+10,end);

        $(".threeChange li").click(function(){
            $(this).siblings().removeClass("active");
            $(this).addClass("active");
        });
        if(model=="kqzljc"){
//            $(".kqzljcRltqh:first").click();

        }
        if(model=="waterTest"){
            $(".waterTestRltqh:first").click();
            $('.threeChange').css('display','block');
        }
        if(model=="pollute"){
//            $(".polluteChange:first").click();
            $(".polluteBox li:first").click();
            $('.threeChange').css('display','block');
        }
//        给对应的subindex加上active
        if(res=="kqzljc"){

        }
        if(res=="waterTest"){
            $(".threeChange li:contains('水质监测')").addClass("active");
        }
        if(res=="pollute"){
            $(".threeChange li:contains('重点污染源')").addClass("active");
        }

		//鼠标工具测量面积


	})


	//判断浏览区是否支持canvas
	function isSupportCanvas() {
		var elem = document.createElement('canvas');
		return !!(elem.getContext && elem.getContext('2d'));
	}
    function air(){
        window.location.href="index.jsp?subindex=kqzljc&mainIndex=001";
    }
    function water(){
        window.location.href="index.jsp?subindex=waterTest&mainIndex=001";
    }
    function pollute(){
        window.location.href="index.jsp?subindex=pollute&mainIndex=001";
    }
	//	工具栏--开始

	//打开工具栏
	function openToos(evt){
		if($(".main").height()==0) {
			$($(evt).children()[0]).attr("src","images/tools/1-.png");
			$(".main").animate({height: "160px"}, 100);
		}else{
			$($(evt).children()[0]).attr("src","images/tools/1.png");
			$(".main").animate({height: "0px"}, 100);
		}
	}
    function toosStyleChange(doc, class1,class2,windowid0,windowid1){
        if($($(doc).children()[0]).hasClass(class1)) {
            $($(doc).children()[0]).addClass(class2).removeClass(class1);
            $($(doc).children()[1]).css("color","#6e6e6e");
//			$(windowid).modal("show").draggable({cursor:'auto'});
            $(windowid0).modal("show");
            $(windowid1).modal("show");
            return true;
        }else{
            $($(doc).children()[0]).addClass(class1).removeClass(class2);
            $($(doc).children()[1]).css("color","#10A9BE");
            $(windowid0).modal("hide");
            $(windowid1).modal("hide");
            return false;
        }
    }
	//在地图中添加MouseTool插件


    var pointArray=[];
    var callBackFn = function(e) {
        var marker = new AMap.Marker({
            map: map,
            position: [e.lnglat.getLng(), e.lnglat.getLat()],
            label:{content: e.lnglat.getLng()+' , '+e.lnglat.getLat()}
        });
        pointArray.push(marker);
    };

//	var myDrawPoint=[];

	$(".bi").click(function(){
			toosStyleChange(".bi", "ico_1","ico_1_1","#drawTool");
	})

	//查询定位事件
	$(".selectFixed").click(function(){
		toosStyleChange(".selectFixed", "ico_4","ico_4_4","#selectFixed");
	})

	window.onload=function(){
		//测量按钮关闭事件
		$(".close").click(function(){
			mouseTool.close(false);
            map.off('click', callBackFn);
		})

		var mouseTool
		map.plugin(["AMap.MouseTool"],function () {
			mouseTool=new AMap.MouseTool(map);
//			$(map).unbind('click');

			AMap.event.addDomListener(document.getElementById('pointMark'), 'click', function() {
//			    先清除高德地图工具功能
				mouseTool.close(false);
				map.on('click', callBackFn);
				/*  console.log(mouseTool)
				 mouseTool.marker({label:{content: mouseTool.marker.getPosition().getLng()}});*/

			}, false);
			AMap.event.addDomListener(document.getElementById('drawRuler1'), 'click', function() {
				map.off('click', callBackFn);
				mouseTool.rule();//地图测量--多线
			}, false);

			AMap.event.addDomListener(document.getElementById('drawArea'), 'click', function() {
				map.off('click', callBackFn);
				mouseTool.measureArea();//地图测量--面
			}, false);


			AMap.event.addDomListener(document.getElementById('delMarker'), 'click', function() {
				map.off('click', callBackFn);
				mouseTool.close(true);
				for(var i=0; i < pointArray.length; i++){
					pointArray[i].setMap(null);
				}
				$(map).unbind('click');

			}, false);

		});
	}

	var tt=new AMap.TileLayer.Satellite()
	$(".mapChangeTools").click(function(){
		if($(this).attr("no")==2){
            toosStyleChange(".mapChangeTools", "ico_6","ico_6_6");
			tt.hide()
			$(this).attr("no","1")
			return
		}
		if($(this).attr("no")==1){
			tt.setMap(map);
			tt.show();
            toosStyleChange(".mapChangeTools", "ico_6","ico_6_6");
			$(this).attr("no","2");
			return
		}
	})




	//全屏事件
	$(".gui").click(function(){
	/*	toosStyleChange(".gui", "ico_3","ico_3_3","");*/
		launchFullscreen(document.documentElement); // 整个网页
	})
    $(".cover").click(function(){
        toosStyleChange(".cover", "ico_5","ico_5_5","#coverageWindow","#proSizewarn");
    })
    function coverageWindowClose(){
        $(".cover").click();
    }
	//            全屏方法
	function launchFullscreen(element) {
		if(element.requestFullscreen) {
			element.requestFullscreen();
		} else if(element.mozRequestFullScreen) {
			element.mozRequestFullScreen();
		} else if(element.webkitRequestFullscreen) {
			element.webkitRequestFullscreen();
		} else if(element.msRequestFullscreen) {
			element.msRequestFullscreen();
		}
	}

    //监听ESC退出全屏事件
    document.addEventListener("fullscreenchange", function(e) {
        toosStyleChange(".gui", "ico_3","ico_3_3","");
    });
    document.addEventListener("mozfullscreenchange", function(e) {
        toosStyleChange(".gui", "ico_3","ico_3_3","");
    });
    document.addEventListener("webkitfullscreenchange", function(e) {
        toosStyleChange(".gui", "ico_3","ico_3_3","");
    });
    document.addEventListener("msfullscreenchange", function(e) {
        toosStyleChange(".gui", "ico_3","ico_3_3","");
    });

    //图层
	//关闭修改成功弹出框
	$("#warnning span").click(function(){
		$("#warnning").hide();
	});
	//业务图层初始化
	function startListAjax(msg){
		var len = tcdata[msg].length;
		var list = "";
		for (var i = 0; i < len; i++) {
			list += '<tr uid="'+tcdata[msg][i].id+'" num="1">' +
					'<td>' + tcdata[msg][i].name + '</td>'+
					'<td>' + tcdata[msg][i].link + '</td>' +
					'<td>' + tcdata[msg][i].type  + '</td>' +
					'<td><button class="editList" onclick="edit(this)">编辑</button></td>' +
					'</tr>';
		}
		$('#warnListTable').html(list);
	}
	//    图层管理数据对象缓存
	var tcdata={};
	//图层点击事件
	$(".main").delegate('#coverage','click',function(){
        $('#proStructurewarn_warning').css('display','none');
		//打开模态框
		/*console.log($('#proSizewarn'));
		$('#proSizewarn').css('display','block');
		openCoverageWindow();*/
		yewuAjax();
	});
	//业务图层初始化函数
	function yewuAjax(){
		$.ajax({
			type: 'post',
			url: "jxmap/queryMapServiceByIndicator.do",
			data: {maptype:1},
			dataType: 'JSON',
			success: function (data) {
				var str="";
				var len=data.length;
				var list = "";
				for(var i=0;i<len;i++){
					str+='<option place="'+i+'" msg="'+data[i].mapInfos+'">'+data[i].indicatorName+'</option>';
					tcdata[data[i]['indicatorName']]=data[i].mapInfos
				}
				$('.startList').html(str);
//				$('.startList').find("option:selected").text();
				startListAjax($('.startList').find("option:selected").text());
			}

		});
	}
	//根据一级指标切换
	$(".startList").change(function(){
		var msg=$(this).find("option:selected").text();
		startListAjax(msg);
	});
	function openCoverageWindow(){
		$("#coverageWindow").modal("show");
	}
	//业务图层与基础图层切换
	$(".tuceng").click(function() {
		$(this).siblings().removeClass("active");
		$(this).addClass("active");
		//业务图层
		if($(this).val()==1){
			$('#proStructurewarn_warning').css('display','none');
			$('#proSizewarn').css('display','block');
		};
		if($(this).val()==2){
			$('#proSizewarn').css('display','none');
			$('#proStructurewarn_warning').css('display','block');
			jichuAjax();
		};
	});
	//基础图层ajax
	function jichuAjax(){
		$.ajax({
			type: 'post',
			url: "jxmap/queryBaseMapService.do",
			data:{maptype:1},
			dataType: 'JSON',
			success: function (data) {
				var str="";
				var len=data.length;
				var list = "";
				for(var i=0;i<len;i++){
					list += '<tr uid="'+data[i].id+'" num="2">' +
							'<td>' + data[i].name + '</td>'+
							'<td>' + data[i].link + '</td>' +
							'<td>' + data[i].type  + '</td>' +
							'<td><button class="editList" onclick="edit(this)">编辑</button></td>' +
							'</tr>';
				}
				$('#warnjieruTable').html(list);
			}

		});
	}
	//编辑
	function edit(a){
		var num=$(a).parent().parent().attr("num");
		var chil=$(a).parent().parent().children();
		var uid=$(a).parent().parent().attr("uid");
		$('#tid').val(uid);
		$('#tcName').val($(chil).eq(0).text());
		$('#tcLink').val($(chil).eq(1).text());
		//判断下拉框
		if(($(chil).eq(2).text()=="Tiled")){
			$('#tcType').children().removeProp("selected");
			$('#tcType').children().eq(0).prop("selected","selected");
		}
		if(($(chil).eq(2).text()=="Dynamic")){
			$('#tcType').children().removeProp("selected");
			$('#tcType').children().eq(1).prop("selected","selected");
		}
		if(($(chil).eq(2).text()=="Feature")){
			$('#tcType').children().removeProp("selected");
			$('#tcType').children().eq(2).prop("selected","selected");
		}
		if(($(chil).eq(2).text()=="WMTS")){
			$('#tcType').children().removeProp("selected");
			$('#tcType').children().eq(3).prop("selected","selected");
		}
		if(($(chil).eq(2).text()=="WMS")){
			$('#tcType').children().removeProp("selected");
			$('#tcType').children().eq(4).prop("selected","selected");
		}
		$('#addView').modal('show');
		$(".coManage tbody tr").attr("num",num);
	}
	//修改，提交数据
	$('.uAdd').click(function(){
		var mapServiceInfo="";
		var obj={};
		obj.id=$('#tid').val();
		obj.name=$('#tcName').val();
		obj.link=$('#tcLink').val();
		obj.type=$('#tcType').val();
		mapServiceInfo=obj;
		mapServiceInfo=JSON.stringify(mapServiceInfo);
		$.ajax({
			url: "jxmap/updateMapInfoService.do",
			type: "post",
			data:{mapServiceInfo:mapServiceInfo},
			dataType: "json",
			success: function (data) {
				if (data == "success") {
					$('#addView').modal('hide');
					if($(".coManage tbody tr").attr("num")==1) {
						var text=$('.startList').find("option:selected").text();
//							console.log($('.startList').find("option:selected").text());
						//业务图层
						//yewuAjax();
////							startListAjax($('.startList').find("option:selected").text());
						$.ajax({
							type: 'post',
							url: "jxmap/queryMapServiceByIndicator.do",
							data:{maptype:1},
							dataType: 'JSON',
							success: function (data) {
								var str="";
								var len=data.length;
								var list = "";
								for(var i=0;i<len;i++){
									str+='<option place="'+i+'" msg="'+data[i].mapInfos+'">'+data[i].indicatorName+'</option>';
									tcdata[data[i]['indicatorName']]=data[i].mapInfos;

								}

								$('.startList').html(str);
								//console.log($('.startList option').attr("place"));
								//$(".startList").children().eq(1).prop("selected","selected");
								//给对应的option加上selected
								$(".startList option:contains("+text+")").prop("selected","selected");
								startListAjax($('.startList').find("option:selected").text());
							}
						});

					}
					if($(".coManage tbody tr").attr("num")==2) {
						//基础图层
						jichuAjax();
					}

					$("#warnning").slideDown(1000,function(){
						setTimeout("$('#warnning').slideUp(1000);",500);
					});

				}

			}
		})
	});
	//获取传入的subindex
	$(function(){
		var start=(window.location.href).indexOf("?");
		var end=(window.location.href).indexOf("&");
		var res=(window.location.href).substring(start+10,end);
		//给对应的subindex加上active
		if(res=="kqzljc"){
			$(".threeChange li:contains('空气质量')").addClass("active");
		}
		if(res=="waterTest"){
			$(".threeChange li:contains('水质监测')").addClass("active");
		}
		if(res=="pollute"){
			$(".threeChange li:contains('重点污染源')").addClass("active");
		}
	});
	$(".threeChange li").click(function(){
		$(this).siblings().removeClass("active");
		$(this).addClass("active");
	});

	//查询定位
	$("#jwselected").click(function(){
//		map.clearMap();
		clearMapInfo();
		var jd=$(".jdIpt").val();
		var wd=$(".wdIpt").val();
		//添加点标记，并使用自己的icon
		var _marker=new AMap.Marker({
			map: map,
			position: [jd, wd],
//			icon: new AMap.Icon({
//				size: new AMap.Size(40, 50),  //图标大小images/mark.png
//				image: "images/mark.png",
//				imageOffset: new AMap.Pixel(0, -60)
//			})
			icon: new AMap.Icon({
				size: new AMap.Size(30,35),  //图标大小
				image: "images/mark.png",      //自定义图片
			})
		});
		map.setCenter(_marker.getPosition());
	})
	//清除图层
	function clearMapInfo(){
//		setTimeout($('.delimg').click(),300);
		map.clearMap();

	}

	//	工具栏--结束
</script>
</body>
</html>