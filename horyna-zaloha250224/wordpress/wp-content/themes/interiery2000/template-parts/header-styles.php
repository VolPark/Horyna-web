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
  min-height: 28px;
}
.u-header .u-image-1 {
  width: 185px;
  height: 64px;
  margin: 24px auto 0 43px;
}
.u-header .u-logo-image-1 {
  width: 100%;
  height: 100%;
}
.u-header .u-btn-1 {
  background-image: none;
  border-style: solid;
  margin: -44px auto 0;
  padding: 0;
}
.u-header .u-btn-2 {
  background-image: none;
  margin: -27px 65px 0 auto;
  padding: 0;
}
.u-header .u-menu-1 {
  margin: 65px auto 48px;
}
.u-header .u-nav-1 {
  font-weight: 700;
  font-size: 1.125rem;
  letter-spacing: normal;
}
.u-header .u-nav-2 {
  font-size: 1.25rem;
}
@media (max-width: 1199px) {
  .u-header .u-image-1 {
    width: 185px;
  }
  .u-header .u-btn-1 {
    margin-top: -44px;
  }
  .u-header .u-btn-2 {
    margin-top: -27px;
    margin-right: 0;
  }
}
@media (max-width: 767px) {
  .u-header .u-btn-1 {
    margin-top: 20px;
  }
}
@media (max-width: 575px) {
  .u-header .u-sheet-1 {
    min-height: 278px;
  }
  .u-header .u-image-1 {
    margin-left: auto;
  }
  .u-header .u-btn-1 {
    margin-top: 75px;
  }
  .u-header .u-btn-2 {
    margin-top: -78px;
    margin-right: auto;
  }
  .u-header .u-menu-1 {
    margin-top: 85px;
    margin-bottom: 24px;
  }
}</style>
