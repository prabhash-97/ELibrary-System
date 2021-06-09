<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="ELibrary.userprofile" %>
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
                                    <img src="Images/Preppy-icon.png" width="80px" height="80px"/>
                                </center>  
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                   <h4>Your Profile</h4>
                                   <span>Account Status - </span>
                                   <asp:Label ID="Label1" runat="server" Text="Your Status" style=" background-color:cornflowerblue; padding:5px; border-radius:55px;"></asp:Label>
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
                               <label>Full Name:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Full Name">
                                    </asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-6">
                               <label>Date of Birth:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Date of Birth" TextMode="Date">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-6">
                               <label>Conatct Number:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Contact Number" TextMode="Number">
                                    </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                               <label>Email ID:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="Email ID" TextMode="Email">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-4">
                               <label>State:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">

                                        <asp:ListItem Text="Select" Value="select" />
                                        <asp:ListItem Text="Martu" Value="Martu" />
                                        <asp:ListItem Text="Lhemn" Value="Lhemn" />
                                        <asp:ListItem Text="ahilch" Value="ahilch" />
                                        <asp:ListItem Text="Achi" Value="Achi" />
                                        <asp:ListItem Text="Hanchi" Value="Hanchi" />
                                        <asp:ListItem Text="Humbly" Value="Humbly" />
                                        <asp:ListItem Text="Chenky" Value="Chenky" />
                                        <asp:ListItem Text="Kubhi" Value="Kubhi" />

                                    </asp:DropDownList>                                  
                                </div>
                            </div>
                             <div class="col-md-4">
                               <label>City:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox8" class="form-control" runat="server" placeholder="City">
                                    </asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-4">
                               <label>Pin Code:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox9" class="form-control" runat="server" placeholder="Pin Code" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Full Address:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" placeholder="Full Address" TextMode="MultiLine">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <center>
                            <div class="col" style="margin-top:10px; margin-bottom:10px;">
                                <span style=" background-color:darkseagreen; border-radius:35px; padding:3px;">Login Credentials</span>
                            </div>
                            </center>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>User ID:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="User ID" ReadOnly="True">
                                    </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Old Password:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="Password" ReadOnly="True">
                                    </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>New Password:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox7" class="form-control" runat="server" placeholder="Password" TextMode="Password">
                                    </asp:TextBox>
                                </div>
                           </div>
                        </div>
                        <div class="row">
                            <div class="col-8 mx-auto">
                                <center>
                                 <div class="form-group" style=" margin-top:10px;">
                                     <asp:Button ID="Button2" style="width:300px;" Text="Update" class="btn btn-primary btn-lg" runat="server" OnClick="Button2_Click"/>                                   
                                 </div>
                                 </center>   
                            </div>
                        </div>
                </div>
                </div>
            </div><!--col-md-7 -->

            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                   <img src="Images/thumb_COLOURBOX44167385.jpg" width="150px" height="100px" />
                                </center>  
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                   <h4>Your Issued Books</h4>                                
                                   <asp:Label ID="Label2" runat="server" Text="Your books info" style=" background-color:cornflowerblue; border-radius:35px; padding:3px;"></asp:Label>
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
                                <asp:GridView ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound1" class="table table-striped table-bordered"></asp:GridView>    
                            </div>
                        </div>

                </div>
                </div>


            </div><!--col-md-7 -->

        </div>
    </div>

</asp:Content>
