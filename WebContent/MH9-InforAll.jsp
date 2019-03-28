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
                <div class="panel-heading"><h4><span class="glyphicon glyphicon-ok"></span>Danh sách máy</h4></div>
                <!--  Hiển thị danh sách học viên-->
                      
                  <!--  Hiển thị danh sách học viên-->
                <div class="panel-body">
                    <table class="table table-bordered">
                        <thead >                      
                            <tr style="background-color:greenyellow">
                            <th style="text-align:center">Mã KH</th>
                            <th style="text-align:center">Tên KH</th>
                            <th style="text-align:center">Mã Máy</th>
                            <th style="text-align:center">Vị trí</th>
                            <th style="text-align:center">Trạng thái</th>
                            <th style="text-align:center">NBDSDM</th>
                            <th style="text-align:center">GBDSDM</th>
                            <th style="text-align:center">TGSDM</th>
                            <th style="text-align:center">Mã DV</th>
                            <th style="text-align:center">NSDDV</th>
                            <th style="text-align:center">GSDDV</th> 
                            <th style="text-align:center">Số lượng</th>
                            <th style="text-align:center">Tổng tiền</th>                              
                            <th style="text-align:center"><span class="glyphicon glyphicon-trash"></span></th>                                                
                          </tr>
                        </thead>
                        <!--  Hiển thị -->
           
                       <!--  Hiển thị -->
                            <tr>                                                 
                            <td><span style="color: red"></span></td>
                            <td><span style="color: red"></span></td>
                            <td><span style="color: red"></span></td> 
                            <td><span style="color: red"></span></td>
                            <td><span style="color: red"></span></td>
                            <td><span style="color: red"></span></td>  
                            <td><span style="color: red"></span></td>
                            <td><span style="color: red"></span></td>
                            <td><span style="color: red"></span></td>  
                            <td><span style="color: red"></span></td>
                            <td><span style="color: red"></span></td>
                            <td><span style="color: red"></span></td>                       
                            <td><span style="color: blue">1</span></td>                                                               
                            <td><a onclick="return xoa();" href="#"><span class="label label-danger">Xóa</span></a></td>           
                          </tr>                                       
                        </tbody>
                      </table>
                       <ul class="pager">
						    <li><a href="#">Previous</a></li>
						    <li><a href="#">1</a></li>
						    <li><a href="#">2</a></li>
						    <li><a href="#">3</a></li>
						    <li><a href="#">Next</a></li>
					   </ul>
                    <button style ="float: right" type="button" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span><a style="color:white" href="MH1-TaoMayMoi.jsp">Thêm mới máy</a></button>
                </div>
            </div>
            </div>
	
	<!--  -->
	  <!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!--  -->

</body>
</html>