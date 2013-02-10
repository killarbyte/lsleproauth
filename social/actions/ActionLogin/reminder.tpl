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
		$('#reminder-form').bind('submit',function(){
			ls.user.reminder('reminder-form');
			return false;
		});
		$('#reminder-form-submit').attr('disabled',false);
	});
</script>

<div class="my-login-form"><h2 class="page-header" align="center">{$aLang.password_reminder}</h2><br><br>

<div align="center"><form action="{router page='login'}reminder/" method="POST" id="reminder-form">
	<p><label for="reminder-mail">{$aLang.password_reminder_email}</label>
	<input type="text" name="mail" id="reminder-mail" class="input-text input-width-200" />
	<small class="validate-error-hide validate-error-reminder"></small></p>

	<button type="submit" name="submit_reminder" class="button button-primary" id="reminder-form-submit" disabled="disabled">{$aLang.password_reminder_submit}</button>
</form></div></div>



{include file='footermin.tpl'}