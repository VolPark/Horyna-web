<?php
defined( 'ABSPATH' ) || exit;
global $checkout_custom_template;
$checkout_custom_template = 'checkoutTemplate';
$language = isset($_GET['lang']) ? $_GET['lang'] : '';
if (get_option('checkout_template') !== $checkout_custom_template) {
    update_option('checkout_template', $checkout_custom_template);
}
$checkout = WC_Checkout::instance();
do_action('woocommerce_before_checkout_form', $checkout);

function checkout_body_class_filter($classes) {
    $classes[] = 'u-body u-xl-mode';
    return $classes;
}
add_filter('body_class', 'checkout_body_class_filter');

function checkout_body_style_attribute() {
    return "";
}
add_filter('add_body_style_attribute', 'checkout_body_style_attribute');

function checkout_body_back_to_top() {
    ob_start(); ?>
    
    <?php
    return ob_get_clean();
}
add_filter('add_back_to_top', 'checkout_body_back_to_top');

function checkout_get_local_fonts() {
    return '';
}

add_filter('get_local_fonts', 'checkout_get_local_fonts');

theme_layout_before('checkout', '', $checkout_custom_template);

$translations = '';
if ($language) {
    if (file_exists(get_stylesheet_directory() . '/woocommerce/' . 'template-parts/'. $checkout_custom_template . '/translations/' . $language . '/checkout-content' . '.php')) {
        $translations = '/translations/' . $language;
    }
}
ob_start();
get_template_part('/woocommerce/template-parts/'. $checkout_custom_template . $translations . '/checkout-content');
$content = ob_get_clean();
if (function_exists('renderTemplate')) {
    renderTemplate($content, '', 'echo', 'custom');
} else {
    echo $content;
}

theme_layout_after('checkout');
do_action('woocommerce_after_checkout_form', $checkout); ?>

