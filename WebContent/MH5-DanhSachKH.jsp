<%@page import="fpt.bean.KhachHang"%>
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
	<% if(request.getAttribute("ktthem") !=null){
        	String ktthem = (String)request.getAttribute("ktthem");
        		out.print(ktthem);   
        		}    
        	%>
	<div class="container">
	 <div class="panel panel-success">
                <div class="panel-heading"><h4>Danh sách khách hàng</h4></div>
                <!--  Hiển thị danh sách học viên-->
                   <%ArrayList<KhachHang> dskh =(ArrayList<KhachHang>)request.getAttribute("dskh"); %>   
                  <!--  Hiển thị danh sách học viên-->
                <div class="panel-body">
                    <table class="table table-bordered">
                        <thead >
                            <tr style="background-color:greenyellow ">
                                <th style="text-align:center">STT</th>
                                <th style="text-align:center">Mã khách hàng</th>
                            	<th style="text-align:center">Tên khách hàng</th>
                            	<th style="text-align:center">Địa chỉ</th>  
                            	<th style="text-align:center">Số điện thoại</th> 
                            	<th style="text-align:center">Email</th> 
                            	<th style="text-align:center"><span class="glyphicon glyphicon-trash"></span></th> 
                            <th style="text-align:center"><span class="glyphicon glyphicon-wrench"></span></th>                         
                          </tr>
                        </thead>
                        <!--  Hiển thị -->
           			<% int i =1;for(KhachHang s :dskh){ %>
                       <!--  Hiển thị -->
                            <tr>
                            <td><%=i %></td>                          
                            <td><span style="color: red"><%=s.getMaKH() %></span></td>
                            <td><span style="color: red"><%=s.getTenKH() %></span></td>
                            <td><span style="color: red"><%=s.getDiaChi() %></span></td> 
                            <td><span style="color: red"><%=s.getSdt() %></span></td>
                            <td><span style="color: red"><%=s.getEmail() %></span></td>                                                             
                            <td><a onclick="return xoa();" href="#"><span class="label label-danger">Xóa</span></a></td>
                             <td><button type="button" onclick="openModal()" class="label label-primary">Cập nhật</button></td>
                          </tr> 
                          <% i++; } %>                                      
                        </tbody>
                      </table>
                      <ul class="pager">
						    <li><a href="#">Previous</a></li>
						    <li><a href="#">1</a></li>
						    <li><a href="#">2</a></li>
						    <li><a href="#">3</a></li>
						    <li><a href="#">Next</a></li>
					   </ul>
                    <button style ="float: right" type="button" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span><a style="color:white" href="MH2-TaoMoiKHachHang.jsp">Thêm mới khách hàng</a></button>
                </div>
            </div>
            </div>
	
	
	<h1 style="color:blue">a
	a
	<span style="color:red" st>a</span>
	<span style="color:yellow" st>a</span>
	
	a
	a
	a</h1>
	<!--  -->
	<div id="modal" class="modal1">
	<div class="container">
           <div class="panel panel-success">
                <div class="panel-heading"><h4><b><span class="glyphicon glyphicon-wrench"></span>Cập nhật khách hàng</b></h4></div>
                <!--  Hiển thị danh sách máy-->
                       <span onclick="document.getElementById('modal').style.display='none'"
						class="close" title="Close Modal1">&times;</span>
                  <!--  Hiển thị danh sách máy-->
                <div class="panel-body">
                 <form name="khachhang" action="#" method="post">
                 <div class="alert alert-danger">
				    <strong>Lưu ý!</strong> Vui lòng điền đầy đủ thông tin vào form bên dưới.
				  </div>
                 <div class="form-group">
			      <label for="usr">Mã khách hàng:</label>
			      <input type="text" class="form-control" name="khid" required>
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
			      <input type="text" class="form-control" name="sdt" required>
			    </div>	 
			    <div class="form-group">
			      <label for="pwd">Email:</label>
			      <input type="text" class="form-control" name="email" required>
			    </div>	       		      
			      <button type="submit" class="btn btn-primary"name="capnhat"> Cập nhật</button>
			      <button type="submit" class="btn btn-danger"name="huy" onclick="closeModal()">Trở về</button>
			    </div>	    
				  </form>
                </div>
            </div>  
            </div>   
            <!-- scrip close/open cap nhat -->  
            <script type="text/javascript">
            	function openModal() {
            		document.getElementById("modal").style.display="block";				
				}
            	function closeModal() {
            		document.getElementById("modal").style.display="none";				
				}
            </script>
            <!--   -->         
	
	  <!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!--  -->

</body>
</html>