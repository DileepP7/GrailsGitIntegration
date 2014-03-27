package test

import java.lang.ref.ReferenceQueue.Null;


//import grails.plugin.springsecurity.annotation.Secured;



import org.codehaus.groovy.grails.web.json.JSONObject
import org.codehaus.groovy.grails.web.servlet.HttpHeaders

import org.lftech.User
import org.springframework.http.HttpEntity
import org.springframework.http.MediaType
import org.springframework.http.HttpMethod
import org.springframework.web.client.RestTemplate
class HomController {


	def springSecurityService
	transient passwordEncoder
	////@Secured(['ROLE_ADMIN'])
	def index() {

		session.setAttribute("token_status", "none");



	}
	def organization()
	{

	}
	def homepage(){}
	def nextpage(){

	}
	

	//@Secured(['ROLE_ADMIN'])
	def success(){
		def sha=params.sha;
		def repo=params.repo;
		def owner=params.owner;
		//
		//
		RestTemplate rest = new RestTemplate()
		def user=session.getAttribute("git_name");
		def token=session.getAttribute("access_token");

		def commitdetail= rest.getForObject("https://api.github.com/repos/"+user+"/"+repo+"/commits/"+sha+"?access_token="+token, String.class);
		def string="https://api.github.com/repos/"+user+"/"+repo+"/commits/"+sha+"?access_token="+token;



		render(commitdetail);

	}

//.......................................ORGANIZATION SUCCESS........................................//
	def successorg(){
		def sha=params.sha;
		def repo=params.repo;
		def owner=params.owner;
		//
		//
		RestTemplate rest = new RestTemplate()
		//  def user=session.getAttribute("git_name");
		def token=session.getAttribute("access_token");

		def commitdetail= rest.getForObject("https://api.github.com/repos/"+owner+"/"+repo+"/commits/"+sha+"?access_token="+token, String.class);
		// def string="https://api.github.com/repos/"+user+"/"+repo+"/commits/"+sha+"?access_token="+token;



		render(commitdetail);

	}
	//@Secured(['ROLE_ADMIN'])
	def failure(){
		render "failure"
	}
	
	
	//.............................................CALLBACK CODE HERE................................//
	//@Secured(['ROLE_ADMIN'])
	def callback(){
		//RestTemplate rest = new RestTemplate()
		//render rest.getForObject("https://api.github.com/users/DileepPaudel/repos", String.class)
		def code=params.code
		RestTemplate rest=new RestTemplate();





		def client_id="b7e55396d2959448544f";
		//"42e51296f11550cd416d";
		def client_secret="28d5bfbb55314d6e2815ac5e1ee370567b7c8445";
		//"ba9814fd4f4c6c8b965e8b99741fba8ae4948735";


		String result = rest.postForObject("https://github.com/login/oauth/access_token?client_id="+client_id+"&client_secret="+client_secret+"&code="+code,null, String.class)

		def mine=result.substring(13, 53)
		session.setAttribute("access_token", mine);
		session.setAttribute("token_status", "exixts");
		def access_tok=session.getAttribute("access_token");

		def gitUserInstance= rest.getForObject("https://api.github.com/user?access_token="+access_tok, String.class)
		//render(gitUserInstance);
		JSONObject jObject  = new JSONObject(gitUserInstance); // json
		//JSONObject data = jObject.getJSONObject("data"); // get data object
		def name=jObject.getString("login");
		def avatarName = jObject.getString("avatar_url"); // get the name from data.
		session.setAttribute("git_name",name);
		session.setAttribute("git_avatar",avatarName);
		redirect([action:'organization'])
}

