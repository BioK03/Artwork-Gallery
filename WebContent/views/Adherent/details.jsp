<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<jsp:include page="../layout/head.jsp"></jsp:include>


	<body>
		<h1 class="Tcenter josefin"> Détails de ${adherent.firstname} ${adherent.lastname}</h1> 
	
		<div class="pageinner Tleft">
			<p>Ville : ${adherent.city}</p><br/>
			<p>Oeuvres réservées :</p><br/>
			<table class="col-xs-12 noPadding">
				<tbody class="col-xs-12 noPadding">
					<tr class="col-xs-12 noPadding">
						<th class="col-xs-5 Tcenter">Oeuvre</th>
						<th class="col-xs-4 Tcenter">Date</th>
						<th class="col-xs-3 Tcenter">Statut</th>
					</tr>
					<c:forEach items="${bookings}" var="booking">
						<tr class="col-xs-12 noPadding">
							<td class="col-xs-5 Tcenter">
								<a class="aStyle" href="OeuvreController?action=sellDetails&id=${booking.sellOeuvre.id}">
									<span class="glyphicon glyphicon-book"></span>
								</a>
								${booking.sellOeuvre.title}
							</td>
							<td class="col-xs-4 Tcenter"><fmt:formatDate value="${booking.date}" pattern="dd/MM/yyyy" /></td>
							<td class="col-xs-3 Tcenter">${booking.status}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<a class="aStyle col-xs-4 col-xs-offset-4 Tcenter" href="AdherentController?action=list">Liste des adéhrents</a>
			<br/>
			<a class="aStyle col-xs-4 col-xs-offset-4 Tcenter" href="BookingController?action=add&return=adherent&id=${adherent.id}">Réservez avec cet adhérent !</a>
		</div>
		<jsp:include page="../layout/footer.jsp"></jsp:include>
	</body>
</html>