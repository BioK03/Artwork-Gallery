<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<jsp:include page="../layout/head.jsp"></jsp:include>
	<body>
		<h1 class="Tcenter">
			Listing des Adhérents
			<a class="Dinline" href="AdherentControleur?action=ajouterAdherent"><span class="glyphicon glyphicon-plus"></span></a>
		</h1>
		
		<div class="pageinner">
			<TABLE class="tablePerso Tcenter">
				<TR class="col-xs-12 noPadding">
					<TH class="col-xs-2 DiBlock noPadding Tcenter">Numero</TH>
					<TH class="col-xs-3 DiBlock noPadding Tcenter">Nom</TH>
					<TH class="col-xs-3 DiBlock noPadding Tcenter">Prénom</TH>
					<TH class="col-xs-4 DiBlock noPadding Tcenter">Ville</TH>
		
				</TR>
		
				<c:forEach items="${mesAdherents}" var="item">
					<tr class="col-xs-12 noPadding">
						<td class="col-xs-2 DiBlock noPadding">${item.idAdherent}</td>
						<td class="col-xs-3 DiBlock noPadding">${item.nomAdherent}</td>
						<td class="col-xs-3 DiBlock noPadding">${item.prenomAdherent}</td>
		                <td class="col-xs-4 DiBlock noPadding">${item.villeAdherent}</td>
					</tr>
				</c:forEach>
			</TABLE>
		</div>
		<jsp:include page="../layout/footer.jsp"></jsp:include>
	</body>
</html>