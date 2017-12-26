/**
 * 微信分享相关配置
 * 
 * @file share.js
 * @author Wayne
 */


function getWeixinConfig(){
	wx.config({  
        debug: false,  
        appId: $("#appId").val(), 
        timestamp: $("#timestamp").val(), 
        nonceStr:  $("#nonceStr").val(), 
        signature:  $("#signature").val(),        
        jsApiList: [  
            'onMenuShareTimeline',
            'onMenuShareAppMessage',
            'onMenuShareQQ',
            'onMenuShareWeibo',
            'onMenuShareQZone'
        ]  
    }); 
    initWxShare(); 
}

function initWxShare(){
	
	var title="小禾科技产品有奖反馈",
	    link = "http://feedback.baonahao.com",
	    imgUrl = "http://feedback.baonahao.com/img/logo.gif",
	    desc = "小禾科技产品有奖反馈：一旦您的需求被收录，均有机会获得爱校团队送出的精美...";
	
	wx.ready(function () {  
		
		var shareObj = {
				title: title, // 分享标题
		        link:link,// 分享链接
		        imgUrl: imgUrl, // 分享图标
			desc:desc
		};
		 // 获取“分享到朋友圈”按钮点击状态及自定义分享内容接口
	    wx.onMenuShareTimeline(shareObj);
	    
	    // shareObj.des = des;
	    
	    // 获取“分享给朋友”按钮点击状态及自定义分享内容接口
	    wx.onMenuShareAppMessage(shareObj);
	    
	    // 获取“分享到QQ”按钮点击状态及自定义分享内容接口
	    wx.onMenuShareQQ(shareObj);
	    
	    // 获取“分享到腾讯微博”按钮点击状态及自定义分享内容接口
	    wx.onMenuShareWeibo(shareObj);
	    
	    // 获取“分享到QQ空间”按钮点击状态及自定义分享内容接口
	    wx.onMenuShareQZone(shareObj);
	 });
	
}

getWeixinConfig();
