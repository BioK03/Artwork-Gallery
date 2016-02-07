<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<jsp:include page="../layout/head.jsp"></jsp:include>


	<body>
		<h1 class="Tcenter josefin"> Suppression d'un adhérent </h1> 
	
		<div class="pageinner Tleft">
			<div class="col-xs-10 col-xs-offset-1 noPadding Tcenter">
				<p class="Dinline">Êtes-vous sur de vouloir supprimer l'adhérent</p>
				<p class="uppercase Dinline">${adherent.lastname}</p>
				<p class="capitalize Dinline">${adherent.firstname}</p>
				<p class="Dinline">?</p>
			</div>
			<a class="aStyle col-xs-4 col-xs-offset-4 Tcenter btn btn-expo" href="AdherentController?action=delete&id=${adherent.id}">Confirmer la suppression</a>
			<a class="aStyle col-xs-4 col-xs-offset-4 Tcenter" href="AdherentController?action=list">Retour à la liste</a>
		</DIV>
		<jsp:include page="../layout/footer.jsp"></jsp:include>
	</body>
</html>