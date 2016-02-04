<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
		
				<c:forEach items="${mesAdherents}" var="item">
					<tr class="col-xs-12 noPadding">
						<td class="col-xs-2 DiBlock noPadding">${item.idAdherent}</td>
						<td class="col-xs-3 DiBlock noPadding">${item.nomAdherent}</td>
						<td class="col-xs-3 DiBlock noPadding">${item.prenomAdherent}</td>
		                <td class="col-xs-3 DiBlock noPadding">${item.villeAdherent}</td>
		                <td class="col-xs-1 DiBlock noPadding">
		                	<a class="glyphicon glyphicon-edit col-xs-6 noPadding DiBlock aStyle" href="AdherentController?action=edit&id=${item.idAdherent}"></a>
		                	<a class="glyphicon glyphicon-remove col-xs-6 noPadding DiBlock aStyle" href="AdherentController?action=delete&id=${item.idAdherent}"></a>
		                </td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<jsp:include page="../layout/footer.jsp"></jsp:include>
	</body>
</html>