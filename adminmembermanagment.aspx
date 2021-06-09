<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagment.aspx.cs" Inherits="ELibrary.adminmembermanagment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            //$('#myTable').DataTable();
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        } );
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                      
                        <div class="row">
                            <div class="col">
                                <center>
                                   <h4>Member Details</h4>                                 
                                </center>  
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                  <img src="Images/thumb_COLOURBOX44167385.jpg" width="100px" height="100px"/>
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
                               <label>Member ID:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                   <div class="input-group">
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="ID">
                                    </asp:TextBox>
                                    <asp:Button ID="Button1" runat="server"  class="form-control btn btn-primary"  Text="Go" OnClick="Button1_Click"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                               <label>Account Status:</label> 
                                <div class="form-group" style=" margin-top:10px;"> 
                                <div class="input-group">
                                    <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" placeholder="Status" ReadOnly="True">
                                    </asp:TextBox>  
                                    <asp:Button ID="Button3"  class="form-control btn btn-primary" Text=" √ " runat="server" OnClick="Button3_Click"/>
                                    <asp:Button ID="Button4"  class="form-control btn btn-warning" Text=" || " runat="server" OnClick="Button4_Click"/>
                                    <asp:Button ID="Button5" class="form-control btn btn-danger"  Text=" ! " runat="server" OnClick="Button5_Click"/>
                                                                                                
                                </div>    
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-7"  style="margin-top:10px;">
                                <label>Full Name:</label>
                                <div class="form-group" style=" margin-top:10px;">                                    
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Full Name" ReadOnly="True">
                                    </asp:TextBox>                           
                                </div>
                            </div>
                            <div class="col-md-5"  style="margin-top:10px;">
                                <label>Conatct Number:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Contact Number" TextMode="Number" ReadOnly="True">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6"  style="margin-top:10px;">
                               <label>DOB:</label>
                               <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" TextMode="Date" ReadOnly="True">
                                    </asp:TextBox>                                 
                               </div>
                            </div>
                            <div class="col-md-6"  style="margin-top:10px;">
                               <label>Email ID:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" placeholder="Email ID" TextMode="Email" ReadOnly="True">
                                    </asp:TextBox>
                                </div>
                            </div>  
                        </div>

                        <div class="row">
                            <div class="col-md-4" style="margin-top:10px;">
                               <label>State:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox13" class="form-control" runat="server" placeholder="State" ReadOnly="True">
                                    </asp:TextBox>                          
                                </div>
                            </div>
                             <div class="col-md-4" style="margin-top:10px;">
                               <label>City:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox11" class="form-control" runat="server" placeholder="City" ReadOnly="True">
                                    </asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-4" style="margin-top:10px;">
                               <label>Pin Code:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox12" class="form-control" runat="server" placeholder="Pin Code" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                       </div>

                        <div class="row">
                            <div class="col" style="margin-top:10px;">
                                <label>Full Address:</label>
                                <div class="form-group" style="margin-top:10px;">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Full Address" TextMode="MultiLine" ReadOnly="True">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">                         
                                 <asp:Button ID="Button2" style="margin-top:10px; width:614px;" Text="Delete User Permanently " class="btn btn-lg btn-block btn-danger" runat="server" OnClick="Button2_Click"/>                                   
                            </div>               
                        </div> 
                        
                </div> <!--card body-->
              </div> <!--card-->
              <a href="homepage.aspx"><< Back to HOME</a><br /><br />  
          </div><!--col-md-6-->

          <div class="col-md-6">
              <div class="card">
                  <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                   <h4>Member List</h4>                                                                  
                                </center>  
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr /> 
                            </div>
                        </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="ID" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact No" SortExpression="contact_no" />
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
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
