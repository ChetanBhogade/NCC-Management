<%@ Page Title="" Language="C#" MasterPageFile="~/user2/MasterPage.master" AutoEventWireup="true" CodeFile="pared-info.aspx.cs" Inherits="user2_pared_info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>

        td {
            width:400px;
        }
    </style>
    <div class="container">
        <div class="services">
            <h3 class="heading-agileinfo">Weekly Pared Info<span>Your Pared Infos Are Here </span></h3>

            <div class="services-top-grids">




                <div class="row">
                    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
                        <ItemTemplate>



                            <div class="grid1">
                                <i class="fa fa-book" aria-hidden="true"></i>
                                <h4><%# Eval("location") %></h4>
                                <p><%# Eval("description") %></p>
                            </div>
                            <div class="clearfix"></div>



                        </ItemTemplate>
                    </asp:DataList>

                </div>
            </div>
        </div>
    </div>


</asp:Content>

