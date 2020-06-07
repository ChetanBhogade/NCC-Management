<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master" CodeFile="job_info.aspx.cs"  Inherits="Admin_User_job_info" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="panel panel-default">
<div class="panel-heading">Job Information</div>

<div class="panel-body">
   

<div class="form-group">
<label for="txtname">Company Name  :</label>
<asp:TextBox ID="txtname" class="form-control" runat="server"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtname" runat="server" ErrorMessage="Please enter company name "></asp:RequiredFieldValidator>
</div>

<div class="form-group">
<label for="txtpostname">Post Name :</label>
<asp:TextBox ID="txtpostname" class="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtpostname" runat="server" ErrorMessage="Please enter company name "></asp:RequiredFieldValidator>
</div>


<div class="form-group">
<label for="txtqualification">Qualification :</label>
<asp:TextBox ID="txtqualification" class="form-control" runat="server"></asp:TextBox>
</div>



<div class="form-group">
<label for="txtdesc">Description :</label>
<asp:TextBox ID="txtdesc" TextMode="MultiLine" class="form-control" runat="server"></asp:TextBox>
</div>



<div class="row" >
<div class="col-lg-3"><asp:Button ID="Button1" runat="server" 
        class="btn btn-block btn-default" Text="Add" onclick="Button1_Click" /></div>
<div class="col-lg-3"><asp:Button ID="Button2" runat="server" 
        class="btn btn-block btn-default" Text="Update" onclick="Button2_Click" /></div>

<div class="col-lg-3"><asp:Button ID="Button3" runat="server" class="btn btn-block btn-default" Text="Delete" OnClick="Button3_Click" /></div>
<div class="col-lg-3"><asp:Button ID="Button4" runat="server" class="btn btn-block btn-default" Text="Clear" /></div>

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
</asp:Content>