$(document).ready(function(){
    $("#icon-bar-left").click(function(){
        $(this).hide()
        $("#icon-bar-right").show();
        $(".slidebar").css({"width":"4%"})
        $(".icon-bar").css({"width":"100%"});
        $(".link-bar").hide();
    })
    $("#icon-bar-right").click(function(){
        $(this).hide();
        $("#icon-bar-left").show();
        $(".slidebar").css({"width":"20%"})
        $(".icon-bar").css({"width":"20%"});
        $(".link-bar").show();
    })
    $(".profile").click(function(){
        $("#profile-down").toggle();
        $("#profile-up").toggle();
        $(".profile-dropdown").toggle();
    })

    $(".content-section-column").mouseover(function(){
        $(this).css({"backgrounc-color":"red"})
    })

})


// ---------------------------------- Bar --------------------------------

console.log("This is Neeraj yadav")