<%@ Page Title="" Language="C#" MasterPageFile="~/user2/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="user2_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="2" class=""></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <div class="container">
                    <div class="carousel-caption">
                        <h3>NCC <span></span></h3>
                        <p>"IT'S MY NATURE TO BE KIND,GENTLE AND HUMANE, BUT REMEMBER, WHEN IT COMES TO MATTER OF PROTECTING MY COUNTRY AND PEOPLE , FOR ME! FOR I'M ALSO THE MOST DEADLIEST ONE ,WHO IS POWERFUL AND RELENTLESS" </p>
                        <div class="agileits-button top_ban_agile">
                           
                        </div>
                    </div>
                </div>
            </div>

            <div class="item item3">
                <div class="container">
                    <div class="carousel-caption">
                        <h3>UNITY AND DISCIPLINE <span></span></h3>
                        <p>" IF I DIE IN A WAR ZONE.BOX ME UP & SEND ME HOME.PUT MY MEDALS ON MY CHEST,TELL MY MOM I DID MY BEST  </p>
                        <div class="agileits-button top_ban_agile">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="fa fa-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="fa fa-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
        <!-- The Modal -->
    </div>
    <div class="agile-about w3ls-section text-center" id="about">
        <div class="container">
            <h3 class="heading-agileinfo">Welcome To NCC<span>When Climbing The Carrer Ladder</span></h3>
            <div class="agileits-about-grid">
                <p>
                    The National Cadet Corps imparts military training to boys and girls in schools and colleges. The National Cadet Corps can not act as an inexhaustible reservoir of potential officers for the Armed Forces of India

            </div>
        </div>
    </div>

    <br />
    <br />
    <hr />


    <!-- 
    <div class="agileits-about-btm">
		<div class="container">
			<div class="w3-flex">



			<div class="col-md-4 col-sm-4 col-xs-12 ab1 agileits-about-grid1">
				<span class="fa fa-desktop" aria-hidden="true"></span>
				<h4 class="agileinfo-head">Weekly Pared Info</h4>

                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                    <h5><%# Eval("location") %></h5>
				    <p><%# Eval("description") %></p>

                    </ItemTemplate>

                </asp:DataList>

			
			</div>



			<div class="col-md-4 col-sm-4 ab1 agileits-about-grid2">
				<span class="fa fa-desktop"  aria-hidden="true"></span>
				<h4 class="agileinfo-head">Event Detail</h4>

                <asp:DataList ID="DataList2" runat="server">
                    <ItemTemplate>
                        <h6><%# Eval("event_name") %></h6>
                        <p><%# Eval("location") %></p>
                    </ItemTemplate>
                </asp:DataList>
                   

             
				

			</div>
			<div class="col-md-4 col-sm-4 ab1 agileits-about-grid3">
				<span class="fa fa-desktop" aria-hidden="true"></span>
				<h4 class="agileinfo-head">NCC CAMP UPDATE</h4>
                  <asp:DataList ID="DataList3" runat="server">
                    <ItemTemplate>
                        <h7><%# Eval("camp_name") %></h7>
                        <p><%# Eval("location") %></p>
                    </ItemTemplate>
                </asp:DataList>
              
					</div>
			<div class="clearfix"></div>
			</div>
		</div>

        </div>

        -->

</asp:Content>

