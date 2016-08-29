<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">
	<div class="row">
		<h2>User List</h2>
	</div>
	<div>
		<s:iterator value="userList">
			<div class="row result-userlist">
				<div class="col-md-offset-2 col-md-2">
					${username}
				</div>
				<div class="col-md-8">
					<a href="href="
						${pageContext.request.contextPath}/user/findByUserId${user_id }" class="btn btn-info btn-sm"
						role="button">View Profile</a>
				</div>
			</div>
		</s:iterator>
		<div class="row"></div>
	</div>
</div>
