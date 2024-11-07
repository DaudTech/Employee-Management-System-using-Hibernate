<%@page import="com.cetpa.*"%>
<%@page import="java.util.List"%>
<%@ include file="nav.jsp" %>
<html>
    <body onload="makeActive('list')">
	    	<div class="container">
	    	 <div class="card">
	    	  <div class="card-body">
	    	   <div class="table">
	    	     <table class="table table-hover">
	    	     <thead>
	    	     <tr>
  	      	        <th>Employee id</th><th>First name</th><th>Last name</th>
  	      	        <th>Phone number</th><th>Email Id</th><th>Department</th><th>Salary</th>
  	            </tr>
	    	     </thead>
	    	     <tbody>
	    	    	  <tr>
	    	    	  <%
	    	    	   List<Employee> emplist=EmployeeRepository.getEmployeeList();
	    	    	   for(Employee emp: emplist)
	    	    	   {
	    	    	  %>
	    	    	  <td><%=emp.getEid()%></td>
	    	    	  <td><%=emp.getFirstname()%></td>
	    	    	  <td><%=emp.getLastname()%></td>
	    	    	  <td><%=emp.getPhone()%></td>
	    	    	  <td><%=emp.getEmailid()%></td>
	    	    	  <td><%=emp.getDepartment()%></td>
	    	    	  <td><%=emp.getSalary()%></td>
	    	    	  </tr>
	    	    	  <%
	    	    	   }
	    	    	  %>
	    	     </tbody>
	    	     </table>
	    	    </div>
	    	   </div>
	    	  </div>
	    	 </div>  
    </body>
</html>