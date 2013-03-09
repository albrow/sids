$(function() {
	if (window.location.pathname == "/about") {
		if (window.location.hash == "") {
			$(".accordion section#michael").addClass("accordion-selected");
		} else {
			$("section").removeClass("accordion-selected");
		}
	}
	$("section a").click(function() {
		$("section").removeClass("accordion-selected");
	})
});