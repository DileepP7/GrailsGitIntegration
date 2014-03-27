<html>
<head>
<link type="text/css" href="${resource(dir: 'css', file: 'hom.css')}" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
</head>
<body>
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
    

    checkgitconnection();
    getstatistics();
 
    //----------------------------------- GETTING ALL ORGANIZATION-----------------------------------------------------------
  //  $("#listorgs").click(function(){


  });

//------------------------------------ GETTING ORGANIZATION REPOS------------------------------------------------------


function getstatistics()
{
	var commitArray=[];
    var commiterArray=[];

    var itemname="${repo}";
    var org="${org}";
    console.log("Itemname:"+itemname+" and org:"+org)
    var $this=$(this);
   $("#repo_menu_tab").hide();
   
   
   




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


$(".orgteamlists").html('');
 $(".dhekka").hide();

$.post("${createLink(controller:'hom',action:'orgrepodetails')}",
{repo:itemname,org:org},function(data,textStatus){

//
//var team=$.parseJSON(data.teams);
//$.each(team,function(i,teams){
//
// $(".orgteamlists").append("<ul class='nav navbar-nav'>"+
//
//    "<li class='dropdown' style='background:#e5e5e5;'>"+
//
//      "<a href='#' class='dropdown-toggle' data-toggle='dropdown'>"+
//
//           
//          teams.name+" <b class='caret'></b></a>"+
//      "<ul class='dropdown-menu'>"+
//        "<li><a href='#'>Remove</a></li>"+
//
//
//
//      "</ul>"+
//    "</li>"+
//  "</ul>");
//
//});





var col=$.parseJSON(data.collab);




$("#loader").hide();
$(".orgrepocollablists").html("");


$(".orgcommitlists").html("");

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
 
    

var comm=$.parseJSON(data.commits);
// var comm=data.commits;
var org=data.org;
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
     
     var plot1;
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
      
      
      
      
      },1000);
      
     
      
     
     
              
    
     
    
     
    });
    
    <!-- for display the weekly addition and deletion  ----------------------------------------------------->
     $("#noofadditiondeletionperweek").html("");
      $.post("${createLink(controller:'hom',action:'weeklyaddanddelete')}",
{repo:itemname,owner:org},function(data,textStatus){

var reports=$.parseJSON(data);
var additions=new Array();
var subraction=new Array();
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
           var add=[week,add];
           var sub=[week,del];
           additions.push(add);
           subraction.push(sub);
           
           rel+="<tr><td>"+week+"</td><td>"+add+"</td><td>"+del+"</td></tr>";

            
        });
        rel+="</table>";
        $("#noofadditiondeletionperweek").html(rel);
        
        <!--- For Pie chart of Addition -->
     window.setTimeout(function(){   
       
  var plot1 = jQuery.jqplot ('chartforadd', [additions],
    {
      seriesDefaults: {
        // Make this a pie chart.
        renderer: jQuery.jqplot.PieRenderer,
        rendererOptions: {
          // Put data labels on the pie slices.
          // By default, labels show the percentage of the slice.
          showDataLabels: true
        }
      },
      legend: { show:true, location: 'e' }
    }
  );
    },1000); 

    
      <!--- For Pie chart of Deletion -->
     window.setTimeout(function(){   
       
  var plot1 = jQuery.jqplot ('chartforsub', [subraction],
    {
      seriesDefaults: {
        // Make this a pie chart.
        renderer: jQuery.jqplot.PieRenderer,
        rendererOptions: {
          // Put data labels on the pie slices.
          // By default, labels show the percentage of the slice.
          showDataLabels: true
        }
      },
      legend: { show:true, location: 'e' }
    }
  );
    },1000); 
        
        
        
        
        
        

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

var total=new Array();

var oldday="";
var commit=0;
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
               console.log(commit);
               var abc=[oldday,commit];
               total.push(abc);
            }
            commit=0;
            rr+="<tr><td style='font-weight:bold;'>"+day+"</td>";
     }
    rr+="<td>"+com+"</td>";
    var come=parseInt(com);
    commit=commit+come;
    
//    
    oldday=newday;

});
rr+="</table>";
var abc=[oldday,commit];
   total.push(abc);

