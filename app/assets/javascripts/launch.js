$(function() {
    $(".video").fitVids();

    $("[rel=tooltip]").tooltip();
    $("body").on('click', '.ajax', function() {
        var url, theme;
        url = $(this).data('target');
        theme = $(this).data('theme'); 
        $("body").removeAttr("class")
        $("body").addClass(theme);
        $("#load").load(url + ' .body', function(){
            $(".video").fitVids();
        });
        return false
    });
});
