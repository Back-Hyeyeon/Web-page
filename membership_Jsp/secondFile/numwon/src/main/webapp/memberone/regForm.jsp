<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Form</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <script lang="javascript" src="script.js"></script>
</head>

<body>
  <form action="regProc.jsp" method="post" name="regForm" class="d-flex justify-content-center align-content-center">
    <div style="width: 600px;" class="mt-5">
      <table class="table table-bordered">
        <tr>
          <td colspan="2">회원 가입 정보 입력</td>
        </tr>
        <tr>
          <td>아이디:</td>
          <td>
            <input type="text" name="id"/>
            <input type="button" value="중복확인" onclick="idCheck(this.form.id.value)"/>
          </td>
        </tr>
        <tr>
          <td>비밀번호:</td>
          <td><input type="password" name="pass"></td>
        </tr>
        <tr>
          <td>비밀번호 확인:</td>
          <td><input type="password" name="repass"></td>
        </tr>
        <tr>
          <td>이름:</td>
          <td><input type="text" name="name"></td>
        </tr>
        <tr>
          <td>전화번호:</td>
          <td>
            <select name="phone1">
              <option value="02">02</option>
              <option value="010">010</option>
            </select>
              <input type="text" name="phone2">
              <input type="text" name="phone3">
          </td>
        </tr>
        <tr>
          <td>이메일:</td>
          <td><input type="text" name="email"></td>
        </tr>
        <tr>
          <td>우편번호:</td>
          <td>
            <input type="text" name="zipcode">
            <input type="button" value="찾기" onclick="zipCheck()">
          </td>
        </tr>
        <tr>
          <td>주소1:</td>
          <td><input type="text" name="address1"></td>
        </tr>
        <tr>
          <td>주소2:</td>
          <td><input type="text" name="address2"></td>
        </tr>
        <tr>
          <td colspan="2" style=" text-align: center;">
            <input type="reset" value="다시입력">
            <input type="submit" value="회원가입" onclick="#">
          </td>
        </tr>
      </table>
    </div>
  </form>
</body>

</html>