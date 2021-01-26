<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    String a01 = request.getParameter("question01");
    String a02 = request.getParameter("question02");
    String a03 = request.getParameter("question03");
    String a04 = request.getParameter("question04");
    String a05 = request.getParameter("question05");
    String a06 = request.getParameter("question06");
    String a07 = request.getParameter("question07");
    String a08 = request.getParameter("question08");
    String a09 = request.getParameter("question09");
    
    int value01 = (int)session.getAttribute(a01);
    session.setAttribute(a01, value01+1);
    int value02 = (int)session.getAttribute(a02);
    session.setAttribute(a02, value02+1);
    int value03 = (int)session.getAttribute(a03);
    session.setAttribute(a03, value03+1);
    int value04 = (int)session.getAttribute(a04);
    session.setAttribute(a04, value04+1);
    int value05 = (int)session.getAttribute(a05);
    session.setAttribute(a05, value05+1);
    int value06 = (int)session.getAttribute(a06);
    session.setAttribute(a06, value06+1);
    int value07 = (int)session.getAttribute(a07);
    session.setAttribute(a07, value07+1);
    int value08 = (int)session.getAttribute(a08);
    session.setAttribute(a08, value08+1);
    int value09 = (int)session.getAttribute(a09);
    session.setAttribute(a09, value09+1);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="main.css" rel="stylesheet" type="text/css">
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<title>반반테스트 결과</title>
</head>
<body>
<%
String []Item={"A","C","E"};
String flower = "모란";

if((int)session.getAttribute("A") < 2){
	Item[0]="B";
	flower = "금낭화";
}
if((int)session.getAttribute("C") < 2){
	Item[1]="D";
	if(Item[0]=="A")
		flower = "잇꽃";
	else
		flower = "해바라기";
}
if((int)session.getAttribute("E") < 2){
	Item[2]="F";
	if(Item[0]=="A"){
		if(Item[1]=="C")
			flower = "연꽃";
		else
			flower = "동백꽃";
	}
	else{
		if(Item[1]=="C")
			flower = "달맞이꽃";
		else
			flower = "개나리";
	}
}
%>

