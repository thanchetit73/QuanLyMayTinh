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
                <div class="panel-heading"><h4><b><span class="glyphicon glyphicon-plus"></span>Thêm mới máy</b></h4></div>
                <!--  Hiển thị danh sách máy-->
                      
                  <!--  Hiển thị danh sách máy-->
                <div class="panel-body">
                 <form action="ThemMaySeverlet" method="post" name ="dkmay">
                 <div class="alert alert-danger">              
				    <strong>Lưu ý!</strong> Vui lòng điền đầy đủ thông tin vào form bên dưới.
				  </div>
                 <div class="form-group">
			      <label for="usr">Mã máy:</label>
			      <input type="text" class="form-control" name="mayid" required>
			    </div>
			    <div class="form-group">
			      <label for="pwd">Vị trí:</label>
			      <input type="text" class="form-control" name="vitri" required>
			    </div>	 
			      <div class="form-group">
				  <label for="sel1">Trạng thái:</label>
				  <select class="form-control" name="trangthai">
				    <option>on</option>
				    <option>off</option>				   
				  </select>
				</div>      		      
			      <button type="submit" class="btn btn-primary"name="them">Thêm máy</button>
			      <button type="submit" class="btn btn-danger"name="huy" onclick="history.go(-1);">Trở về</button>
			    </div>	    
				  </form>
                </div>
            </div>  
            <!-- scrip check loi -->
           
	  <!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!--  -->

</body>
</html>