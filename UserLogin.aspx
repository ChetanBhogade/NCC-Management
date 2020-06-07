<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="UserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style>
        .mx-auto{
            margin-left:200px;

        }
        .row {
            padding: 50px;
        }
    </style>

    <div class="container">
        <div class="row">
            <div class="col-md-6 col-12 mx-auto">
                <form class="form-signin" runat="server">
                    <h1 class="h3 text-center">Please sign in</h1>
                    <asp:Label ID="Label1" runat="server" Text="Roll Number"></asp:Label>
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:Button ID="Button1" CssClass="btn btn-lg btn-primary btn-block" runat="server" Text="Sing In" OnClick="Button1_Click" />
                    

                </form>
            </div>
        </div>
    </div>

</asp:Content>