<div class="container-fluid">
<div class="row justify-content-center" style="margin-top: 60px">
<%if(flower.equals("모란")){%>
	<div class="col-11 p-4 text-center" style="padding-bottom: 0 !important">
		<h5>당신의 정치花는</h5>
		<h1>모란(목단)</h1>
		<p style="margin-top: 15px; margin-bottom: 10px"><small>
		<mark style="background: #f2f2f2">#부귀</mark>
		<mark style="background: #f2f2f2">#영화</mark>
		<mark style="background: #f2f2f2">#왕자의품격</mark>
		</small></p>
		<img src="image/result1.jpg" style="max-width: 75%; height: auto; margin-bottom: 10px">
		<h6>당신은 <mark style="background-color:#fdd">모란</mark>을 닮았습니다.</h6>		
		<p style="margin-top: 15px; text-align: left !important"><small>
		‘모란’은 선덕여왕의 지혜를 보여주는 일화로 유명한 꽃입니다.
		당신 역시 상당히 지혜롭고도 현실적입니다.
		따라서 문제에 대한 현실적인 방법을 원합니다. 또, 능동적인 면도 있어 스스로의 의견을 내기도 합니다.
		</small></p>
		<p style="text-align: left !important"><small>
		동시에 당신은 완전한 자유보다 규율과 규칙을 더 중요하게 여깁니다.
		그렇기에 문제에 대한 대책은 보통 어느 정도 규율이나 법으로 강제되어야 한다고 생각합니다.
		</small></p>
		<p style="text-align: left !important"><small>
		당연하게도 애매하거나 확실하지 않은 답은 원하지 않습니다.
		그러나 지금 당신의 주위에도 정확한 답이 정해지지 않은 문제들이 많습니다.
		이런 문제에 대해 하나하나 홀로 판단하는 것은 매우 힘든 일입니다.
		</small></p>
	</div>
<%}
else if(flower.equals("금낭화")){%>
	<div class="col-11 p-4 text-center" style="padding-bottom: 0 !important">
		<h5>당신의 정치花는</h5>
		<h1>금낭화(며느리취)</h1>
		<p style="margin-top: 15px; margin-bottom: 10px"><small>
		<mark style="background: #f2f2f2">#당신을따르겠습니다</mark>
		</small></p>
		<img src="image/result2.jpg" style="max-width: 75%; height: auto; margin-bottom: 10px">
		<h6>당신은 <mark style="background-color:#edf">금낭화</mark>를 닮았습니다.</h6>		
		<p style="margin-top: 15px; text-align: left !important"><small>
		당신은 정치적으로 직접 나서서 표현하려고 하지 않습니다.
		그리고 당신의 생각에 크게 문제될 것이 없다면 불편함을 느끼지도 않습니다.
		</small></p>
		<p style="text-align: left !important"><small>
		하지만 당신이 보기에 합리적이지 않은 것에 대해서는 확실하게 잘못되었음을 인지하고 바람직한 의견을 찾아 열렬히 지지하기도 합니다.
		그만큼 당신은 자신의 의견을 정하는 데에 상당히 신중합니다.
		그렇기에 생각을 한번 정하면 쉽게 바꾸지 않습니다.
		</small></p>
		<p style="text-align: left !important"><small>
		또한 많은 사람들이 당신과 같은 사람들의 지지에 상당한 힘을 받습니다.
		그리고 당신의 믿음을 저버리지 않기 위해 의견을 더 좋은 방향으로 완성해 나갈 것입니다.
		</small></p>
	</div>
<%}
else if(flower.equals("잇꽃")){%>
	<div class="col-11 p-4 text-center" style="padding-bottom: 0 !important">
		<h5>당신의 정치花는</h5>
		<h1>잇꽃(홍화)</h1>
		<p style="margin-top: 15px; margin-bottom: 10px"><small>
		<mark style="background: #f2f2f2">#불변</mark>
		<mark style="background: #f2f2f2">#당신을물들이다</mark>
		</small></p>
		<img src="image/result3.jpg" style="max-width: 75%; height: auto; margin-bottom: 10px">
		<h6>당신의 정치참여는 <mark>잇꽃</mark>을 닮았습니다.</h6>		
		<p style="margin-top: 15px; text-align: left !important"><small>
		잇꽃은 홍화라고도 불리며, 흔히 적색 염료를 얻기 위해 쓰이는 꽃입니다.
		그래서 ‘당신을 물들이다’라는 의미를 가지기도 합니다.
		</small></p>
		<p style="text-align: left !important"><small>
		잇꽃을 닮은 당신도 누군가에게 자신의 정치적인 생각을 전하여 지지하게 만드는 것에 적극적입니다.
		그러면서도 당신은 좋은 결과를 위해서는 어느정도 규율이나 강제력이 필요하다고 생각합니다.
		</small></p>
		<p style="text-align: left !important"><small>
		그만큼 당신은 확실한 정치적인 관념을 가지고 있습니다.
		물론 간혹 이러한 관념만 내세우고 현실적이지 못한 대책을 내기도 하여 많은 비판을 받기도 합니다.
		하지만 자신의 의견에 상당한 믿음이 있는 편이라서 쉽게 흔들리거나 생각을 바꾸지 않습니다.
		</small></p>
	</div>
<%}
else if(flower.equals("해바라기")){%>
	<div class="col-11 p-4 text-center" style="padding-bottom: 0 !important">
		<h5>당신의 정치花는</h5>
		<h1>해바라기</h1>
		<p style="margin-top: 15px; margin-bottom: 10px"><small>
		<mark style="background: #f2f2f2">#기다림</mark>
		<mark style="background: #f2f2f2">#애모</mark>
		</small></p>
		<img src="image/result4.jpg" style="max-width: 75%; height: auto; margin-bottom: 10px">
		<h6>당신은 <mark style="background-color:#fed">해바라기</mark>를 닮았습니다.</h6>
		<p style="margin-top: 15px; text-align: left !important"><small>
		당신은 확고한 정치적 이상향을 지니고 있습니다.
		그렇기에 현실적인 방안을 생각하기 보다 자신의 이상과 얼마나 맞는가를 먼저 고려하기도 합니다.
		</small></p>
		<p style="text-align: left !important"><small>
		다만 당신은 먼저 나서서 의견을 내는 성향은 아닙니다.
		정치적인 이념과 생각이 있어도 항상 그에 맞는 좋은 생각을 가진 사람이 없다면 그 생각을 펼치지 못하기도 합니다.
		</small></p>
		<p style="text-align: left !important"><small>
		하지만 언제나 당신은 그런 사람을 기다리며 지지할 만한 사람이 나타났을 때에 열렬히 지지하는 사람입니다.
		</small></p>
	</div>
<%}
else if(flower.equals("연꽃")){%>
	<div class="col-11 p-4 text-center" style="padding-bottom: 0 !important">
		<h5>당신의 정치花는</h5>
		<h1>연꽃</h1>
		<p style="margin-top: 15px; margin-bottom: 10px"><small>
		<mark style="background: #f2f2f2">#군자</mark>
		<mark style="background: #f2f2f2">#순결</mark>
		<mark style="background: #f2f2f2">#청정</mark>
		<mark style="background: #f2f2f2">#신성</mark>
		</small></p>
		<img src="image/result5.jpg" style="max-width: 75%; height: auto; margin-bottom: 10px">
		<h6>당신은 <mark style="background-color:#def">연꽃</mark>을 닮았습니다.</h6>		
		<p style="margin-top: 15px; text-align: left !important"><small>
		연꽃은 흐린 물에서도 예쁘게 피어나는 꽃입니다.
		그런 연꽃을 닮은 당신은 흐리고 보이지 않는 정치적인 문제에서도 현실적으로 가능한 대책을 찾아 제시하곤 합니다.
		</small></p>
		<p style="text-align: left !important"><small>
		특히나 당신은 개인의 자유를 해치는 일에 대해 더 민감하게 받아들이고 해결해야 한다고 생각합니다.
		그리고 그만큼 강압적이고 자유를 제한하는 규정에 불만감을 가지기도 합니다.
		</small></p>
		<p style="text-align: left !important"><small>
		물론 모든 경우에서 옳은 판단을 할 수는 없습니다.
		하지만 당신의 냉철한 판단력은 여러가지 정치적인 문제 속에서 분명 빛을 낼 수 있을 것입니다.
		</small></p>
	</div>
<%}
else if(flower.equals("동백꽃")){%>
	<div class="col-11 p-4 text-center" style="padding-bottom: 0 !important">
		<h5>당신의 정치花는</h5>
		<h1>동백꽃</h1>
		<p style="margin-top: 15px; margin-bottom: 10px"><small>
		<mark style="background: #f2f2f2">#진실한사랑</mark>
		<mark style="background: #f2f2f2">#청렴</mark>
		</small></p>
		<img src="image/result6.jpg" style="max-width: 75%; height: auto; margin-bottom: 10px">
		<h6>당신의 정치참여는 <mark style="background-color:#fdd">동백꽃</mark>을 닮았습니다.</h6>		
		<p style="margin-top: 15px; text-align: left !important"><small>
		당신은 현실적이기 보다는 당신의 이상향에 맞춰 정치적인 의견을 제시합니다.
		그리고 어떠한 정책에 대해서 최대한 개인의 자유를 해치지 않는 방향을 선호합니다.
		만약 이에 어긋나거나 마음에 들지 않을 때에 당신은 확실히 의견을 내세울 수도 있는 사람입니다.
		</small></p>
		<p style="text-align: left !important"><small>
		가끔은 이상과 자유를 앞세워 가끔은 현실적이지 못한 대책이라는 말을 듣기도 합니다.
		이에 때로는 자신의 생각에 대해 스스로 흔들릴 수 있습니다.
		</small></p>
		<p style="text-align: left !important"><small>
		그렇지만 명심하세요.
		‘동백꽃’이 추운 겨울에도 꽃을 피우듯 당신의 생각이 충분히 좋다면 분명 당신을 지지하는 사람들이 생길 것입니다.
		그리고 같은 생각을 가진 사람들과 충분히 더 나은 대책을 만들어 낼 겁니다.
		</small></p>
	</div>
<%}
else if(flower.equals("달맞이꽃")){%>
	<div class="col-11 p-4 text-center" style="padding-bottom: 0 !important">
		<h5>당신의 정치花는</h5>
		<h1>달맞이꽃</h1>
		<p style="margin-top: 15px; margin-bottom: 10px"><small>
		<mark style="background: #f2f2f2">#말없는사랑</mark>
		<mark style="background: #f2f2f2">#기다림</mark>
		</small></p>
		<img src="image/result7.jpg" style="max-width: 75%; height: auto; margin-bottom: 10px">
		<h6>당신은 <mark style="background-color:#efd">달맞이꽃</mark>을 닮았습니다.</h6>		
		<p style="margin-top: 15px; text-align: left !important"><small>
		당신은 현실에 잘 수긍하는 편이지만 권위적이고 자유롭지 못한 것에 불편함을 많이 느끼는 편입니다.
		정치적인 이슈에서도 대부분 아무렇지 않은 듯이 지내다가 개인의 자유를 통제하고 금지하는 것에 대해서는 그냥 넘어가지 못합니다.
		</small></p>
		<p style="text-align: left !important"><small>
		하지만 당신은 먼저 나서서 의견을 표출하는 유형이 아닙니다.
		그저 누군가 나와서 문제에 대해 해결책을 내주기를 바라기도 하기에 남들에게 정치에 무관심하다고 오해를 받기도 합니다.
		</small></p>
		<p style="text-align: left !important"><small>
		그러나 원하는 후보나 의견이 나오면 관심을 갖고 그 사람을 열심히 지지합니다.
		다만 이에 대해서 티를 내거나 언급하기는 꺼립니다.
		</small></p>
	</div>
<%}
else{%>
	<div class="col-11 p-4 text-center" style="padding-bottom: 0 !important">
		<h5>당신의 정치花는</h5>
		<h1>개나리(연교화)</h1>
		<p style="margin-top: 15px; margin-bottom: 10px"><small>
		<mark style="background: #f2f2f2">#희망</mark>
		<mark style="background: #f2f2f2">#기대</mark>
		<mark style="background: #f2f2f2">#깊은정</mark>
		</small></p>
		<img src="image/result8.jpg" style="max-width: 75%; height: auto; margin-bottom: 10px">
		<h6>당신은 <mark>개나리</mark>를 닮았습니다.</h6>		
		<p style="margin-top: 15px; text-align: left !important"><small>
		나름의 정치적인 이상이 있고, 권위적인 방식보다는 자유로운 방식으로 문제를 해결하고자 합니다.
		그러나 문제에 대해서 먼저 나서는 것을 원하지 않고 타인의 의견을 지지하는 역할로 의견을 표현합니다.
		</small></p>
		<p style="text-align: left !important"><small>
		그렇다고 문제 해결에 대해 의지가 약하지 않습니다.
		당신은 당신만의 확고한 생각이 있고 이에 가장 부합하는 의견에 최대한 힘을 실어줄 사람입니다.
		다만 자신이 원하는 생각과 맞는 편이 없을 경우, 나서지도 못하고 혼자 답답하다는 느낌을 많이 받을 수 있습니다.
		</small></p>
		<p style="text-align: left !important"><small>
		하지만 ‘개나리’는 추운 겨울을 버티고 봄에 꽃을 피어나듯이,
		당신도 알맞은 환경만 주어진다면 당신의 생각을 표현할 수 있는 힘이 있습니다.
		</small></p>
	</div>
<%}%>
</div>

