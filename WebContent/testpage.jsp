<%@page import="fpt.bo.MayBo"%>
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
	<%
    int first = 0, last = 0, pages = 1;
     
    if (request.getParameter("pages") != null) {
        pages = (int) Integer.parseInt(request.getParameter("pages"));
    }
    //Lấy tổng sản phẩm trong data bằng query select count(id) from name_table với JDBC Connect
    MayBo c = new MayBo();
    int total = c.getcountMay();
    
    if (total <= 2) {
        first = 0; 
        last = total; 
    } else {
        first = (pages - 1) * 2;
        last = 2;
    }
    //Lấy ra danh sách sản phẩm
   /*  ArrayList list = new ShopDAO().getShop(first, last);
    for (Shop item : list)  */
%>
	<div class="container">
	 <div class="panel panel-success">
                <div class="panel-heading"><h4><span class="glyphicon glyphicon-ok"></span>Danh sách máy</h4></div>
                <!--  Hiển thị danh sách học viên-->
                     <% ArrayList<May> dsm =(ArrayList<May>)request.getAttribute("dsm"); %>                      
                  <!--  Hiển thị danh sách học viên-->
                <div class="panel-body">
                    <table class="table table-bordered">
                        <thead >
                            <tr style="background-color:greenyellow">
                                <th style="text-align:center">STT</th>
                                <th style="text-align:center">Mã máy</th>
                            <th style="text-align:center">Vị trí</th>
                            <th style="text-align:center">Trạng thái</th>  
                            <th style="text-align:center"><span class="glyphicon glyphicon-trash"></span></th> 
                            <th style="text-align:center"><span class="glyphicon glyphicon-wrench"></span></th>                       
                          </tr>
                        </thead>
                        <!--  Hiển thị -->
           					 <% 
                        int i=1;
                        for(May s: dsm){
                        	
                      %>  
                       <!--  Hiển thị -->
                            <tr>
                            <td><%=i %></td>                          
                            <td><span style="color: red"><%=s.getMaMay() %></span></td>
                            <td><span style="color: red"><%=s.getViTri() %></span></td>
                            <td><span style="color: red"><%=s.getTrangThai() %></span></td>                                                              
                            <td>
                           <%--  <form method="post" acttion="">
                            <input name="mayid1" value="<%=s.getMaMay() %>" type="hidden">
                            <input type="submit" name="xoa" value="Xóa" class="btn btn-danger" onclick="return xoa();">
                            </form>  --%>
                            	<a href="XoaMaySeverlet?xoa&mayid=<%=s.getMaMay()%>"><span name="xoa" class="label label-danger">Xóa</span></a></td>
                            </td>                       
                             <td><a href="SuaMaySeverlet?mayid=<%=s.getMaMay()%>"><span class="label label-primary">Cập nhật</span></a></td>
                          </tr>  
                           <% i++; } %>
                            
              			  <!--  Hiển thị -->                                     
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
            <!-- hien/an cap nhat may -->
	<!--  -->
<%-- 	<div id="modal" class="modal1">
	<div class ="container">
           <div class="panel panel-success">
                <div class="panel-heading"><h4><b><span class="glyphicon glyphicon-wrench"></span>Cập nhật máy</b></h4></div>
                <!--  Hiển thị danh sách máy-->
                      <span onclick="document.getElementById('modal').style.display='none'"
						class="close" title="Close Modal1">&times;</span>
                  <!--  Hiển thị danh sách máy-->
                <div class="panel-body">
                 <form action="SuaMaySeverlet" method="post">
                 <div class="alert alert-danger">
				    <strong>Lưu ý!</strong> Vui lòng điền đầy đủ thông tin vào form bên dưới.
				  </div>
                 <div class="form-group">
			      <label for="usr">Mã máy:</label>
			      <input type="text" class="form-control" name="mayid" value="<%=m.getMaMay()%>" disabled>
			    </div>
			    <div class="form-group">
			      <label for="pwd">Vị trí:</label>
			      <input type="text" class="form-control" name="vitri" value="<%=m.getViTri() %>" required>
			    </div>	 
			      <div class="form-group">
				  <label for="sel1">Trạng thái:</label>
				  <select class="form-control" name="trangthai" value="<%=m.getTrangThai()%>">
				    <option>on</option>
				    <option>off</option>				   
				  </select>
				</div>      		      
			      <button type="submit" class="btn btn-primary"name="sua">Cập nhật</button>
			      <button type="submit" class="btn btn-danger"name="huy" onclick="closeModal()">Trở về</button>
			    </div>	    
				  </form>
                </div>
            </div>  
            </div>  --%>     
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
</script>
	  <!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!--  -->

</body>
</html>