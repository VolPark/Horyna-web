<?php $skip_min_height = false; ?><section class="u-clearfix u-section-1" id="sec-c60c">
  <div class="u-align-left u-clearfix u-sheet u-valign-middle u-sheet-1">
    <div class="u-checkout u-expanded-width u-checkout-1">
      <div class="u-checkout-blocks-container">
        <div class="u-checkout-billing-details-block u-checkout-block u-indent-30">
          <div class="u-checkout-block-container u-clearfix">
            <h5 class="u-checkout-block-header u-text"><?php esc_html_e( 'Billing details', 'woocommerce' ); ?></h5>
            <div class="u-checkout-block-content u-text">
              <div class="u-checkout-form u-form">
                <form action="#" method="post" class="u-clearfix u-form-spacing-10 u-inner-form" source="custom" name="form">
                  <?php do_action( 'woocommerce_checkout_before_customer_details' ); 
	                do_action( 'woocommerce_checkout_billing' ); 
	                do_action( 'woocommerce_checkout_shipping' ); 
	                do_action( 'woocommerce_checkout_after_customer_details' ); ?>
                  
                  
                  
                  
                  
                  
                  <div class="u-form-send-message u-form-send-success">Thank you! Your message has been sent.</div>
                  <div class="u-form-send-error u-form-send-message">Unable to send your message. Please fix errors then try again.</div>
                  <input type="hidden" value="" name="recaptchaResponse">
                </form>
              </div>
            </div>
          </div>
        </div>
        <div class="u-checkout-block u-checkout-totals-block u-indent-30">
          <div class="u-checkout-block-container u-clearfix">
            <h5 class="u-checkout-block-header u-text"><?php esc_html_e( 'Your order', 'woocommerce' ); ?></h5>
            <div class="u-align-right u-checkout-block-content u-text">
              <div class="u-checkout-totals-table u-table u-table-responsive">
                <form class="u-checkout-form-order"><?php do_action( 'woocommerce_checkout_before_order_review' ); woocommerce_order_review(); ?></form>
              </div>
              <div class="u-checkout-placeorder-form u-form">
                <form action="<?php echo esc_url( wc_get_checkout_url() ); ?>" method="post" class="checkout woocommerce-checkout u-clearfix u-form-spacing-6 u-inner-form" style="padding: 10px;" source="custom" name="checkout">
                  <div class="data-from-checkout-form" style="display:none;"></div><?php woocommerce_checkout_payment(); do_action( 'woocommerce_checkout_after_order_review' ); ?>
                  <div class="u-align-right u-form-group u-form-submit">
                    
                    <input type="submit" value="submit" class="u-form-control-hidden">
                  </div>
                  <div class="u-form-send-message u-form-send-success">Thank you! Your message has been sent.</div>
                  <div class="u-form-send-error u-form-send-message">Unable to send your message. Please fix errors then try again.</div>
                  <input type="hidden" value="" name="recaptchaResponse">
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <style data-mode="XXL">@media (max-width: 0px) {
  .u-section-1 .u-sheet-1 {
    min-height: 808px;
  }
  .u-section-1 .u-checkout-1 {
    min-height: 748px;
    margin-bottom: 30px;
    height: auto;
    margin-top: 30px;
  }
  .u-section-1 .u-table-cell-1 {
    font-weight: 700;
  }
  .u-section-1 .u-table-cell-3 {
    font-weight: 700;
  }
  .u-section-1 .u-table-cell-4 {
    font-weight: 700;
  }
  .u-section-1 .u-btn-1 {
    margin-top: 20px;
  }
}</style>
</section><?php if ($skip_min_height) { echo "<style> .u-section-1, .u-section-1 .u-sheet {min-height: auto;}</style>"; } ?>
