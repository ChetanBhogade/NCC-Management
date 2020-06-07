<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/MasterPage.master"  CodeFile="army_rally_info.aspx.cs" Inherits="Admin_User_army_rally_info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="panel panel-primary">
<div class="panel-heading">Army Rally Details</div>

<div class="panel-body">

<div class="form-group">
<label for="txtname">Rally Name :</label>
<asp:TextBox ID="txtname" class="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtname" runat="server" ErrorMessage="please Enter rally name"></asp:RequiredFieldValidator>
</div>

<div class="form-group">
<label for="txtdistrict">District :</label>
<asp:TextBox ID="txtdistrict" class="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtdistrict" runat="server" ErrorMessage="please Enter"></asp:RequiredFieldValidator>
</div>


<div class="form-group">
<label for="txtqualification">Qualification :</label>
<asp:TextBox ID="txtqualification" class="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtqualification" runat="server" ErrorMessage="please Enter Qualification"></asp:RequiredFieldValidator>

</div>

<div class="form-group">
<label for="txtpost">Post :</label>
<asp:TextBox ID="txtpost" class="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtpost" runat="server" ErrorMessage="please Enter post"></asp:RequiredFieldValidator>

</div>


<div class="form-group">
<label for="txtdate">Date :</label>
<asp:TextBox ID="txtdate" class="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtdate" runat="server" ErrorMessage="please Enter Date"></asp:RequiredFieldValidator>

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
    <div class="table-responsive">
    <asp:GridView class="table table-bordered" ID="GridView1" runat="server">
    </asp:GridView>
    </div>
 
    </div>
    </div>
</div>
</asp:Content>
