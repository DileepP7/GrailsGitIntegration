<style type="text/css">
ul.pager li {
	display: block;
	text-align: left;
	padding-left: 20px;
	margin-bottom: 5px;
}

.inner {
	min-height: 1000px;
}

.orgcommitlists,.orgrepocollablists,.orgteamlists,.orgrepoteamlists {
	padding: 10px;
	color: #333333;
	font-family: Verdana;
	font-size: 11px;
}

.orgrepolists {
	margin-top: 15px;
	margin-bottom: 25px;
}

.orgrepolists a {
	padding: 5px 10px;
	color: #333333;
	background: #e5e5e5;
	border: 1px solid #f1f1f1;
	text-decoration: none;
	transition: all 0.4s ease-in-out;
	border-radius: 5px;
}

.orgrepolists a:hover {
	background: #999999;
	color: #eeeeee;
	box-shadow: 2px 2px 2px 8px #f1f1f1;
}

.orgteamlists,.orgrepoteamlists {
margin-top:15 px;
margin-bottom:25 px;
}
.orgteamlists a {
	/*	padding: 5px 10px;
	color: #333333;
	background: #e5e5e5;
	border: 1px solid #f1f1f1;
	text-decoration: none;
	transition: all 0.4s ease-in-out;
	border-radius: 5px;
*/
	
}

.orgteamlists a:hover {
	/*	background: #999999;
	color: #eeeeee;
	box-shadow: 2px 2px 2px 8px #f1f1f1;
*/
	
}

.inline_repo_anchor {
	margin-top: 15px;
	margin-bottom: 25px;
}

.inline_repo_anchor a {
	padding: 5px 10px;
	color: #333333;
	background: #e5e5e5;
	border: 1px solid #f1f1f1;
	text-decoration: none;
	transition: all 0.4s ease-in-out;
	border-radius: 5px;
}

.inline_repo_anchor a:hover {
	background: #999999;
	color: #eeeeee;
	box-shadow: 2px 2px 2px 8px #f1f1f1;
}

.allcommits,.collaborators {
	padding: 10px;
	color: #333333;
	font-family: Verdana;
	font-size: 11px;
}

.media {
	background: #e5e5e5;
	padding: 5px;
}

.media:hover {
	background: #dedede;
	cursor: pointer;
}

.media-heading h4 {
	font-size: 13px;
	color: #333;
}

.media1 {
	background: #e5e5e5;
	padding: 5px;
}

.media1,.media1-body {
	overflow: hidden;
}

.media1:first-child {
	margin-top: 0;
}

.media1-object {
	display: block;
}

.media1-heading {
	margin: 0 0 5px;
}

.media1>.pull-left {
	margin-right: 10px;
}

.media1>.pull-right {
	margin-left: 10px;
}

.media1-list {
	list-style: none outside none;
	padding-left: 0;
}

.media1:hover {
	background: #dedede;
	cursor: pointer;
}

.media1-heading h4 {
	font-size: 13px;
	color: #333;
}

.modal-body a {
	padding: 5px 10px;
	color: #333333;
	background: #e5e5e5;
	border: 1px solid #f1f1f1;
	text-decoration: none;
	display: block;
	transition: all 0.4s ease-in-out;
	border-radius: 5px;
}

.modal-body a:hover {
	background: #999999;
	color: #eeeeee;
	box-shadow: 2px 2px 2px 8px #f1f1f1;
}

.activerepos {
	background: #999 !important;
	color: #eeeeee !important;
	box-shadow: 2px 2px 2px 8px #f1f1f1 !important;
}

.twitter-typeahead .tt-query,.twitter-typeahead .tt-hint {
	margin-bottom: 0;
}

.tt-dropdown-menu {
	min-width: 160px;
	margin-top: 2px;
	padding: 5px 0;
	background-color: #fff;
	border: 1px solid #ccc;
	border: 1px solid rgba(0, 0, 0, .2);
	*border-right-width: 2px;
	*border-bottom-width: 2px;
	-webkit-border-radius: 6px;
	-moz-border-radius: 6px;
	border-radius: 6px;
	-webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, .2);
	-moz-box-shadow: 0 5px 10px rgba(0, 0, 0, .2);
	box-shadow: 0 5px 10px rgba(0, 0, 0, .2);
	-webkit-background-clip: padding-box;
	-moz-background-clip: padding;
	background-clip: padding-box;
}

.tt-suggestion {
	display: block;
	padding: 3px 20px;
	cursor: pointer;
}

.tt-suggestion.tt-is-under-cursor {
	color: #fff;
	background-color: #0081c2;
	background-image: -moz-linear-gradient(top, #0088cc, #0077b3);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#0088cc),
		to(#0077b3));
	background-image: -webkit-linear-gradient(top, #0088cc, #0077b3);
	background-image: -o-linear-gradient(top, #0088cc, #0077b3);
	background-image: linear-gradient(to bottom, #0088cc, #0077b3);
	background-repeat: repeat-x;
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff0088cc',
		endColorstr='#ff0077b3', GradientType=0)
}

.tt-suggestion.tt-is-under-cursor a {
	color: #fff;
}

.tt-suggestion p {
	margin: 0;
}

.tt-suggestion:hover {
	background: #333;
	color: #fff
}

.form-group-lg .tt-hint { @extend .input-lg;
	
}

.allTeamMembers {
	width: 100%;
	border-bottom: 1px solid #f1f1f1;
	margin-bottom: 4px;
	color: #666;
}

.suggestionsBox {
	position: absolute;
	left: 0px;
	top: 15px;
	margin: 26px 0px 0px 0px;
	width: 230px;
	padding: 0px;
	background-color: #357EBD;
	border-top: 3px solid #000;
	color: #fff;
	z-index: 100;
}

.suggestionList {
	margin: 0px;
	padding: 0px;
}

.suggestionList ul {
	margin: 0px;
	padding: 0px;
}

.suggestionList ul li {
	list-style: none;
	margin: 0px;
	padding: 6px;
	padding-left: 5px;
	border-bottom: 1px dotted #666;
	cursor: pointer;
}

.suggestionLIst ul li img {
	padding-right: 5px;
}

.suggestionList ul li:hover {
	background-color: #2D6475;
	color: #fff;
}

.load {
	background-image: url(<?= base_url()?>images/loader.gif);
	background-position: right;
	background-repeat: no-repeat;
}

#suggest {
	position: relative;
}

#suggessionContainer {
	position: relative;
	margin-top: 25px;
}

#hidden a {
	text-decoration: none;
	color: #6A6363;
}

#ulFill {
	position: absolute;
	z-index: 1200;
}

.panel-group .panel {
	overflow: visible;
}

.orgcommitlists {
	max-height: 1000px;
	overflow: auto;
}

.typeahead,.tt-query,.tt-hint {
	border: 2px solid #CCCCCC;
	border-radius: 5px;
	font-size: 16px;
	height: 40px;
	line-height: 30px;
	outline: medium none;
	padding: 8px 12px;
	width: 300px;
	margin-bottom: 10px;
	color: #999;
}

.tt-dropdown-menu {
	width: 500px;
}

.selectboxit {
	width: 300px !important;
}
</style>










<!-- Modal for show statistics of Branch start -->


<div class="modal fade" id="modalforbranch" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">
					<span id="titleofbranch"> </span> <span
						style="padding-left: 25px; font-weight: bold; color: #999"
						id="noOfFiles"></span></span>
				</h4>
			</div>




			<div class="modal-body">
				<div id="branchdetails" style="overflow: auto; height: 400px;"></div>


			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				<%--        <button type="button" class="btn btn-primary">Save changes</button>--%>
			</div>
		</div>
	</div>
</div>



<!-- Modal for show statistics of Repos end -->



















<!--------------------------------------------------------Modal For connect to Github Starts ---------------------------------------->
<div class="modal fade" id="connectModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">
					Connect to Github <span
						style="padding-left: 25px; font-weight: bold; color: #999"
						id="noOfFiles"></span></span>
				</h4>
			</div>

			<div id='iconforgithubcommit'
				style='display: none; float: left; margin-left: 240px;'>
				<img src="${resource(dir: 'images/', file:'loadding.gif')}"
					height="20px" />
			</div>
			<div class="modal-body">You are not Connected to Github , Do
				You want to Connect ??</div>
			<div class="modal-footer">
				<%--				<button type="button" id="okconnect" class="btn btn-primary"--%>
				<%--					onClick="window.location.href='${createLink(controller:"hom",action:"callback")}'">OK</button>--%>
				<%--					--%>

				<oauth:connect provider="github" class="btn btn-primary">Connect to GitHub</oauth:connect>

				<button type="button" class="btn btn-primary" id="notconnect"
					data-dismiss="modal">Cancel</button>

			</div>
		</div>
	</div>
</div>

<!----------------------------------------------- Modal Popup for Commit Starts------------------------------------------------------->




<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">
					Commits Details <span
						style="padding-left: 25px; font-weight: bold; color: #999"
						id="noOfFiles"></span></span>
				</h4>
			</div>

			<div id='iconformodal' style='float: left; margin-left: 240px;'>
				<img src="${resource(dir: 'images/', file:'loadding.gif')}"
					height="20px" />
			</div>


			<div class="modal-body">
				<div id="allInvividualCommitFiles"
					style="overflow: auto; height: 400px;"></div>


			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				<%--        <button type="button" class="btn btn-primary">Save changes</button>--%>
			</div>
		</div>
	</div>
</div>




<!----------------------------------------------- MODAL POP UP FOR THE TEAM EDIT------------------------------------------------------->




<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="teamEdit" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">
					Edit Team <span
						style="padding-left: 25px; font-weight: bold; color: #999"
						id="noOfFiles"></span></span>
				</h4>
			</div>




			<div class="modal-body">
				<div id='editTeamLoader' style='margin-left: 240px; display: none;'>
					<img src="${resource(dir: 'images/', file:'loadding.gif')}"
						height="20px" />
				</div>
				<div class="alert alert-success" style="display: none;"
					id="teamEditSuccess"></div>

				<form id="teamEditForm" action="#">
					<input type="hidden" name="id" id="edit_team_id" />
					<p>Name:<p>
					<p>
						<input type="text" name="name" class="editteamname" />
					</p>
					<p>Permission:<p>
					<p>
						Pull:<input type="radio" name="permission" class="editteamperm" value="pull" /> 
						Push:<input type="radio" name="permission" class="editteamperm" value="push" />
						Admin:<input type="radio" name="permission" class="editteamperm" value="admin" />
						  <span id="erroreditteam"
							style="display: none; background: red; color: white; height: 20px; width: 150px; padding: 5px; border-radius: 5px;">
						</span> 
						<input type="hidden" id="permissionteam" />
				</form>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
					<button type="button" id="teamEditDone" class="btn btn-primary">Done</button>
					<%--        <button type="button" class="btn btn-primary">Save changes</button>--%>
				</div>
			</div>
		</div>
	</div>
