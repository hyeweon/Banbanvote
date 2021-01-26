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
<title>�ݹ��׽�Ʈ ���</title>
</head>
<body>
<%
String []Item={"A","C","E"};
String flower = "���";

if((int)session.getAttribute("A") < 2){
	Item[0]="B";
	flower = "�ݳ�ȭ";
}
if((int)session.getAttribute("C") < 2){
	Item[1]="D";
	if(Item[0]=="A")
		flower = "�ղ�";
	else
		flower = "�عٶ��";
}
if((int)session.getAttribute("E") < 2){
	Item[2]="F";
	if(Item[0]=="A"){
		if(Item[1]=="C")
			flower = "����";
		else
			flower = "�����";
	}
	else{
		if(Item[1]=="C")
			flower = "�޸��̲�";
		else
			flower = "������";
	}
}
%>

<div class="container-fluid">
<div class="row justify-content-center" style="margin-top: 60px">
<%if(flower.equals("���")){%>
	<div class="col-11 p-4 text-center" style="padding-bottom: 0 !important">
		<h5>����� ��ġ����</h5>
		<h1>���(���)</h1>
		<p style="margin-top: 15px; margin-bottom: 10px"><small>
		<mark style="background: #f2f2f2">#�α�</mark>
		<mark style="background: #f2f2f2">#��ȭ</mark>
		<mark style="background: #f2f2f2">#������ǰ��</mark>
		</small></p>
		<img src="image/result1.jpg" style="max-width: 75%; height: auto; margin-bottom: 10px">
		<h6>����� <mark style="background-color:#fdd">���</mark>�� ��ҽ��ϴ�.</h6>		
		<p style="margin-top: 15px; text-align: left !important"><small>
		��������� ���������� ������ �����ִ� ��ȭ�� ������ ���Դϴ�.
		��� ���� ����� �����Ӱ� �������Դϴ�.
		���� ������ ���� �������� ����� ���մϴ�. ��, �ɵ����� �鵵 �־� �������� �ǰ��� ���⵵ �մϴ�.
		</small></p>
		<p style="text-align: left !important"><small>
		���ÿ� ����� ������ �������� ������ ��Ģ�� �� �߿��ϰ� ����ϴ�.
		�׷��⿡ ������ ���� ��å�� ���� ��� ���� �����̳� ������ �����Ǿ�� �Ѵٰ� �����մϴ�.
		</small></p>
		<p style="text-align: left !important"><small>
		�翬�ϰԵ� �ָ��ϰų� Ȯ������ ���� ���� ������ �ʽ��ϴ�.
		�׷��� ���� ����� �������� ��Ȯ�� ���� �������� ���� �������� �����ϴ�.
		�̷� ������ ���� �ϳ��ϳ� Ȧ�� �Ǵ��ϴ� ���� �ſ� ���� ���Դϴ�.
		</small></p>
	</div>
<%}
else if(flower.equals("�ݳ�ȭ")){%>
	<div class="col-11 p-4 text-center" style="padding-bottom: 0 !important">
		<h5>����� ��ġ����</h5>
		<h1>�ݳ�ȭ(�������)</h1>
		<p style="margin-top: 15px; margin-bottom: 10px"><small>
		<mark style="background: #f2f2f2">#����������ڽ��ϴ�</mark>
		</small></p>
		<img src="image/result2.jpg" style="max-width: 75%; height: auto; margin-bottom: 10px">
		<h6>����� <mark style="background-color:#edf">�ݳ�ȭ</mark>�� ��ҽ��ϴ�.</h6>		
		<p style="margin-top: 15px; text-align: left !important"><small>
		����� ��ġ������ ���� ������ ǥ���Ϸ��� ���� �ʽ��ϴ�.
		�׸��� ����� ������ ũ�� ������ ���� ���ٸ� �������� �������� �ʽ��ϴ�.
		</small></p>
		<p style="text-align: left !important"><small>
		������ ����� ���⿡ �ո������� ���� �Ϳ� ���ؼ��� Ȯ���ϰ� �߸��Ǿ����� �����ϰ� �ٶ����� �ǰ��� ã�� ������ �����ϱ⵵ �մϴ�.
		�׸�ŭ ����� �ڽ��� �ǰ��� ���ϴ� ���� ����� �����մϴ�.
		�׷��⿡ ������ �ѹ� ���ϸ� ���� �ٲ��� �ʽ��ϴ�.
		</small></p>
		<p style="text-align: left !important"><small>
		���� ���� ������� ��Ű� ���� ������� ������ ����� ���� �޽��ϴ�.
		�׸��� ����� ������ �������� �ʱ� ���� �ǰ��� �� ���� �������� �ϼ��� ���� ���Դϴ�.
		</small></p>
	</div>
<%}
else if(flower.equals("�ղ�")){%>
	<div class="col-11 p-4 text-center" style="padding-bottom: 0 !important">
		<h5>����� ��ġ����</h5>
		<h1>�ղ�(ȫȭ)</h1>
		<p style="margin-top: 15px; margin-bottom: 10px"><small>
		<mark style="background: #f2f2f2">#�Һ�</mark>
		<mark style="background: #f2f2f2">#����������̴�</mark>
		</small></p>
		<img src="image/result3.jpg" style="max-width: 75%; height: auto; margin-bottom: 10px">
		<h6>����� ��ġ������ <mark>�ղ�</mark>�� ��ҽ��ϴ�.</h6>		
		<p style="margin-top: 15px; text-align: left !important"><small>
		�ղ��� ȫȭ��� �Ҹ���, ���� ���� ���Ḧ ��� ���� ���̴� ���Դϴ�.
		�׷��� ������� �����̴١���� �ǹ̸� �����⵵ �մϴ�.
		</small></p>
		<p style="text-align: left !important"><small>
		�ղ��� ���� ��ŵ� ���������� �ڽ��� ��ġ���� ������ ���Ͽ� �����ϰ� ����� �Ϳ� �������Դϴ�.
		�׷��鼭�� ����� ���� ����� ���ؼ��� ������� �����̳� �������� �ʿ��ϴٰ� �����մϴ�.
		</small></p>
		<p style="text-align: left !important"><small>
		�׸�ŭ ����� Ȯ���� ��ġ���� ������ ������ �ֽ��ϴ�.
		���� ��Ȥ �̷��� ���丸 ������� ���������� ���� ��å�� ���⵵ �Ͽ� ���� ������ �ޱ⵵ �մϴ�.
		������ �ڽ��� �ǰ߿� ����� ������ �ִ� ���̶� ���� ��鸮�ų� ������ �ٲ��� �ʽ��ϴ�.
		</small></p>
	</div>
<%}
else if(flower.equals("�عٶ��")){%>
	<div class="col-11 p-4 text-center" style="padding-bottom: 0 !important">
		<h5>����� ��ġ����</h5>
		<h1>�عٶ��</h1>
		<p style="margin-top: 15px; margin-bottom: 10px"><small>
		<mark style="background: #f2f2f2">#��ٸ�</mark>
		<mark style="background: #f2f2f2">#�ָ�</mark>
		</small></p>
		<img src="image/result4.jpg" style="max-width: 75%; height: auto; margin-bottom: 10px">
		<h6>����� <mark style="background-color:#fed">�عٶ��</mark>�� ��ҽ��ϴ�.</h6>
		<p style="margin-top: 15px; text-align: left !important"><small>
		����� Ȯ���� ��ġ�� �̻����� ���ϰ� �ֽ��ϴ�.
		�׷��⿡ �������� ����� �����ϱ� ���� �ڽ��� �̻�� �󸶳� �´°��� ���� ����ϱ⵵ �մϴ�.
		</small></p>
		<p style="text-align: left !important"><small>
		�ٸ� ����� ���� ������ �ǰ��� ���� ������ �ƴմϴ�.
		��ġ���� �̳�� ������ �־ �׻� �׿� �´� ���� ������ ���� ����� ���ٸ� �� ������ ��ġ�� ���ϱ⵵ �մϴ�.
		</small></p>
		<p style="text-align: left !important"><small>
		������ ������ ����� �׷� ����� ��ٸ��� ������ ���� ����� ��Ÿ���� ���� ������ �����ϴ� ����Դϴ�.
		</small></p>
	</div>
<%}
else if(flower.equals("����")){%>
	<div class="col-11 p-4 text-center" style="padding-bottom: 0 !important">
		<h5>����� ��ġ����</h5>
		<h1>����</h1>
		<p style="margin-top: 15px; margin-bottom: 10px"><small>
		<mark style="background: #f2f2f2">#����</mark>
		<mark style="background: #f2f2f2">#����</mark>
		<mark style="background: #f2f2f2">#û��</mark>
		<mark style="background: #f2f2f2">#�ż�</mark>
		</small></p>
		<img src="image/result5.jpg" style="max-width: 75%; height: auto; margin-bottom: 10px">
		<h6>����� <mark style="background-color:#def">����</mark>�� ��ҽ��ϴ�.</h6>		
		<p style="margin-top: 15px; text-align: left !important"><small>
		������ �帰 �������� ���ڰ� �Ǿ�� ���Դϴ�.
		�׷� ������ ���� ����� �帮�� ������ �ʴ� ��ġ���� ���������� ���������� ������ ��å�� ã�� �����ϰ� �մϴ�.
		</small></p>
		<p style="text-align: left !important"><small>
		Ư���� ����� ������ ������ ��ġ�� �Ͽ� ���� �� �ΰ��ϰ� �޾Ƶ��̰� �ذ��ؾ� �Ѵٰ� �����մϴ�.
		�׸��� �׸�ŭ �������̰� ������ �����ϴ� ������ �Ҹ����� �����⵵ �մϴ�.
		</small></p>
		<p style="text-align: left !important"><small>
		���� ��� ��쿡�� ���� �Ǵ��� �� ���� �����ϴ�.
		������ ����� ��ö�� �Ǵܷ��� �������� ��ġ���� ���� �ӿ��� �и� ���� �� �� ���� ���Դϴ�.
		</small></p>
	</div>
<%}
else if(flower.equals("�����")){%>
	<div class="col-11 p-4 text-center" style="padding-bottom: 0 !important">
		<h5>����� ��ġ����</h5>
		<h1>�����</h1>
		<p style="margin-top: 15px; margin-bottom: 10px"><small>
		<mark style="background: #f2f2f2">#�����ѻ��</mark>
		<mark style="background: #f2f2f2">#û��</mark>
		</small></p>
		<img src="image/result6.jpg" style="max-width: 75%; height: auto; margin-bottom: 10px">
		<h6>����� ��ġ������ <mark style="background-color:#fdd">�����</mark>�� ��ҽ��ϴ�.</h6>		
		<p style="margin-top: 15px; text-align: left !important"><small>
		����� �������̱� ���ٴ� ����� �̻��⿡ ���� ��ġ���� �ǰ��� �����մϴ�.
		�׸��� ��� ��å�� ���ؼ� �ִ��� ������ ������ ��ġ�� �ʴ� ������ ��ȣ�մϴ�.
		���� �̿� ��߳��ų� ������ ���� ���� ���� ����� Ȯ���� �ǰ��� ������ ���� �ִ� ����Դϴ�.
		</small></p>
		<p style="text-align: left !important"><small>
		������ �̻�� ������ �ռ��� ������ ���������� ���� ��å�̶�� ���� ��⵵ �մϴ�.
		�̿� ���δ� �ڽ��� ������ ���� ������ ��鸱 �� �ֽ��ϴ�.
		</small></p>
		<p style="text-align: left !important"><small>
		�׷����� ����ϼ���.
		������ɡ��� �߿� �ܿ￡�� ���� �ǿ�� ����� ������ ����� ���ٸ� �и� ����� �����ϴ� ������� ���� ���Դϴ�.
		�׸��� ���� ������ ���� ������ ����� �� ���� ��å�� ����� �� �̴ϴ�.
		</small></p>
	</div>
<%}
else if(flower.equals("�޸��̲�")){%>
	<div class="col-11 p-4 text-center" style="padding-bottom: 0 !important">
		<h5>����� ��ġ����</h5>
		<h1>�޸��̲�</h1>
		<p style="margin-top: 15px; margin-bottom: 10px"><small>
		<mark style="background: #f2f2f2">#�����»��</mark>
		<mark style="background: #f2f2f2">#��ٸ�</mark>
		</small></p>
		<img src="image/result7.jpg" style="max-width: 75%; height: auto; margin-bottom: 10px">
		<h6>����� <mark style="background-color:#efd">�޸��̲�</mark>�� ��ҽ��ϴ�.</h6>		
		<p style="margin-top: 15px; text-align: left !important"><small>
		����� ���ǿ� �� �����ϴ� �������� �������̰� �������� ���� �Ϳ� �������� ���� ������ ���Դϴ�.
		��ġ���� �̽������� ��κ� �ƹ����� ���� ���� �����ٰ� ������ ������ �����ϰ� �����ϴ� �Ϳ� ���ؼ��� �׳� �Ѿ�� ���մϴ�.
		</small></p>
		<p style="text-align: left !important"><small>
		������ ����� ���� ������ �ǰ��� ǥ���ϴ� ������ �ƴմϴ�.
		���� ������ ���ͼ� ������ ���� �ذ�å�� ���ֱ⸦ �ٶ�⵵ �ϱ⿡ ���鿡�� ��ġ�� �������ϴٰ� ���ظ� �ޱ⵵ �մϴ�.
		</small></p>
		<p style="text-align: left !important"><small>
		�׷��� ���ϴ� �ĺ��� �ǰ��� ������ ������ ���� �� ����� ������ �����մϴ�.
		�ٸ� �̿� ���ؼ� Ƽ�� ���ų� ����ϱ�� �����ϴ�.
		</small></p>
	</div>
<%}
else{%>
	<div class="col-11 p-4 text-center" style="padding-bottom: 0 !important">
		<h5>����� ��ġ����</h5>
		<h1>������(����ȭ)</h1>
		<p style="margin-top: 15px; margin-bottom: 10px"><small>
		<mark style="background: #f2f2f2">#���</mark>
		<mark style="background: #f2f2f2">#���</mark>
		<mark style="background: #f2f2f2">#������</mark>
		</small></p>
		<img src="image/result8.jpg" style="max-width: 75%; height: auto; margin-bottom: 10px">
		<h6>����� <mark>������</mark>�� ��ҽ��ϴ�.</h6>		
		<p style="margin-top: 15px; text-align: left !important"><small>
		������ ��ġ���� �̻��� �ְ�, �������� ��ĺ��ٴ� �����ο� ������� ������ �ذ��ϰ��� �մϴ�.
		�׷��� ������ ���ؼ� ���� ������ ���� ������ �ʰ� Ÿ���� �ǰ��� �����ϴ� ���ҷ� �ǰ��� ǥ���մϴ�.
		</small></p>
		<p style="text-align: left !important"><small>
		�׷��ٰ� ���� �ذῡ ���� ������ ������ �ʽ��ϴ�.
		����� ��Ÿ��� Ȯ���� ������ �ְ� �̿� ���� �����ϴ� �ǰ߿� �ִ��� ���� �Ǿ��� ����Դϴ�.
		�ٸ� �ڽ��� ���ϴ� ������ �´� ���� ���� ���, �������� ���ϰ� ȥ�� ����ϴٴ� ������ ���� ���� �� �ֽ��ϴ�.
		</small></p>
		<p style="text-align: left !important"><small>
		������ ������������ �߿� �ܿ��� ��Ƽ�� ���� ���� �Ǿ����,
		��ŵ� �˸��� ȯ�游 �־����ٸ� ����� ������ ǥ���� �� �ִ� ���� �ֽ��ϴ�.
		</small></p>
	</div>
<%}%>
</div>

