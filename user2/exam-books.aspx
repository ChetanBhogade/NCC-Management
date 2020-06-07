<%@ Page Title="" Language="C#" MasterPageFile="~/user2/MasterPage.master" AutoEventWireup="true" CodeFile="exam-books.aspx.cs" Inherits="user2_exam_books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>

        td {
            width:400px;
        }
    </style>
    <div class="container">
    <div class="services">
		<h3 class="heading-agileinfo">What we offer<span>Exam Books Are Here </span></h3>

        <div class="services-top-grids">




            <div class="row">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
                    <ItemTemplate>



                        <div class="grid1">
                            <i class="fa fa-book" aria-hidden="true"></i>
                            <h4><%# Eval("book_name") %></h4>
                            <p><b>Description: - </b><%# Eval("description") %></p>
                            <p><b>Price: - </b><%# Eval("description") %></p>
                            <p><b>Url: - </b><a href="http://<%# Eval("url") %>">Download</a></p>
                        </div>
                        <div class="clearfix"></div>



                    </ItemTemplate>
                </asp:DataList>

            </div>
        </div>
        </div>
        </div>



</asp:Content>
