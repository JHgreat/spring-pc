<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어데 피씹니까?</title>
<style type="text/css">
body {
		background-color: #2c3e50;
	}
	.content_center {
		display: flex;
		justify-content: center;
		position: relative;
		}
	.total_content {
		width: 90%; 
		height: 700px;
		border-radius: 20px;
		background-color: white;
	}
	.jumbotron {
	text-align: center;
	width: 100%;
	margin-top: 100px;
}
h3 {
	margin-bottom: 30px;
}
</style>
</head>
<body>
<%-- <div class="content_center">
<div class="total_content">
<div class="jumbotron">
	<h3>비밀번호 찾기</h3>
	<c:if test="${result == 1 and resultUpdatePw > 0 }">
		<div>
			'${member1.email }'로 임시비밀번호를 전송하였습니다. 로그인 후 비밀번호를 변경해주세요.
		</div>
	</c:if>
	<c:if test="${result == 0 }">
		<div>${msg }</div>
		<button onclick='location.href="findIdForm.do"'>아이디 찾기</button>
	</c:if>
	<c:if test="${result == -1 }">
		<script type="text/javascript">
			alert("찾을 수 없는 계정입니다. 정보를 확인해주세요.");
			history.go(-1);
		</script>
	</c:if>
</div>
</div>
</div> --%>
<c:if test="${result > 0 }">
	<script type="text/javascript">
		alert("회원님의 비밀번호는 '${member.password}'입니다.");
		location.href = "loginForm.do"
	</script>
</c:if>
<c:if test="${result == 0 }">
	<script type="text/javascript">
		alert("다시 한번 시도해주세요.");
		history.go(-1);
	</script>
</c:if>
<c:if test="${result == -1 }">
	<script type="text/javascript">
		alert("존재하지 않는 회원정보입니다.");
		history.go(-1);
	</script>
</c:if>
</body>
</html>