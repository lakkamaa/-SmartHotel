<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title>智慧酒店 | 数据面板</title>

    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bbootstrap 4 -->
    <link rel="stylesheet" href="../plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- JQVMap -->
    <link rel="stylesheet" href="../plugins/jqvmap/jqvmap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../dist/css/adminlte.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="../plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="../plugins/daterangepicker/daterangepicker.css">
    <!-- summernote -->
    <link rel="stylesheet" href="../plugins/summernote/summernote-bs4.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

    <!-- 表 -->
    <!-- DataTables -->
    <link rel="stylesheet" href="../plugins/datatables-bs4/css/dataTables.bootstrap4.css">

</head>
<!--<body class="hold-transition sidebar-mini layout-navbar-fixed layout-footer-fixed">-->

<!-- active -->

<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed ">

<div class="wrapper">
    <!-- Navbar -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <jsp:include page="aside.jsp"></jsp:include>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">数据面板</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item active">数据面板</li>
                            <li class="breadcrumb-item"><a href="#">数据报表</a></li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->


        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <!-- Small boxes (Stat box) -->
                <div class="row">
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>${label.hotelNum}</h3>

                                <p>酒店数</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                            </div>
                            <a href="#" class="small-box-footer"> 更多信息 <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-success">
                            <div class="inner">
                                <h3>
                                    ${label.todayNum == null? "未推送":label.todayNum}
                                        <sup style="font-size: 20px"></sup>
                                </h3>
                                <!--                <h3>53<sup style="font-size: 20px">%</sup></h3>-->

                                <p>今日订单数</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="#" class="small-box-footer"> 更多信息 <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-warning">
                            <div class="inner">
                                <h3>${label.weekNum}</h3>

                                <p>最近7天订单数</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-person-add"></i>
                            </div>
                            <a href="#" class="small-box-footer"> 更多信息 <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-danger">
                            <div class="inner">
                                <h3>${label.totalNum}</h3>

                                <p>累计订单</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-pie-graph"></i>
                            </div>
                            <a href="#" class="small-box-footer"> 更多信息 <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                </div>

                <!-- 实时入住情况 -->

                <!-- Main content -->
                <section class="content connectedSortable">
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
                                    <table id="example1" class="table table-bordered table-striped" style="width: 100%">
                                        <thead>
                                        <tr>
                                            <th>酒店名称</th>
                                            <th>入住人数</th>
                                            <th>入住时间</th>
                                            <th>住店天数</th>
                                            <th>订单类型</th>
                                            <th>所在街道</th>
                                            <th class="text-center">操作</th>
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
                <!-- 实时入住情况 /-->


                <!-- connectedSortable 可移动 -->
                <!--图 -->

                <div class="col-lg-12 connectedSortable">
                    <div class="card">
                        <div class="card-header border-0">
                            <div class="d-flex justify-content-between">
                                <h3 class="card-title">每日订单数走势图</h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                            class="fas fa-minus"></i>
                                    </button>
                                    <button type="button" class="btn btn-tool" data-card-widget="maximize">
                                        <i class="fas fa-expand"></i>
                                    </button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove"><i
                                            class="fas fa-times"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="d-flex">
                                <p class="d-flex flex-column">
                                    <span class="text-bold text-lg">${label.todayNum}</span>
                                    <span>今日订单数</span>
                                </p>

                            </div>
                            <!-- /.d-flex -->

                            <div class="position-relative mb-4">
                                <canvas id="visitors-chart" height="200"></canvas>
                            </div>

                            <div class="d-flex flex-row justify-content-end">
                  <span class="mr-2">
                    <i class="fas fa-square text-primary"></i> 每日订单数量
                  </span>

                            </div>
                        </div>
                    </div>
                    <!-- /.card -->

                    <!-- /.card -->
                </div>
                <!-- 折线图 -->


                <div class="row">
                    <div class="col-lg-6 connectedSortable">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">订单来源比例</h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                            class="fas fa-minus"></i>
                                    </button>
                                    <button type="button" class="btn btn-tool" data-card-widget="maximize">
                                        <i class="fas fa-expand"></i>
                                    </button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove"><i
                                            class="fas fa-times"></i>
                                    </button>
                                </div>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-8">
                                        <div class="chart-responsive mb-4 ">
                                            <canvas id="pieChart" height="175"></canvas>
                                        </div>
                                        <!-- ./chart-responsive -->
                                    </div>
                                    <!-- /.col -->
                                    <div class="col-lg-4 h4">
                                        <ul class="chart-legend clearfix">
                                            <li><i class="far fa-circle text-danger"></i> ${sourceChart.get(0).source}</li>
                                            <li><i class="far fa-circle text-success"></i>${sourceChart.get(1).source}</li>
                                            <li><i class="far fa-circle text-warning"></i> ${sourceChart.get(2).source}</li>
                                            <li><i class="far fa-circle text-info"></i> ${sourceChart.get(3).source}</li>
                                            <li><i class="far fa-circle text-primary"></i> ${sourceChart.get(4).source}</li>
                                            <li><i class="far fa-circle text-secondary"></i> ${sourceChart.get(5).source}</li>
                                        </ul>
                                    </div>
                                    <!-- /.col -->
                                </div>
                                <!-- /.row -->
                            </div>
                            <!-- /.card-body -->

                            <!-- /.footer -->
                        </div>
                        <!-- /.card -->
                    </div>


                    <div class="col-lg-6 connectedSortable">
                        <div class="card">
                            <div class="card-header border-0">
                                <div class="d-flex justify-content-between">
                                    <h3 class="card-title">各镇街智慧酒店数量</h3>
                                    <div class="card-tools">
                                        <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                                class="fas fa-minus"></i>
                                        </button>
                                        <button type="button" class="btn btn-tool" data-card-widget="maximize">
                                            <i class="fas fa-expand"></i>
                                        </button>
                                        <button type="button" class="btn btn-tool" data-card-widget="remove"><i
                                                class="fas fa-times"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="d-flex">
                                    <p class="d-flex flex-column">
                                        <span class="text-bold text-lg">${label.hotelNum}</span>
                                        <span>智慧酒店总数</span>
                                    </p>
                                </div>
                                <!-- /.d-flex -->

                                <div class="position-relative mb-4">
                                    <canvas id="sales-chart-bar" height="200"></canvas>
                                </div>

                                <div class="d-flex flex-row justify-content-end">
                <span class="mr-2">
                  <i class="fas fa-square text-primary"></i> 智慧酒店数量
                </span>

                                </div>
                            </div>
                        </div>
                        <!-- /.card -->

                    </div>
                </div>


                <!--图 /-->


                <!-- /.row -->


            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Control Sidebar -->
    <jsp:include page="control-sidebar.jsp"></jsp:include>
    <!-- /.control-sidebar -->

    <!-- Main Footer -->
    <jsp:include page="main-foot.jsp"></jsp:include>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->


