<?php
/**
 * Review order table
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/review-order.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 9.2.0
 */

defined( 'ABSPATH' ) || exit;
if (function_exists('wc_gzd_get_cart_total_taxes')) {
    // for plugin "Germanized for WooCommerce"
    remove_action( 'woocommerce_review_order_before_order_total', 'woocommerce_gzd_template_cart_total_tax', 1 );
}
global $checkout_custom_template;
$checkout_custom_template = isset($checkout_custom_template) ? $checkout_custom_template : get_option('checkout_template');
include_once get_template_directory() . '/woocommerce/template-parts/' . $checkout_custom_template . '/review-order.php'; ?>