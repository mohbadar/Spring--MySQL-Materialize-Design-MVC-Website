function validateForm() {
	
	// Flag 
	var result = true;
	
	var requiredFields = document.getElementsByClassName("required");
	
	for(x=0; x<requiredFields.length; x++) {
		var minlength = requiredFields[x].getAttribute("minlength");
		if(requiredFields[x].value.length < minlength) {
			requiredFields[x].style.backgroundColor = "pink";
			if(requiredFields[x].nextSibling) {
				requiredFields[x].nextSibling.style.display = "none";
			}
			requiredFields[x].outerHTML += "<div style='color:red;font-size:14px;'>At least you have to enter " + minlength + " latters.</div>"
			result = false;
		}
		else {
			requiredFields[x].style.backgroundColor = "#FCFCFC";
			if(requiredFields[x].nextSibling) { 
				requiredFields[x].nextSibling.style.display = "none";
			}
		}
	}
	
	var validPhone = new RegExp("0[27][0-9][0-9]{7}");
	var phoneFields = document.getElementsByClassName("phone");
	for(y=0; y<phoneFields.length; y++) {
		if(!validPhone.test(phoneFields[y].value)) {
			phoneFields[y].style.backgroundColor = "pink";
			if(phoneFields[y].nextSibling) {
				phoneFields[y].nextSibling.style.display = "none";
			}
			phoneFields[y].outerHTML += "<div style='color:red;font-size:14px;'>The phone number structure you have entered is invalid.</div>"
			result = false;
		}
		else {
			phoneFields[y].style.backgroundColor = "#FCFCFC";
			if(phoneFields[y].nextSibling) { 
				phoneFields[y].nextSibling.style.display = "none";
			}
		}
	}
	
	var validEmail = new RegExp("[A-z][A-z0-9_]{2,64}@[A-z][A-z0-9]{2,64}.[A-z]{2,5}");
	var emailFields = document.getElementsByClassName("email");
	for(z=0; z<emailFields.length; z++) {
		if(!validEmail.test(emailFields[z].value)) {
			emailFields[z].style.backgroundColor = "pink";
			if(emailFields[z].nextSibling) {
				emailFields[z].nextSibling.style.display = "none";
			}
			emailFields[z].outerHTML += "<div style='color:red;font-size:14px;'>The email address structure you have entered is invalid.</div>"
			result = false;
		}
		else {
			emailFields[z].style.backgroundColor = "#FCFCFC";
			if(emailFields[z].nextSibling) { 
				emailFields[z].nextSibling.style.display = "none";
			}
		}
	}
	
	return result;
}