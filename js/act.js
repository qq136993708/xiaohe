
    document.addEventListener('touchstart',function (event) {  
        if(event.touches.length>1){  
            event.preventDefault();  
        }  
    });  
    var lastTouchEnd=0;  
    document.addEventListener('touchend',function (event) {  
        var now=(new Date()).getTime();  
        if(now-lastTouchEnd<=100){  
            event.preventDefault();  
        }  
        lastTouchEnd=now;  
    },false);  

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
   
   
    // server-hide
    $(function(){
        $("#show-hide").click(function(){
            $(this).hide();
            $("#sub-slide").slideDown(500,function(){
                $("#hide-deta").show();
                console.log( $("#sub-slide").height()+"rem")
                $("#sub-slide").scrollTop()
                // $(window).scrollTop($(document.documentElement).scrollTop()+ 
                // $(window).scrollTop()+$("#show-hide").height()-($("#sub-slide").offset().top));
            });
           
        });
        $("#hide-deta").click(function(){
            $(this).hide();
            $("#sub-slide").slideUp(500,function(){
                $("#show-hide").show(300);
            });
           
        });
    });

    // manager-hide
    $(function(){
        $("#show-deta").click(function(){
            $(this).hide(30);
            $("#sub-down").slideDown(500,function(){
                $("#hide-up").show(50);
            });
           
        });
        $("#hide-up").click(function(){
            $(this).hide(30);
            $("#sub-down").slideUp(500,function(){
                // console.log($(window).scrollTop())
                $("#show-deta").show(500);
               
            });
           
        });
    })
    // form
    $(function(){
        $("#text-more").click(function(){
            $(this).hide(100);
            $(".form-more").slideDown(500);
            $("#slideup").show(100);
            $(".checkBox").show(100);
            $(".project").show(100);
            var top= $(document.documentElement).scrollTop()+$(window).scrollTop()+$("#slideup").height();
           $(window).scrollTop(top);
        })
    });
    $(function(){
        $("#slideup").click(function(){
            $(this).hide(100);
            $(".form-more").slideUp(500);
            $("#text-more").show(100);
            $(".checkBox").hide(100);
            $(".project").hide(100);
        })
    });
   

    $(function(){
        $(".other input").click(function(){
            var i= $('.item-other').length;
             var _check = $(this).attr("checked") ;
            if(_check=="checked"){
                $(".item-other").show();	
            }else{
                if($('.other input[type=checkbox]:checked').length==0){
                    $(".item-other").hide();	
                }
                
            }
        });
    });
    // 退出
    $(function(){
        $("#close").click(function(){
            WeixinJSBridge.call('closeWindow');
        })
    })

$(function(){
    var oRegisterBtn = $('#registerBtn');
	var oName = $('#name');
	var oPhone = $('#phone');
	var oIdea = $('#idea');
    var oSimpleidea =$('#simpleidea');
    var oTextidea =$('#textidea');
    
    $("#name").blur(function(){
        if(!oName.val()){
            $(this).addClass("err");
        } 
    });
    $("#phone").blur(function(){
        if(!oPhone.val()&& !/^1[34578]\d{9}$/.test(oPhone.val())){
            $(this).addClass("err");
        } 
    });
    $("#idea").blur(function(){
        if(!oIdea.val()){
            $(this).addClass("err");
        } 
    });
    $("#simpleidea").blur(function(){
        if(!oSimpleidea.val()){
            $(this).addClass("err");
        } 
    });
    $("#textidea").blur(function(){
        if(!oTextidea.val()){
            $(this).addClass("err");
        } 
    });
});
$(function(){
       $("#registerBtn").click(function(event){
    if(!oSimpleidea.val()||!oIdea.val()||!oName.val()||!oPhone.val()||!/^1[34578]\d{9}$/.test(oPhone.val())){
        event.preventDefault();
    }
   })
})
   