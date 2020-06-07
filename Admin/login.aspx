<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/bootstrap.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />


</head>
    
    <body>
        
        
            
    <div class="container">
     

     <div class="row">
         <div class="col-md-6 col-md-offset-3">
        <div class="panel panel-primary" style="margin-top:200px;">
            <div class="panel-heading">LOGIN</div>
            <div class="panel-body">
                 <form id="form1" runat="server">
                <div class="form-group">
                    <asp:Label runat="server">USERNAME</asp:Label>
                    <asp:TextBox ID="txtusername" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="Please enter username"></asp:RequiredFieldValidator>
                </div>
                     
                      <div class="form-group">
                    <asp:Label runat="server">PASSWORD</asp:Label>
                    <asp:TextBox ID="txtpassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="please enter password"></asp:RequiredFieldValidator>
                     </div>   

                     <asp:LinkButton ID="login" runat="server" 
                     CssClass="btn btn-block btn-primary" onclick="submit_Click">LOGIN</asp:LinkButton>

              </form>
            </div>
        </div>
        </div>
     </div>
    </div>
    
        <div>
        </div>
            
   
</body>
</html>

