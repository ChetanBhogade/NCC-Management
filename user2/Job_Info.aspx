<%@ Page Title="" Language="C#" MasterPageFile="~/user2/MasterPage.master" AutoEventWireup="true" CodeFile="Job_Info.aspx.cs" Inherits="user2_Job_Info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style>
        td {
            width: 400px;
        }
    </style>

    <div class="container">
        <div class="services">
            <h3 class="heading-agileinfo">Job Info<span>Your Job Infos Are Here </span></h3>

            <div class="services-top-grids">




                <div class="row">
                    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
                        <ItemTemplate>



                            <div class="grid1">
                                <i class="fa fa-book" aria-hidden="true"></i>
                                <h4><%# Eval("Company_name") %></h4>
                                <p><b>Post Name: - </b><%# Eval("Post_name") %></p>
                                <p><b>Qualification: - </b><%# Eval("Qualification") %></p>
                                <p><b>Description: - </b><%# Eval("Description") %></p>
                            </div>
                            <div class="clearfix"></div>



                        </ItemTemplate>
                    </asp:DataList>

                </div>
            </div>
        </div>
    </div>



</asp:Content>