	//@Secured(['ROLE_ADMIN'])
	def ajaxrequest(){
		def repos=params.repo;
		// def org=params.org;
		JSONObject resp=new JSONObject();

		RestTemplate rest = new RestTemplate()
		def user=session.getAttribute("git_name");
		def token=session.getAttribute("access_token");
		try{

			def collab= rest.getForObject("https://api.github.com/repos/"+user+"/"+repos+"/collaborators?access_token="+token, String.class);

			resp.collab=collab;
		}
		catch(Exception e){
			resp.collab="No Contributors or Cannot Be Fetched";
		}
		try{
			def commits=rest.getForObject("https://api.github.com/repos/"+user+"/"+repos+"/commits?access_token="+token, String.class);
			resp.commits=commits;
		}
		catch(Exception e){
			resp.commits="No Commits or Cannot Be Fetched";
		}
		render(resp);
	}

	
	//............................................LIST THE DETAILS OF THE ORGANIZATION....................//
	def listorgdetails()
	{
		def org=params.org;
		def token=session.getAttribute("access_token");
		JSONObject resp=new JSONObject();

		RestTemplate rest = new RestTemplate();

		try{

			def member= rest.getForObject("https://api.github.com/orgs/"+org+"/members?access_token="+token, String.class);

			resp.member=member;
		}
		catch(Exception e){
			resp.member="No Member or Cannot Be Fetched";
		}
		try{
			def team=rest.getForObject("https://api.github.com/orgs/"+org+"/teams?access_token="+token, String.class);
			resp.team=team;
		}
		catch(Exception e){
			resp.team="No Team or Cannot Be Fetched";
		}

		try{
			def repo=rest.getForObject("https://api.github.com/orgs/"+org+"/repos?access_token="+token, String.class);
			resp.repo=repo;
		}
		catch(Exception e){
			resp.repo="No Repository or Cannot Be Fetched";
		}

		render(resp);
	}

	
	
	def listOrgDetailsSearch(){

		def org=params.org;
		def token=session.getAttribute("access_token");
		JSONObject resp=new JSONObject();

		RestTemplate rest = new RestTemplate();
		try{
			def repo=rest.getForObject("https://api.github.com/orgs/"+org+"/repos?access_token="+token, String.class);
			resp.repo=repo;
		}
		catch(Exception e){
			resp.repo="No Repository or Cannot Be Fetched";
		}
		render(resp);



	}

//....................................DETAILS OF ORGANIZATION REPOSITORY.............................//
	def orgrepodetails(){
		def repos=params.repo;
		def org=params.org;
		JSONObject resp=new JSONObject();

		RestTemplate rest = new RestTemplate()
		def user=session.getAttribute("git_name");
		def token=session.getAttribute("access_token");

		try{

			//GET /repos/:owner/:repo/teams
			def teams= rest.getForObject("https://api.github.com/repos/"+org+"/"+repos+"/teams?access_token="+token, String.class);
			resp.teams=teams

		}
		catch(Exception e)
		{
			resp.teams="No teams"
		}


		try{

			def collab= rest.getForObject("https://api.github.com/repos/"+org+"/"+repos+"/collaborators?access_token="+token, String.class);

			resp.collab=collab;
		}
		catch(Exception e){
			resp.collab="No Contributors or Cannot Be Fetched";
		}
		try{
			def commits=rest.getForObject("https://api.github.com/repos/"+org+"/"+repos+"/commits?access_token="+token, String.class);
			resp.commits=commits;
		}
		catch(Exception e){
			resp.commits="No Commits or Cannot Be Fetched";
		}

		try{
			def pulls=rest.getForObject("https://api.github.com/repos/"+org+"/"+repos+"/pulls?access_token="+token, String.class);
			resp.pulls=pulls;
		}
		catch(Exception e){
			resp.pulls="No Pull Request";
		}
		resp.org=org;
		render(resp);
	}

	
	//............................USER ACCOUNT COLLABORATOR REMOVE............................................//
	def removeCollab(){
		def org=params.org
		def repo=params.owner
		def collab=params.collab;


		def owner=session.getAttribute("git_name")
		def token=session.getAttribute("access_token");
		RestTemplate rest = new RestTemplate()
		def resp= rest.delete("https://api.github.com/repos/"+owner+"/"+repo+"/collaborators/"+collab+"?access_token="+token, String.class);
		if(resp==null)
			render("success");
		else
			render('failure');
	}
	
	
	//...............................................ADD USER REPOSITORY.....................................//
	def addRepo(){
		def name=params.name
		def description=params.description
		def owner=session.getAttribute("git_name")
		def token=session.getAttribute("access_token");
		RestTemplate rest = new RestTemplate()



		String test="{"+"\"name\":\""+name+"\",\"description\":\""+description+"\"}";


		try{
			String result = rest.postForObject("https://api.github.com/user/repos?access_token="+token,test, String.class)
		}
		catch(Exception e){
			render("error")
		}
		render("Successfully Create A Repo!")
	}

	
	
