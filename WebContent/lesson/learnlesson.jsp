<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">
<div class="row">
	<h3> <i> Learn category </i>
		<%
			out.print( request.getSession().getAttribute("category")+" ");
			out.print( request.getSession().getAttribute("count")+"/20");
		%>
	</h3>
</div>
<div class="col-md-5 text-right">
	<br>
	<h2>${word.content }</h2>
</div>
<div class="col-md-offset-1 col-md-4 pull-left">
	<s:iterator value="listAnswer">
		<div class="row">
			<br>
			<form
				action="${pageContext.request.contextPath}/lesson/learnLesson${category_id }"
				method="post">
				<input type="hidden" name="answer.word_answer_id"
					value="${word_answer_id }" /> <input type="hidden"
					name="answer.word_id" value="${word_id }" /> <input type="hidden"
					name="answer.content" value="${content }" />

				<button type="submit" class="btn btn-default btn-block">${content }</button>
			</form>
		</div>
	</s:iterator>
</div>

</div>