<div class="row justify-content-center">
	<div class="col-10 p-3 text-center" style="background: #edf2fc; border-radius: 15px">
		<p><small>
		<strong>반반투표</strong>는 당신과 맞는 의견이 실시간으로 나오고 있고, 간단하게 의견을 내고 지지할 수 있는 곳입니다.
		그런 <strong>반반투표</strong>에서 당신의 의견을 꽃피워보는 것은 어떨까요?
		</small></p>
		<div class="d-grid">
			<a href="https://play.google.com/store/apps/details?id=com.pj.banbanvote" class="btn btn-start" style="padding: 12px; background: #FFFFFF !important">반반투표에서 토론하기</a>
		</div>
	</div>
	<div class="col-11 p-4 text-center">
		<h4 style="margin-top: 50px; margin-bottom: 40px">테스트 결과 공유하기</h4>
		<div class="btn-toolbar justify-content-between" role="toolbar" style="margin-bottom: 30px">
			<a id="kakao-link-btn" href="javascript:sendLink()" style="margin-left:5px">
				<img src="image/kakaolink_btn_medium.png" style="width:50px; height:50px; margin-bottom:5px"><br clear="left">카카오톡</a>
			<a href="javascript:shareStoryApp()">
				<img src="image/kakaostory_icon_only.png" style="width:50px; margin-bottom:5px"><br clear="left">카카오스토리</a>
			<button class="btn-image" onclick="copy('#')"><%--테스트 url--%>
				<img src="image/Link.png" style="width:50px; margin-bottom:5px"><br clear="left">링크 복사</button>
		</div>
	</div>
