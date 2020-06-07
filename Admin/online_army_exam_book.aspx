<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/MasterPage.master" CodeFile="online_army_exam_book.aspx.cs" Inherits="Admin_User_online_army_exam_book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="panel panel-primary">
<div class="panel-heading">Online Army Exam Book</div>

<div class="panel-body">    

<div class="form-group">
<label for="txtname">Book Name  :</label>
<asp:TextBox ID="txtname" class="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtname" runat="server" ErrorMessage="please Enter Book Name"></asp:RequiredFieldValidator>
</div>

<div class="form-group">
<label for="txtprice">price :</label>
<asp:TextBox ID="txtprice" class="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtprice" runat="server" ErrorMessage="please Enter Price   "></asp:RequiredFieldValidator>

</div>


<div class="form-group">
<label for="txtimage">Image :</label>
<asp:TextBox ID="txtimage" class="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtimage" runat="server" ErrorMessage="please Enter Image   "></asp:RequiredFieldValidator>
    
</div>

<div class="form-group">
<label for="txturl">URL :</label>
<asp:TextBox ID="txturl" class="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txturl" runat="server" ErrorMessage="please Enter URL   "></asp:RequiredFieldValidator>

</div>


<div class="form-group">
<label for="txtname">Description :</label>
<asp:TextBox ID="txtdesc" TextMode="MultiLine" class="form-control" runat="server"></asp:TextBox>

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

    <asp:GridView class="table table-bordered" ID="GridView1" runat="server">
    </asp:GridView>
</div>

    </div>
    </div>
    
    
</asp:Content>

