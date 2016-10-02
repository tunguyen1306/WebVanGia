<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="plan.aspx.cs" Inherits="WebSiteVanGia.plan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ct_post_fb" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_TopRow" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_HeaderRow" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_ShowcaseRow" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_MaintopRow" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_ContentRow" runat="server">
    <div id="content-row">
          <div class="row-container visible visible-first">
            <div class="container">
              <div class="content-inner row">   
                        
                <div id="component" class="span12">
                  <main role="main">
                           
                            
                    <!--[if lte IE 7]>
<link rel="stylesheet" href="/joomla_53361/components/com_kunena/template/{$app->getTemplate()}/css//kunena.forum.ie7.css" type="text/css" />
<![endif]-->
<div id="Kunena" class="layout container-fluid">
<div id="ktop">
	<div id="ktopmenu">
		<div id="ktab">
<ul class="menu">
<li id="current" class="item125 active firstItem"><a href="/joomla_53361/index.php/forum/index"><span>Index</span></a></li><li class="item126"><a href="/joomla_53361/index.php/forum/recent"><span>Recent Topics</span></a></li><li class="item132 lastItem"><a href="/joomla_53361/index.php/forum/search"><span>Search</span></a></li></ul>
</div>
	</div>
</div>
<div class="kunena_body">

<div class="kblock kpathway">
	<div class="kcontainer">
		<div class="ksectionbody">
			<div class="kforum-pathway">
				<div class="path-element-first"><a href="/joomla_53361/index.php/forum">Forum</a></div>
								<div class="path-element"><a href="/joomla_53361/index.php/forum/index">Index</a></div>
							</div>
		</div>
	</div>
</div>
 <!-- Module position: kunena_announcement -->
<div class="klist-markallcatsread kcontainer">
	<div class="ksectionbody">
		<div class="fltlft">
			<div class="fltlft">
									</div>
		</div>
		<div class="fltrt">
			<form action="/joomla_53361/index.php/forum" id="jumpto" name="jumpto" method="post" target="_self">
	<input name="view" value="category" type="hidden">
	<input name="task" value="jump" type="hidden">

	<span class="kright">
		<select name="catid" id="catid" class="inputbox fbs" size="1" onchange="this.form.submit()"><option value="0" selected="selected">Board Categories</option>
<option value="1"> Main Forum</option>
<option value="2">-  Welcome Mat</option>
<option value="3">-  Suggestion Box</option>
<option value="4"> Lorem Ipsum</option>
<option value="5">-  Donec eu elit</option>
<option value="6">-  In neque arcu, vulputate vitae</option>
</select>		<button type="submit" name="Go" class="btn btn-primary ks" value="Go">Go</button>
	</span>
</form>		</div>
	</div>
</div>

<div class="kblock kcategories-1">
	<div class="kheader">
		<span><a href="/joomla_53361/index.php/forum/main-forum" rel="follow" title="View Category 'Main Forum'">Main Forum</a></span>
				<div class="ktitle-desc km hidden-phone">
			This is the main forum section. It serves as a container for categories for your topics.		</div>
			</div>
				<span class="ktoggler"><a class="ktoggler close" title="Collapse"></a></span>
			<div class="kcontainer" id="catid_1">
		<div class="kbody">
<table class="kblocktable" id="kcat1">
				<tbody><tr class="krow2 krow2" id="kcat2">
			<td class="kcol-first kcol-category-icon hidden-phone">
				<a href="/joomla_53361/index.php/forum/welcome-mat" rel="follow"><span class="kicon kreadforum" title="No New Posts"></span></a>			</td>

			<td class="kcol-mid kcol-kcattitle">
			<div class="kthead-title kl">
			<a href="/joomla_53361/index.php/forum/welcome-mat" rel="follow" title="View Category 'Welcome Mat'">Welcome Mat</a>							</div>

					<div class="kthead-desc km hidden-phone">We encourage new members to introduce themselves here. Get to know one another and share your interests. </div>
											</td>

			<td class="kcol-mid kcol-kcattopics hidden-phone">
				<span class="kcat-topics-number">1</span>
				<span class="kcat-topics">Topics</span>
			</td>

			<td class="kcol-mid kcol-kcatreplies hidden-phone">
				<span class="kcat-replies-number">0</span>
				<span class="kcat-replies">Replies </span>
			</td>

						<td class="kcol-mid kcol-kcatlastpost">
						<div class="klatest-subject ks">
				Last Post: <a href="/joomla_53361/index.php/forum/welcome-mat/1-welcome-to-kunena#1" rel="nofollow" title="View Last Post in Topic 'Welcome to Kunena!'">Welcome to Kunena!</a>			</div>

			<div class="klatest-subject-by ks hidden-phone">
			by <span class="kwho-guest">Kunena</span><br><span class="nowrap" title="02 May 2014 19:00">2 years 4 months ago</span>			</div>
			</td>

					</tr>
				<tr class="krow1 krow1" id="kcat3">
			<td class="kcol-first kcol-category-icon hidden-phone">
				<a href="/joomla_53361/index.php/forum/suggestion-box" rel="follow"><span class="kicon kreadforum" title="No New Posts"></span></a>			</td>

			<td class="kcol-mid kcol-kcattitle">
			<div class="kthead-title kl">
			<a href="/joomla_53361/index.php/forum/suggestion-box" rel="follow" title="View Category 'Suggestion Box'">Suggestion Box</a>							</div>

					<div class="kthead-desc km hidden-phone">Have some feedback and input to share?<br>
