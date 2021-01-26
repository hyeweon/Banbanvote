<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    session.setAttribute("A", 0);
    session.setAttribute("B", 0);
    session.setAttribute("C", 0);
    session.setAttribute("D", 0);
    session.setAttribute("E", 0);
    session.setAttribute("F", 0);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="main.css" rel="stylesheet" type="text/css">
<title>반반테스트 중..</title>
</head>

<body>
<form action="result.jsp" method="post">
<div class="container-fluid">

<!-- Q -->
<div class="panel01">
	<div class="row justify-content-center" style="margin-top: 25%">
		<div class="col-11 p-4">
			<h5>Q 01</h5>
			<h4>나는 누군가에게 지시를 내리는 일에 부담을 느낀다. </h4>
		</div>
		<div class="col-11 p-4">
			<div class="btn-toolbar justify-content-between" role="toolbar" onclick="btnable01()" style="height: 120px; width: 100%">
				<input type="radio" class="btn-check" name="question01" value="B" id="btnradio01" autocomplete="off">
				<label class="btn btn-opt" for="btnradio01">그렇다</label>
				<label style="padding-top:17%">vs</label>
				<input type="radio" class="btn-check" name="question01" value="A" id="btnradio11" autocomplete="off">
				<label class="btn btn-opt" for="btnradio11">아니다</label>
			</div>
		</div>
		<div class="col-8 p-4" style="padding-bottom: 2% !important; margin-top: 2%">
			<div class="d-grid">
				<div class="btn-group gap-1" role="group">
					<button type="button" class="btn btn-next" style="visibility: hidden">이전</button>
					<button type="button" class="btn01 btn btn-next" onclick="next01()" disabled>다음</button>
				</div>
			</div>
		</div>
		<div class="col-11 p-4">
			<div class="progress">
  				<div class="progress-bar" role="progressbar" style="width: 11%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="90"></div>
			</div>
		</div>
	</div>
</div>

<div class="panel02" style="display: none">
	<div class="row justify-content-center" style="margin-top: 25%">
		<div class="col-11 p-4">
			<h5>Q 02</h5>
			<h4>능력 좋은 후보보다 청렴한 후보에게 더 마음이 간다. </h4>
		</div>
		<div class="col-11 p-4">
			<div class="btn-toolbar justify-content-between" role="toolbar" onclick="btnable02()" style="height: 120px; width: 100%">
				<input type="radio" class="btn-check" name="question02" value="D" id="btnradio02" autocomplete="off">
				<label class="btn btn-opt" for="btnradio02">그렇다</label>
				<label style="padding-top:17%">vs</label>
				<input type="radio" class="btn-check" name="question02" value="C" id="btnradio12" autocomplete="off">
				<label class="btn btn-opt" for="btnradio12">아니다</label>
			</div>
		</div>
		<div class="col-8 p-4" style="padding-bottom: 2% !important; margin-top: 2%">
			<div class="d-grid">
				<div class="btn-group gap-1" role="group">
					<button type="button" class="btn btn-next" onclick="pre02()">이전</button>
					<button type="button" class="btn02 btn btn-next" onclick="next02()" disabled>다음</button>
				</div>
			</div>
		</div>
		<div class="col-11 p-4">
			<div class="progress">
  				<div class="progress-bar" role="progressbar" style="width: 22%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="90"></div>
			</div>
		</div>
	</div>
</div>

