<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/MasterPage.master" CodeFile="form.aspx.cs" Inherits="Admin_form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


     <div class="row">
         
        <div class="panel panel-primary">
            <div class="panel-heading">form</div>
            <div class="panel-body">
                <div class="form-group">
                    <asp:Label runat="server">Name</asp:Label>
                    <asp:TextBox ID="Txtname" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtname" ErrorMessage="Please enter Name"></asp:RequiredFieldValidator>
                </div>
                     
                      <div class="form-group">
                    <asp:Label runat="server">Rollno</asp:Label>
                    <asp:TextBox ID="Txtroll" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtroll" ErrorMessage="please enter Roll no"></asp:RequiredFieldValidator>
                     </div>
                     <div class="form-group">
                    <asp:Label runat="server">section</asp:Label>
                         <asp:TextBox ID="Txtsection" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txtsection" ErrorMessage="please enter Section"></asp:RequiredFieldValidator>

                    </div>
                     <div class="row" >
                    <div class="col-lg-3"><asp:Button ID="Button1" runat="server"  class="btn btn-block btn-primary" Text="Add" OnClick="Button1_Click" /></div>
                   <div class="col-lg-3"><asp:Button ID="Button2" runat="server"  class="btn btn-block btn-primary" Text="Update" OnClick="Button2_Click"  /></div>
                   <div class="col-lg-3"><asp:Button ID="Button3" runat="server" class="btn btn-block btn-primary" Text="Delete" OnClick="Button3_Click" /></div>
                    <div class="col-lg-3"><asp:Button ID="Button4" runat="server" class="btn btn-block btn-primary" Text="Clear" OnClick="Button4_Click" /></div>

                    </div>
                     <asp:GridView class="table table-bordered" ID="GridView1" runat="server">
                      </asp:GridView>
   
                  </div>
            </div>
             </div>
         
</asp:Content>