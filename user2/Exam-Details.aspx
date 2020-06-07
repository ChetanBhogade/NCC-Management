<%@ Page Title="" Language="C#" MasterPageFile="~/user2/MasterPage.master" AutoEventWireup="true" CodeFile="Exam-Details.aspx.cs" Inherits="user2_Exam_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        td {
            width: 400px;
        }
    </style>
    <div class="container">
        <div class="services">
            <h3 class="heading-agileinfo">Exam Details<span>All Exam Details Are Here </span></h3>

            <div class="services-top-grids">

                <div class="row">
                    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
                        <ItemTemplate>

                            <div class="grid1">
                                <i class="fa fa-book" aria-hidden="true"></i>
                                <h4><%# Eval("exam_name") %></h4>
                                <p><%# Eval("description") %></p>
                                <h5>Location</h5>
                                <p><%# Eval("location") %></p>
                                <h5>Time</h5>
                                <p><%# Eval("time") %></p>
                            </div>
                            <div class="clearfix"></div>



                        </ItemTemplate>
                    </asp:DataList>

                </div>
            </div>
        </div>
    </div>


</asp:Content>

