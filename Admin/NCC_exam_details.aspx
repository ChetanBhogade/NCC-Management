<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/MasterPage.master" CodeFile="NCC_exam_details.aspx.cs" Inherits="Admin_User_NCC_exam_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="panel panel-primary">
<div class="panel-heading">Exam Information</div>


<div class="panel-body">
    

<div class="form-group">
<label for="txtname">Exam Name :</label>
<asp:TextBox ID="txtname" class="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtname" runat="server" ErrorMessage="please Enter Exam name"></asp:RequiredFieldValidator>
</div>

<div class="form-group">
<label for="txtlocation">Location :</label>
<asp:TextBox ID="txtlocation" class="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtlocation" runat="server" ErrorMessage="please Enter location"></asp:RequiredFieldValidator>

</div>


<div class="form-group">
<label for="txttime">Time :</label>
<asp:TextBox ID="txttime" class="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txttime" runat="server" ErrorMessage="please Enter time"></asp:RequiredFieldValidator>

</div>

<div class="form-group">
<label for="txtdate">Date :</label>
<asp:TextBox ID="txtdate" class="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtdate" runat="server" ErrorMessage="please Enter date"></asp:RequiredFieldValidator>

</div>

<div class="form-group">
<label for="txtdesc">Description :</label>
<asp:TextBox ID="txtdesc" TextMode="MultiLine" class="form-control" runat="server"></asp:TextBox>

</div>



<div class="row" >
<div class="col-lg-3"><asp:Button ID="Button1" runat="server" 
        class="btn btn-block btn-primary" Text="Add" onclick="Button1_Click" /></div>
<div class="col-lg-3"><asp:Button ID="Button2" runat="server" 
        class="btn btn-block btn-primary" Text="Update" onclick="Button2_Click" /></div>

<div class="col-lg-3"><asp:Button ID="Button3" runat="server" class="btn btn-block btn-primary" Text="Delete" /></div>
<div class="col-lg-3"><asp:Button ID="Button4" runat="server" class="btn btn-block btn-primary" Text="Clear" /></div>

</div>



<div class="row">.</div>
<div class="row">
<div id="message" class="error-message">New Record Added Successfully.</div>
</div>



<div class="row">

    <asp:GridView class="table table-bordered" ID="GridView1" runat="server">
    </asp:GridView>
</div>
    </div>
</div>
    </asp:Content>