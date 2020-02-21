<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
            <a href="${pageContext.request.contextPath}/home/findAll.do" class="nav-link">数据首页</a>
        </li>
    </ul>

    <!-- SEARCH FORM -->
    <form class="form-inline ml-3">
        <div class="input-group input-group-sm">
            <input class="form-control form-control-navbar" type="text" placeholder="酒店名称" aria-label="Search" id="searchAtHead">
            <div class="input-group-append">
<%--                <button class="btn btn-navbar" type="submit">--%>
<%--                <button class="btn btn-navbar" onclick="searchAtHead()">--%>
<%--                    <i class="fas fa-search"></i>--%>
<%--                </button>--%>
                <span class="btn btn-navbar" onclick="searchAtHead()" >
                    <i class="fas fa-search"  ></i>
                </span>
            </div>
        </div>
    </form>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
        <li class="nav-item">
            <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#"><i
                    class="fas fa-th-large"></i></a>
        </li>
    </ul>
</nav>