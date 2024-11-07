<%@page import="com.cetpa.*"%>
<%@ include file="nav.jsp" %>
<html>
<body>
    <%
        int eid=Integer.parseInt(request.getParameter("empid"));
        Employee emp=EmployeeRepository.getEmployeeEid(eid);
        EmployeeRepository.deleteEmployee(emp);
    	%>
    	<div class="dv">
		<h1 class="lamsg">Employee Record has been deleted successfully</h1>
		</div>
       </body>
       </html>