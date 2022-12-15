<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디찾기</title>
</head>
<body>

	<h4>아이디 찾기</h4>
    <form action="findIdMail.do" method="post">
      <div>
        <input type="text" name="tomail"  id="tomail" size="120"
        style="width: 100%" placeholder="회원가입 시 입력했던 아이디를 기재해주세요"
        class="form-control">
      </div>


     
       
      <div align="center">
        <input type="button" value="메일 보내기"   onclick="findIdCheck()"    class="btn btn-warning">
      </div>
    </form>
    
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript">
    
    
    var findIdCheck = function() {
    	
    	var email = document.getElementById('tomail').value;
		
    	$.ajax({
    		type: 'post',
    		url: '<%=request.getContextPath() %>/findIdMail.do',
    		data : {'tomail':email},
    		dataType: 'text',
    		success :function(result){
    			if(result == 1){
    				alert('해당 이메일로 아이디를 보냈습니다.');
    				location.href = "store.do";
    			}else{
    				alert('해당 이메일로 확인되는 아이디가 없습니다.');
    				
    			}
    		}
    	});
	}
    
    
    </script>


</body>
</html>