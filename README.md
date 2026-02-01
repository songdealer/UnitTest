# UnitTest Architecture Guide (SwiftUI)

이 프로젝트는 **SwiftUI App Target과 UnitTest Target 간의 역할 분리와 테스트 가능한 구조**를 예제로 다룹니다.

UnitTest를 작성할 때 자주 발생하는  
**“어디까지 테스트해야 하고, 무엇을 분리해야 하는가?”**  
라는 문제를 **Feature(비즈니스 로직) 분리**로 해결합니다.

---

## 문제 배경

SwiftUI 기반 앱에서 UnitTest를 작성하다 보면 다음과 같은 요구가 생깁니다.

- View의 상태 변경 로직을 **UI와 분리해서 테스트하고 싶다**
- 버튼 탭 등의 결과를 **UI 없이 검증하고 싶다**
- SwiftUI View를 직접 테스트하지 않고도 **비즈니스 로직의 신뢰성을 보장하고 싶다**

---
