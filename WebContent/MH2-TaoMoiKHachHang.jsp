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
        <title>Hoạt động/Danh sách</title>
        <style>
            *{
                text-align: center;
            }
        </style>    
        </head>
       <!-- header -->
	<jsp:include page="header.jsp"></jsp:include>
	<!--  -->
	<% if(request.getAttribute("ktthem") !=null){
        	String ktthem = (String)request.getAttribute("ktthem");
        		out.print(ktthem);   
        		}    
        	%>
	<!--  -->
	<div class="container">
           <div class="panel panel-success">
                <div class="panel-heading"><h4><b><span class="glyphicon glyphicon-plus"></span>Thêm mới khách hàng</b></h4></div>
                <!--  Hiển thị danh sách máy-->
                      
                  <!--  Hiển thị danh sách máy-->
                <div class="panel-body" id="body">
                 <form name="khachhang" action="ThemKhachHangSeverlet" method="post">
                 <div class="alert alert-danger">
				    <strong>Lưu ý!</strong> Vui lòng điền đầy đủ thông tin vào form bên dưới.
				  </div>
                 <div class="form-group">
			      <label for="usr">Mã khách hàng <i>(KHxx)</i>:</label>
			      <input type="text" class="form-control" name="khid" id="khid" required>
			    </div>
			    <div class="form-group">
			      <label for="pwd">Tên khách hàng:</label>
			      <input type="text" class="form-control" name="tenkh" required>
			    </div>	 
			     <div class="form-group">
			      <label for="pwd">Địa chỉ:</label>
			      <input type="text" class="form-control" name="diachi" required>
			    </div>	
			    <div class="form-group">
			      <label for="pwd">Số điện thoại:</label>
			      <input  type="text" class="form-control" name="sdt" id ="sdt" required>
			    </div>	 
			    <div class="form-group">
			      <label for="pwd">Email:</label>
			      <input type="text" class="form-control" name="email" id="email" required>
			    </div>	       		      
			      <button type="submit" class="btn btn-primary checkadd"name="them">Thêm khách hàng</button>
			      <button type="submit" class="btn btn-danger"name="huy" onclick="history.go(-1);">Trở về</button>
			    </div>	    
				  </form>
                </div>
            </div>    
            <!-- script -->
            <script type="text/javascript">
			$(document).ready(function() {
			    $('body').on('click','.checkadd', function() {
			    	var id_regex = /((KH)+([0-9]{2})\b)/g;
				    var id = $('#khid').val();
				    if(id !==''){
				        if (id_regex.test(id) == false) 
				        {
				            alert('Mã khách hàng của bạn không đúng định dạng!');
				            return false;
				        }
				    } 
			    var sdt_regex = /((090|091|8490|8491)+([0-9]{7})\b)/g;
			    var sdt = $('#sdt').val();
			    if(sdt !==''){
			        if (sdt_regex.test(sdt) == false) 
			        {
			            alert('Số điện thoại của bạn không đúng định dạng!');
			            return false;
			        }
			    }
			    var email_regex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
			    var email = $('#email').val();
			    if(email !==''){
			        if (email_regex.test(email) == false) 
			        {
			            alert('Email của bạn không đúng định dạng!');
			            return false;
			        }
			    }
			    });
			});
</script>            
	<!-- function checkEmail() {
        var email = document.getElementById('email');
        var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if (!filter.test(email.value)) {
            alert('Hay nhap dia chi email hop le.\nExample@gmail.com');
            email.focus;
            return false;
        }
        else
        {
            alert('OK roi day, Email nay hop le.');
        }
    } -->
	  <!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!--  -->

</body>
</html>