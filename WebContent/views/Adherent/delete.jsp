<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<jsp:include page="../layout/head.jsp"></jsp:include>


	<body>
		<h1 class="Tcenter josefin"> Suppression d'un adhérent </h1> 
	
		<div class="pageinner Tleft">
			<p class="col-xs-10 col-xs-offset-1 noPadding Tcenter">Êtes-vous sur de vouloir supprimer l'adhérent ${adherent.lastname} ${adherent.firstname} ?</p>p>
			<a class="aStyle col-xs-4 col-xs-offset-4 Tcenter btn btn-expo" href="AdherentController?action=deleteConfirmation&id=${adherent.id}">Confirmer la suppression</a>
			<a class="aStyle col-xs-4 col-xs-offset-4 Tcenter" href="AdherentController?action=list">Retour à la liste</a>
		</DIV>
		<jsp:include page="../layout/footer.jsp"></jsp:include>
	</body>
</html>