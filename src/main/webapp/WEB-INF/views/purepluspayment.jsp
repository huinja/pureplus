<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="./projectcloths.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="../../css/purepluspayment.css">
<html>
<!-- jQuery -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- 카카오페이 결제를 위한 아임포트 라이브러리 -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<!-- <head>
    <div class="navbar">상단바
    <a href="http://localhost:8051/pureplusmain">
        <img src="../images/images/로고001.jpg"  alt="로고">
        </a>
        <ul>
            <li><a class="aa" href="http://localhost:8051/purepluslogin1">로그인</a></li>
            <li><a class="aa" href="http://localhost:8051/purepluslogin2">회원가입</a></li>
            <li><a class="aa" href="http://localhost:8051/purepluslogin3">무료계정 만들기</a></li>
            <li>
                <div class="container h-100">
                    <div class="d-flex justify-content-center h-100">
                        <div class="searchbar">
                            <input class="search_input" type="text" name="" placeholder="Search...">
                            <a href="#" class="search_icon"><i class="fas fa-search"></i></a>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>상단바 종료
</head> -->
<%@ include file="./header.jsp"%>

<body>


   <div id="title">
   <h1>후원/결제</h1>
   </div>
    <div id="op">
      <br>
      <br>
      <br>
      <br>
      <br>
        <select id="first-select">
            <option>선택 안함</option>
            <option value="option1">의류</option>
            <option value="option2">식량</option>
            <option value="option3">거주지</option>
            <option value="option4">모금</option>
            <option value="option5">건강</option>
            <option value="option6">식수</option>
        </select>

        <!-- 두 번째 select 요소 -->
        <select id="second-select">
            <option>선택 안함</option>
            <!-- 이 곳에 옵션을 동적으로 추가합니다. -->
        </select>

        <input type="number" class="donation" placeholder="금액 입력">
        <label id="label">
          <input type="checkbox" name="option1" float="left"  value="value1"> 결제동의 및 환불규정에 동의하겠습니다.(환불불가)
        </label>
        <div class="button-container">
            <a href="#" id="proc_payment" class="btn">기부</a>
            <a href="http://localhost:7992/Html_Css/project/projectlogin2.jsp" type="submit" class="btn">취소</a>
            
        </div>
    </div>



    <script>
    
    //약관 동의시 주문버튼 활성화
  $('#tnc').click(function(){
      if($('#tnc').is(':checked') === true){
          $('#proc_payment').prop('disabled', false);
      } else {
          $('#proc_payment').prop('disabled', true);
      }
  })
    
    //카카오페이 결제
  $('#proc_payment').click(function(){
      var IMP = window.IMP;
      IMP.init('imp50400767');
      var totalPrice = $('.donation').val();
      //alert(totalPrice)
      
      IMP.request_pay({
          pg: 'kakaopay.TC0ONETIME',//pg 파라미터값 => PC상점아이디 CID
          pay_method: 'card',//결제방법
          //우리서버에서 사용할 주문식별번호
          merchant_uid: 'merchant' + new Date().getTime(),//주문번호
          
          name: 'pureplus기부',//상품명
          amount: totalPrice, //총결제금액
          buyer_email: 'dogon3645@naver.com', //구매자 이메일
          buyer_name: '유도곤', //구매자 이름
          buyer_tel: '01036451085',//구매자 폰번호
          buyer_addr: '서울특별시 강남구 삼성동', //구매자 주소
          buy_postcode: '123-456', //구매자 우편번호
          //id:${id}
          }, function (rsp){
            if(rsp.success){
                alert('주문이 완료되었습니다.');
                
                //결제완료 후 주문정보를 DB에 저장하고, 주문완료 페이지로 이동
                $.ajax(
                    {
                        url: '/order_ok/${id}',
                        type: 'post',
                        data: {
                            imp_uid: rsp.imp_uid,//결제고유번호
                            merchant_uid: rsp.merchant_uid,//주문번호
                            paid_amount: rsp.paid_amount, //결제금액
                            apply_num: rsp.apply_num,
                            buyer_email: rsp.buyer_email,//메일주소
                            buyer_name: rsp.buyer_name,//구매자이름
                            buyer_tel: rsp.buyer_tel,//구매자폰번호
                            buyer_addr: rsp.buyer_addr,//구매자주소
                            buyer_postcode: rsp.buyer_postcode,
                            total_price: totalPrice,//결제금액
                        }
                    }
                ).done(function(msg){
                	
                    if(msg == 'SUCCESS'){
                        location.href = '/purepluspayment';
                    } else {
                        alert('주문에 실패하였습니다.');
                    }
                }).fail(function(){
                    alert('결제에 실패하였습니다.');
                });
            } else {
                alert(rsp.error_msg);
            }
          }
          
          )
  })
</script>

    <script>
        // 첫 번째 select 요소
        const firstSelect = document.getElementById('first-select');

        // 두 번째 select 요소
        const secondSelect = document.getElementById('second-select');

        // 첫 번째 select 요소에서 선택이 변경될 때마다 호출되는 함수
        firstSelect.addEventListener('change', function() {
            // 선택된 옵션의 값을 가져옵니다.
            const selectedOption = firstSelect.value;

            // 두 번째 select 요소의 옵션을 초기화합니다.
            secondSelect.innerHTML = '';

            // 선택된 값에 따라 두 번째 select 요소에 옵션을 추가합니다.
            if (selectedOption === 'option1') {
                secondSelect.appendChild(new Option('옵션 1-1', 'option1-1'));
                secondSelect.appendChild(new Option('옵션 1-2', 'option1-2'));
            } else if (selectedOption === 'option2') {
                secondSelect.appendChild(new Option('옵션 2-1', 'option2-1'));
                secondSelect.appendChild(new Option('옵션 2-2', 'option2-2'));
            } else if (selectedOption === 'option3') {
                secondSelect.appendChild(new Option('옵션 3-1', 'option3-1'));
                secondSelect.appendChild(new Option('옵션 3-2', 'option3-2'));
            } else if (selectedOption === 'option4') {
                secondSelect.appendChild(new Option('옵션 4-1', 'option4-1'));
                secondSelect.appendChild(new Option('옵션 4-2', 'option4-2'));
            } else if (selectedOption === 'option5') {
                secondSelect.appendChild(new Option('옵션 5-1', 'option5-1'));
                secondSelect.appendChild(new Option('옵션 5-2', 'option5-2'));
            } else if (selectedOption === 'option6') {
                secondSelect.appendChild(new Option('옵션 6-1', 'option6-1'));
                secondSelect.appendChild(new Option('옵션 6-2', 'option6-2'));
            }
        });
    </script>
</body>
<footer><%-- footer 태그는 html5에서 추가된 것으로 하단영역을 지정할 때 사용 --%>
   <hr>
   <a href="http://localhost:7992/Html_Css/project/projectcloths.jsp">
   <img src="../images/images/로고0.png"style="float: left; bottom:0px; width:150px; height:80px;" alt="pure plus logo0">
   </a>
   <span>
    상호명 : Pure Plus    대표자 : 2조    개인정보보호책임자 : 2조<br>
    사업자등록번호 : 2023-05-11 통신판매번호 : 서울종로-405호<br>
    대표번호 : 2023-0511 ⓒ KG ITBANK.<br></span>
   <div id="copy">

   </div>   
   
   <div id="social">
   <img src="../images/images/로고1.png" width="40" height="35" alt="pure plus logo1">
   <img src="../images/images/로고2.png" width="40" height="35" alt="pure plus logo2">
   
   </div>
</footer>
</html>