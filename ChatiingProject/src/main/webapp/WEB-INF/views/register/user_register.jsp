<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/co/common1.jsp" %>


<div class="container">
  <p>This is Register</p>
 
  <div class="col-lg-12">
	  <div class="row">
	    <div class="col-lg-12 maindiv" style="background-color:lavender;">
	    		<form>
				    <div class="row box">
			    			<div class="col-lg-2">
					    			<label >아이디</label>
					    	</div>
					    	<div class="col-lg-10">
					    		<input type="text" class="form-control" name="USER_ID" id="USER_ID">	
					    	</div>
					</div>
					
					<div class="row box">
			    			<div class="col-lg-2">
					    			<label>패스워드</label>
					    	</div>
					    	<div class="col-lg-10">
					    		<input type="text" class="form-control" name="USER_PW" id="USER_PW">	
					    	</div>
					</div>
					
					<div class="row box">
			    			<div class="col-lg-2">
					    			<label>이메일</label>
					    	</div>
					    	<div class="col-lg-10">
					    		<input type="text" class="form-control" name="USER_EMAIL" id="USER_EMAIL">	
					    	</div>
					</div>
					<div class="row box">
			    			<div class="col-lg-3">
					    			<label>전화번호</label>
					    	</div>
					    	<div class="col-lg-2">
					    		<input type="text" class="form-control" name="USER_PHONE1" id="USER_PHONE1">	
					    	</div>
					    		<label class="col-lg-1 left">-</label>
					    	<div class="col-lg-2">
					    		<input type="text" class="form-control" name="USER_PHONE2" id="USER_PHONE2">	
					    	</div>
					    	<label class="left col-lg-1">-</label>
					    	<div class="col-lg-2">
					    		<input type="text" class="form-control" name="USER_PHONE3" id="USER_PHONE3">	
					    	</div>
					</div>
					<div class="row box">
			    			<div class="col-lg-2">
					    			<label>이메일</label>
					    	</div>
					    	<div class="col-lg-4">
					    		<input type="text" class="form-control" name="USER_EMAIL" id="USER_EMAIL">	
					    	</div>
					    	<div class="col-lg-6">
					    		<input type="text" class="form-control" name="USER_EMAIL" id="USER_EMAIL">	
					    	</div>
					</div>
					
				</form>
	    	
	    </div>
	  
	  </div>
  </div>
</div>
</body>
</html>
