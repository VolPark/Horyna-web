jQuery(document).ready(function () {
    jQuery(document).on('click', '.single-product a.u-btn.u-product-control', function (e) {
        if (!this.attributes.href) {
            e.preventDefault();
            jQuery('.single-product button.single_add_to_cart_button').click();
        }
    });
    function changePrice() {
        if (jQuery('.woocommerce-variation-price').length) {
            var priceControl = jQuery('.u-product-price:visible');
            if (priceControl.length > 1) {
                priceControl.each(function (index) {
                    if (index === 0) {
                        return;
                    }
                    priceControl[index].remove();
                });
            }
            priceControl.html(jQuery('.woocommerce-variation-price .u-product-price').not(':visible').html());
        }
    }
    jQuery(document).on('change', '.single_variation_wrap', changePrice);
    jQuery(document).on('change', '.u-product-variant select', changePrice);
    function changeQuantity() {
        var quantityWoocommerceInput = jQuery('.cart input[name="quantity"]');
        if (quantityWoocommerceInput.length) {
            quantityWoocommerceInput.val(jQuery('.u-quantity-input .u-input').val());
        }
    }
    changeQuantity();
    jQuery(document).on('change', '.single-product .u-quantity-input', changeQuantity);
    jQuery('body').on('click', '.u-cart-remove-item', function (e) {
        jQuery(this).parents('td').find('.remove')[0].click();
    });
    jQuery('body').on('click', '.u-cart-update', function (e) {
        e.preventDefault();
        jQuery(this).parents('.u-cart').find('.np-cart-update').click();
    });
    jQuery('body').on('change', '.u-cart-form .u-input', function () {
        jQuery('#coupon_code').val(jQuery(this).val());
    });
    jQuery('.u-cart-form a.u-btn-submit').on('click', function (e) {
        e.preventDefault();
        jQuery('.coupon .button').click();
    });
    if (jQuery('form.woocommerce-checkout').length) {
        jQuery('form.woocommerce-checkout').on('checkout_place_order', function () {
            prepareCheckoutForm();
            return true;
        });
        jQuery('body').on('change', '.u-checkout-form form :input', prepareCheckoutForm);
        jQuery('body').on('change', '.u-checkout-form-order :input:not(.shipping_method)', prepareCheckoutForm);
        prepareCheckoutForm();
        // Shipping Address fields
        jQuery('div.shipping_address').hide();
        jQuery('body').on('change', '#ship-to-different-address input', function () {
            jQuery('div.shipping_address').hide();
            if (jQuery(this).is(':checked') ) {
                jQuery('div.shipping_address').slideDown();
            }
        });
        jQuery('body').on('change', 'input[name^="shipping_method"]', function () {
            jQuery(document.body).trigger("update_checkout");
        });
    }
    // sidebar widget - filter by attribute
    if (jQuery('.widget-filter-wrapper').length) {
        jQuery('body').on( "click", '.widget-filter-wrapper input[type=checkbox], .widget-filter-wrapper input[type=radio]', function() {
            var filterUrl = jQuery(this).parent().find('.u-field-label').attr('data-href');
            if (filterUrl) {
                document.location.href = filterUrl;
            }
        });
    }
});
function submitCheckoutForm() {
    jQuery('button#place_order').click();
}
function prepareCheckoutForm() {
    jQuery(document.body).trigger("update_checkout");
    jQuery('.u-checkout-placeorder-form form .data-from-checkout-form').html('');
    jQuery('.u-checkout-form form').find(':input').clone().appendTo('.u-checkout-placeorder-form form .data-from-checkout-form');
    jQuery('.u-checkout-form-order').find(':input:not(.shipping_method)').clone().appendTo('.u-checkout-placeorder-form form .data-from-checkout-form');
    var selects = jQuery('.u-checkout-form select');
    var id = '';
    for (let i = 0; i < selects.length; i++) {
        id = selects.eq(i).attr('id');
        var selectsTo = jQuery('.u-checkout-placeorder-form #' + id);
        var selectsFrom = jQuery('.u-checkout-form #' + id);
        if (id && selectsTo.length && selectsFrom.length) {
            selectsTo[0].selectedIndex = selectsFrom[0].selectedIndex;
        }
    }
}
