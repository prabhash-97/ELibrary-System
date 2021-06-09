<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissue.aspx.cs" Inherits="ELibrary.adminbookissue" %>
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
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                      
                        <div class="row">
                            <div class="col">
                                <center>
                                   <h4>Book Issuing</h4>                                 
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
                            <div class="col-md-6">
                               <label>Member ID:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Member ID">
                                    </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                               <label>Book ID:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <div class="input-group">
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Book ID">
                                    </asp:TextBox>
                                    <asp:Button ID="Button1" class="form-control btn btn-primary" runat="server" Text="Go" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>                        
                        </div>

                         <div class="row">
                            <div class="col-md-6">
                               <label>Member Name:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Member Name" ReadOnly="True">
                                    </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                               <label>Book Name:</label>
                                <div class="form-group" style=" margin-top:10px;">                                 
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Book Name" ReadOnly="True">
                                    </asp:TextBox>                                
                                </div>
                            </div>                        
                        </div>

                         <div class="row">
                            <div class="col-md-6">
                               <label>Start Date:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Start Date" TextMode="Date">
                                    </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                               <label>End Date:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="End Date" TextMode="Date">
                                    </asp:TextBox>
                                </div>
                            </div>                        
                        </div>
                        
                        <div class="row">
                            <div class="col-6">                         
                                 <asp:Button ID="Button2" style="width:241px; margin-top:10px;" Text="Issue" class="btn btn-lg btn-block btn-primary" runat="server" OnClick="Button2_Click"/>                                   
                            </div>
                            <div class="col-6">                         
                                 <asp:Button ID="Button3" style="width:241px; margin-top:10px;" Text="Return" class="btn btn-lg btn-block btn-success" runat="server" OnClick="Button3_Click"/>                                   
                            </div>
                        </div> 
                        
                </div> <!--card body-->
              </div> <!--card-->
          </div><!--col-md-6-->

          <div class="col-md-7">
              <div class="card">
                  <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                   <h4>Issued Book List</h4>                                                                  
                                </center>  
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr /> 
                            </div>
                        </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Member ID" SortExpression="member_id" />
                                        <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name" />
                                        <asp:BoundField DataField="book_id" HeaderText="Book ID" SortExpression="book_id" />
                                        <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                                        <asp:BoundField DataField="issue_date" HeaderText="Issue Date" SortExpression="issue_date" />
                                        <asp:BoundField DataField="due_date" HeaderText="Due Date" SortExpression="due_date" />
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
