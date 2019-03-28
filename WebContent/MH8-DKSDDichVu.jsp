<%@page import="fpt.bean.KhachHang"%>
<%@page import="fpt.bean.DichVu"%>
<%@page import="java.util.ArrayList"%>
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
	<!-- connten  -->
	<div class="container">
	 <div class="panel panel-success">
                <div class="panel-heading"><h4><span class="glyphicon glyphicon-ok"></span>Đăng ký sử dụng dịch vụ</h4></div>
                <!--  Hiển thị danh sách học viên-->
                       <%ArrayList<DichVu> dsdv = (ArrayList<DichVu>)request.getAttribute("dsdv");
                      ArrayList<KhachHang> dskh = (ArrayList<KhachHang>)request.getAttribute("dskh");                     
                      %>
                  <!--  Hiển thị danh sách học viên-->
                <div class="panel-body">                 
           
                <!--  Hiển thị danh sách máy-->
                      
                  <!--  Hiển thị danh sách máy-->
                <div class="panel-body">
                 <form action="DangKyDVServlet" method="post">
                <div class="form-group">
				  <label for="sel1">Chọn khách hàng:</label>
				  <select class="form-control" name="khid">
				  <% for(KhachHang kh : dskh){ %>
				    <option value="<%=kh.getMaKH() %>"><%=kh.getMaKH() %></option>
				     <%} %>				 
				  </select>		
				</div>
				<div class="form-group">
				  <label for="sel1">Chọn dịch vụ:</label>
				   <select class="form-control" name="dvid">
				  <% for(DichVu dv : dsdv){ %>
				    <option value="<%=dv.getMaDV() %>"><%=dv.getMaDV() %></option>
				     <%} %>				 
				  </select>		
				</div> 
			     <div class="form-group">
			      <label for="pwd">Ngày sử dụng:</label>
			      <input type="date" class="form-control" name="nsd" id ="nsd">
			    </div>	
			    <div class="form-group">
			      <label for="pwd">Giờ sử dụng:</label>
			      <input type="time" class="form-control"  min="00:00" max="23:59"  value="16:32:55" name="gsd" required=>
			    </div>	 
			    <div class="form-group">
			      <label for="pwd">Số lượng:( Yêu cầu nhập > 0)</label>
			      <input type="text" class="form-control" name="soluong" id="sl" required=>
			    </div>				        		      
			      <button type="submit" class="btn btn-primary checkdkdv"name="them">Đăng ký sử dụng dịch vụ</button>
			       <button type="submit" class="btn btn-danger"name="huy" onclick="history.go(-1);">Trở về</button>
			    </div>	    
				  </form>                      
                </div>          
            </div>
	
	<!--  -->
	<script type="text/javascript">
			$(document).ready(function() {
			    $('body').on('click','.checkdkdv', function() {
			    	//var id_regex = /((KH)+([0-9]{2})\b)/g;
				    var sl = $('#sl').val();
				    if(sl !==''){
				        if (sl <=0) 
				        {
				            alert('Số lượng phải lớn hơn 0!');
				        }
				    } 			 		  
			    });
			});
</script>      
<script type="text/javascript">
/* <span style="font-family: tahoma, arial, helvetica, sans-serif;">// gán giá trị mặc định cho input type="date"
var today 	= new Date();
if (today.getMonth() >= 10) { // Nếu tháng >= tháng 10

   if (today.getDate() >= 10) { // Nếu ngày >= ngày 10

	var date 	= today.getFullYear()+ '-' +(today.getMonth()+1) + '-' + today.getDate();	
   }
   else{ // Nếu ngày < ngày 10 thì sẽ là 09, 08, 07,...

	var date 	= today.getFullYear()+ '-' +(today.getMonth()+1) + '-0' + today.getDate();
   }
}
else{ // Nếu tháng < tháng 10

      if (today.getDate() >= 10) { // Nếu ngày >= ngày 10

	     var date 	= today.getFullYear()+ '-0' +(today.getMonth()+1) + '-' + today.getDate();	
      }
      else{ // Nếu ngày < ngày 10 thì sẽ là 09, 08, 07,...

	    var date 	= today.getFullYear()+ '-0' +(today.getMonth()+1) + '-0' + today.getDate();
      }
}
var dateControl = document.querySelector('input[type="date"]');
dateControl.value = date; // 2017-06-01</span> */
</script>      
	  <!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!--  -->

</body>
</html>