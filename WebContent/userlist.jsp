<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>系统管理</title>

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="css/content.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="js/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript">
    	// 用户权限重新分配
    	// elem: 当前元素对象
//     		employeeId: 用户name
//     		employeeRole: 角色id
    	function rolechange(elem,employeeName,employeeRole){
    		var roleId = elem.value;
    		$.ajax({
    			url:'${pageContext.request.contextPath}/changeRole',
    			type:'POST',
    			data:{
    				userName:employeeName,
    				role:roleId
    			},
    			success:function(requestDate){
    				if(requestDate == true){
	    				alert("成功分配了角色！");
    				}else{
    					alert("未知错误");
    					// 变回原来的
    					$(elem).children("option").each(function(){
    						$(this).removeAttr("selected")
    						
    						if($(this).val() == employeeRole){
    							$(this).attr('selected',true);
    						}
    					})
    				}
    			}
    		})
    	}
    	// 查看用户权限信息
    	function showpermission(id){
    		$("#tddate1").empty();
    		$("#tddate2").empty();
    		$.ajax({
    			url:'${pageContext.request.contextPath}/getRoleAndPermission',
    			type:'POST',
    			data:{
    				userId:id
    			},
    			success:function(requestDate){
//     				console.log(requestDate.name);
    				$("#tddate1").append(requestDate.roleName);
    				var permissionList = requestDate.permissionList;
//     				console.log(permissionList);
    				for(var i = 0; i < permissionList.length; i++){ 
//     					console.log(permissionList[i]);
	    				$("#tddate2").append(permissionList[i].name +'&nbsp;【' + permissionList[i].type + '】<br />');
    				}
    			}
    		})
    		return true;
    	}
    </script>
</head>
<body>

<!--路径导航-->
<ol class="breadcrumb breadcrumb_nav">
    <li>首页</li>
    <li>系统管理</li>
    <li class="active">用户管理</li>
</ol>
<!--路径导航-->

<div class="page-content">
        <div class="panel panel-default">
            <div class="panel-heading">用户列表</div>
            <a href="#"  class="btn btn-success btn-xs"><span class="glyphicon glyphicon-eye-open"></span>新建用户</a>
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th width="15%">ID</th>
                        <th width="15%">账号</th>
                        <th width="20%">电子邮箱</th>
                        <th width="15%">角色分配</th>
                        <th width="15%">上级主管</th>
                        <th width="20%">操作</th>
                    </tr>
                    </thead>
                    <tbody>

						<c:forEach items="${employeeList}" var="employee">
							<tr>
								<td>${employee.id}</td>
								<td>${employee.name}</td>
								<td>${employee.email }</td>
								<td>
									<select id="userRole" onchange="rolechange(this,'${employee.name}',${employee.roleId})">
									<c:forEach items="${roleList}" var="role" >
										<option value="${role.id}" 
											<c:if test="${role.id == employee.roleId}">
												selected='selected'
											</c:if>
										>${role.name}</option>
									</c:forEach>
									</select>
								</td>
								<td>${employee.managerName}</td>
								<td>
	                            	<button data-toggle="modal" onclick="showpermission('${employee.id}')" class="btn btn-success btn-xs" data-target="#myModal">
									<span class="glyphicon glyphicon-eye-open"></span>查看权限
								</td>
							</tr>
						</c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
</div>
 
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
	            <span class="modal-title" id="myModalLabel">权限列表</sapn>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;<tton>
            </div>
            <div class="modal-body">
            	<table id="permissionTable" class="table">
            		<tr>
            			<th>角色</th>
            			<th>权限</th>
            		</tr>
            		<tr>
            			<td id="tddate1"></td>
            			<td id="tddate2"></td>
            		</tr>
            	</table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭<tton>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
</body>
</html>