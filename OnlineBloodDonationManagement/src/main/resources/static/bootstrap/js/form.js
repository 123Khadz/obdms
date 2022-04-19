/**
 * 
 */
 //Donor
 
 function getCity() {
		let stateId = $("#stateId").val();
		console.log(stateId);
		if (stateId != null) {
			var ajax = new XMLHttpRequest();
			var url = "fetchCity?stateId=" + stateId;
			document.getElementById("cityId").innerHTML = "<option value='-1' selected='selected'>Select City</option>";
			ajax.onreadystatechange = function() {
				if (ajax.readyState == 4) {
					let res = ajax.responseText;
					let result = JSON.parse(res);
					console.log(result)
					var count = Object.keys(result).length;
					for (let i = 0; i < count; i++) {
						let cityList = "<option value='"+result[i]["cityId"]+"'>"
								+ result[i]["cityName"] + "</option>";
						document.getElementById("cityId").innerHTML += cityList;
					}
				}
			};
			ajax.open("GET", url, true);
			ajax.send(null);
		}
	}
	
	function validatePassword() {
		var password = document.getElementById('password').value;
		if (password.length < 6) {
			document.getElementById('alertMsg').style.color = 'red';
			document.getElementById('alertMsg').innerHTML = 'Password must be of 6 characters or more!';
			document.getElementById('password').style.color = 'red';
			return false;
		}
		else{
			document.getElementById('alertMsg').innerHTML = '';
			document.getElementById('password').style.color = 'green';
			return false;
		}
	}
	
	var check = function() {
		if (document.getElementById('password').value === document
				.getElementById('confirmPassword').value) {
			document.getElementById('message').style.color = 'green';
			document.getElementById('message').innerHTML = 'matching...';
			document.getElementById('confirmPassword').style.color = 'green';
		} else {
			document.getElementById('confirmPassword').style.color = 'red';
			document.getElementById('message').style.color = 'red';
			document.getElementById('message').innerHTML = 'not matching...';
		}
	}
	
	function validatePhone(){
		var phoneNumber = document.getElementById('phoneNumber').value;
		if (phoneNumber.length != 10) {
			document.getElementById('phoneError').style.color = 'red';
			document.getElementById('phoneError').innerHTML = 'Phone Number must be of 10 digits!';
			document.getElementById('phoneNumber').style.color = 'red';
			return false;
		}
		else{
			document.getElementById('phoneError').innerHTML = '';
			document.getElementById('phoneNumber').style.color = 'green';
			return false;
		}
	}
	
	function validateAge(){
		var age = document.getElementById('age').value;
		if (age < 20 || age > 60) {
			document.getElementById('ageError').style.color = 'red';
			document.getElementById('ageError').innerHTML = 'To donate blood, age must be in the range 20-60!';
			document.getElementById('age').style.color = 'red';
			return false;
		}
		else{
			document.getElementById('ageError').innerHTML = '';
			document.getElementById('age').style.color = 'green';
			return false;
		}
	}
	
	//Recpient
	function getCity1() {
		let stateId = $("#stateId1").val();
		console.log(stateId);
		if (stateId != null) {
			var ajax = new XMLHttpRequest();
			var url = "fetchCity?stateId=" + stateId;
			document.getElementById("cityId1").innerHTML = "<option value='-1' selected='selected'>Select City</option>";
			ajax.onreadystatechange = function() {
				if (ajax.readyState == 4) {
					let res = ajax.responseText;
					let result = JSON.parse(res);
					console.log(result)
					var count = Object.keys(result).length;
					for (let i = 0; i < count; i++) {
						let cityList = "<option value='"+result[i]["cityId"]+"'>"
								+ result[i]["cityName"] + "</option>";
						document.getElementById("cityId1").innerHTML += cityList;
					}
				}
			};
			ajax.open("GET", url, true);
			ajax.send(null);
		}
	}
	
	function validatePassword1() {
		var password = document.getElementById('password1').value;
		if (password.length < 6) {
			document.getElementById('alertMsg1').style.color = 'red';
			document.getElementById('alertMsg1').innerHTML = 'Password must be of 6 characters or more!';
			document.getElementById('password1').style.color = 'red';
			return false;
		}
		else{
			document.getElementById('alertMsg1').innerHTML = '';
			document.getElementById('password1').style.color = 'green';
			return false;
		}
	}
	
	var check1 = function() {
		if (document.getElementById('password1').value === document
				.getElementById('confirmPassword1').value) {
			document.getElementById('message1').style.color = 'green';
			document.getElementById('message1').innerHTML = 'matching...';
			document.getElementById('confirmPassword1').style.color = 'green';
		} else {
			document.getElementById('confirmPassword1').style.color = 'red';
			document.getElementById('message1').style.color = 'red';
			document.getElementById('message1').innerHTML = 'not matching...';
		}
	}
	
	function validatePhone1(){
		var phoneNumber = document.getElementById('phoneNumber1').value;
		if (phoneNumber.length != 10) {
			document.getElementById('phoneError1').style.color = 'red';
			document.getElementById('phoneError1').innerHTML = 'Phone Number must be of 10 digits!';
			document.getElementById('phoneNumber1').style.color = 'red';
			return false;
		}
		else{
			document.getElementById('phoneError1').innerHTML = '';
			document.getElementById('phoneNumber1').style.color = 'green';
			return false;
		}
	}
	
	function validateAge1(){
		var age = document.getElementById('age1').value;
		if (age < 20 || age > 60) {
			document.getElementById('ageError1').style.color = 'red';
			document.getElementById('ageError1').innerHTML = 'To donate blood, age must be in the range 20-60!';
			document.getElementById('age1').style.color = 'red';
			return false;
		}
		else{
			document.getElementById('ageError1').innerHTML = '';
			document.getElementById('age1').style.color = 'green';
			return false;
		}
	}