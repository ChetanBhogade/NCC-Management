<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="check-status.aspx.cs" Inherits="user2_check_status" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style>
        .mx-auto{
            margin-left:200px;

        }
        .row {
            padding: 50px;
        }
    </style>
    

    <div class="panel panel-primary">

        <div class="panel-heading">Check Form Status</div>

        <div class="panel-body">
            <div class="container">
                <div class="row">
                    <div class="col-md-9 mx-auto">

                        <form runat="server" method="post">

                            <div class="form-group">
                                <label for="txtroll">College RollNumber :</label>
                                <asp:TextBox ID="txtroll" runat="server" class="form-control"></asp:TextBox>
                            </div>

                            <asp:Button ID="Button2" runat="server" class="btn btn-block"
                                Text="Save and Continue" OnClick="Button1_Click" />

                        </form>
                    </div>
                </div>
            </div>

        </div>

        <span id="lblmessage" class="warning" runat="server">.</span>


    </div>
   
</asp:Content>

