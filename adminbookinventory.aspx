<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="ELibrary.adminbookinventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">

        $(document).ready(function () {
                //$('#myTable').DataTable();
                $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        } );

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgView').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

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
                                   <h4>Book Details</h4>                                 
                                </center>  
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                  <img src="bookinventory/thumb_COLOURBOX44167385.jpg" id="imgView" width="100px" height="100px"/>
                                </center>  
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr /> 
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:FileUpload class="form-control" ID="FileUpload1" onchange="readURL(this);" runat="server" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4" style="margin-top:10px;">
                               <label>Book ID:</label>
                                <div class="form-group" style="margin-top:10px;">
                                   <div class="input-group">
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="ID">
                                    </asp:TextBox>
                                       <asp:Button ID="Button1" class="form-control btn btn-primary" runat="server" Text="Go" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8" style="margin-top:10px;">
                               <label>Book Name:</label>                              
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" placeholder="Book Name" >
                                    </asp:TextBox>                                                                                                     
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4"  style="margin-top:10px; margin-bottom:10px;">
                                <label>Language:</label>
                                <div class="form-group" style=" margin-top:10px;">                                    
                                    <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                                        <asp:ListItem Text="English" Value="English" />
                                        <asp:ListItem Text="Japan" Value="Japan" />
                                    </asp:DropDownList>                                                 
                                </div>
                                <label>Publisher Name:</label>
                                <div class="form-group" style=" margin-top:10px;">                                    
                                     <asp:DropDownList ID="DropDownList2" class="form-control" runat="server">
                                         <asp:ListItem Text="Select" Value="select" />
                                         <asp:ListItem Text="Publisher1" Value="Publisher1" />
                                        <asp:ListItem Text="Lhemn" Value="Lhemn" />
                                        <asp:ListItem Text="ahilch" Value="ahilch" />
                                    </asp:DropDownList>                                                 
                                </div>
                            </div>                        
                            <div class="col-md-4"  style="margin-top:10px; margin-bottom:10px;">
                                <label>Author Name:</label>
                                <div class="form-group" style=" margin-top:10px;">                                    
                                    <asp:DropDownList ID="DropDownList4" class="form-control" runat="server">
                                        <asp:ListItem Text="Select" Value="select" />
                                        <asp:ListItem Text="Martu" Value="Martu" />
                                        <asp:ListItem Text="Lhemn" Value="Lhemn" />
                                        <asp:ListItem Text="ahilch" Value="ahilch" />
                                    </asp:DropDownList>                                                  
                                </div>
                                <label>Publish Date:</label>
                                <div class="form-group" style=" margin-top:10px;">                                    
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" TextMode="Date">
                                    </asp:TextBox>                                                
                                </div>
                            </div>
                            <div class="col-md-4"  style="margin-top:10px;">
                                <label>Genre:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:ListBox ID="ListBox1" CssClass="form-control" runat="server" SelectionMode="Multiple" Rows="4">
                                        <asp:ListItem Text="My" Value="My"/>
                                        <asp:ListItem Text="Mi" Value="Mi"/>
                                        <asp:ListItem Text="Mo" Value="Mo"/>
                                    </asp:ListBox>

                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4"  style="margin-top:10px;">
                               <label>Edition:</label>
                               <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" placeholder="Edition">
                                    </asp:TextBox>                                 
                               </div>
                            </div>
                            <div class="col-md-4"  style="margin-top:10px;">
                               <label>Book Cost(per unit):</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" placeholder="Book Cost" TextMode="Number">
                                    </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4"  style="margin-top:10px;">
                                <label>Pages:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Pages" TextMode="Number">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-4"  style="margin-top:10px;">
                               <label>Actual Stock:</label>
                               <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="Actual Stock" TextMode="Number">
                                    </asp:TextBox>                                 
                               </div>
                            </div>
                            <div class="col-md-4"  style="margin-top:10px;">
                               <label>Current Stock:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" placeholder="Current Stock" ReadOnly="True" TextMode="Number">
                                    </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4"  style="margin-top:10px;">
                                <label>Issued Books:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox14" CssClass="form-control" runat="server" placeholder="Issued Books" ReadOnly="True" TextMode="Number">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col" style="margin-top:10px;">
                                <label>Book Description:</label>
                                <div class="form-group" style="margin-top:10px;">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Book Description" TextMode="MultiLine">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">                     
                            <div class="col-4" style="margin-top:10px;">                         
                                 <asp:Button ID="Button2" style="width:158px; margin-top:10px;" Text="Add" class="btn btn-lg btn-block btn-success" runat="server" OnClick="Button2_Click"/>                                   
                            </div>
                            <div class="col-4" style="margin-top:10px;">                         
                                 <asp:Button ID="Button3" style="width:158px; margin-top:10px;" Text="Update" class="btn btn-lg btn-block btn-warning" runat="server" OnClick="Button3_Click"/>                                   
                            </div>
                            <div class="col-4" style="margin-top:10px;">                         
                                 <asp:Button ID="Button4" style="width:158px; margin-top:10px;" Text="Delete" class="btn btn-lg btn-block btn-danger" runat="server" OnClick="Button4_Click"/>                                   
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
                                   <h4>Book Inventory List</h4>                                                                  
                                </center>  
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr /> 
                            </div>
                        </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id" />
                                       
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-lg-10">
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Author:<asp:Label ID="Label2" runat="server" Text='<%# Eval("author_name") %>' Font-Bold="true"></asp:Label>
                                                                    &nbsp;| Genre:<asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                                    &nbsp;| Language:
                                                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">

                                                                    Publisher:<asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                                    &nbsp;| Publisher Date:<asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("publisher_date") %>'></asp:Label>
                                                                    &nbsp;| Pages:
                                                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                                    &nbsp; | Edition:
                                                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>

                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">

                                                                    Cost -&nbsp;
                                                                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                                    &nbsp;| Actual Stock -
                                                                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                                    &nbsp;| Available -
                                                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>

                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">

                                                                    Description :
                                                                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Text='<%# Eval("book_description") %>'></asp:Label>

                                                                </div>
                                                            </div>   
                                                        </div>
                                                        <div class="col-lg-2">
                                                            <asp:Image ID="Image1" Width="100px" Height="120px" class="img-fluid" runat="server" ImageUrl='<%# Eval("boo_img_link") %>' />
                                                        </div>
                                                    </div>
                                                </div>

                                            </ItemTemplate>
                                        </asp:TemplateField>
                                       
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
