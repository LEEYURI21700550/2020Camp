<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>JSP 게시판</title>
</head>
<body>

		<form method="post" action="joinAction.jsp">
	
		<p>ID</p>
		<input type="text" name="userName" placeholder="input Name"><br><br>
		
		<p>PW</p>
		<input type="text" name="userPassword" placeholder="input PW"><br><br>
	
		<p>e-mail</p>
		<input type="text" name="userEmail" placeholder="input email"><br><br>
		
		<p>phone Number</p>
		<input type="text" name="userID" placeholder="input ID"><br><br>
		
		<div class="btn-group" data-toggle="buttons">
                    <label class="btn btn-primary active">
                        <input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
                    </label>
                    <label class="btn btn-primary">
                        <input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자
                    </label>
            </div>    
		
		<input type="submit" value="go"/>  
	
		</form>
        
</body>
</html>