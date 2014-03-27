<div id='login'>
   
      <g:if test='${flash.message}'>
      
      <div class="alert alert-danger" style="margin-top:10px">${flash.message}</div>
     
      </g:if>
      
      <br>
      <br>
      
      <fieldset>
      <legend>Change Your Password</legend>
      <g:form action='updatePassword' id='passwordResetForm' class='cssform' autocomplete='off'>
      
      
      <table>
           
             <tr>
                <td><label for='password'>Current Password</label></td>
                <td> <g:passwordField name='password' class='text_' /></td>
             </tr>
             <tr>
                <td> <label for='password'>New Password</label></td>
                <td> <g:passwordField name='password_new' class='text_' /></td>
             </tr>
             <tr>
                 <td><label for='password'>New Password (confirm)</label></td>
                 <td> <g:passwordField name='password_new_2' class='text_' /></td>
             </tr>
      </table>


         <p>
            <input type='submit' class="btn btn-primary" value='Change Password' />
         </p>
        
      </g:form>
      </fieldset>
            <fieldset>
      <legend>Change Your Username</legend>
      <g:form action='updateUsername' id='passwordResetForm' class='cssform' autocomplete='off'>
      
      
      <table>
            <tr>
                <td><label for='password'>Username</label></td>
                <td> <g:textField name='username' class='text_' value="${user.username}" /></td>
             </tr>
             
            
            
      </table>


         <p>
            <input type='submit' class="btn btn-primary" value='Change Username' />
         </p>
        
      </g:form>
      </fieldset>

</div>