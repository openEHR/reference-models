<?php
require_once($_SERVER['DOCUMENT_ROOT'].'/templates/_functions.php');

//Change page name here:
$PageName = 'Basic Meta-Model (BMM) files';

require_once($_SERVER['DOCUMENT_ROOT'].'/templates/_header.php');
?>

		<div id="Content">
<!-- - - - - - - - - - - - - - - - - - - - - - - Content starts here - - - - - - - - - - - - - - - - - - - - - - - - - -->
			
			<h1><?php echo "$PageName";?></h1>
			
			<p>The following files are the openEHR Reference Model expressed in BMM format, which is simpler and clearer than XMI. Models in this format are used by the openEHR <a href="/downloads/ADLworkbench/home">ADL Workbench</a>, and also in the <a href="http://opencimi.org">CIMI project</a>. You can view the models using the ADL Workbench.</p>
			<p>The openEHR Reference Model:</p>
			<ul>
				<?php
					foreach (glob ("*.bmm") as $bmm_file) {
						echo "<li><a href=\"{$bmm_file}\">{$bmm_file}</a></li>\n";
					}
				?>
			</ul>

<!-- - - - - - - - - - - - - - - - - - - - - - - Content ends here - - - - - - - - - - - - - - - - - - - - - - - - - -->
		</div>	
<?php require_once($_SERVER['DOCUMENT_ROOT'].'/templates/_footer.php');?>