	//........................................DELETE USER'S REPOSITORY.............................................//
	def deleteRepo(){

		def repo_name=params.name
		def owner=session.getAttribute("git_name")
		def token=session.getAttribute("access_token");
		RestTemplate rest = new RestTemplate()
		//  String test="{"+"\"name\":\""+name+"\",\"description\":\""+description+"\"}";
		try{
			String result = rest.delete("https://api.github.com/repos/"+owner+"/"+repo_name+"?access_token="+token,String.class)
		}
		catch(Exception e){
			render(result)
		}
		render("Successfully Deleted The Repo "+repo_name)
	}
	
	//........................................ADD COLLABORATOR TO USER ACCOUNT..............................................//
	def addCollab(){
		def repo_name=params.name
		def user=params.user
		def owner=session.getAttribute("git_name")
		def token=session.getAttribute("access_token");
		RestTemplate rest = new RestTemplate()

		try{
			String result = rest.put("https://api.github.com/repos/"+owner+"/"+repo_name+"/collaborators/"+user+"?access_token="+token,null,String.class)
		}
		catch(Exception e){
			render(result)
		}
		render("Successfully Added The User: "+user)
	}
	
	//.........................................EDIT THE USER'S REPOSITORY................................//
	//    PATCH /repos/:owner/:repo
	def editRepo(){
		def repo_name=params.name
		def new_name=params.new_name
		def description=params.description
		def isprivate=params.isprivate
		def owner=session.getAttribute("git_name")
		def token=session.getAttribute("access_token");
		RestTemplate rest = new RestTemplate()

		String test="{"+"\"name\":\""+new_name+"\",\"description\":\""+description+"\",\"private\":\""+false+"\"}";
		
		try{
			String result = rest.postForObject("https://api.github.com/repos/"+owner+"/"+repo_name+"?access_token="+token,test, String.class)
		}
		catch(Exception e){
			render(result)
		}
		render("Successfully Created A Repo:"+new_name)


	}

	
	//........................................SEARCH THE USERS.................................//
	def userSearch(){
		def q=params.queryString

		RestTemplate rest = new RestTemplate()
		def user=session.getAttribute("git_name");
		def token=session.getAttribute("access_token");

		try{
			def users=rest.getForObject("https://api.github.com/search/users?q="+q+"&access_token="+token, String.class);
			render(users)

		}
		catch(Exception e){
			render("Error Occured");
		}
	}

	
	//............................................EDIT THE TEAM..............................................//
	//   PATCH /teams/:id
	def teamEdit(){
		def team_id=params.id
		def name=params.name
		def permission=params.permission
		def owner=session.getAttribute("git_name")
		def token=session.getAttribute("access_token");
		RestTemplate rest = new RestTemplate()

		String test="{"+"\"name\":\""+name+"\",\"permission\":\""+permission+"\"}";
		try{
			String result = rest.postForObject("https://api.github.com/teams/"+team_id+"?access_token="+token,test, String.class)
		}
		catch(Exception e){
			render("error")
		}
		render("Successfully Edited The Team")

	}
	
	//................................DELETE THE TEAM.................................................//
	def deleteTeam(){
		def team_id=params.id
		def token=session.getAttribute("access_token");
		RestTemplate rest = new RestTemplate()

		try{
			String result = rest.delete("https://api.github.com/teams/"+team_id+"?access_token="+token,String.class)
		}
		catch(Exception e){
			render(result)
		}
		render("Deletion Successfull!")


	}

