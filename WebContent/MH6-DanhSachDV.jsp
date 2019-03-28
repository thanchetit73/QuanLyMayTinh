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
                <div class="panel-heading"><h4><span class="glyphicon glyphicon-ok"></span>Danh sách dịch vụ</h4></div>
                <!--  Hiển thị danh sách học viên-->
                    <%ArrayList<DichVu> dsdv = (ArrayList<DichVu>)request.getAttribute("dsdv"); %>  
                  <!--  Hiển thị danh sách học viên-->
                <div class="panel-body">
                    <table class="table table-bordered">
                        <thead >
                            <tr style="background-color:greenyellow">
                                <th style="text-align:center">STT</th>
                                <th style="text-align:center">Mã dịch vụ</th>
                            	<th style="text-align:center">Tên dịch vụ</th>
                            	<th style="text-align:center">Đơn vị tính</th>  
                            	<th style="text-align:center">Đơn giá</th>  
                            	<th style="text-align:center"><span class="glyphicon glyphicon-trash"></span></th> 
                            <th style="text-align:center"><span class="glyphicon glyphicon-wrench"></span></th>                                                  
                          </tr>
                        </thead>
                        <!--  Hiển thị -->
           				<% int i =1; for(DichVu s :dsdv){ %>
                       <!--  Hiển thị -->
                            <tr>
                            <td><%=i %></td>                          
                            <td><span style="color: red"><%=s.getMaDV() %></span></td>
                            <td><span style="color: red"><%=s.getTenDV() %></span></td>
                            <td><span style="color: red"><%=s.getDonViTinh() %></span></td> 
                            <td><span style="color: red"><%=s.getDonGia() %></span></td>                                                                                     
                            <td><a onclick="return xoa();" href="#"><span class="label label-danger">Xóa</span></a></td>
                             <td><button ="submit" onclick="openModal()" class="label label-primary">Cập nhật</span></td>
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
                    <button style ="float: right" type="button" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span><a style="color:white" href="MH3-TaoMoiDichVu.jsp">Thêm mới dịch vụ</a></button>
                </div>
            </div>
            </div>
	
	<!--  -->
	<div id="modal" class="modal1">
	<div class="container">
           <div class="panel panel-success">
                <div class="panel-heading"><h4><b><span class="glyphicon glyphicon-wrench"></span>Cập nhật dịch vụ</b></h4></div>
                <!--  Hiển thị danh sách máy-->
                      <span onclick="document.getElementById('modal').style.display='none'"
						class="close" title="Close Modal1">&times;</span>
                  <!--  Hiển thị danh sách máy-->
                <div class="panel-body">
                 <form action="#" method="post">
                   <div class="alert alert-danger">
				    <strong>Lưu ý!</strong> Vui lòng điền đầy đủ thông tin vào form bên dưới.
				  </div>
                 <div class="form-group">
			      <label for="usr">Mã dịch vụ:</label>
			      <input type="text" class="form-control" name="dvid" required>
			    </div>
			    <div class="form-group">
			      <label for="pwd">Tên dịch vụ:</label>
			      <input type="text" class="form-control" name="tendv">
			    </div>	 
			     <div class="form-group">
			      <label for="pwd">Đơn vị tính:</label>
			      <input type="text" class="form-control" name="donvitinh">
			    </div>	
			    <div class="form-group">
			      <label for="pwd">Đơn giá:</label>
			      <input type="text" class="form-control" name="dongia">
			    </div>	 			        		      
			      <button type="submit" class="btn btn-primary"name="them">Cập nhật</button>
			       <button type="submit" class="btn btn-danger"name="huy" onclick="clodeModal()">Trở về</button>
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