<div class="row justify-content-center">
	<div class="col-10 p-3 text-center" style="background: #edf2fc; border-radius: 15px">
		<p><small>
		<strong>�ݹ���ǥ</strong>�� ��Ű� �´� �ǰ��� �ǽð����� ������ �ְ�, �����ϰ� �ǰ��� ���� ������ �� �ִ� ���Դϴ�.
		�׷� <strong>�ݹ���ǥ</strong>���� ����� �ǰ��� ���ǿ����� ���� ����?
		</small></p>
		<div class="d-grid">
			<a href="https://play.google.com/store/apps/details?id=com.pj.banbanvote" class="btn btn-start" style="padding: 12px; background: #FFFFFF !important">�ݹ���ǥ���� ����ϱ�</a>
		</div>
	</div>
	<div class="col-11 p-4 text-center">
		<h4 style="margin-top: 50px; margin-bottom: 40px">�׽�Ʈ ��� �����ϱ�</h4>
		<div class="btn-toolbar justify-content-between" role="toolbar" style="margin-bottom: 30px">
			<a id="kakao-link-btn" href="javascript:sendLink()" style="margin-left:5px">
				<img src="image/kakaolink_btn_medium.png" style="width:50px; height:50px; margin-bottom:5px"><br clear="left">īī����</a>
			<a href="javascript:shareStoryApp()">
				<img src="image/kakaostory_icon_only.png" style="width:50px; margin-bottom:5px"><br clear="left">īī�����丮</a>
			<button class="btn-image" onclick="copy('#')"><%--�׽�Ʈ url--%>
				<img src="image/Link.png" style="width:50px; margin-bottom:5px"><br clear="left">��ũ ����</button>
		</div>
	</div>
