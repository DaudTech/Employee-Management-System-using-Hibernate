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
	    	          <form action="confirmdelete.jsp">
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
	    	    	  <td>
	    	    	  <input type="hidden" value="<%=eid%>" name="empid">
	    	    	  <%=eid%>
	    	    	  </td>
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
	    	          <div class='form-group col-md-12' align="right">
                      <button class='btn btn-primary'>Confirm Delete</button>
                      </div>
	    	       </div>
	    	       </div>
                    
	    	  </form> 
	    	       
	    	    	  <%
	    	      }
	    	      else
	    	      {
	    	    	  %>
	    	    	     <%@ include file="deletePage.jsp" %>
	    	   		     <div class="dv">
	    			       <h1 class="lamsg">Employee Id <%=eid%> does not exist</h1>
	    			     </div>
	    			   <% 
	    	      }
	 	      %>
    </body>
	</html>