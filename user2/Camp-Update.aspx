<%@ Page Title="" Language="C#" MasterPageFile="~/user2/MasterPage.master" AutoEventWireup="true" CodeFile="Camp-Update.aspx.cs" Inherits="user2_Camp_Update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>

        td {
            width:400px;
        }
    </style>
    <div class="container">
        <div class="services">
            <h3 class="heading-agileinfo">NCC Camp Uodate<span>NCC Camp Update Details Are Here </span></h3>

            <div class="services-top-grids">




                <div class="row">
                    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
                        <ItemTemplate>



                            <div class="grid1">
                                <i class="fa fa-book" aria-hidden="true"></i>
                                <h4><%# Eval("camp_name") %></h4>
                                <p><%# Eval("location") %></p>
                            </div>
                            <div class="clearfix"></div>



                        </ItemTemplate>
                    </asp:DataList>

                </div>
            </div>
        </div>
    </div>


</asp:Content>

