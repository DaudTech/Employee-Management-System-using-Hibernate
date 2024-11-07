<%@page import="com.cetpa.*"%>
<%@ include file="nav.jsp" %>
<html>
<body>
      <%
      int eid=Integer.parseInt(request.getParameter("eid"));
      String fname=request.getParameter("firstname");
      String lname=request.getParameter("lastname");
      String phn=request.getParameter("phone");
      String emal=request.getParameter("email");
      String dept=request.getParameter("dept");
      String sal=request.getParameter("sal");
       Employee emp=new Employee(eid,fname,lname,phn,emal,dept,sal);
       EmployeeRepository.saveEmployee(emp);
       
       %>
        <div class="dv">
		<h1 class="lamsg">Employee Record has been saved successfully</h1>
		</div>
</body>
</html>        