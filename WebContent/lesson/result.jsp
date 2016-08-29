<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="container">
	<div class="row">
		<h3>
			<i> Learn category </i>
			<%
				out.print(request.getSession().getAttribute("category") + " ");
				out.print(request.getSession().getAttribute("count") + "/20");
			%>
		</h3>
	</div>
	<div class="row result-lesson">
		<div id="result" class="col-md-offset-1 col-md-2 text-right">
			<s:iterator value="result" status="typeResult" var="type">
				<div class="result">
					<s:if test="#type">
						<span class="glyphicon glyphicon-remove-circle"></span>
					</s:if>
					<s:else>
						<span class="glyphicon glyphicon-ok-circle"></span>
					</s:else>
				</div>
				<hr>
			</s:iterator>
		</div>
		<div class="col-md-4 ">
			<s:iterator value="question">
				<div class="word">
					<br> ${content }
				</div>
				<hr>
			</s:iterator>
		</div>
		<div class="col-md-4">
			<s:iterator value="choice">
				<div class="choice">
					<br> ${content }
				</div>
				<hr>
			</s:iterator>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2 col-md-offset-4">
			<div class="row text-center">
				<h3>
					<a
						href="${pageContext.request.contextPath}/lesson/learnLesson${category_id }">Continue</a>
				</h3>
			</div>
		</div>
		<div class="col-md-2">
			<div class="row text-center">
				<h3>
					<a
						href="${pageContext.request.contextPath}/category/listAllCategory">Back</a>
				</h3>
			</div>
		</div>
	</div>
</div>
