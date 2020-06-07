<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="checkroll.aspx.cs" Inherits="Admin_checkroll" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="panel panel-primary">

        <div class="panel-heading">check RollNo</div>

        <div class="panel-body">


            <div class="form-group">
                <label for="txtrol">Roll No</label>
                <asp:TextBox ID="txtrol" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Status</label>
                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                    <asp:ListItem Value="yes">Yes</asp:ListItem>
                    <asp:ListItem Value="no">No</asp:ListItem>
                </asp:DropDownList>
            </div>
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="Button1_Click" />
        </div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>


</asp:Content>

