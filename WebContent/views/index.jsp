<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<!--<jsp:include page="layout/head.jsp"></jsp:include>-->

	<body>
		<div class="container">
			Médiathèque de POLYTECH
			Gestion de l'exposition 2016
			Sélectionnez la fonctionnalité voulue:
			<ul>
				<li><a href="AdherentController?action=add">Ajout Adhérent</a></li>
				<li><a href="AdherentController?action=list">lister les adhérents</a></li>
				<li><a href="#">Quitter</a></li>
			</ul>
		</div>
		<!--<jsp:include page="layout/footer.jsp"></jsp:include>-->
	</body>
</html>