</div>

<!----------------------------------------------- MODAL POP UP FOR THE ALL TEAM MEMBERS MAN KI KASO------------------------------------------------------->




<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="teamAllMembers" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">
					Team All Members <span
						style="padding-left: 25px; font-weight: bold; color: #999"
						id="noOfFiles"></span></span>
				</h4>
			</div>




			<div class="modal-body">
				<div id='teamMemberAddLoader'
					style='margin-left: 240px; display: none;'>
					<img src="${resource(dir: 'images/', file:'loadding.gif')}"
						height="20px" />
				</div>
				<div class="alert alert-success" style="display: none;"
					id="teamMemberAddSuccess"></div>

				<input type="hidden" name="id" id="add_team_id" />
				<div id="allTeamMembers"></div>

				<form id="form" action="#">
					<div id="suggessionContainer">
						<input type="text" size="25" id="team_mem_name"
							onkeyup="suggest(this.value);" onblur="fill();" class="" /> <input
							class="btn btn-primary" id="team_mem_add" type="button"
							value="ADD" />
						</td>

						<div class="suggestionsBox" id="suggestions"
							style="display: none;">
							<div class="suggestionList" id="suggestionsList">&nbsp;</div>
						</div>
					</div>

				</form>

				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
					<%--				<button type="button" id="teamEditDone" class="btn btn-primary" >Done</button>--%>

				</div>
			</div>
		</div>
	</div>
</div>





<!-- ----------------------------------------------------------Main Container Starts Here--------------------- ----------------------->
<div id="loader"
	style="display: none; margin-right: 800px; margin-bottom: 15px;">
	<img src="${resource(dir: 'images/', file:'loadding.gif')}"
		height="20px" />
</div>

<div class="main_container" style="padding-top: 10px;">
	<div class="panel panel-default">
		<div class="panel-body">

			<nav class="navbar navbar-default" role="navigation">
				<div class="container-fluid">

					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span> <span class="icon-bar"></span>
						</button>

						<div style="width: 100%">




							<div style="float: left; margin-top: 10px; margin-left: 5px;">

								<select class="dropDownOrg" name="test">
									<option value="">SELECT ORGANIZATION</option>

								</select>
							</div>
							<div id="the-basics"
								style="float: left; margin-left: 150px; margin-top: 10px;">
								<input class="typeahead" type="text"
									placeholder="Search Organizational Repos...">
							</div>

						</div>
						<div style="clear: both"></div>

					</div>
				</div>
			</nav>
			<br>








			<g:if test='${flash.message}'>

				<div class="alert alert-info" style="margin-top: 10px">
					${flash.message}
				</div>

			</g:if>



			<!--<button class="btn btn-primary"
				style="cursor: pointer; float: right; margin-right: 100px;"
				onclick="window.location.href='${createLink(controller:"hom", action:"index")}'">Go
				To General Repos</button>-->

			<div id="allRepo">
				<button type="button" id="listorgs"
					class="btn btn-warning dropdown-toggle" data-toggle="dropdown"
					style="display: none;">Get All Orgs</button>
				<div class="inline_repo_anchor" id="allorgs" style="display: none">



					<div id="ca-container" class="ca-container">
						<div class="ca-wrapper" id="ca-wrapper"></div>
					</div>

				</div>
				<div style="clear: both;"></div>


				<!-- Tab For Organization Details Starts -->

				<ul class="nav nav-tabs" id="org_menu_tab" style="display: none;">
					<li class="active"><a href="#repository" data-toggle="tab">Repositories</a></li>
					<li><a href="#team" data-toggle="tab">Team</a></li>
					<li><a href="#setups" data-toggle="tab">Settings</a></li>
				</ul>

				<!-- Tab panes -->
				<div id="temp" style="display: none;"></div>
				<div class="tab-content">
					<div class="tab-pane fade in  active" id="repository">
						<!--                        <div class="orgrepolists" >-->

						<div id="ca-container-orgrepo" class="ca-container">

							<div class="ca-nav" id="navforrepo" style="display: none;">
								<span class="ca-nav-prev">Previous</span> <span
									class="ca-nav-next">Next</span>
							</div>

							<div class="ca-wrapper" id="ca-wrapper-orgrepo"></div>


						</div>

						<!--                        </div>-->


						<!-- Tab For click after the Organizational Repo starts -->
						<div class="dhekka" style="padding: 20px; display: none;">

							<ul class="nav nav-tabs" id="org_repo_menu_tab"
								style="display: none;">
								<li class="active"><a href="#collab" data-toggle="tab">All
										Contributors</a></li>
								<li><a href="#teams" data-toggle="tab">Working Teams</a></li>
								<li><a href="#commit" data-toggle="tab">Commit</a></li>
								<li><a href="#pullssforrepo" data-toggle="tab">Pull
										Requests</a></li>
								<li><a href="#statistics" data-toggle="tab">Statistics</a></li>
								<li><a href="#orgrepocontents" data-toggle="tab">Branches</a></li>
								<li><a href="#setupsforrepo" data-toggle="tab">Settings</a></li>
							</ul>

							<!-- Tab panes -->
							<div class="tab-content">
								<div class="tab-pane fade in  active" id="collab">
									<div class="orgrepocollablists"></div>


									<!-- Tab For click after the Organizational Repo starts -->
									<!-- Tab For click after the Organizational Repo Ends -->



								</div>
								<div class="tab-pane fade" id="teams">
									<div class="orgrepoteamlists"></div>


								</div>
								<div class="tab-pane fade" id="commit">
									<div class="orgcommitlists"></div>

								</div>
								<div class="tab-pane fade" id="pullssforrepo">
									<div class="orgrepopull" style="display: none;"></div>





								</div>

								<!-- ---------------- REPO STATISTICS VIEW SECTION---------------------------- -->
								<div class="tab-pane fade" id="statistics">


									<div class="panel-group" id="accordion">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#collapsecommit"> <span
														class="glyphicon glyphicon-copyright-mark"></span>
														Contributors With Addition, Deletion And Commit Counts
													</a>
												</h4>
											</div>
											<div id="collapsecommit" class="panel-collapse collapse">


												<div class="panel-body" id="totaladditiondeletionandcommits">

												</div>


											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading" id="deletionandaddition">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#collapseadditiondeletion"> <span style="font-weight: bold; font-size: 15px;">#</span>
								          Number Of Additions And Deletions Per Week
								        </a>
								      </h4>
								    </div>
								    <div id="collapseadditiondeletion" class="panel-collapse collapse">
								      <div class="panel-body" id="noofadditiondeletionperweek">
								       
								      </div>
								    </div>
								  </div>
								  <div class="panel panel-default">
								    <div class="panel-heading">
								      <h4 class="panel-title">
								        <a data-toggle="collapse" data-parent="#accordion" href="#collapsehour">
								         <span class="icon-large icon-clock"></span>
								        Get The Number Of Commits Per Hour In Each Day
								        </a>
								      </h4>
								    </div>
								    <div id="collapsehour" class="panel-collapse collapse">
								      <div class="panel-body" id="numberofcommitperhour">
								       Content Three
								      </div>
								    </div>
								  </div>
								</div>
								
									   
									
								</div>
								<div class="tab-pane fade" id="orgrepocontents">
									</div>

<!----------------------------------------------------------------------------------------setting tab for organizational Repo Starts -->

								<div class="tab-pane fade" id="setupsforrepo">
									<!-- ----------- repos settings goes here -->

									<div class="panel-group" id="accordion">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#collapseOne"> <span
														class="glyphicon glyphicon-edit"></span> Edit Repository
													</a>
												</h4>
											</div>
											<div id="collapseOne" class="panel-collapse collapse ">
												<div class="panel-body">
                                                                                                    <div id='repo_edit_loader' style='display: none;   position: relative; top: -8px; left: 13px;'>
										<img src="${resource(dir: 'images/', file:'loadding.gif')}" height="20px" /></div>
                                                                                <div class="alert alert-success" style="display: none;"  id="repoEditSuccess">Successfully Deleted The Repo!!</div>
                                                                                            <form action="#" id="repo_edit_form">
													<table>
														<tr>
															<td>Repo Name:</td>
															<td><input type="text" name="new_repo" id="repo_name_to_edit" /></td>
                                                                                                                        <input type="hidden" name="owner" id="owner_name">
                                                                                                                        <input type="hidden" name="old_repo" id="old_repo_name">
														</tr>
														<tr>
															<td>Description:</td>
															<td><input type="text" name="repo" id="repo" /></td>
														</tr>
														<tr>
															<td><input class="btn btn-primary" type="button" value="Edit" id="repo_edit_button" /></td>

														</tr>
													</table>
                                                                                             </form>
                                                                                                        





												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"> 
                                                                                <span class="glyphicon glyphicon-plus"></span> Add Team
													</a>
												</h4>
											</div>
											<div id="collapseTwo" class="panel-collapse collapse">
												<div class="panel-body">
                                                                                                    <div id="messageforteamrepoadd" style='color:white;background:green;height:30px;width:400px;padding:5px;margin:10px;border-radius:5px;display:none;'></div>
                                                                                                    <input type="hidden" id="repoforaddteam" />
                                                                                                    <input type="hidden" id="orgforaddteam" />
                                                                                                    
													<table>
														<tr>

															<td><select id="repoAddTeam"/></select></td>
															<td><input class="btn btn-primary" type="button"
																value="ADD" id="buttonforaddteamrepo"/></td>
														</tr>
													</table>
												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#collapseThree"> <span
														class="glyphicon glyphicon-trash"></span> Delete
														Repository
													</a>
												</h4>
											</div>
											<div id="collapseThree" class="panel-collapse collapse">
												<div class="panel-body">
                                                                                                    
                                                                                                    <div class="alert alert-success" style="display: none;" id="repoDeleteSuccess">Successfully Deleted The Repo!!</div>
                                                                                                    <div id='repo_delete_loader' style='display:none;float:left;margin-left:240px;position:relative; top:77px; left:-150px;'>
                                                                                                        <img src="${resource(dir: 'images/', file:'loadding.gif')}" height="20px" /> 
                                                                                                    </div>

													<div class="alert alert-danger fade in">
														<%--      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>--%>
														<h4>Are You Sure?? Want to delete this repo?</h4>
														<p>Deleting a repo can't be undone. You will lose all
															of your content in this repository.</p>
														<p>
															<button type="button" id='delete_repo' rel='tooltip' data-toggle="tooltip"
																data-placement="top" class="btn btn-danger"
																title="Delete This Repo">Delete</button>
															<%--        <button type="button" rel='tooltip' class="btn btn-default">Dont Delete</button>--%>

														</p>
													</div>



												</div>
											</div>
										</div>
									</div>



