<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="ELibrary.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="Images/Preppy-icon.png" width="100px"/>
                                </center>  
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                   <h4>Member Sign Up</h4>
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
                            <div class="col-md-6" style="margin-top:10px;">
                               <label>Conatct Number:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Contact Number" TextMode="Number">
                                    </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6" style="margin-top:10px;">
                               <label>Email ID:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="Email ID" TextMode="Email">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-4" style="margin-top:10px;">
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
                             <div class="col-md-4" style="margin-top:10px;">
                               <label>City:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox8" class="form-control" runat="server" placeholder="City">
                                    </asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-4" style="margin-top:10px;">
                               <label>Pin Code:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox9" class="form-control" runat="server" placeholder="Pin Code" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col" style="margin-top:10px;">
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
                                <span style="background-color:darkseagreen; border-radius:35px;">Login Credentials</span>
                            </div>
                            </center>
                        </div>

                        <div class="row">
                            <div class="col-md-6" style="margin-top:10px;">
                                <label>User ID:</label>
                                <div class="form-group" style="margin-top:10px;">
                                    <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="User ID">
                                    </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6" style="margin-top:10px;">
                                <label>Password:</label>
                                <div class="form-group" style=" margin-top:10px;">
                                    <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="Password" TextMode="Password">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                 <div class="form-group" style=" margin-top:10px;">
                                        <asp:Button ID="Button2" runat="server" style="width:700px;" Text="Sign Up" class="btn btn-success btn-block btn-lg" OnClick="Button2_Click" />                                   
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