<div class="panel03" style="display: none">
	<div class="row justify-content-center" style="margin-top: 25%">
		<div class="col-11 p-4">
			<h5>Q 03</h5>
			<h4>단체로 활동하는 데에는 항상 통솔자가 필요하다. </h4>
		</div>
		<div class="col-11 p-4">
			<div class="btn-toolbar justify-content-between" role="toolbar" onclick="btnable03()" style="height: 120px; width: 100%">
				<input type="radio" class="btn-check" name="question03" value="E" id="btnradio03" autocomplete="off">
				<label class="btn btn-opt" for="btnradio03">그렇다</label>
				<label style="padding-top:17%">vs</label>
				<input type="radio" class="btn-check" name="question03" value="F" id="btnradio13" autocomplete="off">
				<label class="btn btn-opt" for="btnradio13">아니다</label>
			</div>
		</div>
		<div class="col-8 p-4" style="padding-bottom: 2% !important; margin-top: 2%">
			<div class="d-grid">
				<div class="btn-group gap-1" role="group">
					<button type="button" class="btn btn-next" onclick="pre03()">이전</button>
					<button type="button" class="btn03 btn btn-next" onclick="next03()" disabled>다음</button>
				</div>
			</div>
		</div>
		<div class="col-11 p-4">
			<div class="progress">
  				<div class="progress-bar" role="progressbar" style="width: 33%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="90"></div>
			</div>
		</div>
	</div>
</div>

<div class="panel04" style="display: none">
	<div class="row justify-content-center" style="margin-top: 25%">
		<div class="col-11 p-4">
			<h5>Q 04</h5>
			<h4>한번쯤은 선거 출마를 생각해 본 적이 있다. </h4>
		</div>
		<div class="col-11 p-4">
			<div class="btn-toolbar justify-content-between" role="toolbar" onclick="btnable04()" style="height: 120px; width: 100%">
				<input type="radio" class="btn-check" name="question04" value="A" id="btnradio04" autocomplete="off">
				<label class="btn btn-opt" for="btnradio04">그렇다</label>
				<label style="padding-top:17%">vs</label>
				<input type="radio" class="btn-check" name="question04" value="B" id="btnradio14" autocomplete="off">
				<label class="btn btn-opt" for="btnradio14">아니다</label>
			</div>
		</div>
		<div class="col-8 p-4" style="padding-bottom: 2% !important; margin-top: 2%">
			<div class="d-grid">
				<div class="btn-group gap-1" role="group">
					<button type="button" class="btn btn-next" onclick="pre04()">이전</button>
					<button type="button" class="btn04 btn btn-next" onclick="next04()" disabled>다음</button>
				</div>
			</div>
		</div>
		<div class="col-11 p-4">
			<div class="progress">
  				<div class="progress-bar" role="progressbar" style="width: 44%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="90"></div>
			</div>
		</div>
	</div>
</div>

<div class="panel05" style="display: none">
	<div class="row justify-content-center" style="margin-top: 25%">
		<div class="col-11 p-4">
			<h5>Q 05</h5>
			<h4>과정이 아무리 좋아도 확실한 결과를 내지 않으면 의미가 없다. </h4>
		</div>
		<div class="col-11 p-4">
			<div class="btn-toolbar justify-content-between" role="toolbar" onclick="btnable05()" style="height: 120px; width: 100%">
				<input type="radio" class="btn-check" name="question05" value="C" id="btnradio05" autocomplete="off">
				<label class="btn btn-opt" for="btnradio05">그렇다</label>
				<label style="padding-top:17%">vs</label>
				<input type="radio" class="btn-check" name="question05" value="D" id="btnradio15" autocomplete="off">
				<label class="btn btn-opt" for="btnradio15">아니다</label>
			</div>
		</div>
		<div class="col-8 p-4" style="padding-bottom: 2% !important; margin-top: 2%">
			<div class="d-grid">
				<div class="btn-group gap-1" role="group">
					<button type="button" class="btn btn-next" onclick="pre05()">이전</button>
					<button type="button" class="btn05 btn btn-next" onclick="next05()" disabled>다음</button>
				</div>
			</div>
		</div>
		<div class="col-11 p-4">
			<div class="progress">
  				<div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="90"></div>
			</div>
		</div>
	</div>
</div>

