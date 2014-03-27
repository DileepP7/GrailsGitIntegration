<!--  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>-->
<style type="text/css">
* {
	outline: 0;
}

ul.pager li {
	display: block;
	text-align: left;
	padding-left: 20px;
	margin-bottom: 5px;
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

.orgteamlists {
	margin-top: 15px;
	margin-bottom: 25px;
}

.orgteamlists a {
	padding: 5px 10px;
	color: #333333;
	background: #e5e5e5;
	border: 1px solid #f1f1f1;
	text-decoration: none;
	transition: all 0.4s ease-in-out;
	border-radius: 5px;
}

.orgteamlists a:hover {
	background: #999999;
	color: #eeeeee;
	box-shadow: 2px 2px 2px 8px #f1f1f1;
}

.inline_repo_anchor {
	margin-top: 15px;
	margin-bottom: 25px;
}

.inline_repo_anchor a { 
}

.inline_repo_anchor a:hover { 
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
	z-index:100;
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
</style>


<div class="modal fade" id="openRepoAddDialog" tabindex="-1"
	role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">
					Create A New Repo on Github <span
						style="padding-left: 25px; font-weight: bold; color: #999"
						id="noOfFiles"></span></span>
				</h4>
			</div>

			<div id='iconforgithubcommit'
				style='display: none; float: left; margin-left: 240px;'>
				<img src="${resource(dir: 'images/', file:'loadding.gif')}"
					height="20px" />
			</div>
			<div class="modal-body">
				<div class="repoAddFormDiv" style="clear: both: width:100%">

					<div class="alert alert-success" style="display: none;"
						id="repoAddSuccess">Successfully Create A Repo</div>
					<input type="text" id="repoName" name="name" placeholder="name" />
					<br /> <input type="text" id="repoDescription" name="description"
						placeholder="description" />
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" required="required" id="createRepo"
					class="btn btn-primary">Create Repo</button>
				<button type="button" required="required" class="btn btn-primary"
					id="notconnect" data-dismiss="modal">Cancel</button>

			</div>
		</div>
	</div>
</div>











<!--[[ Modal For Coonect to Github Starts ]]-->
<div class="modal fade" id="connectModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true" style="background-color: activeborder;">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header" style="background-color: green;">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel" style="padding-left: 200px;font-weight: bolder;">
					Connect to Github <span
						style="padding-left: 25px; font-weight: bold; color: #999;"
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
					
					<oauth:connect provider="github" class="btn btn-primary">Connect to GitHub</oauth:connect>
				<button type="button" class="btn btn-primary" id="notconnect"
					data-dismiss="modal">Cancel</button>

			</div>
		</div>
	</div>
</div>
<!--[[ Modal For Delete Confirmation ]]-->


<!--[[ Modal For Coonect to Github Starts ]]-->
<div class="modal fade" id="deleteConfirm" tabindex="-1" role="dialog"
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
			<div class="modal-body">You Are Deleting The Collaborator. Are
				You Sure?</div>
			<div class="modal-footer">
				<button type="button" id="okconnect" class="btn btn-primary"
					onClick="">OK</button>
				<button type="button" class="btn btn-primary" id="notconnect"
					data-dismiss="modal">Cancel</button>

			</div>
		</div>
	</div>
</div>
<!--[[ Modal For Delete Confirmation ]]-->













<!-- [[ Modal Popup for Commit Starts ]] -->




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





















<div class="main_container" style="padding-top: 10px;">
	<div class="panel panel-default">
		<div class="panel-body">






			All Repositories <br>
			<button type="button" id="generateAlert"
				class="btn btn-warning dropdown-toggle" data-toggle="dropdown" style='display:none;'>
				Get All Repos</button>

			<button type="button" id="addRepo"
				class="btn btn-warning dropdown-toggle" data-toggle="dropdown">
				Add Repository</button>


















			<div id="loader"
				style="display: none; float: right; margin-right: 400px;">
				<img src="${resource(dir: 'images/', file:'loadding.gif')}"
					height="20px" />
			</div>
			<!--<button class="btn btn-primary"
//				style="cursor: pointer; float: right; margin-right: 100px;"
//				onclick="window.location.href='${createLink(controller:"hom", action:"organization")}'">Go
//				To Organization</button> -->


			<!--            <div class="inline_repo_anchor" style="display:none">
   


 </div>-->








			<div class="inline_repo_anchor" style="display: none">
				<div id="ca-container" class="ca-container">

					<div class="ca-nav">
						<span class="ca-nav-prev">Previous</span> <span
							class="ca-nav-next">Next</span>
					</div>
					<div class="ca-wrapper"></div>
					<!--					<div class="ca-item">
                                                        <div class="ca-item-main">
                                                                iohi
                                                        </div>
                                                        
                                                </div>-->


				</div>

			</div>












			<!--<ul class="nav navbar-nav">

<li class="dropdown">

<a href="#" class="dropdown-toggle" data-toggle="dropdown">

    <img src="${resource(dir:'images/',file:'loading.gif')}" />    
  Dropdown <b class="caret"></b></a>
<ul class="dropdown-menu">
<li><a href="#">Remove</a></li>



</ul>
</li>
</ul>-->



			<!-- Nav tabs -->

			<ul class="nav nav-tabs" id="repo_menu_tab" style="display: none;">
				<li class="active"><a href="#home" data-toggle="tab">Collaborators</a></li>
				<li><a href="#profile" data-toggle="tab">Commits</a></li>
				<li><a href="#messages" data-toggle="tab">Branches</a></li>
				<li><a href="#settings" data-toggle="tab">Contents</a></li>
				<li><a href="#setups" data-toggle="tab">Settings</a></li>
			</ul>

			<!-- Tab panes -->
			<div class="tab-content">
				<div class="tab-pane fade in  active" id="home">
					<div class="collaborators"></div>

				</div>
				<div class="tab-pane fade" id="profile">
					<div class="allcommits"></div>

				</div>
				<div class="tab-pane fade" id="messages">Branches Here</div>
				<div class="tab-pane fade" id="settings">Contents Here</div>
				<div class="tab-pane fade" id="setups">
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
									<div class="alert alert-success" style="display: none;"
										id="repoEditSuccess">Successfully Deleted The Repo!!</div>
									<table>
										<tr>
											<td>Repo Name:</td>
											<td><input type="text" name="repo" id="new_repo_name" /></td>
										</tr>
										<tr>
											<td>Description:</td>
											<td><input type="text" name="repo" id="repo_description" /></td>
										</tr>
										<tr>
											<td><input class="btn btn-primary" type="button"
												id="repoEdit" value="Edit" /></td>

										</tr>
									</table>


									<div id='repo_edit_loader'
										style='display: none; float: left; margin-left: 240px; position: relative; top: -28px; left: -150px;'>
										<img src="${resource(dir: 'images/', file:'loadding.gif')}"
											height="20px" />
									</div>





								</div>
							</div>
						</div>
						<div id="temp" style="display: none;"></div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseTwo"> <span
										class="glyphicon glyphicon-plus"></span> Add Collaborator
									</a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse">
								<div class="panel-body">
									<div id='user_search'
										style='display: none; float: right; margin-left: 240px; right: -300px'>
										<img src="${resource(dir: 'images/', file:'loadding.gif')}"
											height="20px" />
									</div>
									<form id="form" action="#">
										<div id="suggessionContainer">
											<input type="text" size="25" value="" id="colab_user"
												onkeyup="suggest(this.value);" onblur="fill();" class="" />
											<input class="btn btn-primary" id="collab_add" type="button"
												value="ADD" />
											</td>

											<div class="suggestionsBox" id="suggestions"
												style="display: none;">
												<div class="suggestionList" id="suggestionsList">
													&nbsp;</div>
											</div>
										</div>

									</form>
									<form>



										<%--                                    <table>--%>
										<%--                                        <tr>--%>
										<%----%>
										<%--                                            <td><input type="text"  name="repo" id="colab_user" onkeyup="suggest(this.value);" onblur="fill();"  data-provider="typeahead"/></td>--%>
										<%--                                            <td><input class="btn btn-primary" id="collab_add" type="button" value="ADD"/></td>--%>
										<%--                                        </tr>--%><%--                                    </table>--%>


                                    <div class="alert alert-success" style="display: none;" id="collabAddSuccess">Successfully Deleted The Repo!!</div>
                                    <div id='collab_add_loader' style='display:none;float:left;margin-left:240px;position:relative; top:-28px; left:13px;'>
                                        <img src="${resource(dir: 'images/', file:'loadding.gif')}" height="20px" /> 
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                                        <span class="glyphicon glyphicon-trash"></span>  Delete Repository
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse">
                                <div class="panel-body">

                                    <div class="alert alert-danger fade in">
                             <%--      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>--%>
                                        <h4>Are You Sure?? Want to delete this repo?</h4>
                                        <p>Deleting a repo can't be undone. You will lose all of your content in this repository.</p>
                                        <p>
                                            <button type="button" rel='tooltip' id="repo_delete" data-toggle="tooltip" data-placement="top" class="btn btn-danger" title="Delete This Repo">Delete</button>
                                    <%--        <button type="button" rel='tooltip' class="btn btn-default">Dont Delete</button>--%>

                                        </p>
                                        <div class="alert alert-success" style="display: none;" id="repoDeleteSuccess">Successfully Deleted The Repo!!</div>
                                        <div id='repo_delete_loader' style='display:none;float:left;margin-left:240px;position:relative; top:-28px; left:-150px;'>
                                            <img src="${resource(dir: 'images/', file:'loadding.gif')}" height="20px" /> 
                                        </div>
                                    </div>



                                </div>
                            </div>
                        </div>
                    </div>



<!-- ------------------------------------------ repos settings ends here------------------------------------ -->
                </div>

            </div>












        </div>

    </div>
</div>
</div>



<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.9.1.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>



<script type="text/javascript">

    var currentRepo;

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
    $.ajaxSetup({
    cache:false
    });

    $("[rel='tooltip']").tooltip();


    checkgitconnection();

startingallrepos();
  //  $("#generateAlert").click(function(){
  function startingallrepos()
  {
   // currentRepo=$(this);
    var flag=checkgitconnection();
    if(flag==1)
    {
    $(this).attr("disabled","disabled");
    $("#loader").show();
    $.ajax({
    method:"GET",
    dataType: "json",
                             url: "https://api.github.com/user/repos?access_token=${session.getAttribute('access_token')}",

    success:render 


    });




    //$(".inline_repo_anchor").contentcarousel();  
    $(".inline_repo_anchor").slideDown(300);   
    }
    }
   // });
    function render(data){
    $("#loader").hide();
    $.each(data,function(i,item){
                           $(".ca-wrapper").append("<div class='ca-item'>"+
						"<div class='ca-item-main'><div href='javascript:void(0)' style='cursor:pointer;width:175px;' class='itemname' value='"+item.name+"'>"+item.name+"</div></div></div>");

                   /*   $(".ca-wrapper").append("<div class='ca-item-main'>"+
						    "<button type='button' class='btn btn-default dropdown-toggle' data-toggle='dropdown'>"+
    item.name+
						      "<span class='caret'></span>"+
						    "</button>"+
						    "<ul class='dropdown-menu' style='margin:0px;padding:0px;display:inline;'>"+
						      "+<li><a href='#'>Edit</a></li>"+
						      "+<li><a href='#'>Delete</a></li>"+
						    "</ul>"+
						  "</div>");
    */




    // alert(item.name);
    });



    $('#ca-container').contentcarousel();

    }




    });

    $(document.body).on('click', '.itemname' ,function(){

    var itemname=$(this).attr('value');
    var $this=$(this);
    $(".ca-item-main").each(function(item)
    {
    $(this).removeClass("ca-item-active");

    });

    $(this).closest(".ca-item-main").addClass("ca-item-active");


    $("#loader").show();
    $(".collaborators").html("");
    $("#repo_menu_tab").hide();

    $.post("${createLink(controller:'hom',action:'ajaxrequest')}",
    {repo:itemname},function(data,textStatus){

    var col=$.parseJSON(data.collab);
    $("#loader").hide();
    $("#repo_menu_tab").show();
    $(".collaborators").html("");
    $(".allcommits").html("");
    $("#repo_delete").attr('repo_name',itemname);

    $.each(col,function(i,collabs){
                  //  $(".collaborators").append("<p><img src='"+collabs.avatar_url+"' height='50px' width='50px' /><br/>"+collabs.login+"</p><div style='clear:both;'></div>");

                    $(".collaborators").append("<ul class='nav navbar-nav'>"+

        "<li class='dropdown' style='background:#e5e5e5;'>"+

          "<a href='javascript:void(0)' class='dropdown-toggle' data-toggle='dropdown'>"+

                "<img src='"+collabs.avatar_url+"' height='40px' width='40px' />  "+    
              collabs.login+" <b class='caret'></b></a>"+
          "<ul class='dropdown-menu'>"+
            "<li><a href='javascript:void(0)'  id='collaborator_delete' org='false' collab='"+collabs.login+"' owner='"+itemname+"'>Remove</a></li>"+



          "</ul>"+
        "</li>"+
      "</ul>");




    });


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

        $(".allcommits").append("<div class='media' sha='"+sha+"' owner='"+come.commit.author.name+"' repo='"+itemname+"'>"+
  "<a class='pull-left' href='#'>"+
    img+
  "</a>"+
  "<div class='media-body'>"+
    "<h4 class='media-heading'>"+come.commit.committer.name+"</h4>"+
   come.commit.message+"<br/><span style='font-style:italic;color:#999;font-size:10px;'>"+come.commit.committer.date+"</span>"+
  "</div>"+
"</div>");





    });


    });

    });

    //collaborate delete ....................................................................................................


    $(document.body).on('click','#createRepo',function(){

    var name=$("#repoName").val();
   
    var description=$("#repoDescription").val();
   
      if(name=="")
         {
            $("#repoName").css("border-color","red");
         }
         if(name!="")
         {
         $("#repoName").css("border-color","");
          $("#iconforgithubcommit").show();
        $.post("${createLink(controller:'hom',action:'addRepo')}",
    {
    name:name,description:description
    },function(data,textStatus)
    {
    $("#iconforgithubcommit").hide();

    $("#repoAddSuccess").html(data).slideDown(400);
    var name=$("#repoName").val('');

    var description=$("#repoDescription").val('');
    window.setTimeout(function(){
    $("#repoAddSuccess").html(data).slideUp(400);
    },4000);



    });
    }



    });


    $(document.body).on('click','#repo_delete',function(){

    var name=$(this).attr('repo_name');
    $("#repo_delete_loader").show();
           $.post("${createLink(controller:'hom',action:'deleteRepo')}",
    {
    name:name
    },function(data,textStatus)
    {
    $("#repo_delete_loader").hide();
    $("#repoDeleteSuccess").html(data).slideDown(400);


    });

    setTimeout(function(){ window.location.href='/test/hom/index'},3000);

    });


    //----------------------------------- Collabortor add --------------------------------------------------------------------
    
    
    
    function suggest(inputString){
    
         $('#suggestionsList div').empty();   
         $('#temp').empty();
        $("#user_search").show();
    	if(inputString.length == 0) {
			$('#suggestions').fadeOut();
			 $("#user_search").hide();
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
			        if(mine.total_count>12){ count=12}
			        else count=mine.total_count;
			        for(var i=0; i<count; i++)
				    {

			        	$('#temp').append("<li onclick=\"fill('"+mine.items[i].login+"')\" ><img src='"+mine.items[i].avatar_url+"' height='30' width='30'/><span style=padding-left:5px;''>"+mine.items[i].login+"</span></li>");
					  
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
					
                                        
				}
		    else
			{
		    	$('#suggestions').fadeIn();
				$('#suggestionsList').html("<ul><li>No Suggesstions</li></ul>");
				//$('#country').removeClass('load');
			}
				
				
				 $("#user_search").hide();
                
                },
                error: function() {

                    return false;
                }
            });
		  	
		  	
		  	
		  	
		  	
		  	
		  	
		  	
		  	
		  	
		  	
		  	
		  	
		  	
		  	
		  	
		  	
		  	
		/*	$.post("${createLink(controller:'hom',action:'userSearch')}", 
			{queryString: ""+inputString+""}, function(data){
		
			
			 var mine=$.parseJSON(data);
			//alert(mine.total_count);
		    if(mine.total_count >0) {
			   
		    	
			        var count;
			        var string;
			        if(mine.total_count>20){ count=20 }
			        else count=mine.total_count;
			        for(var i=0; i<count; i++)
				    {

			        	$('#temp').append("<li onclick=\"fill('"+mine.items[i].login+"')\" >"+mine.items[i].login+"</li>");
					  
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
					
                                        
				}
		    else
			{
		    	$('#suggestions').fadeIn();
				$('#suggestionsList').html("<ul><li>No Suggesstions</li></ul>");
				//$('#country').removeClass('load');
			}
				
				
				 $("#user_search").hide();
			});
			*/
			
		}
          
               
	}

	function fill(thisValue) {
	  $("#colab_user").val(thisValue);
	  	$('#suggestions').fadeOut('slow');
        
              
	}
       
    
    
    
    
    
    
    
    $(document.body).on('click','#collab_add',function(){
                                       var currentRepo=$(this);
				    var name=$("#repo_delete").attr('repo_name');
				    var user=$('#colab_user').val();

				    if(user=="")
                                    {
                                        $('#colab_user').css("border-color","red");
                                    }
                                    else{
                                    $('#colab_user').css("border-color","");
                    $("#collab_add_loader").show();
				           $.post("${createLink(controller:'hom',action:'addCollab')}",
						    {
						    		name:name,user:user
						    },function(data,textStatus)
						    {
								    $("#collab_add_loader").hide();
								    $("#collabAddSuccess").html(data).slideDown(400);
								window.setTimeout(function(){
                                                                 $("#collabAddSuccess").html(data).slideUp(400);
                                                                },3000);
								
						    });
						    currentRepo.trigger("click");
                                                    
                                                    }
				
				    // setTimeout(function(){ window.location.href='/test/hom/index'},3000);


    });

    // ---------------------------------------------------------------------------------------------- Collaborator add ends here ------------


    $(document.body).on('click','#collaborator_delete',function(){

    //$(this).closest('.dropdown').css('backgroud-color','red')

    var current=$(this);

    BootstrapDialog.confirm('Do You Want To Delete?', function(result){
    if(result) {

    current.closest('.dropdown').slideUp(300);

    var org=current.attr('org');
    var collab=current.attr('collab');
    var owner=current.attr('owner')

             $.post("${createLink(controller:'hom',action:'removeCollab')}",
    {
    org:org,owner:owner,collab:collab
    },function(data,textStatus)
    {

    });

    }else {

    }
    });

    });



    //editing a repository-----------------------------------------------------------------------------------------
    $(document.body).on('click','#repoEdit',function(){

         var new_name=$("#new_repo_name").val();
         var repo_name=$("#repo_delete").attr('repo_name');
         var description=$("#repo_description").val();
         
         if(new_name=="")
         {
            $("#new_repo_name").css("border-color","red");
         }
         else
         {
          $("#new_repo_name").css("border-color","");
         $("#repo_edit_loader").show();
         $.post("${createLink(controller:'hom',action:'editRepo')}",
        		    {
        		    name:repo_name,new_name:new_name,description:description,isprivate:false
        		    },function(data,textStatus)
        		    {
        		    	$("#repo_edit_loader").hide();
        		        $("#repoEditSuccess").html(data).slideDown(400);
        		   
        		    });
        		      setTimeout(function(){ window.location.href='/test/hom/index'},3000);
             }                 
         
    });

    //editing a repository-----------------------------------------------------------------------------------------

    
    //collaborate delete ....................................................................................................
    //repo add--------------------------
    $(document.body).on('click','#addRepo',function(){

    $("#openRepoAddDialog").modal("show");
    });

    $(document.body).on('click', '.media' ,function(){
    var sha=$(this).attr("sha");
    var owner=$(this).attr("owner");
    var repo=$(this).attr("repo");

    $("#myModal").modal("show");

    $(".media").each(function(){
    $(this).removeClass("activerepos");
    });
    $(this).addClass("activerepos");
     $.post("${createLink(controller:'hom',action:'success')}",
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

</script>

<script>
    $(document).ready(function(){
    // $('#ca-container').contentcarousel();
    });
</script>



<script>
    //       function achorify() {
    //        $("#plugintest").html("Hello World");
    //    }


</script>


