
function DisplaySubnav1() {
	var div = document.getElementById("subnav1");
	if (div.style.visibility == "hidden") {
		div.style.visibility = "visible";
		div.style.display = "block";
	} else {
		div.style.visibility = "hidden";
		div.style.display = "none";
	}
}

function DisplaySubnav2() {
	var div = document.getElementById("subnav2");
	if (div.style.visibility == "hidden") {
		div.style.visibility = "visible";
		div.style.display = "block";
	} else {
		div.style.visibility = "hidden";
		div.style.display = "none";
	}
}

function DisplaySubnav3() {
	var div = document.getElementById("subnav3");
	if (div.style.visibility == "hidden") {
		div.style.visibility = "visible";
		div.style.display = "block";
	} else {
		div.style.visibility = "hidden";
		div.style.display = "none";
	}
}

function page1() {
	var div1 = document.getElementById("sidebar_list1");
	var div2 = document.getElementById("sidebar_list2");
	div1.style.display = "block";
	div2.style.display = "none";
}

function page2() {
	var div1 = document.getElementById("sidebar_list1");
	var div2 = document.getElementById("sidebar_list2");
	div1.style.display = "none";
	div2.style.display = "block";
}
