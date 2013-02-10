Делаем нашу авторизацию в Live Street на шаблоне Social в стиле сайта leprosorium.ru

На данный момент сделано:

ActionLogin/index.tpl
ActionLogin/reminder.tpl


Не сделано:

1)ActionRegister/ все, не цепляется css'ка спасает только принудительное указания свойства style для элемента

<form action="{router page='registration'}" method="post" id="registration-form" style="background: url(http://dl.dropbox.com/u/99332327/img/scroll3.png) repeat scroll left top transparent;
height:621px;
		width:405px;
		position:absolute;
		/*bottom:10%;*/
		top:50%;
		margin-top:-310px;
		left:50%;
		margin-left:-203px;">
	{hook run='form_registration_begin'} 

2) Не вынесена js'ка для динамической смены bg при обновлении страницы(пока она подключена напрямую в tpl'ки) + не найден способ подменять цвет bg в соответствии с тоном цвета картинки BG, это можно увидить при обновлении страницы на leprosorium.ru так же не понятно как в случае с неправильным вводом все равно поменять BG