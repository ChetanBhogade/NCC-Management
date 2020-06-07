<%@ Page Title="" Language="C#" MasterPageFile="~/user2/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="user2_contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="inner_content_info_agileits">
		<div class="container">
			<h3 class="heading-agileinfo">Contact Us<span>When Climbing The Carrer Ladder</span></h3>
			<div class="inner_sec_grids_info_w3ls">
				<div class="col-md-4 agile_info_mail_img_info">
					<div class="address-grid">
						<h4>Contact <span>Info</span></h4>
						<div class="mail-agileits-w3layouts">
							<i class="fa fa-volume-control-phone" aria-hidden="true"></i>
							<div class="contact-right">
								<p>Telephone </p><span>+91 8983306295</span>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="mail-agileits-w3layouts">
							<i class="fa fa-envelope-o" aria-hidden="true"></i>
							<div class="contact-right">
								<p>Mail </p><a href="mailto:info@example.com">hrushikeshsalunkhe179@gmail.com</a>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="mail-agileits-w3layouts">
							<i class="fa fa-map-marker" aria-hidden="true"></i>
							<div class="contact-right">
								<p>Location</p><span>viva college virar (west)</span>
							</div>
							<div class="clearfix"> </div>
						</div>
						
					</div>
				</div>
				<div class="col-md-8 agile_info_mail_img">

				</div>
				<div class="clearfix"> </div>
				<div class="w3layouts_mail_grid">
                    <form runat="server" method="post">
                        <div class="col-md-6 wthree_contact_left_grid">
                            <input id="Name1" name="Name1" type="text" runat="server" placeholder="Your Name" />
                            <input id="Email1" name="Email1" type="text" runat="server" placeholder="Your Email Address" />
                            <input id="Telephone1" name="Telephone1" type="text" runat="server" placeholder="Your Telephone Number" />
                            <input id="Subject1" name="Subject1" type="text" runat="server" placeholder="Subject" />
                        </div>
                        <div class="col-md-6 wthree_contact_left_grid">
                            <textarea id="Message1" name="Message1" runat="server" cols="20" rows="2"></textarea>
                            <asp:Button ID="BtnSubmit1" runat="server" Text="SUBMIT" OnClick="BtnSubmit1_Click" />
                        </div>
                        <div class="clearfix"></div>

                    </form>
				</div>


			</div>

		</div>
	</div>
	

</asp:Content>

