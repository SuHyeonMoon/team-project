<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    body {
      font-family: Arial, sans-serif;
    }
    h2, h3 {
      color: #333;
    }
    ul {
      list-style-type: none;
    }
    .emoji {
      margin-right: 8px;
    }
    .badges img {
      margin-right: 10px;
    }
  </style>
</head>
<body>
  <div align="center">
    <img src="https://capsule-render.vercel.app/api?type=waving&color=FFEDC9&height=140&section=header&text=RESERVATION&fontSize=40" alt="RESERVATION Header Image" />
  </div>

  <h2><span class="emoji">🌕</span> 목차</h2>
  <ul>
    <li>● 프로젝트 개요</li>
    <li>● 개발 환경</li>
    <li>● 팀 구성 및 역할</li>
    <li>● 수행 결과</li>
    <li>● 자체평가 의견</li>
  </ul>

  <h3><span class="emoji">🌕</span> 프로젝트 개요</h3>
  <ul>
    <li>● 프로젝트: 예약 중계 플랫폼 "모두의 예약"</li>
    <li>● 선정 사유: 전화 예약의 번거로움과 업소의 전체 스케줄을 확인하고 직접 선택할 수 있는 시스템의 필요성을 해결하기 위해 선정</li>
    <li>● 목표: 다양한 분야의 서비스를 아우르는 허브 플랫폼 제작</li>
    <li>● 기대 효과: 예약 서비스 이용의 편의성 향상</li>
  </ul>

  <h3><span class="emoji">🌕</span> 개발 환경</h3>
  <div class="badges">
    <img src="https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white" alt="Java Badge">
    <img src="https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white" alt="HTML5 Badge">
    <img src="https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white" alt="CSS3 Badge">
    <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white" alt="jQuery Badge">
    <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=white" alt="JavaScript Badge">
    <img src="https://img.shields.io/badge/spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white" alt="Spring Badge">
    <img src="https://img.shields.io/badge/springboot-6DB33F?style=for-the-badge&logo=springboot&logoColor=white" alt="Spring Boot Badge">
    <img src="https://img.shields.io/badge/oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white" alt="Oracle Badge">
    <img src="https://img.shields.io/badge/mysql-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL Badge">
    <img src="https://img.shields.io/badge/apache tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=white" alt="Apache Tomcat Badge">
    <img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub Badge">
  </div>

  <h3><span class="emoji">🌕</span> 담당 역할</h3>
  <ul>
    <li>● 판매자가 제공하는 서비스 항목 관리</li>
    <li>● 이용후기 관리</li>
  </ul>

  <h3><span class="emoji">🌕</span> ERD</h3>
  <img src="https://github.com/user-attachments/assets/5cf38545-eec2-454f-9e09-c944ce9a690a" alt="ERD Image" />

  <h3><span class="emoji">🌕</span> 기능 구현</h3>
  <ul>
    <li>- CRUD 작업을 이용해 판매자의 서비스 관리 및 등록</li>
    <li>- 코드의 효율성과 유연성을 위해 공개/비공개 처리</li>
    <li>- 구매자가 이용 완료 후에만 후기 작성 가능</li>
  </ul>
  <img src="https://github.com/user-attachments/assets/3e356fc7-6620-445f-bd59-7c7261469f63" alt="기능 구현 이미지 1" />
  <img src="https://github.com/user-attachments/assets/35498c78-d8f1-42b1-b70e-9f1dc5a4bbc9" alt="기능 구현 이미지 2" />

  <!-- 모달 -->
  <div id="myModal" class="modal">
    <span class="close">&times;</span>
    <img class="modal-content" id="img01">
  </div>

  <h3><span class="emoji">🌕</span> 자체 평가</h3>
  <p>
    이번 프로젝트는 처음 맡은 개발 작업이었지만, 전체적인 애플리케이션 구조와 코드 흐름을 파악하는 데 많은 노력을 기울였습니다. 특히, CRUD 기능을 성공적으로 구현했으며, Ajax를 이용한 비동기 처리로 사용자 경험을 향상시키는 데 기여했습니다.
  </p>

  <script>
    var modal = document.getElementById("myModal");
    var img = document.getElementById("myImg");
    var modalImg = document.getElementById("img01");

    img.onclick = function() {
      modal.style.display = "block";
      modalImg.src = this.src;
    }

    var span = document.getElementsByClassName("close")[0];
    span.onclick = function() {
      modal.style.display = "none";
    }
  </script>
</body>
</html>
