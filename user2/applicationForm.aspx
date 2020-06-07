<%@ Page Title="" Language="C#" MasterPageFile="~/user2/MasterPage.master" AutoEventWireup="true" CodeFile="applicationForm.aspx.cs" Inherits="user2_applicationForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container">

        <span id="lblmessage" class="warning" runat="server">.</span>

        <div class="panel panel-primary">
            <div class="panel-heading">Admission form</div>

            <div class="panel-body">
                <form runat="server">

                    <div class="form-group">
                        <asp:Label ID="Label1" AssociatedControlID="txtroll" runat="server" Text="College RollNumber :"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtroll" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtroll" ErrorMessage="Only Numbers are Allow" ValidationExpression="^\d+" ForeColor="Red"></asp:RegularExpressionValidator>
&nbsp;<asp:TextBox ID="txtroll" runat="server" class="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label2" AssociatedControlID="txtname" runat="server" Text="full Name :"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="Only Alphabets are alllow" ForeColor="Red" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txtname" runat="server" class="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label3" AssociatedControlID="txtfname" runat="server" Text="Father Name :"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtfname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtfname" ErrorMessage="Only Alphabets are alllow" ForeColor="Red" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txtfname" runat="server" class="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label4" AssociatedControlID="txtmname" runat="server" Text="Mother Name :"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtmname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtmname" ErrorMessage="Only Alphabets are alllow" ForeColor="Red" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txtmname" runat="server" class="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label5" AssociatedControlID="txtaddress" runat="server" Text="Address :"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtaddress" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtaddress" runat="server" class="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label6" AssociatedControlID="txtnrs" runat="server" Text="Nearest Railway Station :"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnrs" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtnrs" runat="server" class="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label7" AssociatedControlID="txtnps" runat="server" Text="Nearest Police Station :"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtnps" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtnps" runat="server" class="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label8" AssociatedControlID="txtphone" runat="server" Text="Phone no :"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtphone" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtphone" ErrorMessage="Only 10 Digit numbers are allow" ForeColor="Red" ValidationExpression="^[0][1-9]\d{9}$|^[1-9]\d{9}$"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txtphone" runat="server" class="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label9" AssociatedControlID="txtblood" runat="server" Text="Blood Group :"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtblood" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:DropDownList ID="txtblood" runat="server">
                            <asp:ListItem>A+</asp:ListItem>
                            <asp:ListItem>B+</asp:ListItem>
                            <asp:ListItem>O+</asp:ListItem>
                            <asp:ListItem>A-</asp:ListItem>
                            <asp:ListItem>B-</asp:ListItem>
                            <asp:ListItem>O-</asp:ListItem>
                            <asp:ListItem>AB+</asp:ListItem>
                            <asp:ListItem>AB-</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label10" AssociatedControlID="DropDownList1" runat="server" Text="Sex :"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label11" AssociatedControlID="txtqualification" runat="server" Text="Qualification & Marks in(%) :"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtqualification" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtqualification" runat="server" class="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label12" AssociatedControlID="txtcollege" runat="server" Text="Name of College and Stream :"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcollege" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtcollege" runat="server" class="form-control"></asp:TextBox>
                    </div>


                    <div class="form-group">
                        <asp:Label ID="Label13" AssociatedControlID="txtdob" runat="server" Text="DOB :"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtdob" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtdob" runat="server" class="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label14" AssociatedControlID="txtemail" runat="server" Text="Email :"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtemail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="Email Should Be Proper" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txtemail" runat="server" class="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label15" AssociatedControlID="txtadhar" runat="server" Text="Aadhar No :"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtadhar" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtadhar" runat="server" class="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label16" AssociatedControlID="txtifsc" runat="server" Text="Banker's Detail/IFSC Code :"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtifsc" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtifsc" runat="server" class="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label17" AssociatedControlID="txtbankacc" runat="server" Text="Bank Account No :"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtbankacc" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtbankacc" runat="server" class="form-control"></asp:TextBox>
                    </div>

                    <asp:Button ID="Button1" runat="server" Text="Save and Continue" CssClass="btn btn-block" OnClick="Button1_Click" BackColor="Blue" BorderColor="Blue" BorderStyle="Solid" ForeColor="White" />
                </form>
            </div>

            <div class="row">.</div>
            <div class="row">
            </div>


        </div>
    </div>

</asp:Content>

