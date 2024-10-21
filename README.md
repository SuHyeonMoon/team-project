# 모두의 예약 플랫폼 📅
<img src="https://capsule-render.vercel.app/api?type=waving&color=FFEDC9&height=170&section=header&text=RESERVATION&fontSize=40" />
<div>
    <a href="https://github.com/SuHyeonMoon/team-project/raw/main/모두의예약_양재하_김하겸_오규원_문수현_최종.pdf" target="_blank">Download the presentation</a>
</div>

## 목차 📚
1. [프로젝트 개요](#프로젝트-개요)
2. [개발 환경](#개발-환경)
3. [팀 구성 및 역할](#팀-구성-및-역할)
4. [기능 구현](#기능-구현)
5. [ERD](#erd)
6. [자체평가](#자체평가)

---

## 프로젝트 개요 🎯
**프로젝트:** 예약 중계 플랫폼 "모두의 예약"  
**선정사유:** 전화 예약의 번거로움 해결과 업소의 스케줄 확인 및 선택 가능 시스템 필요성  
**목표:** 다양한 분야의 서비스를 아우르는 허브 플랫폼 제작  
**기대효과:** 예약 서비스 이용의 편의성 향상  

---

## 개발 환경 🛠️
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

---

## 팀 구성 및 역할 👥
- **판매자 서비스 항목 관리**
- **이용후기 기능 구현**

---

## ERD 📊
<img src="https://github.com/user-attachments/assets/5cf38545-eec2-454f-9e09-c944ce9a690a" alt="ERD" />

---

## 기능 구현 🔧
**주요 기능**:
- CRUD 작업을 이용해 판매자의 서비스 관리, 등록
- 코드의 효율성 및 유연성을 위해 공개/비공개 처리
- 구매자가 이용 완료 후에만 후기 작성 가능
<img src="https://github.com/user-attachments/assets/3e356fc7-6620-445f-bd59-7c7261469f63" alt="기능 이미지 1" />
<img src="https://github.com/user-attachments/assets/35498c78-d8f1-42b1-b70e-9f1dc5a4bbc9" alt="기능 이미지 2" />
<img src="https://github.com/user-attachments/assets/345aeeaf-9580-4353-9c7a-b636e816b5a6" alt="기능 이미지 3" />
<br>
<br>
<img  src="https://github.com/user-attachments/assets/849b3527-6a87-4940-9b71-c7c17fded69a"/>
<img src="https://github.com/user-attachments/assets/3333acb0-be95-4065-8ac2-83c533dbe55c">


---

## 자체평가 📝
이번 프로젝트는 처음 맡은 개발 작업이었지만, 전체적인 애플리케이션 구조와 코드 흐름을 파악하는 데 많은 노력을 기울였습니다. 특히, CRUD 기능을 성공적으로 구현했으며, Ajax를 이용한 비동기 처리로 사용자 경험을 향상시키는 데 기여했습니다. 초반에 팀원들과의 소통이 원활하지 않아 프로젝트 진행 중 여러 번 의견차이가 발생했습니다. 또한, 팀원들이 각각 다른 방식으로 코드를 작성하다 보니, 프로젝트를 병합하는 과정에서 코드 충돌이 발생했습니다. 이는 코드 관리 방식의 문제에서 비롯된 것이었고, 코드 스타일을 통일하는 데에도 시간이 걸렸습니다. 프로젝트에서 댓글 기능을 구현할 때, 게시판 댓글과 이용후기 댓글의 요구 사항이 달랐음에도 불구하고 동일한 DB 구조로 접근하려다 보니 발생한 문제였습니다. 이를 해결하기 위해, 댓글 기능의 DB 스키마를 분리하여 각 요구 사항에 맞는 테이블 구조를 설계하였습니다. 이로 인해 데이터 무결성 유지가 수월 해졌고, 추가적인 기능 확장에도 유연하게 대응할 수 있었습니다. 프로젝트 병합 과정에서 발생한 코드 충돌 문제를 해결하기 위해 Git 브랜치 전략을 도입했습니다. 각 팀원이 별도의 브랜치에서 개발을 진행하고, Pull Request를 통해 코드 리뷰를 거친 후 병합하도록 하여 충돌을 최소화했습니다. 이를 통해 협업 과정이 더욱 효율적으로 이루어졌고, 코드 품질 또한 향상되었습니다. 이번 프로젝트는 전반적인 애플리케이션 개발 과정과 협업의 중요성을 다시 한번 깨닫게 해준 중요한 경험이 되었습니다.