<div class="panel06" style="display: none">
	<div class="row justify-content-center" style="margin-top: 25%">
		<div class="col-11 p-4">
			<h5>Q 06</h5>
			<h4>사공이 많으면 배가 산으로 간다는 속담에 전적으로 동의한다. </h4>
		</div>
		<div class="col-11 p-4">
			<div class="btn-toolbar justify-content-between" role="toolbar" onclick="btnable06()" style="height: 120px; width: 100%">
				<input type="radio" class="btn-check" name="question06" value="E" id="btnradio06" autocomplete="off">
				<label class="btn btn-opt" for="btnradio06">그렇다</label>
				<label style="padding-top:17%">vs</label>
				<input type="radio" class="btn-check" name="question06" value="F" id="btnradio16" autocomplete="off">
				<label class="btn btn-opt" for="btnradio16">아니다</label>
			</div>
		</div>
		<div class="col-8 p-4" style="padding-bottom: 2% !important; margin-top: 2%">
			<div class="d-grid">
				<div class="btn-group gap-1" role="group">
					<button type="button" class="btn btn-next" onclick="pre06()">이전</button>
					<button type="button" class="btn06 btn btn-next" onclick="next06()" disabled>다음</button>
				</div>
			</div>
		</div>
		<div class="col-11 p-4">
			<div class="progress">
  				<div class="progress-bar" role="progressbar" style="width: 66%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="90"></div>
			</div>
		</div>
	</div>
</div>

<div class="panel07" style="display: none">
	<div class="row justify-content-center" style="margin-top: 25%">
		<div class="col-11 p-4">
			<h5>Q 07</h5>
			<h4>다수의 의견에 반대되는 주장을 거리낌 없이 할 수 있다. </h4>
		</div>
		<div class="col-11 p-4">
			<div class="btn-toolbar justify-content-between" role="toolbar" onclick="btnable07()" style="height: 120px; width: 100%">
				<input type="radio" class="btn-check" name="question07" value="A" id="btnradio07" autocomplete="off">
				<label class="btn btn-opt" for="btnradio07">그렇다</label>
				<label style="padding-top:17%">vs</label>
				<input type="radio" class="btn-check" name="question07" value="B" id="btnradio17" autocomplete="off">
				<label class="btn btn-opt" for="btnradio17">아니다</label>
			</div>
		</div>
		<div class="col-8 p-4" style="padding-bottom: 2% !important; margin-top: 2%">
			<div class="d-grid">
				<div class="btn-group gap-1" role="group">
					<button type="button" class="btn btn-next" onclick="pre07()">이전</button>
					<button type="button" class="btn07 btn btn-next" onclick="next07()" disabled>다음</button>
				</div>
			</div>
		</div>
		<div class="col-11 p-4">
			<div class="progress">
  				<div class="progress-bar" role="progressbar" style="width: 77%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="90"></div>
			</div>
		</div>
	</div>
</div>

<div class="panel08" style="display: none">
	<div class="row justify-content-center" style="margin-top: 25%">
		<div class="col-11 p-4">
			<h5>Q 08</h5>
			<h4>조건만 갖춰지면 정치인은 공약을 전부 이행할 수 있다. </h4>
		</div>
		<div class="col-11 p-4">
			<div class="btn-toolbar justify-content-between" role="toolbar" onclick="btnable08()" style="height: 120px; width: 100%">
				<input type="radio" class="btn-check" name="question08" value="D" id="btnradio08" autocomplete="off">
				<label class="btn btn-opt" for="btnradio08">그렇다</label>
				<label style="padding-top:17%">vs</label>
				<input type="radio" class="btn-check" name="question08" value="C" id="btnradio18" autocomplete="off">
				<label class="btn btn-opt" for="btnradio18">아니다</label>
			</div>
		</div>
		<div class="col-8 p-4" style="padding-bottom: 2% !important; margin-top: 2%">
			<div class="d-grid">
				<div class="btn-group gap-1" role="group">
					<button type="button" class="btn btn-next" onclick="pre08()">이전</button>
					<button type="button" class="btn08 btn btn-next" onclick="next08()" disabled>다음</button>
				</div>
			</div>
		</div>
		<div class="col-11 p-4">
			<div class="progress">
  				<div class="progress-bar" role="progressbar" style="width: 88%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="90"></div>
			</div>
		</div>
	</div>
</div>

