<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- pet c로 Pet pet = (Pet)request.getAttribute("pet"); -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입양 후기 페이지</title>

<script languate = "javascript">
   function searchCaterory() {
      var sC = document.getElementById("category");
      var valueC = sC.options[sC.selectedIndex].value;
      alert(valueC + "를 열람하셨습니다.");
   }
</script>
<style type = "text/css">
   .sc {align:center; margin-left:10px; margin-right:10px; height:65%;
   border-color: lightPink; border-style:solid; border-width:medium;}
</style>
</head>
<body>
<table style="width:99%; height:100px; border:0; cellpadding:0; cellspacing:0; font-size:30px; margin-right:0; margin-right:2%;">
   <tr>
      <td rowspan="3" style="width:13%; height:100px;"><img src="<c:url value='/images/somsom.jpg' />" style="max-width: 100%; height:auto; align:left"/></td>
      <th width="90%" bgcolor="lightpink" height="50px">&nbsp;&nbsp;<b>입양 후기 게시판을 열람하셨습니다</b></th>
   </tr>
   <tr align="right">
       <td width="100%" height="20px">
         <select id="category">
            <option value="전체보기">전체보기</option>
            <option value="강아지">강아지</option>
            <option value="고양이">고양이</option>
            <option value="기타">기타</option>
         </select>
          <input type="button" value="검색" onclick="searchCaterory()" />
       </td>
   </tr>
    <tr align="right">
       <td width="100%" height="30px">
          <input type="button" id="write-form" value="리뷰 작성하기" onclick="review_write.jsp">
       </td>
   </tr>
</table>
<br>
<div class="sc">
<table>
   <tr style="height:45%;">
       <td width="25%" style="height:90%;">
          <table style="border:1; width:100%; height:90%; cellspacing:5; cellpadding:0;">
                 <tr>
                    <td rowspan="2" width="50%" height="90%" style="text-align:center"><img src="<c:url value='/images/somsom.jpg' />" style="max-width: 90%; max-height:90%;"/></td>
                   <td height="55%">이름:<br>나이:<br>성별:<br></td>
                </tr>
                <tr>
                   <td height="35%" style="text-align:center;"><input type="button" id="submit-form" value="후기 보기" onclick="/pet/review_open/form" style="background-color:LightPink;"></td>
                </tr>
            </table>
          </td>
       <td width="25%" style="height:90%;">
          <table style="border:1; width:100%; height:90%; cellspacing:5; cellpadding:0;">
                 <tr>
                    <td rowspan="2" width="50%" height="90%" style="text-align:center"><img src="<c:url value='/images/somsom.jpg' />" style="max-width: 90%; max-height:90%;"/></td>
                   <td height="55%">이름:<br>나이:<br>성별:<br></td>
                </tr>
                <tr>
                   <td height="35%" style="text-align:center;"><input type="button" id="submit-form" value="후기 보기" onclick="/pet/review_open/form" style="background-color:LightPink;"></td>
                </tr>
            </table>
          </td>
       <td width="25%" style="height:90%;">
          <table style="border:1; width:100%; height:90%; cellspacing:5; cellpadding:0;">
                 <tr>
                    <td rowspan="2" width="50%" height="90%" style="text-align:center"><img src="<c:url value='/images/somsom.jpg' />" style="max-width: 90%; max-height:90%;"/></td>
                   <td height="55%">이름:<br>나이:<br>성별:<br></td>
                </tr>
                <tr>
                   <td height="35%" style="text-align:center;"><input type="button" id="submit-form" value="후기 보기" onclick="/pet/review_open/form" style="background-color:LightPink;"></td>
                </tr>
            </table>
          </td>
       <td width="25%" style="height:90%;">
          <table style="border:1; width:100%; height:90%; cellspacing:5; cellpadding:0;">
                 <tr>
                    <td rowspan="2" width="50%" height="90%" style="text-align:center"><img src="<c:url value='/images/somsom.jpg' />" style="max-width: 90%; max-height:90%;"/></td>
                   <td height="55%">이름:<br>나이:<br>성별:<br></td>
                </tr>
                <tr>
                   <td height="35%" style="text-align:center;"><input type="button" id="submit-form" value="후기 보기" onclick="/pet/review_open/form" style="background-color:LightPink;"></td>
                </tr>
            </table>
          </td>
    </tr>
   <tr style="height:45%;">
       <td width="25%" style="height:90%;">
          <table style="border:1; width:100%; height:90%; cellspacing:5; cellpadding:0;">
                 <tr>
                    <td rowspan="2" width="50%" height="90%" style="text-align:center"><img src="<c:url value='/images/somsom.jpg' />" style="max-width: 90%; max-height:90%;"/></td>
                   <td height="55%">이름:<br>나이:<br>성별:<br></td>
                </tr>
                <tr>
                   <td height="35%" style="text-align:center;"><input type="button" id="submit-form" value="후기 보기" onclick="/pet/review_open/form" style="background-color:LightPink;"></td>
                </tr>
            </table>
          </td>
       <td width="25%" style="height:90%;">
          <table style="border:1; width:100%; height:90%; cellspacing:5; cellpadding:0;">
                 <tr>
                    <td rowspan="2" width="50%" height="90%" style="text-align:center"><img src="<c:url value='/images/somsom.jpg' />" style="max-width: 90%; max-height:90%;"/></td>
                   <td height="55%">이름:<br>나이:<br>성별:<br></td>
                </tr>
                <tr>
                   <td height="35%" style="text-align:center;"><input type="button" id="submit-form" value="후기 보기" onclick="/pet/review_open/form" style="background-color:LightPink;"></td>
                </tr>
            </table>
          </td>
       <td width="25%" style="height:90%;">
          <table style="border:1; width:100%; height:90%; cellspacing:5; cellpadding:0;">
                 <tr>
                    <td rowspan="2" width="50%" height="90%" style="text-align:center"><img src="<c:url value='/images/somsom.jpg' />" style="max-width: 90%; max-height:90%;"/></td>
                   <td height="55%">이름:<br>나이:<br>성별:<br></td>
                </tr>
                <tr>
                   <td height="35%" style="text-align:center;"><input type="button" id="submit-form" value="후기 보기" onclick="/pet/review_open/form" style="background-color:LightPink;"></td>
                </tr>
            </table>
          </td>
       <td width="25%" style="height:90%;">
          <table style="border:1; width:100%; height:90%; cellspacing:5; cellpadding:0;">
                 <tr>
                    <td rowspan="2" width="50%" height="90%" style="text-align:center"><img src="<c:url value='/images/somsom.jpg' />" style="max-width: 90%; max-height:90%;"/></td>
                   <td height="55%">이름:<br>나이:<br>성별:<br></td>
                </tr>
                <tr>
                   <td height="35%" style="text-align:center;"><input type="button" id="submit-form" value="후기 보기" onclick="/pet/review_open/form" style="background-color:LightPink;"></td>
                </tr>
            </table>
          </td>
    </tr>
</table>
</div>
</body>
</html>