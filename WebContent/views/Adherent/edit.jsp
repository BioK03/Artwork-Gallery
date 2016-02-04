<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<jsp:include page="../layout/head.jsp"></jsp:include>


	<body>
		<h1 class="Tcenter josefin"> Edition d'un adhérent </h1> 
	
		<div class="pageinner Tleft">
			<form  name='identification' method="post" action="AdherentController?action=insertOrUpdate" onsubmit="return teste()">
				<input type="hidden" id="id" name="id" value="${adherent.id}"/>
				<span class="col-xs-6 col-xs-offset-3 noPadding mTop2em">
				    <input class="col-xs-12 inputStyle noOutline input-customPlaceholder" type="text" name="lastname" 
				    	value="${adherent.lastname}" placeholder="Nom" id ="nom" customplaceholder="0" autocomplete="off">
			    </span>
			    <span class="col-xs-6 col-xs-offset-3 noPadding mTop2em">
			        <input class="col-xs-12 inputStyle noOutline input-customPlaceholder" type="text" name="firstname"
			        	value="${adherent.firstname}" placeholder="Prénom" id ="prenom" customplaceholder="0" autocomplete="off">
		        </span>
		        <span class="col-xs-6 col-xs-offset-3 noPadding mTop2em">
				  <input class="col-xs-12 inputStyle noOutline input-customPlaceholder" type="text" name="city"
					value="${adherent.city}" placeholder="Ville" id ="ville" customplaceholder="0" autocomplete="off">	 
			    </span>   
		        <input type="submit" name="bt" value="Ajouter" class="btn btn-expo col-xs-6 col-xs-offset-3 mTop2em" > 
			</form>
			<a class="aStyle col-xs-4 col-xs-offset-4 Tcenter" href="AdherentController?action=list">Retour à la liste</a>
		</DIV>
		<jsp:include page="../layout/footer.jsp"></jsp:include>
	</body>
</html>