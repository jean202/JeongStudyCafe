<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>오시는 길</title>

<!-- 반드시 아래 viewport 지정 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- font awesome 아이콘 -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.9.0/css/all.css" integrity="sha384-i1LQnF23gykqWXg6jxC2ZbCbUMxyw5gLZY6UiUS98LYV5unm8GWmfkIS6jqJfb4E" crossorigin="anonymous">

    <style>
      #map {
        height: 60%;
      }
      html, body {
        height: 100%;
        margin: 0px 85px 0px 85px;
        padding: 0;
      }
      
		.gm-style .gm-style-iw-c {
		    position: absolute;
		    box-sizing: border-box;
		    overflow: hidden;
		    top: 0;
		    left: 0;
		    transform: translate(-50%,-100%);
		    background-color: white;
		    border-radius: 8px;
		    padding: 12px;
		    box-shadow: 0 2px 7px 1px rgba(0,0,0,0.3);
		    background: url(IMG/KakaoTalk_20190922_135023264.jpg) 70% 50%/ 11em no-repeat border-box #fff;
		    
		}
    </style>
    
</head>
<body>
	<h3>오시는 길</h3>
	
	<hr>
	
    <div id="map"></div>
    
	<h3>주소 및 교통편 안내</h3>
	<ul class="fa-ul">
		<li><i class="fa-li fa fa-map-marker-alt"></i><h5>주소</h5> 서울특별시 강남구 테헤란로 146 현익빌딩 3층, 4층 (신한은행건물)</li>
		<li><i class="fa-li fa fa-subway"></i><h5>지하철</h5> 2호선 역삼역 3번출구(바로연결)</li>
		<li><i class="fa-li fa fa-bus"></i><h5>버스</h5> B:146, 341, 360, 740, N13, N61, 147, 463 / G:4211 / R:1100, 1700, 2000, 2000-1, 7007, 8001, 3600, 9600</li>
		<li><i class="fa-li fa fa-clock"></i><h5>영업시간</h5>매일 08:00 - 24:00(연중무휴)</li>
		<li><i class="fa-li fa fa-phone"></i><h5>전화번호</h5>02-123-1234</li>
	</ul>	
	
    <script>

      function initMap() {
        var Seoul = {lat: 37.500038, lng: 127.035499};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 18,
          center: Seoul
        });

        var contentString = '<h3>정스터디카페<h3>' +
        '<h4>전화번호</h4> 02-123-1234' +
        '<h4>영업시간</h4> 08:00 - 24:00' +
        '<h4>주소</h4> 서울특별시 강남구 테헤란로 146 현익빌딩 3층, 4층 (신한은행건물)';

        var infowindow = new google.maps.InfoWindow({
          content: contentString
        });

        var marker = new google.maps.Marker({
          position: Seoul,
          map: map,
          title: 'Seoul (JeongStudyCafe)'
        });
        marker.addListener('click', function() {
          infowindow.open(map, marker);
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDaAahaS-X7IYY3FomD71HGenn9UnSUyRk&callback=initMap">
    </script>
</body>
</html>