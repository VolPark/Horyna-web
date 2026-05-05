<!-- header styles -->

<?php
   $localFonts = apply_filters('get_local_fonts', '');
?>
<?php if ($localFonts) : ?> 
   <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/<?php echo $localFonts; ?>" media="screen" type="text/css" />
<?php else : ?>
   <?php endif; ?>
<link id="u-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
<style> .u-header {
  background-image: none;
}
.u-header .u-sheet-1 {
  min-height: 112px;
}
.u-header .u-image-1 {
  width: 185px;
  height: 64px;
  margin: 24px auto 0 0;
}
.u-header .u-logo-image-1 {
  width: 100%;
  height: 100%;
}
.u-header .u-menu-1 {
  margin: -47px 0 41px auto;
}
.u-header .u-nav-1 {
  font-weight: 500;
  font-size: 1rem;
}
.u-header .u-nav-2 {
  font-size: 1.25rem;
}
@media (max-width: 1199px) {
  .u-header .u-image-1 {
    width: 185px;
  }
  .u-header .u-menu-1 {
    width: auto;
    margin-top: -47px;
  }
  .u-header .u-nav-1 {
    letter-spacing: normal;
  }
}</style>
