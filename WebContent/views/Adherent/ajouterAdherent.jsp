<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<jsp:include page="../layout/head.jsp"></jsp:include>


	<body>
		<H1 class="Tcenter"> Ajout d'un adhérent </H1> 
	
		<DIV class="pageinner Tleft">
			<FORM  name='identification' method="post" action="AdherentControleur?action=insererAdherent" onsubmit="return teste()">
			    <INPUT class="col-xs-4" type="text" name="txtnom" value="" placeholder="Nom" id ="nom">
		        <INPUT class="col-xs-4 col-xs-offset-4" type="text" name="txtprenom" placeholder="Prénom" id ="prenom">
		        <INPUT class="col-xs-4" type="text" name="txtville" placeholder="Ville" id ="ville">
		        <br/>
	          
		        <INPUT type="submit" name="bt"  value="Ajouter" class="btn btn-primary" > 
			</FORM>
			<a href="AdherentControleur?action=listerAdherent">Retour à la liste</a>
		</DIV>
		<jsp:include page="../layout/footer.jsp"></jsp:include>
	</body>
</html>