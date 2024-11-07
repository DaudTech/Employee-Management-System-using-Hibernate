<%@page import="com.cetpa.*"%>
	<html>
		<body>
	<%
	              
	              int eid=Integer.parseInt(request.getParameter("eid"));
	              Employee emp=EmployeeRepository.getEmployeeEid(eid);
	              if(emp!=null)
	    	      {
	    	    	  %>
	    	    	  <%@ include file="nav.jsp" %>
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
	    	    	  <td><%=emp.getEid()%></td>
	    	    	  <td><%=emp.getFirstname()%></td>
	    	    	  <td><%=emp.getLastname()%></td>
	    	    	  <td><%=emp.getPhone()%></td>
	    	    	  <td><%=emp.getEmailid()%></td>
	    	    	  <td><%=emp.getDepartment()%></td>
	    	    	  <td><%=emp.getSalary()%></td>
	    	    	  </tr>
	    	    </tbody>
	    	       </table>
	    	       </div>
	    	       </div>
	    	       </div>
	    	       </div>
	    	    	  <%
	    	      }
	    	      else
	    	      {
	    	    	  %>
	    	    	     <%@ include file="searchPage.jsp" %>
	    	   		     <div class="dv">
	    			       <h1 class="lamsg">Employee Id <%=eid%> does not exist</h1>
	    			     </div>
	    			   <% 
	    	      }
	    	      %>  
    </body>
		</body>
	</html>