<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/MasterPage.master" CodeFile="online_demo_paper.aspx.cs" Inherits="Admin_User_online_demo_paper" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="panel panel-primary">
        <div class="panel-heading">Online Demo Paper </div>

        <div class="panel panel-body">

            <div class="form-group">


                <asp:Label ID="Label1" runat="server" Text="Label">Paper Name</asp:Label>
                <asp:DropDownList ID="txtname" runat="server" class="form-control">

                    <asp:ListItem>Select..</asp:ListItem>
                    <asp:ListItem>NDA</asp:ListItem>
                    <asp:ListItem>SSB</asp:ListItem>
                    <asp:ListItem>Army Recruiment</asp:ListItem>
                    <asp:ListItem>OTA</asp:ListItem>
                    <asp:ListItem>IMA</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Label">Year</asp:Label>
                <asp:DropDownList ID="txtyear" runat="server" class="form-control">
                    <asp:ListItem>Select..</asp:ListItem>
                    <asp:ListItem>2009</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>

                <div class="form-group">
                    <asp:Label runat="server">Discription</asp:Label>
                    <asp:TextBox ID="TextBox1" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>

                </div>
                <div class="form-group">
                    <asp:Label runat="server">URL</asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox2" runat="server" ErrorMessage="please enter url"></asp:RequiredFieldValidator>

                </div>


            </div>

            <asp:Button ID="Button1" runat="server" class="btn btn-block" Text="OK" OnClick="Button1_Click" />
            <div class="row">

                <asp:GridView class="table table-bordered" ID="GridView6" runat="server">
                </asp:GridView>
            </div>


        </div>

    </div>
    
    </asp:Content>