<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 3 | General Form Elements</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
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
                            <li class="breadcrumb-item"><a href="#">订单详情</a></li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <!-- left column -->
                    <div class="col-md-12">

                        <!-- Input addon -->
                        <div class="card card-warning">
                            <div class="card-header">
                                <h3 class="card-title">订单详细</h3>
                            </div>
                            <div class="card-body input-group">


                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label>酒店名称</label>
                                        <input type="text" class="form-control" value="${orderInfo.name}" disabled>
                                    </div>
                                </div>

                                <div class="col-md-1"></div>

                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label>订单编号</label>
                                        <input type="text" class="form-control" value="${orderInfo.id}" disabled>
                                    </div>
                                </div>

                                <div class="col-md-1"></div>

                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label>订单类型</label>
                                        <input type="text" class="form-control" value="${orderInfo.order_source}" disabled>
                                    </div>
                                </div>

                                <div class="col-md-1"></div>

                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label>所在街道</label>
                                        <input type="text" class="form-control" value="${orderInfo.area}" disabled>
                                    </div>
                                </div>

                                <div class="col-md-1"></div>

                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label>住店人数</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" value="${orderInfo.number_of_people}" disabled>
                                            <div class="input-group-append">
                                                <span class="input-group-text">人</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-1"></div>

                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label>住店时间</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" value="${orderInfo.occupancy_days}" disabled>
                                            <div class="input-group-append">
                                                <span class="input-group-text">天</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-1"></div>

                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label>入住时间</label>
                                        <input type="text" class="form-control" value="${orderInfo.start_timeStr}" disabled>
                                    </div>
                                </div>

                                <div class="col-md-1"></div>

                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label>预计离开时间</label>
                                        <input type="text" class="form-control" value="${orderInfo.due_out_dateStr}" disabled>
                                    </div>
                                </div>

                                <div class="col-md-1"></div>

                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label>酒店地址</label>
                                        <input type="text" class="form-control" value="${orderInfo.address}" disabled>
                                    </div>
                                </div>

                                <div class="col-md-7"></div>

                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label>经度</label>
                                        <input type="text" class="form-control" value="${orderInfo.lng}" disabled>
                                    </div>
                                </div>

                                <div class="col-md-1"></div>

                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label>纬度</label>
                                        <input type="text" class="form-control" value="${orderInfo.lat}" disabled>
                                    </div>
                                </div>

                                <div class="col-md-1"></div>


                                <!--                <div class="col-md-4">-->
                                <!--                  <div class="form-group">-->
                                <!--                    <label>房间号</label>-->
                                <!--                    <input type="text" class="form-control" value="文本显示" disabled>-->
                                <!--                  </div>-->
                                <!--                </div>-->

                                <!--                <div class="col-md-2"></div>-->


                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->

                    </div>
                    <!--/.col (left) -->
                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
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

<!-- bs-custom-file-input -->
<script src="../plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../dist/js/demo.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        bsCustomFileInput.init();
    });
</script>

<script>
    $(function () {
        $('#详情查询一级菜单').addClass("menu-open")
        $('#详情查询标签').addClass("active")
        $('#详细订单标签').addClass("active")

    })
</script>

<script src="../dist/js/searchAtHead.js"></script>

</body>
</html>