<!-- ------------------------------------------ repos settings ends here------------------------------------ -->
								</div>






<!----------------------------------------------------------setting tab for organizational Repo Ends -->

			</div>



<!------------------------------------------------- Tab For click after the Organizational Repo Ends--------------------------- -->

						</div>

					</div>
					<div class="tab-pane fade" id="team">
						<div class="orgteamlists"></div>

					</div>
					<div class="tab-pane fade" id="members">
						<div class="orgmemberslists"></div>

					</div>
					<div class="tab-pane fade" id="orgcontents">Contents Here</div>


					<div class="tab-pane fade" id="setups">
   <!-- ------------------------------------------------------ repos settings goes here----------------------------------------- -->

						<div class="panel-group" id="accordion">
							<div class="panel panel-default">
<!--								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapseOneOrg"> <span
											class="glyphicon glyphicon-edit"></span> Edit Organization
										</a>
									</h4>
								</div>
								<div id="collapseOneOrg" class="panel-collapse collapse ">
									<div class="panel-body">
                                                                             <div class="alert alert-success" style="display: none;" id="orgEditSuccess">Successfully Deleted The Repo!!</div>
                                                                                <div id='orgAddLoader' style='display:none;margin-left:240px;position:relative; top:-28px; left:13px;'>
                                                                                    <img src="${resource(dir: 'images/', file:'loadding.gif')}" height="20px" /> 
                                                                                </div>
                                                                                <form id="org_edit_form">
										<table>
											<tr>
												<td>Edit Company Name For Organization:</td>
												<td><input type="text" name="new_name" value="" id="new_name" /></td>
                                                                                                <input type="hidden" name="old_org_name" id="old_org_name"/>
											</tr>
											
											<tr>
												<td><input class="btn btn-primary" type="button"
													value="Edit" id="org_edit_button" /></td>

											</tr>
										</table>
                                                                                </form>
							</div>
								</div>
							</div>-->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapseTwoOrg"> <span
											class="glyphicon glyphicon-plus"></span> Add Team
										</a>
									</h4>
								</div>
								<div id="collapseTwoOrg" class="panel-collapse collapse">
									<div class="panel-body">
									 <div class="alert alert-success" style="display: none;" id="teamAddSuccess">Successfully Deleted The Repo!!</div>
                                    <div id='team_add_loader' style='display:none;margin-left:240px;position:relative; top:-28px; left:13px;'>
                                        <img src="${resource(dir: 'images/', file:'loadding.gif')}" height="20px" /> 
                                    </div>
										<form id="teamAddForm" action="#">
										    <input type="hidden" name="organization" id="org_name_for_team_add"/>
											
											<p>Team Name:<p>
											<p><input type="text" class="teamaddname" name="name"/></p>
											<p>Permission:<p>
											<p>
											  Pull:<input type="radio" class="teamaddperm" name="permission" value="pull"/>
											  Push:<input type="radio" class="teamaddperm" name="permission" value="push"/>
											  Admin:<input type="radio" class="teamaddperm" name="permission" value="admin"/>
                                                                                          <span id="erroraddteam" style="display:none;background:red;color:white;height:20px;width:150px;padding:5px;border-radius:5px;">
                                                                                    </span>
                                                                                          <input type="hidden" id="permforadd" />
											</form>
											<input type="button" class="btn btn-primary" id="addTeam" value="ADD"/>
									</div>
								</div>
							</div>
                                                        
                                                        <div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapseAddRepo"> <span
											class="glyphicon glyphicon-plus"></span> Add Repo
										</a>
									</h4>
								</div>
								<div id="collapseAddRepo" class="panel-collapse collapse">
									<div class="panel-body">
									 
                                    
										<form id="RepoAddForm" action="#">
										   <div class="repoAddFormDiv" style="clear: both;width:100%">
                                                                                       <div id='repo_add_loader' style='display:none;margin-left:240px;position:relative; top:-28px; left:13px;'>
                                                                                                <img src="${resource(dir: 'images/', file:'loadding.gif')}" height="20px" /> 
                                                                                            </div>

                                                                                            <div class="alert alert-success" style="display: none;" id="repoAddSuccess">Successfully Create A Repo</div>
                                                                                          
                                                                                            <table>
                                                                                                <tr>
                                                                                                    <td>Repo Name:</td>
                                                                                                    <td> <input type="text" id="repoName" name="name" placeholder="name" /></td>
                                                                                                    <input type="hidden" name="org" id="org_for_repo_add">
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Description:</td>
                                                                                                    <td><input type="text" id="repoDescription" name="description"  placeholder="description" /></td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            
                                                                                            
                                                                                           
                                                                                           
                                                                                    </div>
										</form>
										<input type="button" class="btn btn-primary" id="addRepoButton" value="ADD Repo"/>
									</div>
								</div>
							</div>
							<!--<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapseThreeOrg"> <span
											class="glyphicon glyphicon-trash"></span> Delete Organization
										</a>
									</h4>
								</div>-->
<!--								<div id="collapseThreeOrg" class="panel-collapse collapse">
									<div class="panel-body">

										<div class="alert alert-danger fade in">
											     <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
											<h4>Are You Sure?? Want to delete this Organization?</h4>
											<p>Deleting a organization can't be undone. You will lose
												all of your content in this Organization.</p>
											<p>
												<button type="button" rel='tooltip' data-toggle="tooltip"
													data-placement="top" class="btn btn-danger"
													title="Delete This Organization">Delete</button>
												       <button type="button" rel='tooltip' class="btn btn-default">Dont Delete</button>

											</p>
										</div>



									</div>
								</div>
							</div>-->
						</div>

     <!-- ------------------------------------------ repos settings ends here------------------------------------ -->
					</div>




				</div>

      <!-- Tab For Organization Details Ends -->

         </div>
</div>
</div>
</div>



<link rel="stylesheet"
	href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css"> -->	


<script src="//code.jquery.com/jquery-1.9.1.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>


<script type="text/javascript">

    function checkgitconnection()
    {
	    if(${session.getAttribute("access_token")==null})
	    {
		    $("#connectModal").modal();
		    $("#okconnect").on("click",function(){
		    return 1;
	    });
		$("#noconnect").on("click",function(){
			    return -1;
		    });
	    }
	    else{
		    return 1;
		    }
    }


