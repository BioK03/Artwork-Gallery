<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<jsp:include page="../Layout/head.jsp"></jsp:include>


	<body>
		<h1 class="Tcenter josefin"> Ajout d'un oeuvre </h1> 
	
		<div class="pageinner Tleft">
			<form  name='identification' method="post" action="AdherentController?action=insertOrUpdate" onsubmit="return teste()">
				
		        <input type="submit" name="bt"  value="Ajouter" class="btn btn-expo col-xs-6 col-xs-offset-3 mTop2em" > 
			</form>
			<a class="aStyle col-xs-4 col-xs-offset-4 Tcenter" href="OeuvreController?action=list&etat=venter">Retour à la liste</a>
		</DIV>
		<jsp:include page="../Layout/footer.jsp"></jsp:include>
	</body>
</html>