console.log("Total="+total);
  <!--- For Pie chart of Daywise -->
     window.setTimeout(function(){   
       
  var plot1 = jQuery.jqplot ('daywisecommit', [total],
    {
      seriesDefaults: {
        // Make this a pie chart.
        renderer: jQuery.jqplot.PieRenderer,
        rendererOptions: {
          // Put data labels on the pie slices.
          // By default, labels show the percentage of the slice.
          showDataLabels: true
        }
      },
      legend: { show:true, location: 'e' }
    }
  );
    },1000); 
$("#numberofcommitperhour").html(rr);
});
    
    //----------------------------------------For Repository Branch 
    
    $("#orgrepocontents").html("");
     $.post("${createLink(controller:'hom',action:'branches')}",{
    repo:itemname,owner:org
    },function(data,textStatus)
    {
            var results=$.parseJSON(data);
            var htm="";
             $.each(results,function(i,re){
             var name=re.name;
             var sha=re.commit.sha;
             $("#orgrepocontents").append("<div class='ca-item'>"+
        "<div class='ca-item-main'><div style='cursor:pointer;width:175px;' href='javascript:void(0)' class='org_repo_branch' org='"+org+"' repo='"+itemname+"' sha='"+sha+"' name='"+name+"'>"+name+"</div></div></div>");

             });
            
    
    });
    
    
    
    <!-- For Display the Statistics Ends-->
    

$("#org_repo_menu_tab").slideDown();
$(".dhekka").slideDown();




}
 
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
    
    
 
</script>





	<!-- ----------------------------------------------------------Main Container Starts Here--------------------- ----------------------->


	<div class="main_container" style="padding-top: 10px;">
		<div class="panel panel-default">
			<div class="panel-body">


				<div id="loader"
					style="display: none; float: right; margin-right: 400px;">
					<img src="${resource(dir: 'images/', file:'loadding.gif')}"
						height="20px" />
				</div>
				<nav class="navbar navbar-inverse" role="navigation">
					<div class="container-fluid">

						<div class="navbar-header" style="padding-left: 500px;">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span> <span class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#">All Statistics</a>
						</div>
					</div>
				</nav>


				<!-- Contribiutorwise Commit,Delete and Add  -->
				<nav class="navbar navbar-default" role="navigation">
					<div class="container-fluid">

						<div class="navbar-header" style="padding-left: 500px;">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span> <span class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#">Contributor-wise no. of
								Commits</a>
						</div>
					</div>
				</nav>
				<div id='chart1'
					style='margin-top: 20px; margin-left: 20px; width: 100%; height: 300px;'></div>

				<!--Weekly Number of Addition and Deletion -->


				<nav class="navbar navbar-default" role="navigation">
					<div class="container-fluid">

						<div class="navbar-header" style="padding-left: 500px;">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span> <span class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#">Weekly Addition and Deletion</a>
						</div>
					</div>
				</nav>
				<div id='chart2'
					style='margin-top: 20px; margin-left: 20px; width: 100%; height: 320px;'>

					<ul class="nav nav-pills nav-stacked">
						<li class="active" style="float: left; margin-left: 60px;"><a
							href="#"> Total Additions Per Week </a></li>

						<li class="active" style="float: right; margin-right: 150px;">
							<a href="#"> Total Deletions Per Week </a>
						</li>

					</ul>




					<div id='chartforadd'
						style='margin-top: 20px; margin-left: 5px; float: left; width: 45%; height: 300px;'></div>

					<div id='chartforsub'
						style='margin-top: 20px; margin-left: 5px; width: 45%; float: right; margin-right: 5px; height: 300px;'></div>

				</div>
			</div>
			<!--Commits of Daywise -->


			<nav class="navbar navbar-default" role="navigation">
				<div class="container-fluid">

					<div class="navbar-header" style="padding-left: 500px;">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span> <span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">Daywise Commit</a>
					</div>
				</div>
			</nav>

			<div id='daywisecommit'
				style='margin-top: 20px; margin-left: 20px; width: 100%; height: 300px;'></div>

		</div>
	</div>
</body>
</html>

