<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:choose>
<c:when test="${sessionScope.usertype eq 'admin'}">
 <jsp:include page="adminMenu.jsp"></jsp:include> 
</c:when>
<c:otherwise>
<jsp:include page="department_menu.jsp"></jsp:include>
</c:otherwise>
</c:choose>
