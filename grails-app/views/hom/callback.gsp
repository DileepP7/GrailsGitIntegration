 <form method="post" enctype="application/json" action="https://github.com/login/oauth/access_token">
 
 <input type="text" id="code" value="" name="code"/>
 <input type="text" value="b7e55396d2959448544f" name="client_id"/>
 <input type="text" value="28d5bfbb55314d6e2815ac5e1ee370567b7c8445" name="client_secret"/>
 <input type="text" value="http://localhost:8080/test/hom" name="redirect_uri"/>
 <input type="submit"  name="submit"/>
 </form>
 //clientid:6d54f210bf7ca9f9cc55" clientsecret:"efe7b83b978f9fd7023d1866b2452e515aea865e"
 <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.9.1.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

//clientidold=a3d709d5a7ec544e4908"       42e51296f11550cd416d"
//client secretold=293625174412511fbdc59025993417c53696ebd5"   ba9814fd4f4c6c8b965e8b99741fba8ae4948735"
<script type="text/javascript">
 $(document).ready(function(){


	 var qs = (function(a) {
		    if (a == "") return {};
		    var b = {};
		    for (var i = 0; i < a.length; ++i)
		    {
		        var p=a[i].split('=');
		        if (p.length != 2) continue;
		        b[p[0]] = decodeURIComponent(p[1].replace(/\+/g, " "));
		    }
		    return b;
		})(window.location.search.substr(1).split('&'));

		var code=qs['code'];
		$("#code").val(code);
		console.log(code);
		
      //  alert(code);
<%--		$.ajax({--%>
<%--			type: "POST",--%>
<%--			url: "https://github.com/login/oauth/access_token",--%>
<%--		//	dataType: "json",--%>
<%--			data: {client_id:"6d54f210bf7ca9f9cc55", client_secret:"efe7b83b978f9fd7023d1866b2452e515aea865e",code:code,redirect_uri:"http://localhost:8080/test/hom/index/"},--%>
<%--			// contentType: 'application/json',--%>
<%--			success: man			--%>
<%--			});--%>
<%--         console.log("After Ajax");--%>
<%--	////	alert("machnet");--%>
<%----%>
<%--		function man(data){--%>
<%--			alert(data);--%>
<%--			}--%>

	
     
});
</script>