<div class="panel09" style="display: none">
	<div class="row justify-content-center" style="margin-top: 25%">
		<div class="col-11 p-4">
			<h5>Q 09</h5>
			<h4>공동체를 위해서라도 개인의 자유를 침해할 수는 없다. </h4>
		</div>
		<div class="col-11 p-4">
			<div class="btn-toolbar justify-content-between" role="toolbar" onclick="btnable09()" style="height: 120px; width: 100%">
				<input type="radio" class="btn-check" name="question09" value="F" id="btnradio09" autocomplete="off">
				<label class="btn btn-opt" for="btnradio09">그렇다</label>
				<label style="padding-top:17%">vs</label>
				<input type="radio" class="btn-check" name="question09" value="E" id="btnradio19" autocomplete="off">
				<label class="btn btn-opt" for="btnradio19">아니다</label>
			</div>
		</div>
		<div class="col-8 p-4" style="padding-bottom: 2% !important; margin-top: 2%">
			<div class="d-grid">
				<div class="btn-group gap-1" role="group">
					<button type="button" class="btn btn-next col-6" onclick="pre09()">이전</button>
					<input type="submit" class="btn09 btn col-6" value="결과 보기" disabled>
				</div>
			</div>
		</div>
		<div class="col-11 p-4">
			<div class="progress">
  				<div class="progress-bar" role="progressbar" style="width: 100%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="90"></div>
			</div>
		</div>
	</div>
</div>

</div>
</form>

<script>
var p01 = document.querySelector('.panel01');
var p02 = document.querySelector('.panel02');
var p03 = document.querySelector('.panel03');
var p04 = document.querySelector('.panel04');
var p05 = document.querySelector('.panel05');
var p06 = document.querySelector('.panel06');
var p07 = document.querySelector('.panel07');
var p08 = document.querySelector('.panel08');
var p09 = document.querySelector('.panel09');

var b01 = document.querySelector('.btn01');
var b02 = document.querySelector('.btn02');
var b03 = document.querySelector('.btn03');
var b04 = document.querySelector('.btn04');
var b05 = document.querySelector('.btn05');
var b06 = document.querySelector('.btn06');
var b07 = document.querySelector('.btn07');
var b08 = document.querySelector('.btn08');
var b09 = document.querySelector('.btn09');

function btnable01() {
	b01.disabled = false;
}
function btnable02() {
	b02.disabled = false;
}
function btnable03() {
	b03.disabled = false;
}
function btnable04() {
	b04.disabled = false;
}
function btnable05() {
	b05.disabled = false;
}
function btnable06() {
	b06.disabled = false;
}
function btnable07() {
	b07.disabled = false;
}
function btnable08() {
	b08.disabled = false;
}
function btnable09() {
	b09.disabled = false;
}

function next01() {
	p01.style.display = 'none';
    p02.style.display = 'block';
}
function next02() {
	p02.style.display = 'none';
    p03.style.display = 'block';
}
function next03() {
	p03.style.display = 'none';
    p04.style.display = 'block';
}
function next04() {
	p04.style.display = 'none';
    p05.style.display = 'block';
}
function next05() {
	p05.style.display = 'none';
    p06.style.display = 'block';
}
function next06() {
	p06.style.display = 'none';
    p07.style.display = 'block';
}
function next07() {
	p07.style.display = 'none';
    p08.style.display = 'block';
}
function next08() {
	p08.style.display = 'none';
    p09.style.display = 'block';
}

function pre02() {
	p01.style.display = 'block';
    p02.style.display = 'none';
}
function pre03() {
	p02.style.display = 'block';
    p03.style.display = 'none';
}
function pre04() {
	p03.style.display = 'block';
    p04.style.display = 'none';
}
function pre05() {
	p04.style.display = 'block';
    p05.style.display = 'none';
}
function pre06() {
	p05.style.display = 'block';
    p06.style.display = 'none';
}
function pre07() {
	p06.style.display = 'block';
    p07.style.display = 'none';
}
function pre08() {
	p07.style.display = 'block';
    p08.style.display = 'none';
}
function pre09() {
	p08.style.display = 'block';
    p09.style.display = 'none';
}
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>