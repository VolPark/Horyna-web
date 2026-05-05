<form action="<?php echo wp_lostpassword_url(); ?>" class="u-clearfix u-form-custom-backend u-form-spacing-10 u-form-vertical u-inner-form" source="email" name="form-1" style="padding: 10px;" method="POST">
        <div class="u-form-group u-form-name">
          <label for="username-ec5b" class="u-label" name=""><?php _e( 'Username or Email Address' ); ?></label>
          <input type="text" placeholder="<?php _e( 'Username or Email Address' ); ?>" id="username-ec5b" name="user_login" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
        </div>
        
        
        <div class="u-align-left u-form-group u-form-submit">
          <a href="#" class="u-border-none u-btn u-btn-submit u-button-style u-palette-3-base u-btn-1"><?php _e( 'Get New Password' ); ?></a>
          <input type="submit" value="submit" class="u-form-control-hidden">
        </div>
        <input type="hidden" name="formServices" value="67250f82e7788b8726f8af7fd616f83e">
      </form>
<?php
$pathToLinkTemplates = get_template_directory() . '/template-parts/' . $pageLogin_custom_template . '/links/';
if (file_exists($pathToLinkTemplates . 'login.php')) {
	include_once $pathToLinkTemplates . 'login.php';
}
if (file_exists($pathToLinkTemplates . 'register.php')) {
	include_once $pathToLinkTemplates . 'register.php';
}