Don't be shy and drop us a note. We want to hear from you and strive to make our site better and more user friendly for our guests and members a like. </div>
											</td>

			<td class="kcol-mid kcol-kcattopics hidden-phone">
				<span class="kcat-topics-number">0</span>
				<span class="kcat-topics">Topics</span>
			</td>

			<td class="kcol-mid kcol-kcatreplies hidden-phone">
				<span class="kcat-replies-number">0</span>
				<span class="kcat-replies">Replies </span>
			</td>

						<td class="kcol-mid kcol-knoposts">No Posts</td>
					</tr>
		</tbody></table>
</div>
</div>
</div>
<!-- Begin: Category Module Position -->
	<!-- Finish: Category Module Position -->
<div class="kblock kcategories-4">
	<div class="kheader">
		<span><a href="/joomla_53361/index.php/forum/lorem-ipsum" rel="follow" title="View Category 'Lorem Ipsum'">Lorem Ipsum</a></span>
				<div class="ktitle-desc km hidden-phone">
			In neque arcu, vulputate vitae dignissim id, placerat adipiscing lorem. Nulla consectetur adipiscing metus vel pulvinar. Aenean molestie mauris non diam tincidunt faucibus.		</div>
			</div>
				<span class="ktoggler"><a class="ktoggler close" title="Collapse"></a></span>
			<div class="kcontainer" id="catid_4">
		<div class="kbody">
<table class="kblocktable" id="kcat4">
				<tbody><tr class="krow2 krow2" id="kcat5">
			<td class="kcol-first kcol-category-icon hidden-phone">
				<a href="/joomla_53361/index.php/forum/donec-eu-elit" rel="follow"><span class="kicon kreadforum" title="No New Posts"></span></a>			</td>

			<td class="kcol-mid kcol-kcattitle">
			<div class="kthead-title kl">
			<a href="/joomla_53361/index.php/forum/donec-eu-elit" rel="follow" title="View Category 'Donec eu elit'">Donec eu elit</a>							</div>

					<div class="kthead-desc km hidden-phone">Donec eu elit in nisi placerat tincidunt in eu sapien. Proin odio nunc, interdum vel malesuada pretium, fringilla sit amet metus </div>
											</td>

			<td class="kcol-mid kcol-kcattopics hidden-phone">
				<span class="kcat-topics-number">1</span>
				<span class="kcat-topics">Topics</span>
			</td>

			<td class="kcol-mid kcol-kcatreplies hidden-phone">
				<span class="kcat-replies-number">3</span>
				<span class="kcat-replies">Replies </span>
			</td>

						<td class="kcol-mid kcol-kcatlastpost">
						<div class="klatest-subject ks">
				Last Post: <a href="/joomla_53361/index.php/forum/donec-eu-elit/2-morbi-tincidunt-sodales-neque-eu-rutrum#5" rel="nofollow" title="View Last Post in Topic 'Morbi tincidunt sodales neque eu rutrum'">Morbi tincidunt soda ...</a>			</div>

			<div class="klatest-subject-by ks hidden-phone">
			by <span class="kwho-user">lorem_ipsum</span><br><span class="nowrap" title="09 Dec 2014 10:43">1 year 9 months ago</span>			</div>
			</td>

					</tr>
				<tr class="krow1 krow1" id="kcat6">
			<td class="kcol-first kcol-category-icon hidden-phone">
				<a href="/joomla_53361/index.php/forum/in-neque-arcu-vulputate-vitae" rel="follow"><span class="kicon kreadforum" title="No New Posts"></span></a>			</td>

			<td class="kcol-mid kcol-kcattitle">
			<div class="kthead-title kl">
			<a href="/joomla_53361/index.php/forum/in-neque-arcu-vulputate-vitae" rel="follow" title="View Category 'In neque arcu, vulputate vitae'">In neque arcu, vulputate vitae</a>							</div>

					<div class="kthead-desc km hidden-phone">Vivamus congue turpis in augue pellentesque scelerisque. Pellentesque aliquam laoreet sem nec ultrices. Fusce blandit nunc vehicula massa vehicula tincidunt. </div>
											</td>

			<td class="kcol-mid kcol-kcattopics hidden-phone">
				<span class="kcat-topics-number">1</span>
				<span class="kcat-topics">Topics</span>
			</td>

			<td class="kcol-mid kcol-kcatreplies hidden-phone">
				<span class="kcat-replies-number">1</span>
				<span class="kcat-replies">Replies </span>
			</td>

						<td class="kcol-mid kcol-kcatlastpost">
						<div class="klatest-subject ks">
				Last Post: <a href="/joomla_53361/index.php/forum/in-neque-arcu-vulputate-vitae/3-pellentesque-non-libero#7" rel="nofollow" title="View Last Post in Topic 'Pellentesque non libero'">Pellentesque non lib ...</a>			</div>

			<div class="klatest-subject-by ks hidden-phone">
			by <span class="kwho-user">dolor_sit</span><br><span class="nowrap" title="09 Dec 2014 10:46">1 year 9 months ago</span>			</div>
			</td>

					</tr>
		</tbody></table>
