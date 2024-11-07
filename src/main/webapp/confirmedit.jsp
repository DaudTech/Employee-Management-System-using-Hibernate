<%@page import="com.cetpa.*"%>
<%@ include file="nav.jsp" %>
	<html>
	<body>
    <%
        int eid=Integer.parseInt(request.getParameter("neweid"));
        String first=request.getParameter("newfirstname");
        String last=request.getParameter("newlastname");
        String phone=request.getParameter("newphone");
        String email=request.getParameter("newemail");
        String dept=request.getParameter("newdept");
        String sal=request.getParameter("newsal");
        Employee empnew=new Employee(eid,first,last,phone,email,dept,sal);
        Employee empold=EmployeeRepository.getEmployeeEid(eid);
        EmployeeRepository.updateEmployee(empnew,empold);
     
        
    %>
    <div class="dv">
		<h1 class="lamsg">Employee Record has been Updated successfully</h1>
	</div>
	</body>
	</html>