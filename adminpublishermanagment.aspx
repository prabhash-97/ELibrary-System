<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpublishermanagment.aspx.cs" Inherits="ELibrary.adminpublishermanagment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {
            //$('#myTable').DataTable();
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        } );
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                      
                        <div class="row">
                            <div class="col">
                                <center>
                                   <h4>Publisher Details</h4>                                 
                                </center>  
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="Images/Preppy-icon.png" width="100px"/>
                                </center>  
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr /> 
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                               <label>Publisher ID:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <div class="input-group">
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="ID">
                                    </asp:TextBox>
                                    <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Go" OnClick="Button1_Click" />
                                    </div>
                                    </div>
                            </div>
                            <div class="col-md-8">
                               <label>Publisher Name:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Publisher Name">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-4">                         
                                 <asp:Button ID="Button2" style="width:100px; margin-top:10px;" Text="Add" class="btn btn-lg btn-block btn-success" runat="server" OnClick="Button2_Click"/>                                   
                            </div>
                            <div class="col-4">                         
                                 <asp:Button ID="Button3" style="width:100px; margin-top:10px;" Text="Update" class="btn btn-lg btn-block btn-warning" runat="server" OnClick="Button3_Click"/>                                   
                            </div>
                            <div class="col-4">                         
                                 <asp:Button ID="Button4" style="width:100px; margin-top:10px;"  Text="Delete" class="btn btn-lg btn-block btn-danger" runat="server" OnClick="Button4_Click"/>                                   
                            </div>
                        </div>                   
                </div> <!--card body-->
              </div> <!--card-->
              <a href="homepage.aspx"><< Back to HOME</a><br /><br />  
          </div><!--col-md-6-->

          <div class="col-md-7">
              <div class="card">
                  <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                   <h4>Publisher List</h4>                                                                  
                                </center>  
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr /> 
                            </div>
                        </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [publisher_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="publisher_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="publisher_id" HeaderText="publisher_id" ReadOnly="True" SortExpression="publisher_id" />
                                        <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>

                  </div> <!--card body-->
              </div> <!--card-->
          </div><!--col-md-6-->
        </div><!--row-->
    </div><!--container-->

</asp:Content>
