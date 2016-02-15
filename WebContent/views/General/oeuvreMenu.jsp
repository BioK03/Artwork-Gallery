<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<ul class="nav nav-tabs mTop2em Dblock">
  <li role="presentation" <c:if test="${menu=='sell'}">class="active"</c:if>><a class="aStyle" href="OeuvreController?action=listSell">Vente</a></li>
  <li role="presentation" <c:if test="${menu=='loan'}">class="active"</c:if>><a class="aStyle" href="OeuvreController?action=listLoan">Prêt</a></li>
  <li role="presentation" <c:if test="${menu=='owner'}">class="active"</c:if>><a class="aStyle" href="OwnerController?action=list">Propriétaires</a></li>
</ul>