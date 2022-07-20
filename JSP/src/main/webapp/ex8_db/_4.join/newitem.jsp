<%@ page language="java" 
         contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%--https://www.w3schools.com/bootstrap4/tryit.asp?filename=trybs_filters_table&stacked=h --%>

<div class="container mt-3">
  <h2>신상품  Table</h2>
  <p>상품입력하세요.</p>  
  <input class="form-control" id="myInput" type="search" placeholder="Search..">
  <br>
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>상품이름</th>
        <th>가격</th>
        <th>제조사</th>
      </tr>
    </thead>
    <tbody id="myTable">
      <tr>
        <td>갤럭시 S20</td>
        <td>100000</td>
        <td>삼성</td>
      </tr>
      <tr>
        <td>GForce-3080ti</td>
        <td>800000</td>
        <td>ZOTEC</td>
      </tr>
      <tr>
        <td>볼펜</td>
        <td>30</td>
        <td>모나미</td>
      </tr>
      <tr>
        <td>와이파이 공유기</td>
        <td>5000</td>
        <td>iptime</td>
      </tr>
    </tbody>
  </table>
  </div>

<script>
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").each(function() {
    	
    	console.log($(this).text());
    	console.log($(this).text().toLowerCase().indexOf(value) > -1)
    	
      //toogle(true) : 해당 객체가 보여집니다.
      //toogle(false) : 해당 객체가 보이지 않습니다.
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
</script>


