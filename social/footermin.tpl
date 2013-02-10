				{hook run='content_end'}
			</div> <!-- /content -->
		</div> <!-- /content-wrapper -->

		
		{if !$noSidebar}
			{include file='sidebar.tpl'}
		{/if}
	</div> <!-- /wrapper -->

	
	<footer id="footer">
		<div>
		</div>
			
		
		{hook run='footer_end'}
	</footer>
</div> <!-- /container -->

{include file='toolbar.tpl'}

{hook run='body_end'}

</body>
</html>