<%--
  Created by IntelliJ IDEA.
  User: LYLYC
  Date: 2017/9/7
  Time: 10:26


  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="myCss/toastr.css">
<link rel="stylesheet" href="myCss/bootstrap.min.css"/>
<script type="application/javascript" src="map/js/jquery-1.11.3.js"></script>
<script src="myjs/bootstrap.min.js"></script>
<script type="text/javascript" src="myjs/toastr.min.js"></script>
<script type="text/javascript" src="myjs/jquery-2.1.4.js"></script>
<script src="myjs/jquery-ui.js"></script>
<html>
<head>
    <title></title>
</head>
<body>
<button class="btn btn-primary" data-toggle="modal" data-target="#addView">Large modal</button>
<div class="modal fade" style="width: 550px;height: 335px;margin: 0 auto;top:20%" id="addView" tabindex="-1" role="dialog"  aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button id="ssss" type="button" class="close" data-dismiss="modal"><span aria-hidden="true"></span><span class="sr-only">Close</span></button>
                <h4 class="modal-title">编辑</h4>
            </div>
            <div class="modal-body">
                <div class="form-horizontal">
                    <div class="form-group">
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
<button onclick="tongzhi()"></button>
<H1>测试JSP</H1>
        <script type="application/javascript">
//            $(document).on('shown.bs.modal','.modal',function(){
                $('#addView').draggable();

//            })
            $.ajax({
                url:"http://localhost/",
                type:"post",
                data:{
                    utilityTypeDes:"",
                    dateBegin:"2017-07-01",
                    dateEnd:"2017-09-18",
                    order:"rank",
                    faultStateDes:"已处理"
                },
                dataType:"json",
                success:function(msg){
                }
            })

        </script>
</body>
</html>
