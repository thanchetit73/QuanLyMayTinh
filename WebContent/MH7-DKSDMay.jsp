<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="fpt.bean.KhachHang"%>
<%@page import="fpt.bean.May"%>
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
                <div class="panel-heading"><h4><span class="glyphicon glyphicon-ok"></span>Đăng ký sử dụng máy</h4></div>
                <!--  Hiển thị danh sách học viên-->
                      
                  <!--  Hiển thị danh sách học viên-->
                <div class="panel-body">                 
           
                <!--  Hiển thị danh sách máy-->
                      <%ArrayList<May> dsm = (ArrayList<May>)request.getAttribute("dsm");
                      ArrayList<KhachHang> dskh = (ArrayList<KhachHang>)request.getAttribute("dskh");                     
                      %>
                  <!--  Hiển thị danh sách máy-->
                <div class="panel-body">
                 <form action="DangKyMayServlet" method="post">
                <div class="form-group">
				  <label for="sel1">Chọn khách hàng:</label>
				  <select class="form-control" name="khid">
				  <% for(KhachHang kh : dskh){ %>
				    <option value="<%=kh.getMaKH() %>"><%=kh.getMaKH() %></option>
				     <%} %>				 
				  </select>		 
				</div>
				<div class="form-group">
				  <label for="sel1">Chọn máy:</label>
				  <select class="form-control" name="mayid">
				  <% for(May m :dsm){ %>
				    <option value="<%=m.getMaMay() %>"><%=m.getMaMay() %></option>				  
				   <%} %>
				  </select>
				</div> 
			     <div class="form-group">
			     <%Calendar cal= null;
			     SimpleDateFormat dd= new SimpleDateFormat("dd-MM-yyyy");
			     Date d = cal.getInstance().getTime();
			     %>
			      <label for="pwd">Ngày  bắt đầu sử dụng:</label>
			      <input type="date" class="form-control" name="nbdsd" value="<%=d %>" required>
			    </div>	
			    <div class="form-group">
			      <label for="pwd">Giờ bắt đầu sử dụng:</label>
			      <input type="time" class="form-control" name="gbdsd" id="gbdsd" required>
			    </div>	 
			    <div class="form-group">
			      <label for="pwd">Thời gian sử dụng:</label>
			      <input type="text" class="form-control" name="tgsd" id ="tgsd" required>
			    </div>				        		      
			      <button type="submit" class="btn btn-primary checkdksdm"name="them">Đăng ký sử dụng máy</button>
			      <button type="submit" class="btn btn-danger"name="huy" onclick="history.go(-1);">Trở về</button>
			    </div>	    
				  </form>                      
                </div>          
            </div>
	
	<!--  -->
	<script type="text/javascript">
			$(document).ready(function() {
			    $('body').on('click','.checkdksdm', function() {
			    	//var id_regex = /((KH)+([0-9]{2})\b)/g;
				    var tgsd = $('#tgsd').val();
				    if(tgsd !==''){
				        if (tgsd <=0) 
				        {
				            alert('Thời gian sd phải lớn hơn 0!');
				        }
				    } 	
				   /*  var gbdsd = $('#gbdsd').val();
				    if(gbdsd !==''){
				        if (gbdsd <=0) 
				        {
				            alert('Thời gian sd phải lớn hơn 0!');
				        }
				    } 		 */	
			    });
			});
</script>            
	  <!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!--  -->

</body>
</html>