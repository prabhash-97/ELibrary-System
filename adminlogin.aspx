<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="ELibrary.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-4 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="Images/Preppy-icon.png" width="150px" />
                                </center>  
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                   <h3>Admin Login</h3>
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
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Admin ID">
                                    </asp:TextBox>
                                </div>
                                <div class="form-group" style="margin-top:5px;">
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password">
                                    </asp:TextBox>
                                </div>
                                 <div class="form-group" style="margin-top:5px;">
                                    <asp:Button ID="Button1" style="width:320px;" Class="btn btn-success btn-block btn-lg" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div>
                        </div>

                    </div>
                </div>
                </div>
                 <a href="homepage.aspx"><< Back to HOME</a><br /><br />
            </div>
        </div>
    </div>
    

</asp:Content>
