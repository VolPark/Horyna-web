<?php $skip_min_height = false; ?><section class="u-align-center u-clearfix u-image u-shading u-section-1" id="sec-81a7" data-image-width="2304" data-image-height="1536" style="background-image: linear-gradient(0deg, rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('<?php echo get_template_directory_uri(); ?>/images/IMG_0233.jpeg');">
  <div class="u-clearfix u-sheet u-sheet-1">
    <img class="u-image u-image-default u-preserve-proportions u-image-1" src="<?php echo get_template_directory_uri(); ?>/images/logo20men1.png" alt="" data-image-width="191" data-image-height="66">
    <div class="u-form u-login-control u-form-1">
      <?php global $pageLogin_custom_template;
	    $pathToTemplates = get_template_directory() . '/template-parts/' . $pageLogin_custom_template;
	    $pathToFormsTemplates = $pathToTemplates . '/forms/';
	    if (file_exists($pathToFormsTemplates . 'form.php')) {
		    include_once $pathToFormsTemplates . 'form.php';
	    } ?>
    </div>
    
    
  </div>
</section><?php if ($skip_min_height) { echo "<style> .u-section-1, .u-section-1 .u-sheet {min-height: auto;}</style>"; } ?>