	//..........................................ADD THE TEAM.......................................//
	def addTeam(){
		def name=params.name

		def permission=params.permission
		def organization=params.organization
		def owner=session.getAttribute("git_name")
		def token=session.getAttribute("access_token");
		RestTemplate rest = new RestTemplate()

		String test="{"+"\"name\":\""+name+"\",\"permission\":\""+permission+"\"}";
		try{
			String result = rest.postForObject("https://api.github.com/orgs/"+organization+"/teams?access_token="+token,test, String.class)
			render("Successfully Created A Team!")
		}
		catch(Exception e){
			render("You must have Admin Access to Add the Team")
		}


	}
	
	//...............................................VIEW TEAM MEMBERS..................................//
	def viewTeamMembers(){
		def team_id=params.id
		RestTemplate rest = new RestTemplate()
		def user=session.getAttribute("git_name");
		def token=session.getAttribute("access_token");

		try{
			def members=rest.getForObject("https://api.github.com/teams/"+team_id+"/members?access_token="+token, String.class);
			render(members)
		}
		catch(Exception e){
			render("Error Occured");
		}
	}
	
	//.........................................ADD TEAM MEMBERS.......................................//
	//	PUT /teams/:id/members/:user
	def addTeamMember(){
		def team_id=params.id
		def user=params.name
		def owner=session.getAttribute("git_name")
		def token=session.getAttribute("access_token");
		RestTemplate rest = new RestTemplate()

		try{
			String result = rest.put("https://api.github.com/teams/"+team_id+"/members/"+user+"?access_token="+token,null,String.class)
		}
		catch(Exception e){
			render("error")
		}
		render("Successfully added the member: "+user)
	}


	//............................REMOVE TEAM MEMBERS...........................................//
	// DELETE /teams/:id/members/:user
	def removeTeamMember(){
		def team_id=params.id
		def user=params.user

		def token=session.getAttribute("access_token");
		RestTemplate rest = new RestTemplate()

		try{
			String result = rest.delete("https://api.github.com/teams/"+team_id+"/members/"+user+"?access_token="+token,String.class)
		}
		catch(Exception e){
			render(result)
		}
		render("Deletion Successfull!")
	}


	//.................................ORGANIZATION EDIT HERE..................................//
	//                    PATCH /orgs/:org
	def orgEdit(){
		def new_name=params.new_name
		def old_name=params.old_org_name
		def owner=session.getAttribute("git_name")
		def token=session.getAttribute("access_token");

		RestTemplate rest = new RestTemplate()



		String test="{"+"\"name\":\""+new_name+"\",\"company\":\""+new_name+"\"}";

		try{
			String result = rest.postForObject("https://api.github.com/orgs/"+old_name+"?access_token="+token,test, String.class)
		}
		catch(Exception e){
			render("error")
		}
		render("Successfully edited the organization!")
	}


	//...............................EDIT ORGANIZATION REPOSITORY......................................//
	//    PATCH /repos/:owner/:repo
	def editRepoOrg(){
		def repo_name=params.old_repo
		def new_name=params.new_repo
		def description=params.repo
		//def isprivate=params.isprivate

		def owner=params.owner
		def isprivate=false;
		def token=session.getAttribute("access_token");
		RestTemplate rest = new RestTemplate()

		String test="{"+"\"name\":\""+new_name+"\",\"description\":\""+description+"\",\"private\":\""+false+"\"}";

		try{
			String result = rest.postForObject("https://api.github.com/repos/"+owner+"/"+repo_name+"?access_token="+token,test, String.class)
		}
		catch(Exception e){
			render("error")
		}
		render("Successfully Edited The Repo!")
	}

