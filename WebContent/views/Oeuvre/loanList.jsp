<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<jsp:include page="../layout/head.jsp"></jsp:include>
	<body>
		<ul class="nav nav-tabs">
		  <li role="presentation"><a href="#">Vente</a></li>
		  <li role="presentation" class="active"><a href="#">Prêt</a></li>
		</ul>
		<h1 class="Tcenter josefin col-xs-4 col-xs-offset-4 noPadding">Listing des oeuvres en prêt</h1>
		<h1>
			<a class="col-xs-1 aStyle Tcenter" href="OeuvreController?action=add&etat=pret">
				<span class="glyphicon glyphicon-plus"></span>
			</a>
		</h1>
		<div class="pageinner">
			<table class="tablePerso Tcenter">
				<tr class="col-xs-12 noPadding">
					<th class="col-xs-1 DiBlock noPadding Tcenter">Numero</th>
					<th class="col-xs-4 DiBlock noPadding Tcenter">Titre</th>
					<th class="col-xs-5 DiBlock noPadding Tcenter">Propriétaire</th>
					<th class="col-xs-2 DiBlock noPadding Tcenter"></th>
				</tr>

				<c:forEach items="${oeuvres}" var="oeuvre">
					<tr class="col-xs-12 noPadding">
						<td class="col-xs-1 DiBlock noPadding">${oeuvre.id}</td>
						<td class="col-xs-3 DiBlock noPadding">${oeuvre.title}</td>
		                <td class="col-xs-3 DiBlock noPadding">${oeuvre.owner.lastname} ${oeuvre.owner.firstname} (${oeuvre.owner.id})</td>
		                <td class="col-xs-1 DiBlock noPadding">
		                	<a class="glyphicon glyphicon-edit col-xs-6 noPadding DiBlock aStyle" href="OeuvreController?action=edit&id=${oeuvre.id}"></a>
		                	<a class="glyphicon glyphicon-remove col-xs-6 noPadding DiBlock aStyle" href="OeuvreController?action=delete&id=${oeuvre.id}"></a>
		                </td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<jsp:include page="../layout/footer.jsp"></jsp:include>
	</body>
</html>