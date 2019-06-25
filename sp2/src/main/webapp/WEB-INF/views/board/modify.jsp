<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="../includes/header.jsp"%>

       <!-- Begin Page Content -->
       <div class="container-fluid">

         <!-- Page Heading -->
         <h1 class="h3 mb-4 text-gray-800">Board Modify/Delete Page</h1>
        
        <div class="card shadow mb-4">
           <div class="card-header py-3">
             <h6 class="m-0 font-weight-bold text-primary">Modify/Delete</h6>
           </div>
           <div class="card-body">
  
  
  
  
  
 			  <div class="form-group">
 			  <form id='form1'>
                 <input type="text" name ='bno' class="form-control form-control-user" placeholder="Bno" value='<c:out value="${vo.bno}"/>' readonly="readonly"> 
             </div>
  
              <div class="form-group">
                  <input type="text" name ='title' class="form-control form-control-user" placeholder="Title" value='<c:out value="${vo.title}"/>' > 
              </div>
              <div class="form-group">
                <input type="text" name ='content' class="form-control form-control-user" placeholder="Content"  value='<c:out value="${vo.content}"/>' >
              </div>
              <div class="form-group">
                <input type="text" name = 'writer' class="form-control form-control-user" placeholder="Writer"  value='<c:out value="${vo.writer}"/>' readonly="true">
              </div>
			</form>
			
           <button class="btn btn-danger">Delete</button>
           
           <button class="btn btn-warning">Modify</button>
             <hr>
             
             <a href="/board/list" class="btn btn-secondary">
                 Go to List
               </a>
            </div>
       </div>
       <!-- /.container-fluid -->
           
        <script>
       $('.btn-danger').on("click",function(){
    	   console.log("delete button click");
    	   
    	   var formObj = $("#form1");
    	   	formObj
    	   		.attr("action" ,"/board/remove")
    	   		.attr("method", "post")
    	   		.submit();
    
       });
       
       $('.btn-warning').on("click",function(){
    	   console.log("modify button click");
    	   
    	   var formObj = $("#form1");
    	   	formObj
    	   		.attr("action" ,"/board/modify")
    	   		.attr("method", "post")
    	   		.submit();
 	   
       });
        </script>
<%@include file="../includes/footer.jsp"%>


</body>
</html><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>