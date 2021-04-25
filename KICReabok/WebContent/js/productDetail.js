$(".wrap")
    .on('mousemove', magnify)
    .prepend("<div class='magnifier'></div>")
    .children('.magnifier').css({
        "background": "url('" + $(".target").attr("src") + "') no-repeat",
        'transform': 'scale(1.7)'
    });
 
var target = $('.target');
var magnifier = $('.magnifier');


function magnify(e) {
 
    // 1
    var mouseX = e.pageX - $(this).offset().left;
    var mouseY = e.pageY - $(this).offset().top;
 
    // 2
    if (mouseX < $(this).width() && mouseY < $(this).height() && mouseX > 0 && mouseY > 0) {
        magnifier.fadeIn(100);
    } else {
        magnifier.fadeOut(100);
    }
 
    // 3
    if (magnifier.is(":visible")) {
 
        // 4    
        var rx = -(mouseX / target.width() * target[0].naturalWidth - magnifier.width() / 2);
        var ry = -(mouseY / target.height() * target[0].naturalHeight - magnifier.height()  /2);
 
        // 5
        var px = mouseX - magnifier.width() / 2;
        var py = mouseY - magnifier.height() / 2;
 
        // 6
        magnifier.css({
            left: px,
            top: py,
            backgroundPosition: rx + "px " + ry + "px"
        });
    }
}




//==========================

$('#thumbnails').children().mouseover(function(){
    $('.target').attr('src',$(this).attr("src"))
    $('.magnifier').css({
        "background": "url('" + $(".target").attr("src") + "') 500px 500px no-repeat",
        
        'transform': 'scale(1.2)'
    });
})