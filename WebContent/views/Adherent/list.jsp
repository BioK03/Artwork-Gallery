<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<jsp:include page="../layout/head.jsp"></jsp:include>
	<body>
		<h1 class="Tcenter josefin col-xs-4 col-xs-offset-4 noPadding">Listing des Adhérents</h1>
		<h1>
			<a class="col-xs-1 aStyle Tcenter" href="AdherentController?action=add">
				<span class="glyphicon glyphicon-plus"></span>
			</a>
		</h1>
		<div class="pageinner">
			<table class="tablePerso Tcenter">
				<tr class="col-xs-12 noPadding">
					<th class="col-xs-2 DiBlock noPadding Tcenter">Numero</th>
					<th class="col-xs-3 DiBlock noPadding Tcenter">Nom</th>
					<th class="col-xs-3 DiBlock noPadding Tcenter">Prénom</th>
					<th class="col-xs-3 DiBlock noPadding Tcenter">Ville</th>
					<th class="col-xs-1 DiBlock noPadding Tcenter"></th>
				</tr>
		
				<c:forEach items="${adherents}" var="adherent">
					<tr class="col-xs-12 noPadding">
						<td class="col-xs-2 DiBlock noPadding">${adherent.id}</td>
						<td class="col-xs-3 DiBlock noPadding">${adherent.lastname}</td>
						<td class="col-xs-3 DiBlock noPadding">${adherent.firstname}</td>
		                <td class="col-xs-3 DiBlock noPadding">${adherent.city}</td>
		                <td class="col-xs-1 DiBlock noPadding">
		                	<a class="glyphicon glyphicon-edit col-xs-6 noPadding DiBlock aStyle" href="AdherentController?action=edit&id=${adherent.id}"></a>
		                	<a class="glyphicon glyphicon-remove col-xs-6 noPadding DiBlock aStyle" href="AdherentController?action=deleteConfirmation&id=${adherent.id}"></a>
		                </td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<jsp:include page="../layout/footer.jsp"></jsp:include>
	</body>
</html>