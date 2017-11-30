change();
function change(){
        var pmWidth=document.documentElement.clientWidth;
        if (pmWidth>750){
            pmWidth=750;
        }
        document.documentElement.style.fontSize=pmWidth/7.5+"px";
    }
    window.onresize=function(){
        change();
    };
    // 点击
    var flag=true;
// $("#dj").on('click',function(){
//     if (flag) {
//         $(this).find("#yc").hide();
//         $(this).find(".dj_show").show();
//         $(this).find("#sq").show();
//         $(this).find("#dsj").removeClass(".dsj");
//         $(this).find('#dsj').addClass(".zsj");
//     }else{
//         $(this).find("#yc").show();
//         $(this).find(".dj_show").hide();
//         $(this).find('#dsj').addClass(".zsj");
//         $(this).find("#dsj").removeClass(".dsj");
//     }
//     flag=!flag;
    
// });
// 产品点击
// $("#cdj").on('click',function(){
//     if (flag) {
//         $(this).find("#cyc").hide();
//         $(this).find("#cdjz").hide();
//         $(this).find("#sq").show();
//         $(this).find("#cdsj").removeClass(".dsj");
//         $(this).find("#dsj").addClass(".zsj");
//     }else{
//         $(this).find("#cyc").show();
//         $(this).find("#sq").show();
//         $(this).find("#cdjz").hide();
//         $(this).find("#dsj").addClass(".zsj");
//         $(this).find("#cdsj").removeClass(".dsj");

//     }
//     flag=!flag;
    
// });
$("#dj_show").click(function(){
    $("#dj").addClass("showInfo")
});
$("#sq2").click(function(){
    // console.log($("#dj").html())
    $("#dj").removeClass(" showInfo")
});
$("#cdjz").click(function(){
    $("#cdj").addClass("showInfo")
});
$("#sq").click(function(){
    // console.log($("#dj").html())
    $("#cdj").removeClass(" showInfo")
});