	//...............................DELETE ORGANIZATIONAL REPOSITORY............................//
	def deleteRepoOrg(){

		def repo_name=params.name
		def owner=params.owner
		def token=session.getAttribute("access_token");
		RestTemplate rest = new RestTemplate()
		//  String test="{"+"\"name\":\""+name+"\",\"description\":\""+description+"\"}";
		try{
			String result = rest.delete("https://api.github.com/repos/"+owner+"/"+repo_name+"?access_token="+token,String.class)
		}
		catch(Exception e){
			render("Error")
		}
		render("Successfully Deleted The Repo: "+repo_name)


	}


	//...................................ADD ORGANIZATIONAL REPOSITORY..............................//
	def addRepoOrg(){
		def name=params.name
		def description=params.description
		def owner=params.org
		def token=session.getAttribute("access_token");
		RestTemplate rest = new RestTemplate()

		String test="{"+"\"name\":\""+name+"\",\"description\":\""+description+"\"}";
		try{
			String result = rest.postForObject("https://api.github.com/orgs/"+owner+"/repos?access_token="+token,test, String.class)
		}
		catch(Exception e){
			render("You should have admin access to create repository")
		}
		render("")
	}


	//...........................STATISTICS OF THE REPOSITORIES..............................//
	//GET /teams/:id/members
	def repostatistics()
	{
		def repo=params.repo
		def owner=params.owner

		RestTemplate rest = new RestTemplate()
		def user=session.getAttribute("git_name");
		def token=session.getAttribute("access_token");

		try{
			def statistics=rest.getForObject("https://api.github.com/repos/"+owner+"/"+repo+"/stats/contributors?access_token="+token, String.class);
			render(statistics)

		}
		catch(Exception e){
			render("Error Occured");

		}
	}

	//......................................Weekly add and delete statistics......................................//
	//GET /teams/:id/members
	def  weeklyaddanddelete()
	{
		def repo=params.repo
		def owner=params.owner

		RestTemplate rest = new RestTemplate()
		def user=session.getAttribute("git_name");
		def token=session.getAttribute("access_token");

		try{

			def statistics=rest.getForObject("https://api.github.com/repos/"+owner+"/"+repo+"/stats/code_frequency?access_token="+token, String.class);
			render(statistics)
		}
		catch(Exception e){
			render("Error Occured");
		}
	}


	//...................................................Statistics for hourly commit........................//
	//GET /teams/:id/members
	def  hourlycommit()
	{
		def repo=params.repo
		def owner=params.owner
		

		RestTemplate rest = new RestTemplate()
		def user=session.getAttribute("git_name");
		def token=session.getAttribute("access_token");

		try{

			def statistics=rest.getForObject("https://api.github.com/repos/"+owner+"/"+repo+"/stats/punch_card?access_token="+token, String.class);
			render(statistics)
		}
		catch(Exception e){
			render("Error Occured");

		}
	}

	
	//...............................View branches of the repositories of organization....................//
	//GET /teams/:id/members
	def  branches()
	{
		def repo=params.repo
		def owner=params.owner


		RestTemplate rest = new RestTemplate()
		def user=session.getAttribute("git_name");
		def token=session.getAttribute("access_token");

		try{
			def statistics=rest.getForObject("https://api.github.com/repos/"+owner+"/"+repo+"/branches?access_token="+token, String.class);
			render(statistics)
		}
		catch(Exception e){
			render("Error Occured");
		}
	}

	
	//........................Details of the specific brnach in a repository..............................//
	//GET /teams/:id/members
	def branchdetails()
	{
		def repo=params.repo
		def owner=params.owner
		def sha=params.sha
		def branch=params.branch
		

		RestTemplate rest = new RestTemplate()
		def user=session.getAttribute("git_name");
		def token=session.getAttribute("access_token");

		try{
			def statistics=rest.getForObject("https://api.github.com/repos/"+owner+"/"+repo+"/branches/"+branch+"?access_token="+token, String.class);
			render(statistics)
		}
		catch(Exception e){
			render("Error Occured");
		}
	}


	
	//.....................................GRAPH STATISTICS HERE..............................//
	def graphStats(){

		def org=params.org
		def repo=params.repo
		if(!org && !repo)
		{
			render("Some Error Occured");
		}
		return [repo:repo, org: org]
		//render("Organization is:"+org+" and repo is "+repo)

	}

	
	//....................................APPLICATION ACCOUNT SETTING HERE..............................//
	def accountSettings(){
		def username=springSecurityService.principal.username;
		User user = User.findByUsername(username)

		render view: 'accountSettings', model: [user: user, username: username]
	}