</div>
</div>
</div>
<!-- Begin: Category Module Position -->
	<!-- Finish: Category Module Position -->
<div class="kblock kwhoisonline">
	<div class="kheader">
		<span><span class="ktitle km">Who Is Online</span></span>
	</div>
		<span class="ktoggler"><a class="ktoggler close" title="Collapse"></a></span>
	<div class="kcontainer" id="kwhoisonline">
		<div class="kbody">
	<table class="kblocktable">
		<tbody><tr class="krow2">
			<td class="kcol-first">
				<div class="kwhoicon"></div>
			</td>
			<td class="kcol-mid km">
				<div class="kwhoonline kwho-total ks">Total users online: <strong>0 </strong>Members&nbsp;and<strong> 3 </strong>Guests&nbsp;Online</div>
				<div>
					 									</div>
				<div class="kwholegend ks">
					<span>Legend:</span>&nbsp;
					<span class="kwho-admin" title="Site Administrator"> Site Administrator</span>,&nbsp;
					<span class="kwho-globalmoderator" title="Global Moderator"> Global Moderator</span>,&nbsp;
					<span class="kwho-moderator" title="Moderator"> Moderator</span>,&nbsp;
					<span class="kwho-banned" title="Banned"> Banned</span>,&nbsp;
					<span class="kwho-user" title="User"> User</span>,&nbsp;
					<span class="kwho-guest" title="Guest"> Guest</span>
				</div>
			</td>
		</tr>
</tbody></table>
</div>
</div>
</div>
<div class="kblock kfrontstats">
	<div class="kheader">
		<span><a href="/joomla_53361/index.php/forum/statistics" rel="follow" class="">Kunena Forum Statistics</a></span>
	</div>
		<span class="ktoggler"><a class="ktoggler close" title="Collapse"></a></span>
	<div class="kcontainer" id="kfrontstats-tbody">
		<div class="kbody">
			<table class="kblocktable" id="kfrontstats">
				<tbody><tr class="krow1">
					<td class="kcol-first">
						<div class="kstatsicon"></div>
					</td>
					<td class="kcol-mid km">
						<ul id="kstatslistright" class="fltrt kright">
							<li class="hidden-phone firstItem">Total Users: <strong>4</strong> <span class="divider">|</span> Latest Member: <strong><span class="kwho-user">dolor_sit</span></strong></li>
							<li>&nbsp;</li>
							<li>User List »</li>
							<li class="lastItem"><a href="/joomla_53361/index.php/forum/statistics" rel="follow" class="">More Statistics »</a></li>
						</ul>
						<ul id="kstatslistleft" class="fltlft">
							<li class="firstItem">Total Messages: <strong> 7</strong> <span class="divider">|</span> Total Subjects: <strong>3</strong></li>
							<li>Total Sections: <strong>2</strong> <span class="divider">|</span> Total Categories: <strong>4</strong></li>
							<li>Today Open: <strong>0</strong> <span class="divider">|</span> Yesterday Open: <strong>0</strong></li>
							<li class="lastItem">Today Total Answer: <strong>0</strong> <span class="divider">|</span> Yesterday Total Answer: <strong>0</strong></li>
						</ul>
					</td>
				</tr>
			</tbody></table>
		</div>
	</div>
</div>
</div>
</div>
<div style="text-align:center"><a href="/joomla_53361/index.php/forum/credits" rel="follow" style="display: inline; visibility: visible; text-decoration: none;">Powered by</a> <a href="http://www.kunena.org" rel="follow" target="_blank" style="display: inline; visibility: visible; text-decoration: none;">Kunena Forum</a></div>   
                                      </main>
                </div>        
                              </div>
            </div>
          </div>
        </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_MainBottomRow" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentFooter" runat="server">
</asp:Content>