</div>
</div>

<footer class="justify-content-center text-center p-4" style="margin-top: 40px">
	<p style="font-size: xx-small; padding-top: 10px">copyright(c) 2021 (주)평정커뮤니케이션 All Rights Reserved.
	<br>
	반반테스트 is Powered by _ / Designed by _</p>
</footer>

<script type="text/javascript">
Kakao.init('b6956573c6fa3b353101d6f22b43da08');

function sendLink() {
	Kakao.Link.sendDefault({
		objectType: 'feed',
		content: {
			title: '저의 정치화는 <%=flower%>입니다.',
			description: '당신의 정치참여 유형은 어떤 꽃인가요? 테스트를 통해 알아보세요!',
			imageUrl:'#',//대표사진 url
			link: {
				mobileWebUrl: 'https://play.google.com/store/apps/details?id=com.pj.banbanvote',
				webUrl: 'https://play.google.com/store/apps/details?id=com.pj.banbanvote',
			},
		},
		buttons: [
		{
			title: '나의 정치화 알아보기',
			link: {
			mobileWebUrl: 'https://play.google.com/store/apps/details?id=com.pj.banbanvote',//테스트 url
			webUrl: 'https://play.google.com/store/apps/details?id=com.pj.banbanvote',//테스트 url
			},
		},
		],
	})
}

function shareStoryApp() {
    Kakao.Story.open({
      url: 'https://play.google.com/store/apps/details?id=com.pj.banbanvote',//테스트 url
      text: '저의 정치화는 <%=flower%>입니다. 당신의 정치참여 유형은 어떤 꽃인가요? 테스트를 통해 알아보세요!',
    })
  }

function copy(url) {
	var temp = document.createElement("textarea");
	document.body.appendChild(temp);
	temp.value = url;
	temp.select();
	document.execCommand("copy");
	document.body.removeChild(temp);
	alert("클립보드에 복사되었습니다");
}
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>