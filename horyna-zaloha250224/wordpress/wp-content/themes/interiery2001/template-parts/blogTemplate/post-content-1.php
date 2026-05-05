<?php global $wp_query, $post;
 ?>
<?php $skip_min_height = false; ?><section class="u-clearfix u-grey-10 u-section-1" id="sec-975f">
  <div class="u-clearfix u-sheet u-sheet-1"><?php
$blogJson = '{"type":"Recent","source":"","tags":"","count":""}';
$all = count($wp_query->posts); echo getGridAutoRowsStyles($blogJson, $all);
?>

    <div class="u-blog u-expanded-width u-blog-1">
      <div class="u-repeater u-repeater-1"><?php
                                    $countItems = 3;
                                    while (have_posts()) { the_post();
                                    $templateOrder = $wp_query->current_post % $countItems;
                                ?><?php if ($templateOrder == 0) { ?><!--blog_post-->
        <?php $postItemInvisible = !has_post_thumbnail() ? true : false; ?><div class="u-blog-post u-container-style u-radius-20 u-repeater-item u-shape-round u-white u-repeater-item-1">
          <div class="u-container-layout u-similar-container u-container-layout-1"><!--blog_post_image-->
            <?php
                            $post_image = theme_get_post_image(array('class' => 'u-blog-control u-expanded-width u-image u-image-round u-radius-10 u-image-1', 'default' => '/images/8ad73f3c.jpeg'));
                            if ($post_image) echo $post_image; else { echo '<div class="none-post-image" style="display: none;"></div>'; $skip_min_height = true; } ?><!--/blog_post_image--><!--blog_post_header-->
            <h4 class="u-blog-control u-text u-text-1">
              <?php if (!is_singular()): ?><a class="u-post-header-link" href="<?php the_permalink(); ?>"><?php endif; ?><?php the_title(); ?><?php if (!is_singular()): ?></a><?php endif; ?>
            </h4><!--/blog_post_header-->
          </div>
        </div><!--/blog_post--><?php } ?><?php if ($templateOrder == 1) { ?><!--blog_post-->
        <?php $postItemInvisible = !has_post_thumbnail() ? true : false; ?><div class="u-blog-post u-container-style u-radius-20 u-repeater-item u-shape-round u-video-cover u-white">
          <div class="u-container-layout u-similar-container u-container-layout-2"><!--blog_post_image-->
            <?php
                            $post_image = theme_get_post_image(array('class' => 'u-blog-control u-expanded-width u-image u-image-round u-radius-10 u-image-2', 'default' => '/images/68f64b9d.jpeg'));
                            if ($post_image) echo $post_image; else { echo '<div class="none-post-image" style="display: none;"></div>'; $skip_min_height = true; } ?><!--/blog_post_image--><!--blog_post_header-->
            <h4 class="u-blog-control u-text u-text-2">
              <?php if (!is_singular()): ?><a class="u-post-header-link" href="<?php the_permalink(); ?>"><?php endif; ?><?php the_title(); ?><?php if (!is_singular()): ?></a><?php endif; ?>
            </h4><!--/blog_post_header-->
          </div>
        </div><!--/blog_post--><?php } ?><?php if ($templateOrder == 2) { ?><!--blog_post-->
        <?php $postItemInvisible = !has_post_thumbnail() ? true : false; ?><div class="u-blog-post u-container-style u-radius-20 u-repeater-item u-shape-round u-video-cover u-white">
          <div class="u-container-layout u-similar-container u-container-layout-3"><!--blog_post_image-->
            <?php
                            $post_image = theme_get_post_image(array('class' => 'u-blog-control u-expanded-width u-image u-image-round u-radius-10 u-image-3', 'default' => '/images/0fd3416c.jpeg'));
                            if ($post_image) echo $post_image; else { echo '<div class="none-post-image" style="display: none;"></div>'; $skip_min_height = true; } ?><!--/blog_post_image--><!--blog_post_header-->
            <h4 class="u-blog-control u-text u-text-3">
              <?php if (!is_singular()): ?><a class="u-post-header-link" href="<?php the_permalink(); ?>"><?php endif; ?><?php the_title(); ?><?php if (!is_singular()): ?></a><?php endif; ?>
            </h4><!--/blog_post_header-->
          </div>
        </div><!--/blog_post--><?php } ?><?php } ?>
      </div>
    </div>
  </div>
</section><?php if ($skip_min_height) { echo "<style> .u-section-1, .u-section-1 .u-sheet {min-height: auto;}</style>"; } ?>