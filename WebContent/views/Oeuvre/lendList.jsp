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
					<th class="col-xs-3 DiBlock noPadding Tcenter">Titre</th>
					<th class="col-xs-2 DiBlock noPadding Tcenter">Etat</th>
					<th class="col-xs-2 DiBlock noPadding Tcenter">Prix</th>
					<th class="col-xs-3 DiBlock noPadding Tcenter">Propriétaire</th>
					<th class="col-xs-1 DiBlock noPadding Tcenter"></th>
				</tr>
		
				<c:forEach items="${mesOeuvres}" var="item">
					<tr class="col-xs-12 noPadding">
						<td class="col-xs-1 DiBlock noPadding">${item.idOeuvrevente}</td>
						<td class="col-xs-3 DiBlock noPadding">${item.titreOeuvrevente}</td>
						<td class="col-xs-2 DiBlock noPadding">${item.etatOeuvrevente}</td>
		                <td class="col-xs-2 DiBlock noPadding">${item.prixOeuvrevente}</td>
		                <td class="col-xs-3 DiBlock noPadding">${item.proprietaire.nomProprietaire} ${item.proprietaire.prenomProprietaire} (${item.proprietaire.idProprietaire})</td>
		                <td class="col-xs-1 DiBlock noPadding">
		                	<a class="glyphicon glyphicon-edit col-xs-6 noPadding DiBlock aStyle" href="OeuvreController?action=edit&id=${item.idAdherent}"></a>
		                	<a class="glyphicon glyphicon-remove col-xs-6 noPadding DiBlock aStyle" href="OeuvreController?action=delete&id=${item.idAdherent}"></a>
		                </td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<jsp:include page="../layout/footer.jsp"></jsp:include>
	</body>
</html>