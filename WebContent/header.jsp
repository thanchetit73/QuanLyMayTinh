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
        <link rel="stylesheet" type="text/css" href="css.css">
        <link rel="shortcut icon" type="image/png" href="img/icon.jpg"/>
        <title>Hoạt động/Danh sách</title>
        <style>
            *{
                text-align: center;
            }
        </style>
        <script type="text/javascript">
        	function dongho() {
        		var time = new Date();
        		var h = time.getHours();
        		var m = time.getMinutes();
        		var s = time.getSeconds();
        		if(h<10)
        			h ="0"+h;
        		if(m<10)
        			m ="0"+m;
        		if(s<10)
        			s= "0"+s;
        		document.getElementById("time").innerHTML = h +":"+ m +":"+s;
        		setTimeout("dongho()",1000);				
			}
        </script>
    </head>
    <body>
<div class="container">
         <div class="panel panel-info class">
             <div class="panel-heading"><h3 style="text-align: center"><div id="time"><script type="text/javascript">dongho();</script></div> </h3> 
             </div>
        <jsp:include page="slide.jsp"></jsp:include> 	
        <div class="panel panel-success">
        <div class="panel-heading">
        <b><%if(session.getAttribute("user")!=null) {%>
      			<a href="#">Xin chào <%=(String)session.getAttribute("user") %></a>
                    <%
                    } 
                    else{
                    %>
                        <a href="LoginServlet"><button type="button" class="btn btn-default"><span class="glyphicon glyphicon-user"></span>Đăng nhập</button></a>
                        <%} %></b>
      	<b><%if(session.getAttribute("user")!=null) {%>
      			 <a style="text-align: right" href="LogOutServlet"><span class="glyphicon glyphicon-log-in"></span> Đăng xuất</a>
                    <%
                    } 
                    else{
                    %>
                        <button onclick="openModal()" type="button" class="btn btn-default"><span class="glyphicon glyphicon-log-in"></span> Đăng ký</button>
                        <%} %></b>
      </div>
      
    </div>
            <div class="container"> 
                <!--  Hiển thị danh sách -->
                      
                  <!--  Hiển thị danh sách -->
                  <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-cog"></span><a href="MayController">Quản lý máy</a></button>
                  <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-cog"></span><a href="KhachHangSeverlet">Quản lý khách hàng</a></button>
            	  <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-cog"></span><a href="DichVuServerlet">Quản lý dịch vụ</a></button>
            	  <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-cog"></span><a href="DangKyMayServlet">Đăng ký máy</a></button>
            	  <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-cog"></span><a href="DangKyDVServlet">Đăng ký dịch vụ</a></button>                                                            
 	     
       	    
        
		 <form  class="navbar-form navbar-center" action="" method="post">
	      <div class="form-group">
	          <input  type="text" class="form-control" placeholder="Search" name="txttk">
	      </div>
	      <button type="submit" class="btn btn-default">Tìm kiếm </button>
	    </form>
</div>  
</div>
</div>
<!--  dang nhap-->
<div id="modal" class="modal1">
	<div class ="container">
           <div class="panel panel-success">
                <div class="panel-heading"><h4><b><span class="glyphicon glyphicon-wrench"></span>nHIN CAI GIE :3</b></h4></div>
                <!--  Hiển thị danh sách máy-->
                      <span onclick="document.getElementById('modal').style.display='none'"
						class="close" title="Close Modal1">&times;</span>
                  <!--  Hiển thị danh sách máy-->
                <div class="panel-body">              
                 <div class="alert alert-danger">
				    <strong>Lưu ý!</strong> kkkk
				  </div>               			     
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
</script>
<!--  -->
    </body>
</html>

    