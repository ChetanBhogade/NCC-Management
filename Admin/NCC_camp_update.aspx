<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/MasterPage.master" CodeFile="NCC_camp_update.aspx.cs" Inherits="Admin_User_NCC_camp_update" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="panel panel-primary">
<div class="panel-heading">Camp Update</div>

<div class="panel-body">
  

<div class="form-group">
<label for="txtname">Camp Name :</label>
<asp:TextBox ID="txtname" class="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Please Enter Camp Name"></asp:RequiredFieldValidator>
</div>

<div class="form-group">
<label for="txtlocation">Location :</label>
<asp:TextBox ID="txtlocation" class="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlocation" ErrorMessage="Please Enter Location"></asp:RequiredFieldValidator>

</div>

<div class="form-group">
<label for="txtvacancy">Vacancy :</label>
<asp:TextBox ID="txtvacancy" class="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtvacancy" ErrorMessage="Please Enter Vacancy"></asp:RequiredFieldValidator>

</div>


<div class="form-group">
<label for="txtdate">Date :</label>
<asp:TextBox ID="txtdate" class="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtdate" ErrorMessage="Please Enter date"></asp:RequiredFieldValidator>

</div>

<div class="row" >
<div class="col-lg-3"><asp:Button ID="Button1" runat="server" 
        class="btn btn-block btn-primary" Text="Add" onclick="Button1_Click" /></div>
<div class="col-lg-3"><asp:Button ID="Button2" runat="server" 
        class="btn btn-block btn-primary" Text="Update" onclick="Button2_Click" /></div>

<div class="col-lg-3"><asp:Button ID="Button3" runat="server" class="btn btn-block btn-primary" Text="Delete" OnClick="Button3_Click" /></div>
<div class="col-lg-3"><asp:Button ID="Button4" runat="server" class="btn btn-block btn-primary" Text="Clear" /></div>

</div>


<div class="row">.</div>
<div class="row">
<div id="message" class="error-message">New Record Added Successfully.</div>
</div>



<div class="row">

    <asp:GridView class="table table-bordered" ID="GridView3" runat="server">
    </asp:GridView>
</div>





</div>

</div>
    </asp:Content>