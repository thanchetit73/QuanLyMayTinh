<script type="text/javascript">
function xoa() {
	  var conf= confirm(" Bạn có muốn xóa  k?");
    return conf;
}
</script>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
    <head>
        <meta charset="UTF-8">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>/Dang nhap</title>
        <style>
            *{
                text-align: center;
            }
        </style>    
        </head>
       <!-- header -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- connten  -->
	<div class="container ">
	<div class="col-sm-3">
	</div>
<div class="col-sm-6">
  <div class="panel-group">
    <div class="panel panel-primary">
   
      <div class="panel-heading"><b>Đăng nhập<b></div>
      <div class="panel-body">
      <form style="text-align:center" class="form-horizontal" action="LoginServlet" method="post">
  <div class="form-group">
    <label class="control-label col-sm-3" for="email">Tài khoản:</label>
    <div class="col-sm-7">
      <input type="text" class="form-control" name="txtun" placeholder="Enter account">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-3" for="pwd">Mật khẩu:</label>
    <div class="col-sm-7"> 
      <input type="password" class="form-control" name="txtpass" placeholder="Enter password">
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-16">
      <div class="checkbox">
        <label><input type="checkbox"> Lưu mật khẩu</label>
      </div>
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-8">
      <button type="submit" class="btn btn-primary" name="dangnhap">Đăng nhập</button><br>
      Nếu chưa có tài khoản?<a href="#"><b>Đăng kí</b></a>
       <%
				if(request.getAttribute("kt") != null){
					if(request.getAttribute("kt").equals("0")){
					out.print("<p style='color:red'>Sai tên đăng nhập hoặc mật khẩu </p>");
					}
				}
			%>
    </div>
  </div>
</form>
 
      </div>
    </div>  
</div>
</div>
<div class="col-sm-3">
	</div>
  </div>
	
	<!--  -->
	  <!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!--  -->

</body>
</html>