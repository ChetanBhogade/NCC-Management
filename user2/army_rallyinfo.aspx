<%@ Page Title="" Language="C#" MasterPageFile="~/user2/MasterPage.master" AutoEventWireup="true" CodeFile="army_rallyinfo.aspx.cs" Inherits="user2_army_rallyinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        td {
            width: 400px;
        }
    </style>
    <div class="container">
        <div class="services">
            <h3 class="heading-agileinfo">Army Rally Info<span>Details About Army Rally Are Here </span></h3>

            <div class="services-top-grids">

                <div class="row">
                    <asp:DataList ID="DataList4" runat="server" RepeatColumns="4">
                        <ItemTemplate>

                            <div class="grid1">
                                <i class="fa fa-desktop" aria-hidden="true"></i>
                                <h4 class="agileinfo-head"><%# Eval("rally_name") %></h4>
                                <h5>District</h5>
                                <p><%# Eval("district") %></p>
                                <h5>qualification</h5>
                                <p><%# Eval("qualification") %></p>
                                <h5>POST</h5>
                                <p><%# Eval("post") %></p>

                                <h5>Date</h5>
                                <p><%# Eval("date") %></p>
                            </div>
                            <div class="clearfix"></div>



                        </ItemTemplate>
                    </asp:DataList>

                </div>
            </div>
        </div>
    </div>


            
        


</asp:Content>

