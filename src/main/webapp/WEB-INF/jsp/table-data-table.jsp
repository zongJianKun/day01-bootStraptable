<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta name="description"
	content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
<!-- Twitter meta-->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:site" content="@pratikborsadiya">
<meta property="twitter:creator" content="@pratikborsadiya">
<!-- Open Graph Meta-->
<meta property="og:type" content="website">
<meta property="og:site_name" content="Vali Admin">
<meta property="og:title" content="Vali - Free Bootstrap 4 admin theme">
<meta property="og:url"
	content="http://pratikborsadiya.in/blog/vali-admin">
<meta property="og:image"
	content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png">
<meta property="og:description"
	content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
<title>Data Table - Vali Admin</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Main CSS-->
<link rel="stylesheet" type="text/css" href="css/main.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css">
<!-- Font-icon css-->
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="app sidebar-mini rtl">
	<!-- Navbar-->
	<header class="app-header"> <a class="app-header__logo"
		href="index.html">Vali</a> <!-- Sidebar toggle button--> <a
		class="app-sidebar__toggle" href="#" data-toggle="sidebar"
		aria-label="Hide Sidebar"></a> <!-- Navbar Right Menu-->
	<ul class="app-nav">
		<li class="app-search"><input class="app-search__input"
			type="search" placeholder="Search">
			<button class="app-search__button">
				<i class="fa fa-search"></i>
			</button></li>
		<!--Notification Menu-->
		<li class="dropdown"><a class="app-nav__item" href="#"
			data-toggle="dropdown" aria-label="Show notifications"><i
				class="fa fa-bell-o fa-lg"></i></a>
			<ul class="app-notification dropdown-menu dropdown-menu-right">
				<li class="app-notification__title">You have 4 new
					notifications.</li>
				<div class="app-notification__content">
					<li><a class="app-notification__item" href="javascript:;"><span
							class="app-notification__icon"><span
								class="fa-stack fa-lg"><i
									class="fa fa-circle fa-stack-2x text-primary"></i><i
									class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
							<div>
								<p class="app-notification__message">Lisa sent you a mail</p>
								<p class="app-notification__meta">2 min ago</p>
							</div></a></li>
					<li><a class="app-notification__item" href="javascript:;"><span
							class="app-notification__icon"><span
								class="fa-stack fa-lg"><i
									class="fa fa-circle fa-stack-2x text-danger"></i><i
									class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
							<div>
								<p class="app-notification__message">Mail server not working</p>
								<p class="app-notification__meta">5 min ago</p>
							</div></a></li>
					<li><a class="app-notification__item" href="javascript:;"><span
							class="app-notification__icon"><span
								class="fa-stack fa-lg"><i
									class="fa fa-circle fa-stack-2x text-success"></i><i
									class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
							<div>
								<p class="app-notification__message">Transaction complete</p>
								<p class="app-notification__meta">2 days ago</p>
							</div></a></li>
					<div class="app-notification__content">
						<li><a class="app-notification__item" href="javascript:;"><span
								class="app-notification__icon"><span
									class="fa-stack fa-lg"><i
										class="fa fa-circle fa-stack-2x text-primary"></i><i
										class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
								<div>
									<p class="app-notification__message">Lisa sent you a mail</p>
									<p class="app-notification__meta">2 min ago</p>
								</div></a></li>
						<li><a class="app-notification__item" href="javascript:;"><span
								class="app-notification__icon"><span
									class="fa-stack fa-lg"><i
										class="fa fa-circle fa-stack-2x text-danger"></i><i
										class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
								<div>
									<p class="app-notification__message">Mail server not
										working</p>
									<p class="app-notification__meta">5 min ago</p>
								</div></a></li>
						<li><a class="app-notification__item" href="javascript:;"><span
								class="app-notification__icon"><span
									class="fa-stack fa-lg"><i
										class="fa fa-circle fa-stack-2x text-success"></i><i
										class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
								<div>
									<p class="app-notification__message">Transaction complete</p>
									<p class="app-notification__meta">2 days ago</p>
								</div></a></li>
					</div>
				</div>
				<li class="app-notification__footer"><a href="#">See all
						notifications.</a></li>
			</ul></li>
		<!-- User Menu-->
		<li class="dropdown"><a class="app-nav__item" href="#"
			data-toggle="dropdown" aria-label="Open Profile Menu"><i
				class="fa fa-user fa-lg"></i></a>
			<ul class="dropdown-menu settings-menu dropdown-menu-right">
				<li><a class="dropdown-item" href="page-user.html"><i
						class="fa fa-cog fa-lg"></i> Settings</a></li>
				<li><a class="dropdown-item" href="page-user.html"><i
						class="fa fa-user fa-lg"></i> Profile</a></li>
				<li><a class="dropdown-item" href="page-login.html"><i
						class="fa fa-sign-out fa-lg"></i> Logout</a></li>
			</ul></li>
	</ul>
	</header>
	<!-- Sidebar menu-->
	<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
	<aside class="app-sidebar">
	<div class="app-sidebar__user">
		<img class="app-sidebar__user-avatar"
			src="${pageContext.request.contextPath}/imgs/3.jpg"
			alt="User Image" width="70px">
		<div>
			<p class="app-sidebar__user-name">zongJanKun</p>
			<p class="app-sidebar__user-designation">QianFengEducation</p>
		</div>
	</div>
	<ul class="app-menu">
		<li><a class="app-menu__item" href="index.html"><i
				class="app-menu__icon fa fa-dashboard"></i><span
				class="app-menu__label">Dashboard</span></a></li>


		<li class="treeview is-expanded"><a class="app-menu__item"
			href="#" data-toggle="treeview"><i
				class="app-menu__icon fa fa-th-list"></i><span
				class="app-menu__label">Tables</span><i
				class="treeview-indicator fa fa-angle-right"></i></a>
			<ul class="treeview-menu">
				<li><a class="treeview-item active" href="table-data-table"><i
						class="icon fa fa-circle-o"></i> Data Tables</a></li>
			</ul></li>

	</ul>
	</aside>
	<main class="app-content">
	<div class="app-title">
		<div>
			<h1>
				<i class="fa fa-th-list"></i> Data Table
			</h1>
			<p>Table to display analytical data effectively</p>
		</div>
		<ul class="app-breadcrumb breadcrumb side">
			<li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
			<li class="breadcrumb-item">Tables</li>
			<li class="breadcrumb-item active"><a href="#">Data Table</a></li>
		</ul>
	</div>
	<!-- JS渲染区 -->
	<div class="row">
		<div class="col-md-12">
			<div class="tile">
				<div id="toolbar">
					<button type="button" class="btn btn-yellow btn-xs"
						data-toggle="modal" data-target="#reviseUser"
						style="margin-left: 20px" onclick="addUser()">添加用户</button>
				</div>
				<div class="tile-body">
					<table id="mytable"></table>
				</div>
				
			</div>
		</div>
	</div>
	</main>

	<!--弹出修改用户窗口-->
	<div class="modal fade" id="reviseUser" role="dialog"
		aria-labelledby="gridSystemModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close"></button>
					<h4 class="modal-title" id="gridSystemModalLabel"
						style="margin-right: 350px">编辑用户</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<form id="editForm" class="form-horizontal" action="#"
							method="post">
							<div class="form-group ">
								<label for="sName" class="col-xs-3 control-label">真实姓名：</label>
								<div class="col-xs-8 ">
									<input type="text" class="form-control input-sm duiqi"
										id="sNamee" name="username" placeholder=""> <input
										id="editId" type="hidden" name="id" value="">
								</div>
							</div>
							<div class="form-group">
								<label for="sLink" class="col-xs-3 control-label">昵称：</label>
								<div class="col-xs-8 ">
									<input type="" class="form-control input-sm duiqi" id="sLinkk"
										name="nickname" placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label for="sOrd" class="col-xs-3 control-label">电子邮箱：</label>
								<div class="col-xs-8">
									<input type="" class="form-control input-sm duiqi" id="sOrdd"
										name="email" placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label for="sKnot" class="col-xs-3 control-label">电话：</label>
								<div class="col-xs-8">
									<input type="" class="form-control input-sm duiqi" id="sKnoto"
										name="phone" placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label for="sKnot" class="col-xs-3 control-label">地区：</label>
								<div class="col-xs-8">
									<input type="" class="form-control input-sm duiqi" id="sKnott"
										name="address" placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label for="situation" class="col-xs-3 control-label">状态：</label>
								<div class="col-xs-8">
									<label class="control-label" for="anniu"> <input
										type="radio" name="state" value=0 id="norma">正常
									</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label
										class="control-label" for="meun"> <input type="radio"
										name="state" value=1 id="forbi"> 禁用
									</label>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-xs btn-white"
						data-dismiss="modal">取 消</button>
					<button type="button" class="btn btn-xs btn-greeen" id="editSave">保
						存</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<!--弹出删除用户警告窗口-->
	<div class="modal fade" id="deleteUser" role="dialog"
		aria-labelledby="gridSystemModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close"></button>
					<h4 class="modal-title" id="gridSystemModalLabel"
						style="margin-right: 50px">提示</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">确定要删除该用户？删除后不可恢复！</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-xs btn-white"
						data-dismiss="modal">取 消</button>
					<button type="button" class="btn  btn-xs btn-danger" id="delete">保
						存</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<!-- Essential javascripts for application to work-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>
	<!-- The javascript plugin to display page loading on top-->
	<script src="js/plugins/pace.min.js"></script>
	<!-- Page specific javascripts-->
	<!-- Data table plugin-->
	<%--<script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>--%>
	<%--<script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>--%>
	<%--<script type="text/javascript">$('#sampleTable').DataTable();</script>--%>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/locale/bootstrap-table-zh-CN.min.js"></script>

	<script type="text/javascript">
		//通过bootstroptable生成表单
		$(function() {
			//初始化表格
			$("#mytable").bootstrapTable({
				toolbar:'#toolbar',
				//列参数
				columns : [ {
					field : 'username',
					title : '真实姓名',
					width : '13%',
					align : 'center'

				}, {
					field : 'nickname',
					title : '昵称',
					width : '13%',
					align : 'center'
				}, {
					field : 'email',
					title : '邮件',
					width : '13%',
					align : 'center'
				}, {
					field : 'phone',
					title : '电话',
					width : '13%',
					align : 'center'
				}, {
					field : 'address',
					title : '地址',
					width : '13%',
					align : 'center'
				}, {
					field : 'state',
					title : '状态',
					formatter:function(value,row,index){
						if(value==0){
							return "正常";
						}else if(value==1){
							return "禁用";
						}
					},
					width : '13%',
					align : 'center'

				}, {
					field : '',
					title : '操作',
					width : '13%',
					align : 'center',
					formatter : AddFunctionAlty
				//表格中增加按钮
				} ],
				//请求地址
				url : 'users',
				//请求方式
				method : 'post',
				//打开搜索框
				search : true,
				//按回车键后进行搜索
				searchOnEnterKey : true,
				//开启分页功能
				pagination : true,
				//第一次加载第一页
				pageNumber : 1,
				//每页显示条数
				pageSize : 2,
				//	striped:true,//是否显示行间隔色
				showRefresh : true,//是否显示刷新按钮

				//分页方式：默认客户端分页，修改为服务端分页
				sidePagination : 'server'
			});
		});

		//把需要创建的按钮封装在函数中
		function AddFunctionAlty(value, row, index) {
			return [
					'<button id="TableEditor" type="button" class="btn btn-default" onclick="showUser('
							+ row.id
							+ ')" data-toggle="modal" data-target="#reviseUser">编辑</button>&nbsp&nbsp',
					'<button id="TableDelete" type="button" class="btn btn-default" data-toggle="modal" onclick="deleteUser('
							+ row.id
							+ ')"data-target="#deleteUser">删除</button>' ]
					.join("")
		}

		//数据回显以及更改模态框标题
		function showUser(id) {
			//数据回显
			var param = {
				"id" : id
			};
			$.ajax({
				url : "${pageContext.request.contextPath}/findUserById",
				data : param,
				dataType : "json",
				type : "post",
				success : function(rec) {
					$("#editId").val(rec.id);
					$("#sNamee").val(rec.username);
					$("#sLinkk").val(rec.nickname);
					$("#sOrdd").val(rec.email);
					$("#sKnoto").val(rec.phone);
					$("#sKnott").val(rec.address);
					if (1) {
						$("#norma").attr("checked", "checked");
					}
					if (rec.state == 1) {
						$("#forbi").attr("checked", "checked");
					}
				}
			});
			//更改模态框标题内容
			$("#gridSystemModalLabel").text("编辑用户");
		}

		function addUser() {
			//更改模态框标题内容
			$("#gridSystemModalLabel").text("添加用户");
		}
	</script>
	<script type="text/javascript">
		//增添或提交更改后的数据并持久化到数据库
		$("#editSave").click(
				function() {
					if ($("#editId").val() != "") {//修改用户提交前处理
						if ($("#sNamee").val() == null
								|| $("#sNamee").val() == "") {
							alert("昵称不能为空!")
						} else if ($("#sLinkk").val() == null
								|| $("#sLinkk").val() == "") {
							alert("真实姓名不能为空!")
						} else if ($("#sOrdd").val() == "") {
							alert("email不能为空!")
						} else if ($("#sKnott").val() == "") {
							alert("地址不能为空!")
						} else if ($("#sKnoto").val().length != 11) {
							alert("手机号码必须为11位!")
						} else if (isNaN($("#sKnoto").val())) {
							alert("手机号码必须为数字!")
						} else {
							$("#editForm").attr("action", "modify");
							confirm("您确定保存?")
							$("#editForm").submit();
						}
					} else if ($("#editId").val() == ""
							|| $("#editId").val() == null) {//增添用户提交前处理
						if ($("#sNamee").val() == null
								|| $("#sNamee").val() == "") {
							alert("昵称不能为空!")
						} else if ($("#sLinkk").val() == null
								|| $("#sLinkk").val() == "") {
							alert("真实姓名不能为空!")
						} else if ($("#sOrdd").val() == "") {
							alert("email不能为空!")
						} else if ($("#sKnott").val() == "") {
							alert("地址不能为空!")
						} else if ($("#sKnoto").val().length != 11) {
							alert("手机号码必须为11位!")
						} else if (isNaN($("#sKnoto").val())) {
							alert("手机号码必须为数字!")
						} else {
							$("#editForm").attr("action", "add");
							confirm("您确定保存?")
							$("#editForm").submit();
						}
					}
				});
		//删除数据
		function deleteUser(id) {
			$("#delete")
					.click(
							function() {
								location.href = "${pageContext.request.contextPath}/remove?id="
										+ id;
							});
		}
	</script>


	<!-- Google analytics script-->
	<script type="text/javascript">
		if (document.location.hostname == 'pratikborsadiya.in') {
			(function(i, s, o, g, r, a, m) {
				i['GoogleAnalyticsObject'] = r;
				i[r] = i[r] || function() {
					(i[r].q = i[r].q || []).push(arguments)
				}, i[r].l = 1 * new Date();
				a = s.createElement(o), m = s.getElementsByTagName(o)[0];
				a.async = 1;
				a.src = g;
				m.parentNode.insertBefore(a, m)
			})(window, document, 'script',
					'//www.google-analytics.com/analytics.js', 'ga');
			ga('create', 'UA-72504830-1', 'auto');
			ga('send', 'pageview');
		}
	</script>
</body>
</html>