</div>
</div>

<footer class="justify-content-center text-center p-4" style="margin-top: 40px">
	<p style="font-size: xx-small; padding-top: 10px">copyright(c) 2021 (��)����Ŀ�´����̼� All Rights Reserved.
	<br>
	�ݹ��׽�Ʈ is Powered by _ / Designed by _</p>
</footer>

<script type="text/javascript">
Kakao.init('b6956573c6fa3b353101d6f22b43da08');

function sendLink() {
	Kakao.Link.sendDefault({
		objectType: 'feed',
		content: {
			title: '���� ��ġȭ�� <%=flower%>�Դϴ�.',
			description: '����� ��ġ���� ������ � ���ΰ���? �׽�Ʈ�� ���� �˾ƺ�����!',
			imageUrl:'#',//��ǥ���� url
			link: {
				mobileWebUrl: 'https://play.google.com/store/apps/details?id=com.pj.banbanvote',
				webUrl: 'https://play.google.com/store/apps/details?id=com.pj.banbanvote',
			},
		},
		buttons: [
		{
			title: '���� ��ġȭ �˾ƺ���',
			link: {
			mobileWebUrl: 'https://play.google.com/store/apps/details?id=com.pj.banbanvote',//�׽�Ʈ url
			webUrl: 'https://play.google.com/store/apps/details?id=com.pj.banbanvote',//�׽�Ʈ url
			},
		},
		],
	})
}

function shareStoryApp() {
    Kakao.Story.open({
      url: 'https://play.google.com/store/apps/details?id=com.pj.banbanvote',//�׽�Ʈ url
      text: '���� ��ġȭ�� <%=flower%>�Դϴ�. ����� ��ġ���� ������ � ���ΰ���? �׽�Ʈ�� ���� �˾ƺ�����!',
    })
  }

function copy(url) {
	var temp = document.createElement("textarea");
	document.body.appendChild(temp);
	temp.value = url;
	temp.select();
	document.execCommand("copy");
	document.body.removeChild(temp);
	alert("Ŭ�����忡 ����Ǿ����ϴ�");
}
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>