</script>
<script type="text/javascript">
    $(document).ready(function(){
 //$('select.styled').customStyle();
     
     
   
     
     

   window.allorgsReposForSearch=[];
 

        

    checkgitconnection();
   gettingallorg();
//$('#listorgs').click();
//$("#listorgs").trigger("click");
 
    //----------------------------------- GETTING ALL ORGANIZATION-----------------------------------------------------------
  //  $("#listorgs").click(function(){
function gettingallorg()
{
    var flag=checkgitconnection();
    if(flag==1)
    {

    $(this).attr("disabled","disabled");
    $("#loader").show();
    
    $.ajax({
    method:"GET",
    dataType: "json",
    url: "https://api.github.com/user/orgs?access_token=${session.getAttribute('access_token')}",

    success:allorgs 
    });
    

 //  $("#allorgs").slideDown(300);   
    }
    
    }

   






   // });

    function allorgs(data){
    $("#loader").hide();
    $.each(data,function(i,item){
    
    	$(".dropDownOrg").append("<option value="+item.login+">"+item.login+"</option>");
     //  allorgsReposForSearch.push(item.login);
     prepareForSearchRepo(item.login)
       
    
    
                     /*      $("#ca-wrapper").append("<div class='ca-item'>"+
            "<div class='ca-item-main'><div style='cursor:pointer;width:175px;' href='javascript:void(0)' company='"+item.company+"' class='orgname itemname' value='"+item.login+"'>"+item.login+"</div></div></div>");
  */
    });
   var selectboxIt=$(".dropDownOrg").selectBoxIt({

        // Uses the Twitter Bootstrap theme for the drop down
       

      });

   selectboxIt.on("change", function() {

       // Prints the updated drop down value
       if($(this).val()!="")
       {
       searchActionOrg($(this).val());
       }
       else
       {
                        $(".orgmemberslists").html("");
                       $(".orgteamlists").html("");
                       $(".orgrepolists").html("");
                        $(".dhekka").hide();
                         $("#navforrepo").hide();
                         $("#ca-wrapper-orgrepo").html("");
                         $("#org_menu_tab").hide();
       }

   });
       $('#ca-container').contentcarousel();
       
		       
		       var substringMatcher = function(strs) {
		return function findMatches(q, cb) {
		var matches, substringRegex;
		 
		// an array that will be populated with substring matches
		matches = [];
		 
		// regex used to determine if a string contains the substring `q`
		substrRegex = new RegExp(q, 'i');
		 
		// iterate through the pool of strings and for any string that
		// contains the substring `q`, add it to the `matches` array
		$.each(strs, function(i, str) {
		if (substrRegex.test(str)) {
		// the typeahead jQuery plugin expects suggestions to a
		// JavaScript object, refer to typeahead docs for more info
		matches.push({ value: str });
		}
		});
		 
		cb(matches);
		};
		};
		 
		
		 
		$('#the-basics .typeahead').typeahead({
		hint: true,
		highlight: true,
		minLength: 1
		},
		{
		name: 'states',
		displayKey: 'value',
		source: substringMatcher(window.allorgsReposForSearch)
		});
		       
       
       
       
       
     

    }
     });
     
     function prepareForSearchRepo(name){
        $.post("${createLink(controller:'hom',action:'listOrgDetailsSearch')}",
    {org:name},function(data,textStatus){
    if(data.repo!=null)
	{
	 var repos=$.parseJSON(data.repo);
	$.each(repos,function(i,repo)
	    {
	    
	    var searchTags=repo.name+"/"+name;
	    window.allorgsReposForSearch.push(searchTags);
	   
	   
	     
	    });
	     
	    }
    
   
	   
	     
     });
     }
     
    $(document.body).on("click",".tt-suggestion",function(){
      var value= $(this).find("p").text();
      var strs = value.split("/");
      searchActionOrg(strs[1]);
      var res=searchAction(strs[0],strs[1]);
     // alert(strs[0]);
      
      window.setTimeout(function(){
      
        $(".orgname").each(function(item)
    {
            $(this).closest(".ca-item-main").removeClass("ca-item-active");
                var org=$(this).attr('value');
               
        if(strs[1]==org)
        {
        $(this).closest(".ca-item-main").addClass("ca-item-active");
        }
    });
      
      
      
      $(".org_repo_name").each(function(item)
    {
            $(this).closest(".ca-item-main").removeClass("ca-item-active");
                var name=$(this).attr('value');
               
        if(strs[0]==name)
        {
        $(this).closest(".ca-item-main").addClass("ca-item-active");
        }
    });
   
    },8000);
      
    });
     
     
     //------------------ For The Repo Search--------------------------------------------
     
     
       function searchActionOrg(organization){
   

   
       
       
       
   
    $(".dhekka").hide();
    var company=organization;
  
       $("#navforrepo").hide();
      $("#ca-wrapper-orgrepo").html("");
    var org=organization;
    $("#loader").show();
    $("#org_menu_tab").hide();
    $(".orgmemberslists").html("");
    $(".orgteamlists").html("");
    $(".orgrepolists").html("");
    
       $("#repo_menu_tab").hide();
        $("#addTeam").attr('organization',org);
        $("#new_name").val(company);
        $("#old_org_name").val(company);
        $("#org_name_for_team_add").val(org);
         $("#org_for_repo_add").val(org);
        

     $.post("${createLink(controller:'hom',action:'listorgdetails')}",
    {org:org},function(data,textStatus){

    
  
   
    if(data.team!=null)
    {
    var teams=$.parseJSON(data.team);
    $.each(teams,function(i,team){
      
    	 var string="<option value="+team.id+">"+team.name+"</option>";
         $("#repoAddTeam").append(string); 
       
      
      //  $(".orgteamlists"). append("<a href='javascript:void(0)' class='org_team_name' >"+team.name+"</a>");
        
       $(".orgteamlists").append("<ul class='nav navbar-nav'>"+
        "<li class='dropdown' style='background:#e5e5e5;'>"+
          "<a href='#' class='dropdown-toggle' data-toggle='dropdown'>"+                  
              team.name+" <b class='caret'></b></a>"+
          "<ul class='dropdown-menu'>"+
             "<li><a team_id='"+team.id+"'  href='javascript:void(0);' id='editOrgTeam'>Edit Team</a></li>"+
             "<li><a team_id='"+team.id+"' href='javascript:void(0);' id='allTeamMembersAnchor'>View Members</a></li>"+
             "<li><a team_id='"+team.id+"' href='javascript:void(0);' id='deleteTeam''>Delete Team</a></li>"+
          "</ul>"+
        "</li>"+
      "</ul>");
        
	});
    $("#repoAddTeam").selectBoxIt();
}


if(data.member!=null)
{
  var members=$.parseJSON(data.member);
    $.each(members,function(i,member){
        $(".orgmemberslists").append("<ul class='nav navbar-nav'>"+
        "<li class='dropdown' style='background:#e5e5e5;'>"+
          "<a href='#' class='dropdown-toggle' data-toggle='dropdown'>"+
                "<img src='"+member.avatar_url+"' height='40px' width='40px' />  "+    
              member.login+" <b class='caret'></b></a>"+
          "<ul class='dropdown-menu'>"+
            "<li><a href='#'>Remove</a></li>"+
          "</ul>"+
        "</li>"+
      "</ul>");
    });
}
    

if(data.repo!=null)
{
 var repos=$.parseJSON(data.repo);
$.each(repos,function(i,repo)
    {
     $("#ca-wrapper-orgrepo").append("<div class='ca-item'>"+
            "<div class='ca-item-main'><div style='cursor:pointer;width:175px;' href='javascript:void(0)' class='org_repo_name' org='"+repo.owner.login+"' value='"+repo.name+"'>"+repo.name+"</div></div></div>");

    });
      $('#ca-container-orgrepo').contentcarousel();
       $("#navforrepo").show();
    }
   
 
    $("#loader").hide();

    });


    $("#org_menu_tab").slideDown();
    }



	//------------------------------------- LIST ORGANIZATION DETAILS-----------------------------------------------------

    $(document.body).on("click",".orgname",function(){
     $(".orgname").each(function(item)
    {
    $(this).closest(".ca-item-main").removeClass("ca-item-active");

    });

    $(this).closest(".ca-item-main").addClass("ca-item-active");
    $(".dhekka").hide();
    var company=$(this).attr('company');
  
       $("#navforrepo").hide();
      $("#ca-wrapper-orgrepo").html("");
    var org=$(this).attr('value');
    $("#loader").show();
    $("#org_menu_tab").hide();
    $(".orgmemberslists").html("");
    $(".orgteamlists").html("");
    $(".orgrepolists").html("");
    
       $("#repo_menu_tab").hide();
        $("#addTeam").attr('organization',org);
        $("#new_name").val(company);
        $("#old_org_name").val(company);
        $("#org_name_for_team_add").val(org);
         $("#org_for_repo_add").val(org);
        

     $.post("${createLink(controller:'hom',action:'listorgdetails')}",
    {org:org},function(data,textStatus){

    
  
   
    if(data.team!=null)
    {
    var teams=$.parseJSON(data.team);
    $.each(teams,function(i,team){


        var string="<option value="+team.id+">"+team.name+"</option>";
        $("#repoAddTeam").append(string);     
      
      //  $(".orgteamlists"). append("<a href='javascript:void(0)' class='org_team_name' >"+team.name+"</a>");
        
       $(".orgteamlists").append("<ul class='nav navbar-nav'>"+
        "<li class='dropdown' style='background:#e5e5e5;'>"+
          "<a href='#' class='dropdown-toggle' data-toggle='dropdown'>"+                  
              team.name+" <b class='caret'></b></a>"+
          "<ul class='dropdown-menu'>"+
             "<li><a team_id='"+team.id+"'  href='javascript:void(0);' id='editOrgTeam'>Edit Team</a></li>"+
             "<li><a team_id='"+team.id+"' href='javascript:void(0);' id='allTeamMembersAnchor'>View Members</a></li>"+
             "<li><a team_id='"+team.id+"' href='javascript:void(0);' id='deleteTeam''>Delete Team</a></li>"+
          "</ul>"+
        "</li>"+
      "</ul>");
        
	});
}


if(data.member!=null)
{
  var members=$.parseJSON(data.member);
    $.each(members,function(i,member){
        $(".orgmemberslists").append("<ul class='nav navbar-nav'>"+
        "<li class='dropdown' style='background:#e5e5e5;'>"+
          "<a href='#' class='dropdown-toggle' data-toggle='dropdown'>"+
                "<img src='"+member.avatar_url+"' height='40px' width='40px' />  "+    
              member.login+" <b class='caret'></b></a>"+
          "<ul class='dropdown-menu'>"+
            "<li><a href='#'>Remove</a></li>"+
          "</ul>"+
        "</li>"+
      "</ul>");
    });
}
    

if(data.repo!=null)
{
 var repos=$.parseJSON(data.repo);
$.each(repos,function(i,repo)
    {
     $("#ca-wrapper-orgrepo").append("<div class='ca-item'>"+
            "<div class='ca-item-main'><div style='cursor:pointer;width:175px;' href='javascript:void(0)' class='org_repo_name' org='"+repo.owner.login+"' value='"+repo.name+"'>"+repo.name+"</div></div></div>");

    });
      $('#ca-container-orgrepo').contentcarousel();
       $("#navforrepo").show();
    }
   
 
    $("#loader").hide();

    });


    $("#org_menu_tab").slideDown();
    });


//-------------------------------- EDITING A TEAM FORM --------------------------------------------------------------
	$(document.body).on('click','#editOrgTeam',function(){
	
		var team_id=$(this).attr('team_id');
		$("#edit_team_id").val(team_id);
		$("#teamEdit").modal('show');
		});

	$(document.body).on('click','#teamEditDone',function(){
                $("#erroreditteam").hide();
		var elements=$("#teamEditForm").serialize();
		var name=$(".editteamname").val();
                var perm=$("#permissionteam").val();
               $(".editteamname").css("border-color","");
               $("#erroreditteam").html("");
               
                  
                if((name==""||name==undefined)||(perm==""||perm==undefined) )
                {
                    
                     if(name==""||name==undefined)
                     {
                     
                        $(".editteamname").css("border-color","red");
                    }
                    if(perm==""||perm==undefined)
                    {
                        $("#erroreditteam").html("Please Choose the Permisssion");
                        $("#erroreditteam").slideDown(400);
                    }
                }
                
                else{
                 $(".editteamname").css("border-color","");
                 
		  	$("#editTeamLoader").show();
		  	$.ajax({
                url: "${createLink(controller:'hom',action:'teamEdit')}",
                type: "post",
                cache:false,
                data:elements,
                success: function(data)
                {
                  $("#teamEditSuccess").html(data).slideDown("slow");
                  $("#editTeamLoader").hide();
//                  $(':input','#teamEditForm')
//                        .not(':button, :submit, :reset, :hidden')
//                               
//                                .removeAttr('checked')
//                                .removeAttr('selected');
//                                
//                                $(".editteamname").val("");
  //             $("#permissionteam").val("");
                        window.setTimeout(function(){
                         $("#teamEditSuccess").slideUp("slow");
                        },3000);
                },
                error: function() {

                    return false;
                }
                
            });
            }
     });
     
//----------------------------------- VIEW ALL TEAM MEMBERS----------------------------------------------------------

//allTeamMembersAnchor

	$(document.body).on('click','#allTeamMembersAnchor',function(){
	    $("#allTeamMembers").empty();
	    var team_id=$(this).attr('team_id');
	    $("#team_mem_add").attr('team_id',team_id);
		$("#add_team_id").val(team_id);
		$("#teamAllMembers").modal('show');
		$("#teamMemberAddLoader").show();
		$.ajax({
                url: "${createLink(controller:'hom',action:'viewTeamMembers')}",
                type: "post",
                cache:false,
                data:{id:team_id},
                success: function(data)
                {
                 // $("#teamAddSuccess").html(data).slideDown("slow");
                  $("#teamMemberAddLoader").hide();
                  if(data!=null )
                  {
                        var mine=$.parseJSON(data);
                        $.each(mine,function(i,item){
                           $("#allTeamMembers").append("<div class='allTeamMembers'><img src='"+item.avatar_url+"' height='30' width='30'><span style='margin-left:5px;'>"+item.login+"</span><span id='remove_member' team_id='"+team_id+"' user='"+item.login+"' style='float:right;color:red;cursor:pointer;'>Remove</span></div>");
                        });
                  }
                //  alert(mine[1].login);
                  
                },
                error: function() {

                    return false;
                }
            });
		
	 
	});
        
