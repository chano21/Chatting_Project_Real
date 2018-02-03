<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/co/common1.jsp" %>


<div class="container">
  <p>This is Register</p>
 
  <div class="col-lg-12">
	  <div class="row">
	    <div class="col-lg-12 maindiv" style="background-color:lavender;">
	    		<form action="user_register" id="form_action" name="form_action">
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
			    			
			    			<div class="col-lg-3">
			    				<label>이메일</label>
			    			</div>
			    			<div class="col-lg-9">
					    		<input type="text" name="EMAIL1" id="EMAIL1" value="" size="5" class="" style="ime-mode: disabled;width:125px;margin-right:3px;">@&nbsp;
								<input type="text" name="EMAIL2" id="EMAIL2" size="10" style="ime-mode: disabled;width:125px;">
								<select id="emailSelect" style="display:none; width:125px;">
									<option value="">주소 선택</option>
									<option value="naver.com">naver.com</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="gmail.com">gmail.com</option>
									<option value="wiezon.com">wiezon.com</option>
								</select>	
					    	</div>
					</div>
					<div class="row box">
			    			<div class="col-lg-3">
					    			<label>선택</label>
					    	</div>
					    	<div class="col-lg-3">
						      <input type="radio" name="address_type" id="sEA" value="주소선택" onclick="selectEmail();">주소선택
	                          <input type="radio" name="address_type" id="wEA" value="직접입력" onclick="writeEmail();" checked>직접입력
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
							<div class="col-lg-3">
					    			<label>주소</label>
					    	</div>
							<div class="col-lg-9">
								<input type="text" name="post" id="sample4_postcode" class="form-control left" placeholder="우편번호" required="required" readonly  > 
								<input type="button" id="adress_button" onclick="sample4_execDaumPostcode()"  style="width: 70%" class="form-control" value="우편번호 찾기">
							</div>
					</div>
					<div class="row box">
								<div class="col-lg-3">
						    			<label>주소</label>
						    	</div>
								<div class="col-lg-9">
					    		<input type="text" name="addr1" id="sample4_roadAddress" class="form-control" placeholder="도로명주소" required="required" readonly >
								<input type="text" name="addr2" id="sample4_jibunAddress" class="form-control" placeholder="지번주소" required="required" readonly >
							</div>	
					</div>
					<div class="row box">
								<div class="col-lg-3">
						    			<label>이름</label>
						    	</div>
								<div class="col-lg-9">
					    		<input type="text" name="USER_NAME" id="USER_NAME" class="form-control" >
							</div>	
					</div>
					<div class="row box">
								<div class="col-lg-3">
						    			<label>생년월일</label>
						    	</div>
								<div class="col-lg-9">
					    		
					    		<div class="col-lg-2">
					    		<input type="text" name="USER_YEAR" id="USER_YEAR" class="form-control" >
						    	</div>
						    		<label class="col-lg-1">년</label>
								
								<div class="col-lg-2">
					    			<input type="text" name="USER_MONTH" id="USER_MONTH" class="form-control" >
								</div>	
									<label class="col-lg-1">월</label>
								<div class="col-lg-2">
					    			<input type="text" name="USER_DAY" id="USER_DAY" class="form-control">
								</div>
								<label class="col-lg-1">일</label>
							
							</div>	
					</div>
					<div class="row box">
								<div class="col-lg-3">
						    			<label>성별</label>
						    	</div>
								<div class="col-lg-9">
					    		      <input type="radio" name="USER_SEX">남
                    			      <input type="radio" name="USER_SEX">여
								</div>	
					</div>	
					
					
					<div class="row box">
					  <input type="button" value="Ajax 폼 전송" onclick="formSubmit()" />
					</div>
				</form>
				
	    	
	    </div>
	  
	  </div>
  </div>
</div>


</body>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script type="text/javascript">

	
	function formSubmit()
	{
		  var form = $('#form_action');
    		 var formData = form.serialize();
		 
		 $.ajax({
		        url: '/user_register.do',
		        type: 'GET',
		        data:formData,
		        dataType: 'json',
		        success: function (result) {
		            if (result){
		                // 데이타 성공일때 이벤트 작성
		            }
		        }
		    });
	}
	
	function isValidDate() {
        try
        {
        		
            param = $('#USER_YEAR').val()+$('#USER_MONTH').val()+$('#USER_DAY').val();
 
            // 자리수가 맞지않을때
            if( isNaN(param) || param.length!=8 ) {
                return false;
            }
             
            var year = Number(param.substring(0, 4));
            var month = Number(param.substring(4, 6));
            var day = Number(param.substring(6, 8));
 
            var dd = day / 0;
 
             
            if( month<1 || month>12 ) {
                return false;
            }
             
            var maxDaysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
            var maxDay = maxDaysInMonth[month-1];
             
            // 윤년 체크
            if( month==2 && ( year%4==0 && year%100!=0 || year%400==0 ) ) {
                maxDay = 29;
            }
             
            if( day<=0 || day>maxDay ) {
                return false;
            }
            return true;
 
        } catch (err) {
            return false;
        }                       
    }
	function selectEmail() {
			$("#EMAIL2").hide();
			$("#emailSelect").show();
		}
		
		function writeEmail() {
			$("#emailSelect").hide();
			$("#EMAIL2").show();	
		}
function sample4_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
							var extraRoadAddr = ''; // 도로명 조합형 주소 변수

							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraRoadAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraRoadAddr += (extraRoadAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraRoadAddr !== '') {
								extraRoadAddr = ' (' + extraRoadAddr + ')';
							}
							// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
							if (fullRoadAddr !== '') {
								fullRoadAddr += extraRoadAddr;
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
							document.getElementById('sample4_roadAddress').value = fullRoadAddr;
							document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

						}
					}).open();
		}

</script>
</html>
