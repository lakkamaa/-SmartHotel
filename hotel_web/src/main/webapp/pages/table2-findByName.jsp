<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>智慧酒店 | 订单数据</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="../plugins/datatables-bs4/css/dataTables.bootstrap4.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../dist/css/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

    <jsp:include page="header.jsp"></jsp:include>

    <jsp:include page="aside.jsp"></jsp:include>


    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>订单数据</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item active">详情查询</li>
                            <li class="breadcrumb-item"><a href="#">订单数据</a></li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-12">

                    <div class="card">
                        <div class="card-header">
                            <h2 class="card-title">订单数据列表</h2>
                            <div class="float-right">
                                <a href="#"> 详细信息 &emsp14;<i class="fas fa-arrow-circle-right"></i> </a>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-striped" style="width:100%">
                                <thead>
                                <tr>
                                    <th>酒店名称</th>
                                    <th>入住人数</th>
                                    <th>入住时间</th>
                                    <th>住店天数</th>
                                    <th>订单类型</th>
                                    <th>所在街道</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>


                                </tbody>
                                <tfoot>

                                </tfoot>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>


    <jsp:include page="control-sidebar.jsp"></jsp:include>

    <jsp:include page="main-foot.jsp"></jsp:include>


</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables -->
<script src="../plugins/datatables/jquery.dataTables.js"></script>
<script src="../plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../dist/js/demo.js"></script>
<!-- page script -->
<script src="../dist/js/searchAtHead.js"></script>

<script>
    $(function () {
        $("#example1").DataTable(
            {
                // 是否开启本地分页
                "paging": true,
                // 是否开启本地排序
                "ordering": false,
                // 是否显示左下角信息
                "info": true,
                // 是否允许用户改变表格每页显示的记录数
                "lengthChange":true,
                // 是否显示处理状态(排序的时候，数据很多耗费时间长的话，也会显示这个)
                "processing": true,
                // 是否允许 DataTables 开启本地搜索
                "searching": false,
                // 是否开启服务器模式
                "serverSide": true,
                // 自动宽度
                "autoWidth": true,
                // 控制 DataTables 的延迟渲染，可以提高初始化的速度
                //"deferRender": true,
                // 增加或修改通过 Ajax 提交到服务端的请求数据
                "ajax": {
                    "url": "${pageContext.request.contextPath}/ajax/findByName.do",
                    "data":{
                        "hotelName": "${hotelName}"
                    },
                    "type":"POST"
                },
                // 分页按钮显示选项
                "pagingType": "full_numbers",
                // 设置列的数据源
                "columns": [
                    {"data": "name"},
                    {"data": "number_of_people"},
                    {"data": "start_timeStr"},
                    {"data": "occupancy_days"},
                    {"data": "order_source"},
                    {"data": "area"},
                    {"data": function (row, type, val, meta) {
                            var str = encodeURI(encodeURI(row.name));
                            return '<button type="button"  class="btn bg-olive btn-xs"  onclick=\" location.href= \' ${pageContext.request.contextPath}/orders/orderInfo.do?id= ' + row.id + ' \'\">订单详情</button> &nbsp; '  +
                                '<button type="button" class="btn bg-olive btn-xs" onclick = \"location.href=\'${pageContext.request.contextPath}/orders/findByName.do?name=' + str + '\'\">酒店详细</button>'
                        }
                    }
                ],
                "bLengthChange": true,
                "aLengthMenu": [[5, 10, 25, 50, 100, 200], [5, 10, 25, 50, 100, 200]],
                'iDisplayLength': 5,
                // 国际化
                "language": {
                    "sProcessing": "处理中...",
                    "sLengthMenu": "显示 _MENU_ 项结果",
                    "sZeroRecords": "没有匹配结果",
                    "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
                    "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",
                    "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
                    "sInfoPostFix": "",
                    "sSearch": "搜索:",
                    "sUrl": "",
                    "sEmptyTable": "表中数据为空",
                    "sLoadingRecords": "载入中...",
                    "sInfoThousands": ",",
                    "oPaginate": {
                        "sFirst": "首页",
                        "sPrevious": "上页",
                        "sNext": "下页",
                        "sLast": "末页"
                    },
                    "oAria": {
                        "sSortAscending": ": 以升序排列此列",
                        "sSortDescending": ": 以降序排列此列"
                    }
                }
            })

    });
</script>

<script>
    $(function () {
        $('#详情查询一级菜单').addClass("menu-open")
        $('#详情查询标签').addClass("active")
        $('#订单数据标签').addClass("active")

    })
</script>

</body>
</html>
