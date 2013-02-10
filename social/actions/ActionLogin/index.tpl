{assign var="noSidebar" value=true}
{include file='headermin.tpl'}

<script>
var images = ['image1.jpg', 'image2.jpg', 'image3.jpg', 'image4.jpg', 'image5.jpg', 'image6.jpg', 'image7.jpg', 'image8.jpg', 'image9.jpg', 'image10.jpg', 'image11.jpg', 'image12.jpg'];
$('body').css({ 'background-image': 'url(http://svirink.ru/templates/skin/social/images/auth/' + images[Math.floor(Math.random() * images.length)] + ')' });
</script>

<style>
body { background: no-repeat scroll center center transparent ;}
#wrapper, #content { background: transparent; }
</style>


<script type="text/javascript">
	jQuery(document).ready(function($){
		$('#login-form').bind('submit',function(){
			ls.user.login('login-form');
			return false;
		});
		$('#login-form-submit').attr('disabled',false);
	});
</script>


{hook run='login_begin'}

<form action="{router page='login'}" method="POST" id="login-form" class="my-login-form">
	{hook run='form_login_begin'}

	<h2  align="center" class="page-header">{$aLang.user_authorization}</h2>

	<p align="center"><label for="login">{$aLang.user_login}</label>
	<input type="text" id="login" name="login" class="input-text input-width-200" /></p>
	
	<p align="center"><label for="password">{$aLang.user_password}</label>
	<input type="password" id="password" name="password" class="input-text input-width-200" />
	<small class="validate-error-hide validate-error-login"></small></p>
	
	<p align="center"><label><input type="checkbox" name="remember" checked class="input-checkbox" /> {$aLang.user_login_remember}</label></p>
	
	{hook run='form_login_end'}

	<div align="center"><button type="submit" name="submit_login" class="button button-primary" id="login-form-submit" disabled="disabled">{$aLang.user_login_submit}</button></div>

		
	<br />
	<br /><div align="center">
	<a href="{router page='registration'}">{$aLang.user_registration}</a><br />
	<a href="{router page='login'}reminder/">{$aLang.user_password_reminder}</a></div>


<div align="center">
{if $oConfig->GetValue('general.reg.invite')}
	<br /><br />
	<form action="{router page='registration'}invite/" method="POST">
		<h2>{$aLang.registration_invite}</h2>

		<p><label>{$aLang.registration_invite_code}<br />
		<input type="text" name="invite_code" /></label></p>
		<input type="submit" name="submit_invite" value="{$aLang.registration_invite_check}" /></div>
	</form>
{/if}

</form>

{hook run='login_end'}
{include file='footermin.tpl'}
