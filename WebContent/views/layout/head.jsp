<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Expo : Médiathèque De POLYTECH</title>
	<link rel="stylesheet" href="lib/nprogress/nprogress.css"/>
	<link href='https://fonts.googleapis.com/css?family=Josefin+Sans:700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="lib/bootstrapdatepicker/css/bootstrap-datepicker.min.css"/>
	<link rel="stylesheet" href="lib/fontawesome/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/oeuvre.css"/>
</head>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand josefin" href="Controller?action=index">Expo : Médiathèque de Polytech</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="AdherentController?action=list">Adhérents</a></li>
        <li><a href="OeuvreController?action=listLoan">Oeuvres</a></li>
        <li><a href="BookingController?action=add">Réserver !</a></li>
        <c:if test="${not empty flashbag && not empty flashbagType}">
        	<li class="flashbag flashbag${flashbagType}">${flashbag}</li>
        </c:if>
      </ul>
    </div>
  </div>
</nav>