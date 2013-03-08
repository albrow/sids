$(function () {
  	var bill_amt = 2000;

    $('#customButton').click(function(){
        var token = function(res){
      	    $("#stripe_token").val(res.id);
      	    $("form").submit();
            //console.log('Got token ID:', res.id);

        };

        StripeCheckout.open({
            key:         '<%= Rails.configuration.stripe[:publishable_key] %>',
            amount:      bill_amt,
            name:        '1 bracket to support Sudden Infant Death Syndrome Research',
            image: 		 "/assets/logo-black.png",
            panelLabel:  'Checkout',
            token:       token
        });

        return false;
    });

	$('select.opts').on('change', function() {
	    var total = 2 + parseInt(this.value,10);
	    $('#amt_shown').text("$"+total+".00");
	    bill_amt = total * 100;
	    $("#payment_amt").val(bill_amt);
	});
});
