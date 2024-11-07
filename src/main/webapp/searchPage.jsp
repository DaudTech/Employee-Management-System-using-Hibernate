<%@ include file="nav.jsp" %>
<html>
<body>
<body onload="makeActive('search')">
	   <div class="container">
	     <div class='card col-md-9 mx-auto'>
	      <div class="card-body">
           <form action="show.jsp">
            <div class="row">
             <div  class='form-group col-md-5'>
               <label for="eid">Enter Employee Id</label><span>*</span>
               <input type="text" id="eid" name="eid" class="form-control" required>
             </div>
             <div  class='form-group col-md-10'>
              <button class='btn btn-primary'>Search Record</button>
            </div>
         </div> 
       </form>
       </div>
     </div>
     </div>
</body>
</html>