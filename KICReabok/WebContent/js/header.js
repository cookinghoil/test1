$(document).ready(function(){
    $('#nav_man,#sub_nav').mouseover(function(){ 
        $('#sub_nav').css('opacity','1');
        $('#sub_nav').css('visibility','visible');
        $('#sub_nav').css('transition','0.5s'); 
    })
    $('#nav_man,#sub_nav').mouseout(function(){
        $('#sub_nav').css('opacity','0');
        $('#sub_nav').css('visibility','hidden'); 
        $('#sub_nav').css('transition','0.5s');
   
    })

    
    $('#nav_women,#sub_nav2').mouseover(function(){ 
        $('#sub_nav2').css('opacity','1');
        $('#sub_nav2').css('visibility','visible');
        $('#sub_nav2').css('transition','0.5s'); 
    })
    $('#nav_women,#sub_nav2').mouseout(function(){
        $('#sub_nav2').css('opacity','0');
        $('#sub_nav2').css('visibility','hidden'); 
        $('#sub_nav2').css('transition','0.5s');
   
    })

    $('#nav_classic,#sub_nav3').mouseover(function(){ 
        $('#sub_nav3').css('opacity','1');
        $('#sub_nav3').css('visibility','visible');
        $('#sub_nav3').css('transition','0.5s'); 
    })
    $('#nav_classic,#sub_nav3').mouseout(function(){
        $('#sub_nav3').css('opacity','0');
        $('#sub_nav3').css('visibility','hidden'); 
        $('#sub_nav3').css('transition','0.5s');
   
    })    

    $('#nav_brand,#sub_nav4').mouseover(function(){ 
        $('#sub_nav4').css('opacity','1');
        $('#sub_nav4').css('visibility','visible');
        $('#sub_nav4').css('transition','0.5s'); 
    })
    $('#nav_brand,#sub_nav4').mouseout(function(){
        $('#sub_nav4').css('opacity','0');
        $('#sub_nav4').css('visibility','hidden'); 
        $('#sub_nav4').css('transition','0.5s');
   
    })    

    $('#user,#nav_login').mouseover(function(){ 
        $('#nav_login').css('opacity','1');
        $('#nav_login').css('visibility','visible');
        $('#nav_login').css('transition','0.5s'); 
    })
    $('#user,#nav_login').mouseout(function(){
        $('#nav_login').css('opacity','0');
        $('#nav_login').css('visibility','hidden'); 
        $('#nav_login').css('transition','0.5s');
   
    })  
});