<!-- jQuery -->
<script src="../plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="../plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
    $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="../plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="../plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="../plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="../plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="../plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="../plugins/moment/moment.min.js"></script>
<script src="../plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="../plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="../plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="../plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../dist/js/pages/dashboard.js"></script>

<!-- AdminLTE for demo purposes -->
<script src="../dist/js/demo.js"></script>

<!-- 表 -->
<!-- DataTables -->
<script src="../plugins/datatables/jquery.dataTables.js"></script>
<script src="../plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>

<!-- page script -->
<script src="../dist/js/searchAtHead.js"></script>
<script src="../dist/js/refresh.js" ></script>


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
                // 控制 DataTables 的延迟渲染，可以提高初始化的速度
                "deferRender": true,
                // 增加或修改通过 Ajax 提交到服务端的请求数据
                "ajax": {
                    "url": "${pageContext.request.contextPath}/ajax/page.do",
                    "data":{
                        "length":5
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
                            return '<button type="button"  class="btn bg-olive btn-xs"  onclick=\" location.href= \' ${pageContext.request.contextPath}/orders/orderInfo.do?id= ' + row.id + ' \'\">订单详情</button> &nbsp; '  +
                                '<button type="button" class="btn bg-olive btn-xs" onclick=location.href="${pageContext.request.contextPath}/orders/hotelInfo.do" >酒店详细</button>'
                        }
                    }
                ],
                "bLengthChange": true,
                "aLengthMenu": [[5, 10, 25, 50], [5, 10, 25, 50]],
                // 'iDisplayLength': 5,
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

<!-- 选中 dom_aside需要命名 -->
<script>
    $(function () {
        $('#数据面板一级菜单').addClass("menu-open")
        $('#数据报表标签').addClass("active")
        $('#数据面板标签').addClass("active")
        // $('.control-sidebar').addClass("control-sidebar-light")
    })
