<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title> 주소 찾기</title>   
	<body>
 <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
 <script>

     function openDaumPostcode() {
         new daum.Postcode({
             oncomplete: function(data) {
                 // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                 // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                 // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                 var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                 if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                 } else { // 사용자가 지번 주소를 선택했을 경우(J)
                     fullAddr = data.jibunAddress;
                 }

                 // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                 if(data.userSelectedType === 'R'){
                     //법정동명이 있을 경우 추가한다.
                     if(data.bname !== ''){
                         extraAddr += data.bname;
                     }
                     // 건물명이 있을 경우 추가한다.
                     if(data.buildingName !== ''){
                         extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                     }
                     // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                     fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                 }
                 
                 // 우편번호와 주소 정보를 해당 필드에 넣는다.
                 document.getElementById("postcode1").value = data.postcode1;
                 document.getElementById("postcode2").value = data.postcode2;
                 document.getElementById("addr1").value = fullAddr;

                 // 커서를 상세주소 필드로 이동한다.
                 document.getElementById("addr2").focus();
             }
         }).open();
     }
 	function idchk() {
		frm.action = open("CreateForm.jsp?addrs1="+frm.addr1.value,"","width='300' height='300' ");
	}  
 </script>

 <form action="CreateForm.jsp" name="frm">
 <input type="text" name="zip1" value="" id="postcode1" title="우편번호 앞자리" class="frm_input readonly" size="3" maxlength="3"> -
 <input type="text" name="zip2" value="" id="postcode2" title="우편번호 뒷자리" class="frm_input readonly" size="3" maxlength="3">
 <input type="button" onclick="openDaumPostcode()" value="우편번호 찾기" style="width:100px; height:25px; font-size:11px; background-color:#ECECEC"><br>
 <input type="text" name="addr1" value="" id="addr1" placeholder="주소" class="frm_input readonly" style="width:60%"><br>
 <input type="text" name="addr2" value="" id="addr2" placeholder="상세주소" class="frm_input" style="width:38%"><br>
 <input type="submit" value="확인">
</form>
</body>
</html>