//----------------------------------- EDIT THE  ORGANIZATION----------------------------------------------------------

//allTeamMembersAnchor

	$(document.body).on('click','#org_edit_button',function(){
        
	    
	    var elements=$("#org_edit_form").serialize();
            
            $("#new_name").css("border-color","");
            //alert(elements);
	    var name=$("#new_name").val();
            if(name=="")
            {
            $("#new_name").css("border-color","red");
            }
            else
            {
	    $("#orgAddLoader").show();
	    //alert(elements);
            console.log(elements);
	    
	    	$.ajax({
                url: "${createLink(controller:'hom',action:'orgEdit')}",
                type: "post",
                cache:false,
                data:elements,
                success: function(data)
                {
                  $("#orgEditSuccess").html(data).slideDown("slow");
                  $("#orgAddLoader").hide();
                  
                  window.setTimeout(function(){
                  $("#orgEditSuccess").slideUp(400);
                  $("#orgEditSuccess").html("");
                  },4000);
                  
                
                },
                error: function() {

                    return false;
                }
            });
	  }
	 
	});        
        
	
//----------------------------------- ADD THE TEAM TO ORGANIZATION----------------------------------------------------------

//allTeamMembersAnchor

	$(document.body).on('click','#addTeam',function(){
	$("#erroraddteam").hide();   
        $("#erroraddteam").html("");
	    var elements=$("#teamAddForm").serialize();
	    var name=$(".teamaddname").val();
            var perm=$("#permforadd").val();
             $(".teamaddname").css("border-color","");
            if(name==""||perm=="")
            {
                if(name=="")
                {
                $(".teamaddname").css("border-color","red");
                }
                if(perm=="")
                {
                $("#erroraddteam").html("Please Choose a Permission");
                $("#erroraddteam").slideDown(400);
                }
            }
            
            else
            {
	    $("#team_add_loader").show();
	    //alert(elements);
	    
	    	$.ajax({
                url: "${createLink(controller:'hom',action:'addTeam')}",
                type: "post",
                cache:false,
                data:elements,
                success: function(data)
                {
                  $("#teamAddSuccess").html(data).slideDown("slow");
                  $("#team_add_loader").hide();
                  
                  $(':input','#teamAddForm')
                        .not(':button, :submit, :reset, :hidden')
                               
                                .removeAttr('checked')
                                .removeAttr('selected');
               $(".teamaddname").val("");
                $("#permforadd").val("");
                  window.setTimeout(function(){
                 
                  $("#teamAddSuccess").slideUp(400);
                   $("#teamAddSuccess").html("");
                  },4000);
                
                },
                error: function() {

                    return false;
                }
            });
	  
	 }
	});
	
	
//-----------------------------------ADD MEMBER TO THE ORGANIZATION TEAM -----------------------------------

 
    function suggest(inputString){
    
       // alert(inputString);
    $("#teamMemberAddLoader").show();
    
         $('#suggestionsList div').empty();   
         $('#temp').empty();
       
    	if(inputString.length == 0) {
			$('#suggestions').fadrequiredeOut();
			
			$("#teamMemberAddLoader").hide();
		} else {
		  	// $("#suggestions").closest('ul').detach();
		  	
		  	
		  	$.ajax({
                url: "${createLink(controller:'hom',action:'userSearch')}",
                type: "post",
                cache:false,
                data:{queryString: ""+inputString+""},
                success: function(data)
                {
                     var mine=$.parseJSON(data);
					//alert(mine.total_count);
				    if(mine.total_count >0) {
			   
		    	
			        var count;
			        var string;
			        if(mine.total_count>8){ count=8}
			        else count=mine.total_count;
			        for(var i=0; i<count; i++)
				    {

			        	$('#temp').append("<li onclick=\"fill('"+mine.items[i].login+"','"+mine.items[i].avatar_url+"')\" ><img src='"+mine.items[i].avatar_url+"' height='30' width='30'/><span style=padding-left:5px;''>"+mine.items[i].login+"</span></li>");
					  
					}
			      
			        
                             
			       	$('#suggestions').fadeIn("slow",function(){
			          	//$('#suggestionsList').append("</ul>");
			          		$('#suggestionsList').html("<ul>"+$("#temp").html()+"</ul>");
			          		$('.inner').css('height','1000px');
			          		 $( ".inner" ).animate({
								
								height: "1000px"
								}, 300, function() {
								// Animation complete.
								});
			          		
			          		
			          		
			       	});
					//$('#suggestionsList').html(data);
					//$('#country').removeClass('load');
					
                       $("#teamMemberAddLoader").hide();                 
				}
		    else
			{
		    	$('#suggestions').fadeIn();
				$('#suggestionsList').html("<ul><li>No Suggesstions</li></ul>");
				//$('#country').removeClass('load');
			
			}
				
				
				$("#teamMemberAddLoader").hide();
                
                },
                error: function() {

                    return false;
                }
            });
		  	
	}
          
               
	}

	function fill(thisValue,avatar) {
	  $("#team_mem_name").val(thisValue);
	  $("#team_mem_name").attr('avatar',avatar);
	  	$('#suggestions').fadeOut('slow');
        
              
	}
	
	$(document.body).on('click','#team_mem_add',function(){
	
	 $("#team_mem_name").css("border-color","");
	   var name=$("#team_mem_name").val();
	   var avatar=$("#team_mem_name").attr('avatar');
	   var team_id=$(this).attr('team_id');	
           
           if(name=="")
           {
           $("#team_mem_name").css("border-color","red");
           }
           else
           {
	     $("#teamMemberAddLoader").show();
	   $.ajax({
                url: "${createLink(controller:'hom',action:'addTeamMember')}",
                type: "post",
                cache:false,
                data:{name:name,id:team_id},
                success: function(data)
                {
                  $("#teamMemberAddSuccess").html(data).slideDown("slow");
                   $("#allTeamMembers").append("<div class='allTeamMembers'><img src='"+avatar+"' height='30' width='30'><span style='margin-left:5px;'>"+name+"</span><span team_id='"+team_id+"' id='remove_member' user='"+name+"' style='float:right;color:red;cursor:pointer'>Remove</span></div>");
                  $("#team_mem_name").val('');
                  $("#teamMemberAddLoader").hide();
                  
                  window.setTimeout(function(){
                  $("#teamMemberAddSuccess").slideUp(400);
                  $("#teamMemberAddSuccess").html("");
                  },4000);
                
                },
                error: function() {

                    return false;
                }
            });
           }
	
	});
  //--------------------------------ADDIN A REPOSITORY-----------------------------------------------------------------------------------------
    $(document.body).on('click','#addRepoButton',function(){
    
    
         
         var elements=$("#RepoAddForm").serialize();
         console.log(elements);
           $("#repoName").css("border-color","");
                 var repo=$("#repoName").val();
                 
                 if(repo=="")
                 {
                 $("#repoName").css("border-color","red");
                 }
                 else
                 {
                              
                    $("#repo_add_loader").show();           
           $.ajax({
                url: "${createLink(controller:'hom',action:'addRepoOrg')}",
                type: "post",
                cache:false,
                data:elements,
                success: function(data)
                {
                 $("#repoName").val("");
                 $("#repoDescription").val("");
        	  $("#repoAddSuccess").html(data).slideDown(400);
                  $("#repo_add_loader").hide();
                  window.setTimeout(function(){
                   $("#repoAddSuccess").slideUp(400);
                   $("#repoAddSuccess").html("");
                  },4000);
                 // setTimeout(function(){ window.location.href='/test/hom/organization'},3000);
                
                },
                error: function() {

                    return false;
                }
            });     
}
         
    });
		
  //--------------------------------EDITING A REPOSITORY-----------------------------------------------------------------------------------------
    $(document.body).on('click','#repo_edit_button',function(){

         var elements=$("#repo_edit_form").serialize();
         console.log(elements);
         var repo=$("#repo_name_to_edit").val();
         $("#repo_name_to_edit").css("border-color","");
         if(repo=="")
         {
         $("#repo_name_to_edit").css("border-color","red");
         }
         else
         {
         $("#repo_edit_loader").show();    
                              
                              
                              
           $.ajax({
                url: "${createLink(controller:'hom',action:'editRepoOrg')}",
                type: "post",
                cache:false,
                data:elements,
                success: function(data)
                {
                 
        	  $("#repoEditSuccess").html(data).slideDown(400);
                  $("#repo_edit_loader").hide();
                  setTimeout(function(){ window.location.href='/test/hom/organization'},3000);
                
                },
                error: function() {

                    return false;
                }
            });                    
         }
    });
    
   //------------------------------------ REPOSITORY DELETE---------------------------------------------------------------

    $(document.body).on('click','#delete_repo',function(){

         var name=$(this).attr('repo_name');
         var owner=$(this).attr('owner');
        
       $("#repo_delete_loader").show();
           $.post("${createLink(controller:'hom',action:'deleteRepoOrg')}",
            {
                name:name,owner:owner
                },function(data,textStatus)
                {
                $("#repo_delete_loader").hide();
                $("#repoDeleteSuccess").html(data).slideDown(400);


            });

           setTimeout(function(){ window.location.href='/test/hom/organization'},3000);
            

    });

  	

//----------------------------------- DELETE THE TEAM----------------------------------------------------------

//allTeamMembersAnchor

	$(document.body).on('click','#deleteTeam',function(){
	    var team_id=$(this).attr('team_id');
		    var current=$(this);

    BootstrapDialog.confirm('Do You Want To Delete?', function(result){
		    if(result) {
			
			    current.closest('.dropdown').slideUp(300);
			
			   
			
		    $.post("${createLink(controller:'hom',action:'deleteTeam')}",
		    {
			    id:team_id
			    },function(data,textStatus)
			    {
			     
			
			    });
		
		    }else {
		
		    }
    });
	 
	});
	
	//-----------------------------------REMOVE THE TEAM----------------------------------------------------------



	$(document.body).on('click','#teamRepoDelete',function(){
	    var team_id=$(this).attr('teamid');
	    var teamId=team_id
	  //  alert(team_id)
	     var owner=$(this).attr('owner');
	      var repo=$(this).attr('repo');
		    var current=$(this);

    BootstrapDialog.confirm('Do You Want To Delete?', function(result){
		    if(result) {
			
			    current.closest('.dropdown').slideUp(300);
			
			   
			
		    $.post("${createLink(controller:'hom',action:'removeTeamRepo')}",
		    {
			    teamId:teamId,owner:owner,repo:repo
			    },function(data,textStatus)
			    {
			     
			
			    });
		
		    }else {
		
		    }
    });
	 
	});
		