	//......................................CODE TO UPDATE PASSWORD...................................//
	def updatePassword(){

		def username=springSecurityService.principal.username;
		User user = User.findByUsername(username)
		//render(username);
		if (!username) {
			flash.message = 'Sorry, an error has occurred'
			redirect controller: 'login', action: 'auth'
			return
		}

		String password = params.password
		String newPassword = params.password_new
		String newPassword2 = params.password_new_2
		//String new_username=params.username
		if (!password || !newPassword || !newPassword2 || newPassword != newPassword2)
		{
			flash.message = 'Please enter your current password and a valid new password'
			render view: 'accountSettings', model: [username: username,user:user]
			return }


		if (!passwordEncoder.isPasswordValid(user.password, password, null /*salt*/))
		{ flash.message = 'Current password is incorrect'
			render view: 'accountSettings', model: [username: username],user:user
			return
		}

		if (passwordEncoder.isPasswordValid(user.password, newPassword, null /*salt*/))
		{
			flash.message = 'Please choose a different password from your current one'
			render view: 'accountSettings', model: [username: username,user:user]
			return
		}

		user.password = newPassword
		//  user.username=new_username

		user.passwordExpired = false
		user.save(flush: true) // if you have password constraints check them here
		//  springSecurityService.principal.username=new_username;
		flash.message = 'Password changed successfully'

		redirect controller: 'hom', action: 'organization'
	}



//........................................ADD TEAM TO THE ORGANIZATIONAL REPOSITORY........................//
	def orgrepoteamadd()
	{
		def repo=params.repo;
		def org=params.org;
		def team=params.team;

		def token=session.getAttribute("access_token");
		RestTemplate rest = new RestTemplate()

		try{
			String result = rest.put("https://api.github.com/teams/"+team+"/repos/"+org+"/"+repo+"?access_token="+token,null, String.class)
			render("Successfully Added the Team!")
		}
		catch(Exception e){
			render("You must have Admin Access To Add the Team")
		}
	}


	//.................................REMOVE TEAM FROM THE SPECIFIC REPOSITORY.............................//
	// DELETE /teams/:id/repos/:owner/:repo
	def removeTeamRepo(){
		def teamId=params.teamId
		def owner=params.owner
		def repo=params.repo

		def token=session.getAttribute("access_token");
		RestTemplate rest = new RestTemplate()
		
		def resp= rest.delete("https://api.github.com/teams/"+teamId+"/repos/"+owner+"/"+repo+"?access_token="+token, String.class);
		// render("Org:"+org+" owner"+owner+" collab"+collab)
		if(resp==null)
			render(resp);
		else
			render(resp);
	}

	
	//.................................UPDATE USERNAME OF THE APPLICATION...............................//
	def updateUsername(){

		def username=springSecurityService.principal.username;
		User user = User.findByUsername(username)

		//render(username);
		if (!username) {
			flash.message = 'Sorry, an error has occurred'
			redirect controller: 'login', action: 'auth'
			return
		}
		render view: 'accountSettings', model: [username: username,user:user]

		String new_username=params.username
		if (!new_username && new_username.length()<4)
		{
			flash.message = 'Please enter your username and it must be greater than 8'
			render view: 'accountSettings', model: [username: username,user:user]
			return
		}


		user.username=new_username
		// user.passwordExpired = false
		user.save(flush: true) // if you have password constraints check them here
		springSecurityService.reauthenticate user.username

		def adminUser=User.findByUsername("admin")
		if(adminUser){
			adminUser.delete()
		}
		//  springSecurityService.principal.username=new_username;
		flash.message = 'Username Changed Successfully'

		redirect controller: 'hom', action: 'organization'
	}
}
