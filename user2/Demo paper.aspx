<%@ Page Title="" Language="C#" MasterPageFile="~/user2/MasterPage.master" AutoEventWireup="true" CodeFile="Demo paper.aspx.cs" Inherits="user2_Demo_paper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        td {
            width: 400px;
        }
    </style>
    <div class="container">
        <div class="services">
            <h3 class="heading-agileinfo">What we offer<span>Some Demo Papers Are Here </span></h3>

            <div class="services-top-grids">

                <div class="row">
                    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
                        <ItemTemplate>

                            <div class="grid1">
                                <i class="fa fa-book" aria-hidden="true"></i>
                                <h4><%# Eval("paper_name") %></h4>
                                <p><%# Eval("description") %></p>
                                <a href="http://<%# Eval("url") %>">Download</a>
                            </div>
                            <div class="clearfix"></div>



                        </ItemTemplate>
                    </asp:DataList>

                </div>
            </div>
        </div>
    </div>



</asp:Content>

