<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/common/setting.jsp"%>
<html>
<link rel="stylesheet" type="text/css" href="${ctx}/reports/tiles/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/reports/tiles/ace/css/ace.min.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/reports/tiles/ace/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/reports/skins/css/reports.css" />
<script type="text/javascript" src="${ctx}/reports/tiles/js/jquery-2.2.3.min.js"></script>
<body>
<jsp:include page="/common/header.jsp"/>
<div class="container">
<div class="col-md-12">
<div class="content">
		<div class="panel-body">
			<div class="adv-table">
			 <form id="pageForm" action="${ctx }/user/showUser" method="post">
				<table  class="display table table-bordered table-striped" id="dynamic-table">
					<thead>
						<tr>
							<th  width="10%">编号</th>
							<th  width="25%">名称</th>
							<th  width="25%">级别</th>
							<th  width="25%">状态</th>
							<th  width="25%">操作</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${pageInfo.list}" var="db">
						<tr>
						   <td>${db.id }</td>
						   <td>${db.dbName }</td>
						   <td>${db.level }</td>
						   <td>${db.status }</td>
						   <td>${db.id }</td> 
						</tr>
					</c:forEach>	
					</tbody>
				</table>
				<jsp:include page="/common/pager.jsp"/>
				</form>
			</div>
		</div>
	</div>
</div>
</div>
</body>
</html>
