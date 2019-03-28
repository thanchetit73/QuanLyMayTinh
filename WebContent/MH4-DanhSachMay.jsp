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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
        <script src="https://code.jquery.com/jquery-3.2.1.js" ></script>
        <!-- JS tạo nút bấm di chuyển trang start -->
        <script src="http://1892.yn.lt/blogger/JQuery/Pagging/js/jquery.twbsPagination.js" type="text/javascript"></script>
        <!-- JS tạo nút bấm di chuyển trang end -->
        <title>Hoạt động/Danh sách</title>
        <style>
            *{
                text-align: center;
            } 
             ///** CSS căn id pagination ra giữa màn hình **///
            #pagination {
                display: flex;
                display: -webkit-flex; /* Safari 8 */
                flex-wrap: wrap;
                -webkit-flex-wrap: wrap; /* Safari 8 */
                justify-content: center;
                -webkit-justify-content: center;
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
                <div class="panel-heading"><h4><span class="glyphicon glyphicon-ok"></span>Danh sách máy</h4></div>
                <!--  Hiển thị danh sách học viên-->
                     <% ArrayList<May> dsm =(ArrayList<May>)request.getAttribute("dsm"); %>  
                     
                      <script type="text/javascript">
            $(function () {
                var pageSize = 2; // Hiển thị 6 sản phẩm trên 1 trang
                showPage = function (page) {
                    $(".contentPage").hide();
                    $(".contentPage").each(function (n) {
                        if (n >= pageSize * (page - 1) && n < pageSize * page)
                            $(this).show();
                    });
                }
                showPage(1);
                ///** Cần truyền giá trị vào đây **///
                var totalRows = 8; // Tổng số sản phẩm hiển thị
                var btnPage = 4; // Số nút bấm hiển thị di chuyển trang
                var iTotalPages = Math.ceil(totalRows / pageSize);

                var obj = $('#pagination').twbsPagination({
                    totalPages: iTotalPages,
                    visiblePages: btnPage,
                    onPageClick: function (event, page) {
                        console.info(page);
                        showPage(page);
                    }
                });
                console.info(obj.data());
            });
        </script>     
             
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
                        <div class="contentPage">  <tr>
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
                           <% i++; } %></div>
                           
                          
                            
              			  <!--  Hiển thị -->                                     
                        </tbody>
                      </table>
                       <ul id="pagination"></ul>
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