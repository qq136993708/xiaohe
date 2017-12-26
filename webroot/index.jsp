<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@page language="java" import="com.xh.util.WeixinUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String basePath = request.getContextPath();
	
	//拼接URL
	String url ="http://feedback.baonahao.com/";  
	url+="?"+request.getQueryString(); 
	
	Map<String,Object>  ret = new HashMap<String,Object> ();
	ret=WeixinUtil.getWxConfig(request,url);
	String appId = ret.get("appId").toString();
	String timestamp=ret.get("timestamp").toString();
	String nonceStr=ret.get("nonceStr").toString();
	String signature = ret.get("signature").toString();

%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />

<title>小禾科技产品有奖反馈</title>

	<link rel="stylesheet" href="<%=basePath%>/css/reset.css">
	<link rel="stylesheet" href="<%=basePath%>/css/act.css">
	<link rel="stylesheet" href="<%=basePath%>/css/city.css">

 
</head>
<body>
	<div class="container">
	<input type="hidden" id="appId" value="<%=appId%>">
	<input type="hidden" id="timestamp" value="<%=timestamp%>">
	<input type="hidden" id="nonceStr" value="<%=nonceStr%>">
	<input type="hidden" id="signature" value="<%=signature%>">
		<!-- 头部 -->
		<p class="text-hidden">一旦您的需求被收录，均有机会获得爱校团队送出的精美礼品哦。</p>
		<div class="act-head">
			<div class="head-logo">
					<a href="javascript:;" class="logo-head"><img src="<%=basePath%>/img/logo.png" alt=""></a>
					<h1 class="act-title">小禾用户与技术服务对话专区</h1>
				</div>
					<img class="act-img" src="<%=basePath%>/img/banner.png" alt="">
			
          
		</div>
		<!-- 主要内容 -->
		<div class="act-body">
			<dl class="act-main">
				<dt class="act-step">
					<h2>1</h2>
				</dt>
				<dd class="act-info">
					<p class="toUser">亲爱的您：</p>
					<p class="act-text">小禾旗下所有产品的用户与技术服务交流渠道开通啦，旨在为您打造更直接有效的与产品对话的桥梁，让技术与您面对面，完成您的需求，有没有很贴心？</p>
					<p class="weight-text">重点来啦！</p>
					<p class="act-text">凡是留言成功的爱校用户，我们会第一时间做整理，一旦您的需求被收录，均有机会获得爱校团队送出的精美礼品哦。</p>
				</dd>
			</dl>


			<dl class="act-main">
				<dt class="act-step">
					<h2>2</h2>
				</dt>
				<dd class="act-info">
					<div class="sub-model">
						<div class="sub-title">
							<h2>来自服务团队的信</h2>
						</div>
						<div class="sub-body">
							<div class="show-detail" id="show-hide">
								<i class="show-btn">点击展开具体内容</i> <span class="viewMore"></span>
							</div>
							<div class="sub-detail" id="sub-slide">
								<h3 class="letter-title">相逢业已恨晚，前路不负相伴</h3>
								<p class="toUser">亲爱的您：</p>
								<p class="act-text">我们知道在您使用我们的产品时候，一定会遇到无数困难，所以，我们服务团队为解决您的顾虑而成立，但我们终究还是来晚了。</p>
								<p class="act-text">我们也深知，对于机构而言，再成熟的系统也都只会简单的像个孩子。但请您相信，“孩子”总会“长大”，小禾团队的成长速度无疑是行业中最快的一批。</p>
								<p class="act-text">小禾科技的创始团队正是怀着一颗陪伴与成长的赤子之心，用12年时间同国内诸多教培机构一起做大做强，我们将机构信息化管理经验凝结成的爱校管理系统，旨在为更多机构做更好的服务。</p>
								<p class="act-text">然而没有一套系统可以满足所有人的所有需求，还请您对产品多一分理解，也同样期待您的鞭策与鼓励。</p>
								<p class="act-text">我们希望有机会陪伴您一起成长，相逢业已恨晚，前路不负相伴！</p>
								<p class="act-text letter-end">来自：小禾服务团队</p>
							</div>
							<div class="hide-detail" id="hide-deta">
								<i class="hide-btn">点击收起</i> <span class="viewMore hide"></span>
							</div>
						</div>
					</div>
					<div class="sub-model">
						<div class="sub-title">
							<h2>来自产品经理的信</h2>
						</div>
						<div class="sub-body">
							<div class="show-detail" id="show-deta">
								<i class="show-btn">点击展开具体内容</i> <span class="viewMore"></span>
							</div>
							<div class="sub-detail" id="sub-down">
								<h3 class="letter-title">做能发现您需求的眼睛和倾听您心声的耳朵～</h3>
								<p class="toUser">亲爱的您：</p>
								<p class="act-text">作为参与过多家国内大型教育机构信息化管理系统从无到有的建设的成员，我们曾自信满满，推出了理想中的标准化管理信息系统，并欲一路领跑。</p>
								<p class="act-text">然而，在前进过程中，发现有时候与用户的距离越来越远，可能是我们在设计产品的过程中，陷入自我膨胀的误区。一味地从产品的角度思考，高度很高，又寄予了产品人很多的想法，但等产品出来后，用户却不会去使用，坦白说，并没有切中用户的真实需求。圈内几位资深的PM也都在感慨有时候很难抓住用户需求。</p>
								<p class="act-text">我们经过反思，认为必须像从前一样，一边向用户倾听需求，一边为用户开发服务。</p>
								<p class="act-text">所以，我们建立了这个直达您身边的绿色通道，希望它做能发现您需求的眼睛，和倾听您心声的耳朵。</p>
								<p class="act-text letter-end">来自：小禾服务团队</p>
							</div>
							<div class="hide-detail" id="hide-up">
								<i class="hide-btn">点击收起</i> <span class="viewMore hide"></span>
							</div>
						</div>
					</div>
				</dd>
			</dl>

			<dl class="act-main">
				<dt class="act-step">
					<h2>3</h2>
				</dt>
				<dd class="act-info">
					<div class="sub-model">
						<div class="sub-title">
							<h2>活动说明</h2>
						</div>
						<div class="sub-body">
							<div class="act-rule">
								<div class="rule-info">
									<span>活动主题：</span> <span class="font-red">【有奖反馈】用户与技术服务交流活动</span>
								</div>
								<div class="rule-info">
									<span>活动时间：</span> <span class="font-red">长期有效</span>
								</div>
								<div class="rule-info">
									<span>参与范围：</span> <span class="font-red">全体爱校用户</span>
								</div>
								<div class="rule-info">
									<span>奖品设置：</span>
									<ul class="act-img-box">
										<li class="item">
											<p class="act-rank font-red">一等奖</p>
											<div class="img-box first">
												<!-- <img src="./img/aixiao.png" alt=""> -->
											</div>
											<p class="act-name">系统免费扩容
												<br>100人次
												<br>(价值¥1600)</p>
										</li>
										<li class="item">
											<p class="act-rank font-red">二等奖</p>
											<div class="img-box second">
												<!-- <img src="./img/camera.png" alt=""> -->
											</div>
											<p class="act-name">网络摄像头
												<br>￥159</p>
										</li>
										<li class="item">
											<p class="act-rank font-red">三等奖</p>
											<div class="img-box third">
												<!-- <img src="./img/upan.png" alt=""> -->
											</div>
											<p class="act-name">定制U盘
												<br>￥60</p>
										</li>
										<li class="item">
											<p class="act-rank font-red">心意奖</p>
											<div class="img-box fourth">
												<!-- <img src="./img/redmoney.png" alt=""> -->
											</div>
											<p class="act-name">￥6.6 红包
												<br>×7</p>
										</li>
									</ul>
								</div>
							</div>
							<div class="act-tips">
								<h3 class="tips-title">奖品相关详情请仔细阅读<i style="color:red;">补充说明</i>
								</h3>
								<p class="tips-info">1 每双周五于公众号【爱校服务号】公开上阶段收录的需求及需求提出者，进行投票；
								</p>
								<p class="tips-info">2 隔周周五于公众号上公开【投票结果】，票数越高，奖项越大；
								</p>
								<p class="tips-info">3 每期必有一大奖，最大奖送爱校免费扩容【100人次】服务，该服务在系统合同期内履行最多12个自然月(若合同截止日期小于12个月，则赠予人次随合同同时终止)；
								</p>
								<p class="tips-info">4 实物奖品将由专属顾问核实联系方式后邮寄发放，虚拟奖品将直接由专属顾问发放；
								</p>
								<p class="tips-info">5 最终解释权归小禾科技所有。</p>
							</div>
						</div>
					</div>
				</dd>
			</dl>
			<dl class="act-main">
				<dt class="act-step">
					<h2>4</h2>
				</dt>
				<dd class="act-info">
					<div class="link-up-box">
						<div class="link-up-head">
							<h2 class="link-up-title">问题反馈表</h2>
							<p class="link-up-subtitle">*均为必填选项</p>
						</div>

						<div class="link-form">
							<form name="form1" id="myFrom" action="<%=basePath%>/Problem/add" method="post">
 
								<div class="groups">
									<input class="baseLen" type="text" name="user.username"
										placeholder="*请输入您的名字" id="name" > <input id="phone"
										class="baseLen" name="user.phoneNumber" type="text" 
										placeholder="*请输入您手机号">
									<div class="select-text">
										<select class="baseLen" name="problemType">
											<option>选择类型</option>
											<option>意见/建议</option>
											<option>新需求</option>
											<option>问题反馈</option>
										</select>
									</div>
								</div>
								<div class="groups">
									<input class="baseLen dbBaseLen" id="simpleidea" name="description" type="text"
										placeholder="*简单的问题描述">
									<div class="select-text">
										<select class="baseLen" name="belongProbject" id="simpleidea">
											<option>爱校</option>
											<option>爱学</option>
											<option>爱盟</option>
										</select>
									</div>
								</div>
								<div class="groups">
									<textarea name="details" id="textidea"
										placeholder="逻辑清晰,条理分明的阐述会 更有助于我们的理解哦~"></textarea>
								</div>
								<div class="form-more">
									<h4>扩展表单（选填）</h4>
									<div class="groups">
										<span>机构名称：</span> <input id="mechanism" class="baseLen lenAuto"
											name="mechanism.name" type="text" placeholder="请填写机构名称">
									</div>
									<div class="groups">
										<span>其他联系方式：</span> <input id="otherContact" class="baseLen lenAuto"
											name="user.otherContact" type="text"
											placeholder="E-mail或其他手机号">
									</div>
										<div class="groups">

										<div class="groups infolist ">

											<span id="project-span">您的机构地址：</span>

											<div class="liststyle">

												<span id="Province" class="label"> <i  class="i-value
												">请选择省份</i>

													<ul id="ul-Province">

														<li><a href="javascript:void(0)" alt="请选择省份">请选择省份</a></li>

													</ul> <input type="hidden" id="cho_province" name="mechanism.ch_province" value="请选择省份">

												</span> <span id="City"> <i>请选择城市</i>

													<ul id="ul-city">

														<li><a href="javascript:void(0)" alt="请选择城市">请选择城市</a></li>

													</ul> <input type="hidden" name="mechanism.ch_city" value="请选择城市">

												</span> <span id="Area"> <i>请选择地区</i>

													<ul id="ul-area">

														<li><a href="javascript:void(0)" alt="请选择地区">请选择地区</a></li>

													</ul> <input type="hidden" name="mechanism.ch_area" value="请选择地区">

												</span> <input class="baseLen lenAuto area-input" type="text" placeholder="请填写详细的街道及门牌号">
											</div>
										</div>
										<div class="groups">
											<span>机构经营类型：</span> <input class="baseLen lenAuto"
												type="text" name="mechanism.mechanismType" id="mechanismType"
												placeholder="类型,经营范围等">
										</div>
										<div class="groups checkBox">
											<span>您关注的功能点：</span>
											<div class="userAddress">
												<div class="item">
													<input type="checkbox" checked name="mechanism.features" 
														value="1"> <label for="">招生、活动</label>
												</div>
												<div class="item">
													<input type="checkbox" checked name="mechanism.features"
														value="2"> <label for="">业务管理</label>
												</div>
												<div class="item">
													<input type="checkbox" checked name="mechanism.features"
														value="3"> <label for="">数据管理</label>
												</div>
												<div class="item">
													<input type="checkbox" checked name="mechanism.features"
														value="4"> <label for="">加盟中心</label>
												</div>
												<div class="item">
													<input type="checkbox" checked name="mechanism.features"
														value="5"> <label for="">APP</label>
												</div>
												<div class="item other">
													<input type="checkbox"> <label class="addLabel"  for="">其他</label> <input
														class="item-other" name="other" type="text"
														placeholder="填写更多">
												</div>
											</div>
										</div>

									</div>


								</div>
						</div>
						<div class="btn-groups">
							<input type="submit" class="btn btn-khaki" id="sub" 
								value="提交">
							<!-- 	<a href="from.html" class="btn btn-khaki">提交</a> -->
							<a href="javascript:;" class="btn btn-green" id="text-more">填写更多</a>
							<a href="javascript:;" class="btn btn-green btn-up" id="slideup"
								style="display: none;">收起</a>
						</div>
						</form>

					</div>
		</div>
		</dd>
		</dl>

	</div>

	<!-- 底部 -->
	<div class="act-foot">
		<img src="<%=basePath%>/img/footerImg.png" alt="">
	</div>
	</div>
 
	
	<script src="<%=basePath%>/js/jquery-1.8.3.min.js"></script>
	<script src="http://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
	<script src="<%=basePath%>/js/city.js"></script>
	<script src="<%=basePath%>/js/act.js"></script>
	<script src="<%=basePath%>/js/share.js"></script>
	
</body>
</html>