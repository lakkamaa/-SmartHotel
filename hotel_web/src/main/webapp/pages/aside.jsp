<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="${pageContext.request.contextPath}/home/findAll.do" class="brand-link">
        <img src="../dist/img/WasuLogoWhite.png" alt="User Image" class="brand-image img-circle elevation-3"
             style="opacity: .8">
        <!--
        <span class="logo-xs">&nbsp 数据</span>
        -->
        <span class="brand-text font-weight-light">智慧酒店</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class=" mt-2 pb-3 mb-5 d-flex ">

            <div class="logo-xs">
                <!--<span>&nbsp; &emsp14;</span>-->
                <a class="nav-link">
                    <i class="nav-icon fa-2x fas fa-angle-double-right"></i>
                </a>

            </div>

            <div class="logo-xl " >
                <!--<a> &nbsp; &nbsp; &emsp14;</a>-->
                <!--<i class="right fa-2x far fa-angle-double-down font-weight-bold"></i>-->
                <a  href="#" class="nav-link fa-2x" >
                    <i class="nav-icon fas fa-angle-double-down"></i>
                    &nbsp; &thinsp;菜单
                </a>
            </div>

        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->
                <!-- menu-open菜单打开 -->
                <li class="nav-item has-treeview" id="数据面板一级菜单">
                    <a href="#" class="nav-link" id="数据面板标签">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            数据面板
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/home/findAll.do" class="nav-link" id="数据报表标签">
                                <i class="far fa-circle nav-icon"></i>
                                <p>数据报表</p>
                            </a>
                        </li>
                        <li class="nav-item" style="height: 20px">
                            <p>&nbsp;</p>
                        </li>
                    </ul>
                </li>
                <li class="nav-item has-treeview" id="详情查询一级菜单">
                    <a href="#" class="nav-link" id="详情查询标签">
                        <i class="nav-icon fas fa-th"></i>
                        <p>
                            详情查询
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/orders/findAll.do" class="nav-link" id="订单数据标签">
                                <i class="far fa-circle nav-icon"></i>
                                <p>订单数据</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/orders/search.do" class="nav-link" id="分类搜索标签">
                                <i class="far fa-circle nav-icon"></i>
                                <p>分类搜索</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/orders/hotelInfo.do" class="nav-link" id="酒店信息标签">
                                <i class="far fa-circle nav-icon"></i>
                                <p>酒店信息</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="详细订单标签" onclick="alert('请从 订单数据 或 分类搜索 选择具体订单')">
                                <i class="far fa-circle nav-icon"></i>
                                <p>详细订单</p>
                            </a>
                        </li>
                        <li class="nav-item" style="height: 20px">
                            <p>&nbsp;</p>
                        </li>
                    </ul>
                </li>


                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-edit"></i>
                        <p>
                            信息管理
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a class="nav-link" onclick="alert('权限不足')">
                                <i class="far fa-circle nav-icon"></i>
                                <p>添加信息</p>
                            </a>
                            <a class="nav-link" onclick="alert('权限不足')">
                                <i class="far fa-circle nav-icon"></i>
                                <p>删除信息</p>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-header">&nbsp;</li>

                <li class="nav-header">联系我们</li>
                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fa fa-phone-square fa-flip-horizontal"></i>
                        <p>
                            地址&信息

                        </p>
                    </a>
                </li>
                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
                        <!--<i class="nav-icon fa fa-handshake-o"></i>-->
                        <i class=" nav-icon far fa-handshake"></i>
                        <p>
                            期待合作

                        </p>
                    </a>
                </li>

            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>