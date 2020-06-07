<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/MasterPage.master" CodeFile="event_details.aspx.cs" Inherits="Admin_User_event_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="panel panel-primary">
<div class="panel-heading">Event Details</div>

<div class="panel-body">
 

<div class="form-group">
<label for="txtname">Event Name :</label>
<asp:TextBox ID="txtname" class="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtname" runat="server" ErrorMessage="please Enter Event Name"></asp:RequiredFieldValidator>
</div>

<div class="form-group">
<label for="txtlocation">Location :</label>
<asp:TextBox ID="txtlocation" class="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtlocation" runat="server" ErrorMessage="please Enter Location"></asp:RequiredFieldValidator>

</div>


<div class="form-group">
<label for="txtdate">Date :</label>
<asp:TextBox ID="txtdate" class="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtdate" runat="server" ErrorMessage="please Enter Date"></asp:RequiredFieldValidator>

</div>

<div class="form-group">
<label for="txttime">Time:</label>
<asp:TextBox ID="txttime" class="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txttime" runat="server" ErrorMessage="please Enter Time "></asp:RequiredFieldValidator>

</div>


<div class="form-group">
<label for="txtcdt">No of CDT :</label>
<asp:TextBox ID="txtcdt" class="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtcdt" runat="server" ErrorMessage="please Enter No of CDT"></asp:RequiredFieldValidator>

</div>

<div class="row" >
<div class="col-lg-3"><asp:Button ID="Button1" runat="server" 
        class="btn btn-block btn-primary" Text="Add" onclick="Button1_Click" /></div>
<div class="col-lg-3"><asp:Button ID="Button2" runat="server" 
        class="btn btn-block btn-primary" Text="Update" onclick="Button2_Click" /></div>

<div class="col-lg-3"><asp:Button ID="Button3" runat="server" class="btn btn-block btn-primary" Text="Delete" OnClick="Button3_Click" /></div>
<div class="col-lg-3"><asp:Button ID="Button4" runat="server" class="btn btn-block btn-primary" Text="Clear" /></div>

</div>

<div class="row">.

</div>
<div class="row">

</div>



<div class="row">

    <asp:GridView class="table table-bordered" ID="GridView2" runat="server">
    </asp:GridView>
</div>
    </div>
 </div> 

</asp:Content>

