<div align="center">
    <img src="https://capsule-render.vercel.app/api?type=waving&color=FFEDC9&height=140&section=header&text=RESERVATION&fontSize=40" />
</div>
<h2>
    :full_moon_with_face: 목차
</h2>
<tr>
    ● 프로젝트 개요 <br>
    ● 개발 환경 <br>
    ● 팀 구성 및 역할<br>
    ● 수행 결과<br>
    ● 자체평가 의견<br>
</tr>
<br>
<br>
<h3>
    :full_moon_with_face: 프로젝트 개요
</h3>
<tr>
    ● 프로젝트: 예약 중계 플랫폼 "모두의 예약"<br>
    ● 선정사유: 전화 예약의 번거로움과 업소의 전체 스케줄을 확인하고 직접 선택할 수 있는 시스템의 필요성을 해결하기 위해 선정<Br>
    ● 목표: 다양한 분야의 서비스를 아우르느 허브 플랫폼 제작<br>
    ● 기대효과: 예약서비스 이용의 편의성 향상 
</tr>
    
<h3>
    :full_moon_with_face: 개발 환경
</h3>
<div>
    <img src="https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white">
    <img src="https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white">
    <img src="https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white">
    <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white">
    <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=white" alt="JavaScript Badge" />
    <img src="https://img.shields.io/badge/spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white">
    <img src="https://img.shields.io/badge/springboot-6DB33F?style=for-the-badge&logo=springboot&logoColor=white">
    <img src="https://img.shields.io/badge/oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white">
    <img src="https://img.shields.io/badge/mysql-4479A1?style=for-the-badge&logo=mysql&logoColor=white">
    <img src="https://img.shields.io/badge/apache tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=white">
    <img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white">
</div>
<h3>
     :full_moon_with_face: 역할
</h3>
<tr>
    ● 판매자가 제공하는 서비스 항목 관리<br>
    ● 이용후기
</tr>
<h3>
    :full_moon_with_face: erd
</h3>
<tr>
<img src="https://github.com/user-attachments/assets/5cf38545-eec2-454f-9e09-c944ce9a690a"/>
</tr>
<h3>
    :full_moon_with_face: 기능구현
</h3>
<tr>
    <img src="https://github.com/user-attachments/assets/3e356fc7-6620-445f-bd59-7c7261469f63"/>
    <img src="https://github.com/user-attachments/assets/35498c78-d8f1-42b1-b70e-9f1dc5a4bbc9"/>
    <img src="https://github.com/user-attachments/assets/345aeeaf-9580-4353-9c7a-b636e816b5a6"/>
    -CRUD작업을 이용해 판매자의 서비스 관리,등록<br>
    -코드의 효율성과 유연성을 위해 공개/비공개 처리<br>
    -구매자가 이용완료를 했을 경우에만 후기 작성 가능
    <br>
    <img  src="https://github.com/user-attachments/assets/849b3527-6a87-4940-9b71-c7c17fded69a">  
    -후기가 작성된 리스트
    <img src="https://github.com/user-attachments/assets/d13f9bdf-d5ee-4fd9-afb1-494fcfc8efd7">
    
</tr>
<h3>
    :full_moon_with_face: 자체평가
</h3>
<tr>
    이번 프로젝트는 처음 맡은 개발 작업이었지만, 전체적인 애플리케이션 구조와 코드 흐름을 파악하는 데 많은 노력을 기울였습니다. 특히, CRUD 기능을 성공적으로 구현했으며, Ajax를 이용한 비동기 처리로 사용자 경험을 향상시키는 데 기여했습니다. 초반에 팀원들과의 소통이 원활하지 않아 프로젝트 진행 중 여러 번 의견차이가 발생했습니다. 또한, 팀원들이 각각 다른 방식으로 코드를 작성하다 보니, 프로젝트를 병합하는 과정에서 코드 충돌이 발생했습니다. 이는 코드 관리 방식의 문제에서 비롯된 것이었고, 코드 스타일을 통일하는 데에도 시간이 걸렸습니다. 프로젝트에서 댓글 기능을 구현할 때, 게시판 댓글과 이용후기 댓글의 요구 사항이 달랐음에도 불구하고 동일한 DB 구조로 접근하려다 보니 발생한 문제였습니다. 이를 해결하기 위해, 댓글 기능의 DB 스키마를 분리하여 각 요구 사항에 맞는 테이블 구조를 설계하였습니다. 이로 인해 데이터 무결성 유지가 수월 해졌고, 추가적인 기능 확장에도 유연하게 대응할 수 있었습니다. 프로젝트 병합 과정에서 발생한 코드 충돌 문제를 해결하기 위해 Git 브랜치 전략을 도입했습니다. 각 팀원이 별도의 브랜치에서 개발을 진행하고, Pull Request를 통해 코드 리뷰를 거친 후 병합하도록 하여 충돌을 최소화했습니다. 이를 통해 협업 과정이 더욱 효율적으로 이루어졌고, 코드 품질 또한 향상되었습니다. 이번 프로젝트는 전반적인 애플리케이션 개발 과정과 협업의 중요성을 다시 한번 깨닫게 해준 중요한 경험이 되었습니다.
</tr>