</script>



<!-- 自定义脚本 -->
<script type="text/javascript">
    $(function () {
        'use strict'
        var ticksStyle = {
            fontColor: '#495057',
            fontStyle: 'bold'
        }

        var mode = 'index'
        var intersect = true

        // 柱形图
        var $salesChart = $('#sales-chart-bar')
        var salesChart = new Chart($salesChart, {
            type: 'bar',
            data: {
                labels: [
                    <c:forEach  items="${areaChart}" var="areaChart">
                    '${areaChart.area}',
                    </c:forEach>
                ],
                datasets: [
                    {
                        backgroundColor: '#007bff',
                        borderColor: '#007bff',
                        data: [<c:forEach  items="${areaChart}" var="areaChart"> ${areaChart.num}, </c:forEach>]
                    }
                ]
            },
            options: {
                maintainAspectRatio: false,
                tooltips: {
                    mode: mode,
                    intersect: intersect
                },
                hover: {
                    mode: mode,
                    intersect: intersect
                },
                legend: {
                    display: false
                },
                scales: {
                    yAxes: [{
                        // display: false,
                        gridLines: {
                            display: true,
                            lineWidth: '4px',
                            color: 'rgba(0, 0, 0, .2)',
                            zeroLineColor: 'transparent'
                        },
                        ticks: $.extend({
                            beginAtZero: true,

                            // Include a dollar sign in the ticks
                            callback: function (value, index, values) {
                                if (value >= 1000) {
                                    value /= 1000
                                    value += 'k'
                                }
                                return '$' + value
                            }
                        }, ticksStyle)
                    }],
                    xAxes: [{
                        display: true,
                        gridLines: {
                            display: false
                        },
                        ticks: ticksStyle
                    }]
                }
            }
        })

        // 折线图
        var $visitorsChart = $('#visitors-chart')
        var visitorsChart = new Chart($visitorsChart, {
            data: {
                labels: [  <c:forEach  items="${lineChart.key}" var="key">  '${key}', </c:forEach> ],
                datasets: [{
                    type: 'line',
                    data: ${lineChart.value},
                    backgroundColor: 'transparent',
                    borderColor: '#007bff',
                    pointBorderColor: '#007bff',
                    pointBackgroundColor: '#007bff',
                    fill: false
                    // pointHoverBackgroundColor: '#007bff',
                    // pointHoverBorderColor    : '#007bff'
                },
                ]
            },
            options: {
                maintainAspectRatio: false,
                tooltips: {
                    mode: mode,
                    intersect: intersect
                },
                hover: {
                    mode: mode,
                    intersect: intersect
                },
                legend: {
                    display: false
                },
                scales: {
                    yAxes: [{
                        // display: false,
                        gridLines: {
                            display: true,
                            lineWidth: '4px',
                            color: 'rgba(0, 0, 0, .2)',
                            zeroLineColor: 'transparent'
                        },
                        ticks: $.extend({
                            beginAtZero: true,
                            suggestedMax: ${lineMax + 20} ,
                        }, ticksStyle)
                    }],
                    xAxes: [{
                        display: true,
                        gridLines: {
                            display: false
                        },
                        ticks: ticksStyle
                    }]
                }
            }
        })

    })
</script>

<script type="text/javascript">
    $(function () {

        'use strict'
        var pieChartCanvas = $('#pieChart').get(0).getContext('2d')
        var pieData = {
            labels: [

                <c:forEach  items="${sourceChart}" var="sourceChart">
                '${sourceChart.source}',
                </c:forEach>
            ],
            datasets: [
                {
                    data: [ <c:forEach  items="${sourceChart}" var="sourceChart"> ${sourceChart.num}, </c:forEach> ]  ,
                    backgroundColor: ['#f56954', '#00a65a', '#f39c12', '#00c0ef', '#3c8dbc', '#d2d6de','#FF1493', '#FFD700','#00FFFF','#DC143C','#FFFACD' ,'#EE82EE', '#F4A460','#EEEE00','#66CDAA','#32CD32'],
                }
            ]
        }
        var pieOptions = {
            legend: {
                display: false
            }
        }
        //Create pie or douhnut chart
        // You can switch between pie and douhnut using the method below.
        var pieChart = new Chart(pieChartCanvas, {
            type: 'doughnut',
            data: pieData,
            options: pieOptions
        })
    })
</script>


</body>
</html>
