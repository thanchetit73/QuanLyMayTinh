<!DOCTYPE html>
<%@page import="fpt.bean.May"%>
<%@page import="java.util.ArrayList"%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>jQuery Pagination plugin</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
        <script src="https://code.jquery.com/jquery-3.2.1.js" ></script>
        <!-- JS tạo nút bấm di chuyển trang start -->
        <script src="http://1892.yn.lt/blogger/JQuery/Pagging/js/jquery.twbsPagination.js" type="text/javascript"></script>
        <!-- JS tạo nút bấm di chuyển trang end -->
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
                var totalRows = <%out.print(dsm.size());%>; // Tổng số sản phẩm hiển thị
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
        <style>
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
    <body style="width: 500px; margin:auto;">
    
        <!-- Hiên thị nút bấm -->
        <ul id="pagination"></ul>
	 <% 
                        int i=1;
                        for(May s: dsm){
                        	
                      %>  
        <!-- Hiển thị sản phẩm -->
        <div class="contentPage">  <!--  Hiển thị -->
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
                           
                            
              			  <!--  Hiển thị -->      
              			  </div>
              			  <% i++; } %>
   

    </body>
</html>