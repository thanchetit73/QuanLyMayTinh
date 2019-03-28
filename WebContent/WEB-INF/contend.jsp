  <div class="container"> 
                <!--  Hiển thị danh sách -->
                      
                  <!--  Hiển thị danh sách -->
                  <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-cog"></span><a href="htcongdan">Quản lý công dân</a></button>
                  <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-cog"></span><a href="hthokhau">Quản lý hộ khẩu</a></button>
            		<button type="button" class="btn btn-default"><span class="glyphicon glyphicon-cog"></span><a href="htlsluutrucongdan">Quản lý lưu trú</a></button>
                     
      <form  class="navbar-form navbar-center" action="" method="post">
      <div class="form-group">
          <input  type="text" class="form-control" placeholder="Search" name="txttk">
      </div>
      <button type="submit" class="btn btn-default">Tra công dân</button> 
    </form>
      
        </div>
        <hr>
        
            <div class="panel panel-primary">
                <div class="panel-heading"><h4>Danh sách công dân</h4></div>
                <!--  Hiển thị danh sách học viên-->
                      
                  <!--  Hiển thị danh sách học viên-->
                <div class="panel-body">
                    <table class="table table-bordered">
                        <thead >
                            <tr style="background-color:greenyellow">
                                <th style="text-align:center">STT</th>
                                <th style="text-align:center">ID CMNF</th>
                            <th style="text-align:center">Họ</th>
                            <th style="text-align:center">Tên</th>
                            <th style="text-align:center">Ngày sinh</th>
                            <th style="text-align:center">Giới tính</th>
                            <th style="text-align:center">Nơi sinh</th>
                            <th style="text-align:center">TT Hôn nhân</th>
                            <th style="text-align:center">Nghề nghiệp</th>
                          </tr>
                        </thead>
                        <!--  Hiển thị -->
           
                       <!--  Hiển thị -->
                            <tr>
                            <td></td> 
                            <td><span style="color: red"></span></td>
                            <td><span style="color: red"></span></td>
                            <td><span style="color: red"></span></td>
                            <td><span style="color: red"></span></td>
                            <td><span style="color: red"></span></td>
                            <td><span style="color: red"></span></td>
                            
                            <td><span style="color: red"></span></td>
                            <td><span style="color: red"></span></td>
                            
                           
                            <td><a onclick="return xoa();" href="#"><span class="label label-danger">Xóa</span></a></td>
                             <td><a href="#"><span class="label label-primary">Cập nhật</span></a></td>
                          </tr>
                     
                         

                        </tbody>
                      </table>
                    <button style ="float: right" type="button" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span><a style="color:white" href="themcongdan">Thêm công dân</a></button>
                </div>
            </div>