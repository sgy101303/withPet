<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입양 후기 작성 페이지</title>
<style type = "text/css">
   .sc {align:center; margin-left:10px; margin-right:10px; height:350px; overflow: scroll;
   border-color: lightPink; border-style:solid; border-width:medium;}
</style>
</head>
<body>
<table style="width:100%; border:0; cellpadding:0; cellspacing:0;">
   <tr>
      <td>
         <table style="width:100%; border:0; cellpadding:0; cellspacing:0; font-size:30px">
            <tr>
                 <th bgcolor="lightpink" height="50">&nbsp;&nbsp;<b>뫄뫄 입양 후기 작성</b>&nbsp;&nbsp;</th>
            </tr>
           </table>
           <br>    
           <br>
           <table style="width:100%; border:0; cellpadding:0; cellspacing:0;">
                <tr>
                 <td rowspan="2">pet.getPetImg()
               <td>동물</td>
               <td>품종</td>
               <td>성별</td>
               <td>나이</td>
               <td>지역</td>
               <td>입양일시</td>
            </tr>
                <tr>
               <td>pet.animal()</td>
               <td>pet.kind()</td>
               <td>pet.gender()</td>
               <td>pet.age()</td>
               <td>pet.area()</td>
               <td>pet.date()</td>
            </tr>
            <tr>
               <td>&nbsp;</td>
            </tr>
            <tr>
               <td><font color="DarkPink">상세설명</font></td>
               <td>pet.explanation()</td>
            </tr>
         </table>
      </td>
   </tr>
</table>
<br><br>
<h4 style="margin-left:10px"><font color="DarkPink">입양 후기를 작성해주세요.</font></h4>
<div class="sc">
<table>
   <tr>
      <td>내용<br><br><br><br><br><br><br><br><br>
         <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br></td>
   </tr>
</table>
</div>
<br>
<br>
<input type="button" value="완료" onclick="review_open()" style="width:10%; margin-left:45%; margin-right:45%; background-color:LightPink;"></input>
</body>
</html>