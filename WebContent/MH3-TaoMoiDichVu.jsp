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
	<div class="container">
           <div class="panel panel-success">
                <div class="panel-heading"><h4><b><span class="glyphicon glyphicon-plus"></span>Thêm mới dịch vụ</b></h4></div>
                <!--  Hiển thị danh sách máy-->
                      
                  <!--  Hiển thị danh sách máy-->
                <div class="panel-body">
                 <form action="ThemDichVuSeverlet" method="post">
                  <div class="alert alert-danger">
				    <strong>Lưu ý!</strong> Vui lòng điền đầy đủ thông tin vào form bên dưới.
				  </div>
				  </div>
                 <div class="form-group">
			      <label for="usr">Mã dịch vụ <i>(DVxx)</i>:</label>
			      <input type="text" class="form-control" name="dvid" id="dvid" required>
			    </div>
			    <div class="form-group">
			      <label for="pwd">Tên dịch vụ:</label>
			      <input type="text" class="form-control" name="tendv" required>
			    </div>	 
			     <div class="form-group">
			      <label for="pwd">Đơn vị tính:</label>
			      <input type="text" class="form-control" name="donvitinh" required>
			    </div>	
			    <div class="form-group">
			      <label for="pwd">Đơn giá:</label>
			      <input type="text" class="form-control" name="dongia" id="dongia" required>
			    </div>	 			        		      
			      <button type="submit" class="btn btn-primary checkadd"name="them">Thêm dịch vụ</button>
			      <button type="submit" class="btn btn-danger"name="huy" onclick="history.go(-1);">Trở về</button>
			    </div>	    
				  </form>
                </div>           
             <!-- script -->
            <script type="text/javascript">
			$(document).ready(function() {
			    $('body').on('click','.checkadd', function() {
			    	var id_regex = /((DV)+([0-9]{2})\b)/g;
				    var id = $('#dvid').val();
				    if(id !==''){
				        if (id_regex.test(id) == false) 
				        {
				            alert('Mã dịch vụ của bạn không đúng định dạng!');
				            return false;
				        }
				    } 		    
			    var dongia = $('#dongia').val();
			    if(dongia !==''){
			        if (dongia <0) 
			        {
			            alert('Đơn giá của bạn phải > 0!');
			            return false;
			        }
			    }			    
			    });
			});
</script>                         
	
	  <!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!--  -->

</body>
</html>