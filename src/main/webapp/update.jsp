
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
      <div class='card col-md-9 mx-auto'>
        <div class="card-body">
        <form action="confirmedit.jsp">
          <div class="row">
            <div class='form-group col-md-10' color="red">
              <label for="eid">Employee Id</label><span>*</span>
              <input type="text" id="eid" name="neweid" value="<%=eid%>" class="form-control" required color="red">
            </div>
         </div>
          <div class="row">
            <div class='form-group col-md-5'>
              <label for="firstname">Edit First Name</label><span>*</span>
              <input type="text" id="firstname" name="newfirstname" value="<%=emp.getFirstname()%>" class="form-control" required>
            </div>
            <div class='form-group col-md-5'>
              <label for="lastname">Edit Last Name</label><span>*</span>
              <input type="text" id="lastname" name="newlastname" value="<%=emp.getLastname()%>" class="form-control" required>
            </div>
         </div>
          <div class="row">
            <div class='form-group col-md-5'>
              <label for="phone">Edit Phone No</label><span>*</span>
              <input type="text" id="phone" name="newphone" value="<%=emp.getPhone()%>" class="form-control" required>
            </div>
            <div class='form-group col-md-5'>
              <label for="email">Edit Email Id</label><span>*</span>
              <input type="text" id="email" name="newemail" value="<%=emp.getEmailid()%>" class="form-control" required>
            </div>
         </div>
          <div class="row">
            <div class='form-group col-md-5'>
              <label for="dept">Edit Department</label><span>*</span>
              <input type="text" id="dept" name="newdept" value="<%=emp.getDepartment()%>" class="form-control" required>
            </div>
            <div class='form-group col-md-5'>
              <label for="sal">Edit Salary</label><span>*</span>
              <input type="text" id="sal" name="newsal" value="<%=emp.getSalary()%>" class="form-control" required>
            </div>
         </div>
         <div class="row">
            <div class='form-group col-md-10'>
              <button class='btn btn-primary'>Confirm Edit</button>
            </div> 
          </div> 
        </form>
        </div>
      </div>
    </div>
	    	  <% 
	      }
	      else
	      {
	    	  %>
	    	     <%@ include file="editpage.jsp" %>
	    		<div class="dv">
	    		<h1 class="lamsg">Employee Id <%=eid%> does not exit</h1>
	    		</div>
	    	 <% 
	      }
    %>
	  
    </body>
	</body>
	</html>