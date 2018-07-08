Stripe.setPublishableKey('pk_test_Z8FHDSR45354564G');
$('#checkout-form').submit(function(event){
	$('#charge-error').addClass('hidden');
	$('checkout-form').find('button').prop('disbled',true);
	Stripe.card.createToken({
	number:$('#card-number').val(),
	cvc:$('#card-cva').val(),
	exp_month:$('#card-expiry-month').val(),
	exp_year:$('#card-expiry-year').val(),
	name:$('#name').val()
	},stripeResponseHandler);
	return false;
});


function stripeResponseHandler(status,response){
	if(response.error){
		$('#charge-error').removeClass('hidden');
		$('#charge-error').text(response.error.message);
		$('checkout-form').find('button').prop('disbled',false);
	}else{
		var token = response.id;
		$('#checkout-form').append($('<input type="hidden" name="stripeToken" />')).val(token);

		$('#checkout-form').get(0).submit();
	}
}