//----------------------------------- REMOVE THE TEAM MEMBER FROM THE TEAM----------------------------------------------------------

//allTeamMembersAnchor

	$(document.body).on('click','#remove_member',function(){
	            var team_id=$(this).attr('team_id');
                    var user=$(this).attr('user');
                    alert(team_id);
                    alert(user);
		    var current=$(this);

    BootstrapDialog.confirm('Do You Want To Remove Member ?'+user, function(result){
		    if(result) {
			
			    current.closest('.dropdown').slideUp(300);
			
			   
			
		    $.post("${createLink(controller:'hom',action:'removeTeamMember')}",
		    {
			    id:team_id,user:user
			    },function(data,textStatus)
			    {
			     current.closest(".allTeamMembers").fadeOut("slow");
			
			    });
		
		    }else {
		
		    }
                    });
	 
	});






//------------------------------------ GETTING ORGANIZATION REPOS------------------------------------------------------


 $(document.body).on('click', '.org_repo_name' ,function(){
 
  var commitArray=[];
  var commiterArray=[];

    var itemname=$(this).attr('value');
    var org=$(this).attr("org");
    var organizationName=org;
    
     $("#repoforaddteam").val(itemname);
    $("#orgforaddteam").val(org);
    
    var $this=$(this);
       $("#repo_menu_tab").hide();
       
       
       
   $("#owner_name").val(org);
   $("#old_repo_name").val(itemname);
   $("#repo_name_to_edit").val(itemname);
   
  
   
   
   
   $("#delete_repo").attr('repo_name',itemname);
   $("#delete_repo").attr('owner',org);
   
  
    
    
    
      $(".org_repo_name").each(function(item)
    {
    $(this).closest(".ca-item-main").removeClass("ca-item-active");

    });

    $(this).closest(".ca-item-main").addClass("ca-item-active");
    
    
    
    // $(this).css("background-color","#999999");

    $("#loader").show();
    $(".orgcommitlists").html("");
    $(".orgrepocollablists").html("");
    $("#org_repo_menu_tab").hide();
    
    
    $(".orgrepoteamlists").html('');
     $(".dhekka").hide();

    $.post("${createLink(controller:'hom',action:'orgrepodetails')}",
    {repo:itemname,org:org},function(data,textStatus){
    
    //alert(organizationName);
   
      if(data.teams!=null&&data.teams!="No teams" )
   {
    var team=$.parseJSON(data.teams);
    $.each(team,function(i,teams){
    
    
    
     $(".orgrepoteamlists").append("<ul class='nav navbar-nav'>"+

        "<li class='dropdown' style='background:#e5e5e5;'>"+

          "<a href='#' class='dropdown-toggle' data-toggle='dropdown'>"+

               
              teams.name+" <b class='caret'></b></a>"+
          "<ul class='dropdown-menu'>"+
            "<li><a href='javascript:void(0);' teamId="+teams.id+" owner="+organizationName+" repo="+itemname+" id='teamRepoDelete'>Remove</a></li>"+



          "</ul>"+
        "</li>"+
      "</ul>");
    
    });
    
    
    
    }

    
    
  
    
  
    $("#loader").hide();
    $(".orgrepocollablists").html("");
     $(".orgrepopull").hide();
    $(".orgrepopull").html("");
    
    $(".orgcommitlists").html("");
    if(data.collab!=null && data.collab!="No Contributors or Cannot Be Fetched" )
   { 
   var col=$.parseJSON(data.collab);
    $.each(col,function(i,collabs){
                 //   $(".orgrepocollablists").append("<p><img src='"+collabs.avatar_url+"' height='50px' width='50px' /><br/>"+collabs.login+"</p><div style='clear:both;'></div>");

                    $(".orgrepocollablists").append("<ul class='nav navbar-nav'>"+

        "<li class='dropdown' style='background:#e5e5e5;'>"+

          "<a href='#' class='dropdown-toggle' data-toggle='dropdown'>"+

                "<img src='"+collabs.avatar_url+"' height='40px' width='40px' />  "+    
              collabs.login+" <b class='caret'></b></a>"+
          "<ul class='dropdown-menu'>"+
            "<li><a href='#'>Remove</a></li>"+



          "</ul>"+
        "</li>"+
      "</ul>");
      
      
      



$("#repo_menu_tab").show();
    });
     
       } 

   
    // var comm=data.commits;
    var org=data.org;
    
        if(data.commits!=null && data.commits!="No Commits or Cannot Be Fetched" )
   { 
    var comm=$.parseJSON(data.commits);
    $.each(comm,function(i,come){
    if(come.committer!=null)
    {
            var img="<img class='media-object' src='"+come.committer.avatar_url+"'  height='60px' width='60px'>";
    }
    else{

         var img="<img class='media-object' src='${resource(dir: 'images/', file:'avatar.jpeg')}'  height='60px' width='60px'>";
    }

    var sha=come.sha;

        $(".orgcommitlists").append("<div class='media' sha='"+sha+"' owner='"+org+"' repo='"+itemname+"'>"+
  "<a class='pull-left' href='#'>"+
    img+
  "</a>"+
  "<div class='media-body'>"+
    "<h4 class='media-heading'>"+come.commit.committer.name+"</h4>"+
   come.commit.message+"<br/><span style='font-style:italic;color:#999;font-size:10px;'>"+come.commit.committer.date+"</span>"+
  "</div>"+
"</div>");

 		});
                
                }
                
                
                
            if(data.pulls!=null && data.pulls!="No Pull Request")
            {
                var pulls=$.parseJSON(data.pulls);
    $.each(pulls,function(i,pull){
//    if(pull.head.user!=null)
//    {
//            var img="<img class='media-object' src='"+pull.head.user.avatar_url+"'  height='60px' width='60px'>";
//    }
//    else{
//
//         var img="<img class='media-object' src='${resource(dir: 'images/', file:'avatar.jpeg')}'  height='60px' width='60px'>";
//    }
//
//   var sha=pull.head.sha;

var number=pull.number;
var title=pull.title;
var body=pull.body;
var user=pull.user.login;
var avatar=pull.user.avatar_url;
var base=pull.base.label;
var state=pull.state;
var created_at=pull.created_at;


//var userim=JSON.stringify(pull.user);
var img="<img src='"+avatar+"' height='40px' width='40px' />";

        $(".orgrepopull").append("<div class='media1' number='"+number+"' owner='"+org+"' repo='"+itemname+"'>"+
  "<a class='pull-left' href='#'>"+img+
  "</a>"+
  "<div class='media1-body'>"+
   "<h4 class='media1-heading'>"+user+
    "<br/><span style='font-style:italic;color:#000000;font-size:15px;'>"+base+"</span>"+
    "</h4><span style='font-style:italic;color:#000000;font-size:15px;'>State:"+state+"</span>"+
    "<br/><span style='font-style:italic;color:#000000;font-size:15px;'>Title:"+title+"</span>"+
   "<br/><span style='font-style:italic;color:#000000;font-size:15px;'>Message:"+body+"</span>"+
   "<br/><span style='font-style:italic;color:#000000;font-size:15px;'>Created date:"+created_at+"</span>"+
  "</div>"+
"</div>");
 $(".orgrepopull").show();
                //$(".orgrepopull").append("<li>"+userim+"</li>");


 		});
                }
	});

        
        <!-- For Display the Statistics Starts-->
         $("#totaladditiondeletionandcommits").html("");
        $.post("${createLink(controller:'hom',action:'repostatistics')}",{
        repo:itemname,owner:org
        },function(data,textStatus)
        {
        
       
        var stats=$.parseJSON(data);
        var rel="<table class='table' style='margin-top:20px;'><tr><th colspan='2'>User </th><th>Commits</th><th>Weekly Details</th></tr>";
        $.each(stats,function(i,stat){
        commitArray.push(stat.total);
        commiterArray.push(stat.author.login);
        
        
        
        
        
        
        
        rel+="<tr><td><img src='"+stat.author.avatar_url+"' height='35px' width='35px'></td><td>"+
        "<a>"+stat.author.login+"</a></td><td> <span style='color:green;'>"+stat.total+" Times </span></td>"+
        "<td>"+
            "<div class='hiddentotal' ><table class='table displaycommitdetail' style='font-size:11px;font-weight:bold;color:#999;'><tr style='color:#666;'>"+
                "<td>Start Day For a Week</td><td>Commit</td><td>Delete</td><td>Add</td></tr>";
            $.each(stat.weeks,function(i,we)
            {
                var week=we.w;
                week = new Date(week*1000);
               week=week.toString();
               week=week.split("GMT");
              
                var com=we.c;
                var del=we.d;
                var add=we.a;
                rel+="<tr><td>"+week[0]+"</td><td>"+com+"</td><td>"+del+"</td><td>"+add+"</td></tr>";
            });
        
        rel+="</table></div></td></tr>";
       
        });
        rel+="</table>";
         $("#totaladditiondeletionandcommits").append(rel);
      
         $("#totaladditiondeletionandcommits").prepend("<a target='_blank' href='/test/hom/graphStats?org="+org+"&repo="+itemname+"'><input type='button' class='btn btn-info' value='View Statistics in a graph'/></a>");
         
    /*     var plot1;
          window.setTimeout(function(){
          
          
          
         //---------------------------rendering the carts-------------------------------------------------------
         
      
        $.jqplot.config.enablePlugins =true;
        var s1 = commitArray;
        var ticks = commiterArray;
        
        plot1 = $.jqplot('chart1', [s1], {
            // Only animate if we're not using excanvas (not in IE 7 or IE 8)..
            animate: !$.jqplot.use_excanvas,
            seriesDefaults:{
                renderer:$.jqplot.BarRenderer,
                pointLabels: { show: true }
            },
            axes: {
                xaxis: {
                    renderer: $.jqplot.CategoryAxisRenderer,
                    ticks: ticks
                }
            },
            highlighter: { show: false }
        });
    
     $('#chart1').bind('jqplotDataClick', 
            function (ev, seriesIndex, pointIndex, data) {
                $('#info1').html('series: '+seriesIndex+', point: '+pointIndex+', data: '+data);
            }
        );
        
        
         //---------------------------end for the rendering of the charts---------------------------------------
          
          
          
          
          },5000);
          
          */
          
         /* $('#collapsecommit').on('show.bs.collapse', function () {
          plot1.replot();
          console.log("reploted");
			  
			})
			*/
          
         
         
                  
        
         
        
         
        });
        
        <!-- for display the weekly addition and deletion  ----------------------------------------------------->
         $("#noofadditiondeletionperweek").html("");
          $.post("${createLink(controller:'hom',action:'weeklyaddanddelete')}",
    {repo:itemname,owner:org},function(data,textStatus){
    
    if(data!=null)
    {
    var reports=$.parseJSON(data);
     var rel="<table class='table'><tr>"+
            "<th>Start Date of Week </th><th>Addition </th><th> Deletion </th></tr>";
     $.each(reports,function(i,rep)
            {
            var kk=rep.toString();
                var repo=kk.split(",");
                var week=repo[0];
                var add=repo[1];
                var del=-(repo[2]);
                week = new Date(week*1000);
               week=week.toString();
               week=week.split("GMT");
               week=week[0];
               rel+="<tr><td>"+week+"</td><td>"+add+"</td><td>"+del+"</td></tr>";

                
            });
            rel+="</table>";
            $("#noofadditiondeletionperweek").html(rel);
            }
    
    });
        
        
      //-----------------------------------------------------For Hourly Commit Records ----------------------
      $("#numberofcommitperhour").html("");
$.post("${createLink(controller:'hom',action:'hourlycommit')}",
    {repo:itemname,owner:org},function(data,textStatus){
    
   if(data!=null)
   {
    var records=$.parseJSON(data);
    var rr="<table class='table' style='font-size:10px;'>"+
    "<tr text-align='center' style='font-size:15px;'><th colspan='25' style='padding-left:80px;'>Starting Hour </th></tr>"+
    "<tr><th>DAY</th>"+
"<th>00</th><th>01</th>"+
"<th>02</th><th>03</th>"+
"<th>04</th><th>05</th>"+
"<th>06</th><th>07</th><th>08</th>"+
"<th>09</th><th>10</th>"+
"<th>11</th><th>12</th>"+
"<th>13</th><th>14</th>"+
"<th>15</th><th>16</th>"+
"<th>17</th><th>18</th>"+
"<th>19</th><th>20</th>"+
"<th>21</th><th>22</th>"+
"<th>23</th>"+
"</tr>";

    
    
    var oldday="";
    $.each(records,function(i,reh){
        var gg=reh.toString();
        
         var repo=gg.split(",");
         var day=convertday(repo[0]);
         var hour=repo[1];
         var com=repo[2];
         
        // alert(day);
        
         var newday=day;
         if(newday!=oldday)
         {
                if(oldday!="")
                {
                   rr+="</tr>";
                }
                rr+="<tr><td style='font-weight:bold;'>"+day+"</td>";
         }
        rr+="<td>"+com+"</td>";
//        
        oldday=newday;
    
    });
    rr+="</table>";
    
    
    $("#numberofcommitperhour").html(rr);
  }
    });
        
        //----------------------------------------For Repository Branch 
        
        $("#orgrepocontents").html("");
         $.post("${createLink(controller:'hom',action:'branches')}",{
        repo:itemname,owner:org
        },function(data,textStatus)
        {
            if(data!=null)
            {
                var results=$.parseJSON(data);
                var htm="";
                 $.each(results,function(i,re){
                 var name=re.name;
                 var sha=re.commit.sha;
                 $("#orgrepocontents").append("<div class='ca-item'>"+
            "<div class='ca-item-main'><div style='cursor:pointer;width:175px;' href='javascript:void(0)' class='org_repo_branch' org='"+org+"' repo='"+itemname+"' sha='"+sha+"' name='"+name+"'>"+name+"</div></div></div>");

                 });
                 
                 }
               
        
        });
        
        
        
        <!-- For Display the Statistics Ends-->
        

    $("#org_repo_menu_tab").slideDown();
    $(".dhekka").slideDown();

    });
    
    
 //-------------------------------	 LIST AS PER THE SEARCH------------------------------------------------------------------
 



 function searchAction(repository,organization){
 
  var commitArray=[];
  var commiterArray=[];

   var itemname=repository;
   var org=organization;
    var $this=$(this);
       $("#repo_menu_tab").hide();
       
       
        $("#repoforaddteam").val(itemname);
    $("#orgforaddteam").val(org);
    
    
   $("#owner_name").val(org);
   $("#old_repo_name").val(repository);
   $("#repo_name_to_edit").val(repository);
   
  
   
   
   
   $("#delete_repo").attr('repo_name',repository);
   $("#delete_repo").attr('owner',organization);
   
  
    
    
    
    

   
    
    
    
    // $(this).css("background-color","#999999");

    $("#loader").show();
    $(".orgcommitlists").html("");
    $(".orgrepocollablists").html("");
    $("#org_repo_menu_tab").hide();
    
    
    $(".orgrepoteamlists").html('');
     $(".dhekka").hide();

    $.post("${createLink(controller:'hom',action:'orgrepodetails')}",
    {repo:repository,org:organization},function(data,textStatus){
    
    
   
      if(data.teams!=null&&data.teams!="No teams" )
   {
    var team=$.parseJSON(data.teams);
    $.each(team,function(i,teams){
    
     $(".orgrepoteamlists").append("<ul class='nav navbar-nav'>"+

        "<li class='dropdown' style='background:#e5e5e5;'>"+

          "<a href='#' class='dropdown-toggle' data-toggle='dropdown'>"+

               
              teams.name+" <b class='caret'></b></a>"+
          "<ul class='dropdown-menu'>"+
            "<li><a href='#'>Remove</a></li>"+



          "</ul>"+
        "</li>"+
      "</ul>");
    
    });
    
    
    
    }

    
    
  
    
  
    $("#loader").hide();
    $(".orgrepocollablists").html("");
    $(".orgrepopull").html("");
    
    $(".orgcommitlists").html("");
    if(data.collab!=null && data.collab!="No Contributors or Cannot Be Fetched" )
   { 
   var col=$.parseJSON(data.collab);
    $.each(col,function(i,collabs){
                 //   $(".orgrepocollablists").append("<p><img src='"+collabs.avatar_url+"' height='50px' width='50px' /><br/>"+collabs.login+"</p><div style='clear:both;'></div>");

                    $(".orgrepocollablists").append("<ul class='nav navbar-nav'>"+

        "<li class='dropdown' style='background:#e5e5e5;'>"+

          "<a href='#' class='dropdown-toggle' data-toggle='dropdown'>"+

                "<img src='"+collabs.avatar_url+"' height='40px' width='40px' />  "+    
              collabs.login+" <b class='caret'></b></a>"+
               collabs.email+" <b class='caret'></b></a>"+
          "<ul class='dropdown-menu'>"+
            "<li><a href='#'>Remove</a></li>"+



          "</ul>"+
        "</li>"+
      "</ul>");
      
      
      



$("#repo_menu_tab").show();
    });
     
       } 

   
    // var comm=data.commits;
    var org=data.org;
    
        if(data.commits!=null && data.commits!="No Commits or Cannot Be Fetched" )
   { 
    var comm=$.parseJSON(data.commits);
    $.each(comm,function(i,come){
    if(come.committer!=null)
    {
            var img="<img class='media-object' src='"+come.committer.avatar_url+"'  height='60px' width='60px'>";
    }
    else{

         var img="<img class='media-object' src='${resource(dir: 'images/', file:'avatar.jpeg')}'  height='60px' width='60px'>";
    }

    var sha=come.sha;

        $(".orgcommitlists").append("<div class='media' sha='"+sha+"' owner='"+org+"' repo='"+itemname+"'>"+
  "<a class='pull-left' href='#'>"+
    img+
  "</a>"+
  "<div class='media-body'>"+
    "<h4 class='media-heading'>"+come.commit.committer.name+"</h4>"+
   come.commit.message+"<br/><span style='font-style:italic;color:#999;font-size:10px;'>"+come.commit.committer.date+"</span>"+
  "</div>"+
"</div>");

 		});
                
                }
                
                
                
            if(data.pulls!=null && data.pulls!="No Pull Request")
            {
                var pulls=$.parseJSON(data.pulls);
    $.each(pulls,function(i,pull){
//    if(pull.head.user!=null)
//    {
//            var img="<img class='media-object' src='"+pull.head.user.avatar_url+"'  height='60px' width='60px'>";
//    }
//    else{
//
//         var img="<img class='media-object' src='${resource(dir: 'images/', file:'avatar.jpeg')}'  height='60px' width='60px'>";
//    }
//
var number=pull.number;
var title=pull.title;
var body=pull.body;
var state=pull.state;
var base=pull.base.label;
var user=pull.user.login;
var avatar=pull.user.avatar_url;
var userim=JSON.stringify(pull.user);
//        if(avatar!=null)
//        {
               var img="<img src='"+avatar+"' height='30px' width='30px'>";
     //  }
//else{
//
//         var img="<img class='media-object' src='${resource(dir: 'images/', file:'avatar.jpeg')}'  height='60px' width='60px'>";
//    }

        $(".orgrepopull").append("<div class='media1' number='"+number+"' owner='"+org+"' repo='"+itemname+"'>"+
  "<a class='pull-left' href='#'>"+
    img+
  "</a>"+
  "<div class='media1-body'>"+user+
    "<br/><span style='font-style:italic;color:#000000;font-size:15px;'>"+base+"</span>"+
   // "<h4 class='media1-heading'>"+
    "</h4><span style='font-style:italic;color:#000000;font-size:15px;'>State:"+state+"</span>"+
    "<br/><span style='font-style:italic;color:#000000;font-size:15px;'>Title:"+title+"</span>"+
   "<br/><span style='font-style:italic;color:#000000;font-size:15px;'>Message:"+body+"</span>"+
   "<br/><span style='font-style:italic;color:#000000;font-size:15px;'>Created date:"+created_at+"</span>"+
  "</div>"+
"</div>");
$(".orgrepopull").show();

 		});
                }
	});
        
        <!-- For Display the Statistics Starts-->
         $("#totaladditiondeletionandcommits").html("");
        $.post("${createLink(controller:'hom',action:'repostatistics')}",{
        repo:itemname,owner:org
        },function(data,textStatus)
        {
        
       
        var stats=$.parseJSON(data);
        var rel="<table class='table' style='margin-top:20px;'><tr><th colspan='2'>User </th><th>Commits</th><th>Weekly Details</th></tr>";
        $.each(stats,function(i,stat){
        
        commitArray.push(stat.total);
        commiterArray.push(stat.author.login);
        
        
        
        
        
        
        
        rel+="<tr><td><img src='"+stat.author.avatar_url+"' height='35px' width='35px'></td><td>"+
        "<a>"+stat.author.login+"</a></td><td> <span style='color:green;'>"+stat.total+" Times </span></td>"+
        "<td>"+
            "<div class='hiddentotal' ><table class='table displaycommitdetail' style='font-size:11px;font-weight:bold;color:#999;'><tr style='color:#666;'>"+
                "<td>Start Day For a Week</td><td>Commit</td><td>Delete</td><td>Add</td></tr>";
            $.each(stat.weeks,function(i,we)
            {
                var week=we.w;
                week = new Date(week*1000);
               week=week.toString();
               week=week.split("GMT");
              
                var com=we.c;
                var del=we.d;
                var add=we.a;
                rel+="<tr><td>"+week[0]+"</td><td>"+com+"</td><td>"+del+"</td><td>"+add+"</td></tr>";
            });
        
        rel+="</table></div></td></tr>";
       
        });
        rel+="</table>";
         $("#totaladditiondeletionandcommits").append(rel);
      
         $("#totaladditiondeletionandcommits").prepend("<a target='_blank' href='/test/hom/graphStats?org="+org+"&repo="+itemname+"'><input type='button' class='btn btn-info' value='View Statistics in graph'/></a>");
         
    /*     var plot1;
          window.setTimeout(function(){
          
          
          
         //---------------------------rendering the carts-------------------------------------------------------
         
      
        $.jqplot.config.enablePlugins =true;
        var s1 = commitArray;
        var ticks = commiterArray;
        
        plot1 = $.jqplot('chart1', [s1], {
            // Only animate if we're not using excanvas (not in IE 7 or IE 8)..
            animate: !$.jqplot.use_excanvas,
            seriesDefaults:{
                renderer:$.jqplot.BarRenderer,
                pointLabels: { show: true }
            },
            axes: {
                xaxis: {
                    renderer: $.jqplot.CategoryAxisRenderer,
                    ticks: ticks
                }
            },
            highlighter: { show: false }
        });
    
     $('#chart1').bind('jqplotDataClick', 
            function (ev, seriesIndex, pointIndex, data) {
                $('#info1').html('series: '+seriesIndex+', point: '+pointIndex+', data: '+data);
            }
        );
        
        
         //---------------------------end for the rendering of the charts---------------------------------------
          
          
          
          
          },5000);
          
          */
          
         /* $('#collapsecommit').on('show.bs.collapse', function () {
          plot1.replot();
          console.log("reploted");
			  
			})
			*/
          
         
         
                  
        
         
        
         
        });
        
        <!-- for display the weekly addition and deletion  ----------------------------------------------------->
         $("#noofadditiondeletionperweek").html("");
          $.post("${createLink(controller:'hom',action:'weeklyaddanddelete')}",
    {repo:itemname,owner:org},function(data,textStatus){
    
    var reports=$.parseJSON(data);
     var rel="<table class='table'><tr>"+
            "<th>Start Date of Week </th><th>Addition </th><th> Deletion </th></tr>";
     $.each(reports,function(i,rep)
            {
            var kk=rep.toString();
                var repo=kk.split(",");
                var week=repo[0];
                var add=repo[1];
                var del=-(repo[2]);
                week = new Date(week*1000);
               week=week.toString();
               week=week.split("GMT");
               week=week[0];
               rel+="<tr><td>"+week+"</td><td>"+add+"</td><td>"+del+"</td></tr>";

                
            });
            rel+="</table>";
            $("#noofadditiondeletionperweek").html(rel);
    
    });
        
        
      //-----------------------------------------------------For Hourly Commit Records ----------------------
      $("#numberofcommitperhour").html("");
$.post("${createLink(controller:'hom',action:'hourlycommit')}",
    {repo:itemname,owner:org},function(data,textStatus){
    
   
    var records=$.parseJSON(data);
    var rr="<table class='table' style='font-size:10px;'>"+
    "<tr text-align='center' style='font-size:15px;'><th colspan='25' style='padding-left:80px;'>Starting Hour </th></tr>"+
    "<tr><th>DAY</th>"+
"<th>00</th><th>01</th>"+
"<th>02</th><th>03</th>"+
"<th>04</th><th>05</th>"+
"<th>06</th><th>07</th><th>08</th>"+
"<th>09</th><th>10</th>"+
"<th>11</th><th>12</th>"+
"<th>13</th><th>14</th>"+
"<th>15</th><th>16</th>"+
"<th>17</th><th>18</th>"+
"<th>19</th><th>20</th>"+
"<th>21</th><th>22</th>"+
"<th>23</th>"+
"</tr>";

    
    
    var oldday="";
    $.each(records,function(i,reh){
        var gg=reh.toString();
        
         var repo=gg.split(",");
         var day=convertday(repo[0]);
         var hour=repo[1];
         var com=repo[2];
         
        // alert(day);
        
         var newday=day;
         if(newday!=oldday)
         {
                if(oldday!="")
                {
                   rr+="</tr>";
                }
                rr+="<tr><td style='font-weight:bold;'>"+day+"</td>";
         }
        rr+="<td>"+com+"</td>";
//        
        oldday=newday;
    
    });
    rr+="</table>";
    
    
    $("#numberofcommitperhour").html(rr);
  
    });
        
        //----------------------------------------For Repository Branch 
        
        $("#orgrepocontents").html("");
         $.post("${createLink(controller:'hom',action:'branches')}",{
        repo:itemname,owner:org
        },function(data,textStatus)
        {
            if(data!=null)
            {
                var results=$.parseJSON(data);
                var htm="";
                 $.each(results,function(i,re){
                 var name=re.name;
                 var sha=re.commit.sha;
                 $("#orgrepocontents").append("<div class='ca-item'>"+
            "<div class='ca-item-main'><div style='cursor:pointer;width:175px;' href='javascript:void(0)' class='org_repo_branch' org='"+org+"' repo='"+itemname+"' sha='"+sha+"' name='"+name+"'>"+name+"</div></div></div>");

                 });
                 
                 }
               
        
        });
        
        
        
        <!-- For Display the Statistics Ends-->
        

    $("#org_repo_menu_tab").slideDown();
    $(".dhekka").slideDown();

    }
    
    
    
    
    
    
    
    
    
 //---------------------------------- SHOWING INDIVIDUAL COMMIT FILES FOR THE ORGANIZATION REPOS------------------------------------
    


 $(document.body).on('click', '.media' ,function(){
     var sha=$(this).attr("sha");
     var owner=$(this).attr("owner");
     var repo=$(this).attr("repo");
    // $(".modal-body").html(sha);
     $("#myModal").modal("show");
     
     $(".media").each(function(){
     $(this).removeClass("activerepos");
     });
       $(this).addClass("activerepos");
     $.post("${createLink(controller:'hom',action:'successorg')}",
      {
      sha:sha,owner:owner,repo:repo
     },function(data,textStatus)
     {
            $("#iconformodal").hide();
         //   alert(data);
         
          var comm=$.parseJSON(data);
         $("#allInvividualCommitFiles").html('');
         
         for(var i=0;i<comm.files.length;i++){
        	  $("#allInvividualCommitFiles").append("<a href='javascript:void(0)' class='' >"+comm.files[i].filename+"</a>");
             }

         $("#noOfFiles").html(i+" Files Commited");
 
      });
       });

       $(document.body).on("click",".viewmorestat",function(){
        var hni=$(this).closest(".hiddentotal").show();
//        alert(hni);
//        $("#statistcistotalmodal").modal("show");
//        $("#allstatistics").html(hni);
       });
       
       //---------- Function to convert Day from Relevant Number --
       
       
       function convertday(i)
       {
            switch (i)
            {
            
            case "0":return "Sunday";
            case "1":return "Monday";
            case "2":return "Tuesday";
            case "3":return "Wednesday";break;
            case "4":return "Thursday";break;
            case "5":return "Friday";break;
            case "6":return "Saturday";break;
            default:return 0;break;
            
            }
           
            
       }
       
       $(document.body).on("click",".org_repo_branch",function(){
       var repo=$(this).attr("repo");
       var branch=$(this).attr("name");
       var org=$(this).attr("org");
       var sha=$(this).attr("sha");
        $("#branchdetails").html("");
            $.post("${createLink(controller:'hom',action:'branchdetails')}",
      {
      sha:sha,owner:org,repo:repo,branch:branch
     },function(data,textStatus)
     { 
    
        var results=$.parseJSON(data);
        var title=results.name;
        $("#titleofbranch").html("Details of Branch '"+title+"'");
        var abcd=""+
        "<div >"+
        
           
results.commit.commit.message+"<br/> on :"+results.commit.commit.committer.date+
    "<span>By : "+results.commit.commit.committer.name+"</span></div>";
        $("#branchdetails").html(abcd);
        $("#modalforbranch").modal("show");
       
       });
       
       });
       
       
       $(document.body).on("change",".editteamperm",function(){
       var perm=$(this).val();
       $("#permissionteam").val(perm);
       });
        $(document.body).on("change",".teamaddperm",function(){
       var perm=$(this).val();
       $("#permforadd").val(perm);
       });
</script>
<script class="code" type="text/javascript">
    
$(document).ready(function(){
      
///--------------------------Add Team For the Repo -----//  
$("#buttonforaddteamrepo").click(function(){
     
     
     var repo=$("#repoforaddteam").val();
     var org=$("#orgforaddteam").val();
     var team=$("#repoAddTeam").val();
     
     $.post("${createLink(controller:'hom',action:'orgrepoteamadd')}",
     {
     repo:repo,org:org,team:team
     
     },function(data,textStatus)
     {
        $("#messageforteamrepoadd").html(data);
        $("#messageforteamrepoadd").slideDown(400);
        window.setTimeout(function(){
         $("#messageforteamrepoadd").slideUp(400);
         $("#messageforteamrepoadd").html("");
        },4000);
     
     });
     
     
     
     
     });
    });
    </script>

