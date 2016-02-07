<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<jsp:include page="layout/head.jsp"></jsp:include>
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
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</body>
</html>