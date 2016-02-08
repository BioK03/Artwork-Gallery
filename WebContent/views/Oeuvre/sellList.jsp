<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<jsp:include page="../layout/head.jsp"></jsp:include>
	<body>
		<ul class="nav nav-tabs mTop2em Dblock">
		  <li role="presentation" class="active"><a class="aStyle" href="#">Vente</a></li>
		  <li role="presentation"><a class="aStyle" href="OeuvreController?action=listLoan">Prêt</a></li>
		  <li role="presentation"><a class="aStyle" href="#">Propriétaires</a></li>
		</ul>
		<h1 class="Tcenter josefin col-xs-4 col-xs-offset-4 noPadding">Listing des oeuvres en vente</h1>
		<h1>
			<a class="col-xs-1 aStyle Tcenter" href="OeuvreController?action=add">
				<span class="glyphicon glyphicon-plus"></span>
			</a>
		</h1>
		<div class="pageinner">
			<table class="tablePerso Tcenter">
				<tr class="col-xs-12 noPadding">
					<th class="col-xs-1 DiBlock noPadding Tcenter">Numero</th>
					<th class="col-xs-3 DiBlock noPadding Tcenter">Titre</th>
					<th class="col-xs-2 DiBlock noPadding Tcenter">Etat</th>
					<th class="col-xs-2 DiBlock noPadding Tcenter">Prix</th>
					<th class="col-xs-3 DiBlock noPadding Tcenter">Propriétaire</th>
					<th class="col-xs-1 DiBlock noPadding Tcenter"></th>
				</tr>
		
				<c:forEach items="${sellOeuvres}" var="oeuvre">
					<tr class="col-xs-12 noPadding">
						<td class="col-xs-1 DiBlock noPadding">
							<a class="aStyle" href="OeuvreController?action=sellDetails&id=${oeuvre.id}">
								<span class="glyphicon glyphicon-search"></span>
							</a>
							${oeuvre.id}
						</td>
						<td class="col-xs-3 DiBlock noPadding">${oeuvre.title}</td>
						<td class="col-xs-2 DiBlock noPadding">${oeuvre.condition}</td>
		                <td class="col-xs-2 DiBlock noPadding">${oeuvre.price} €</td>
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