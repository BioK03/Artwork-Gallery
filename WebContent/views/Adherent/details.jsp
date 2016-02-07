<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
						<th class="col-xs-6 Tcenter">Oeuvre</th>
						<th class="col-xs-6 Tcenter">Date</th>
					</tr>
					<c:forEach items="${bookings}" var="booking">
						<tr class="col-xs-12 noPadding">
							<td class="col-xs-6 Tcenter">${booking.oeuvre.title}</td>
							<td class="col-xs-6 Tcenter">${booking.date}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<a class="aStyle col-xs-4 col-xs-offset-4 Tcenter" href="AdherentController?action=list">Liste des adéhrents</a>
		</DIV>
		<jsp:include page="../layout/footer.jsp"></jsp:include>
	</body>
</html>