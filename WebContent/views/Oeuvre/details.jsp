<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<jsp:include page="../layout/head.jsp"></jsp:include>
	<body>
		<h1 class="Tcenter josefin noPadding">Détails de ${oeuvre.title}</h1>
		
		<div class="pageinner">
			<span class="col-xs-6">Numéro: ${oeuvre.id}</span>
			<span class="col-xs-6">Etat: ${oeuvre.condition}</span>
			<span class="col-xs-6">Prix: <fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2" value="${oeuvre.price}"/> €</span>
			<span class="col-xs-6">Propriétaire: ${oeuvre.owner.firstname} ${oeuvre.owner.lastname}</span>
			<h4 class="Tcenter josefin col-xs-12">Réservations</h4>
			<table class="col-xs-12 noPadding mTop2em">
				<tbody class="col-xs-12 noPadding">
					<tr class="col-xs-12 noPadding">
						<th class="col-xs-5 noPadding Tcenter">Adhérent</th>
						<th class="col-xs-3 noPadding Tcenter">Date</th>
						<th class="col-xs-4 noPadding Tcenter">Statut</th>
					</tr>
					<c:forEach items="${bookings}" var="booking">
						<tr class="col-xs-12 noPadding">
							<td class="col-xs-5 noPadding Tcenter">
								<a class="aStyle" href="AdherentController?action=details&id=${booking.adherent.id}">
									<span class="glyphicon glyphicon-user"></span>
								</a>
								${booking.adherent.firstname} ${booking.adherent.lastname} (${booking.adherent.id})
							</td>
							<td class="col-xs-3 noPadding Tcenter"><fmt:formatDate value="${booking.date}" pattern="dd/MM/yyyy" /></td>
							<td class="col-xs-4 noPadding Tcenter">${booking.status}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<a class="aStyle col-xs-12 Tcenter" href="OeuvreController?action=listSell">Liste des oeuvres en vente</a>
			<br/>
			<a class="aStyle col-xs-12 Tcenter" href="BookingController?action=add&return=selloeuvre&id=${oeuvre.id}">Réservez cette oeuvre !</a>
		</div>
		<jsp:include page="../layout/footer.jsp"></jsp:include>
	</body>
</html>