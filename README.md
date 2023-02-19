# WhatIsFlutter?

# Flutter

## Flutter란 무엇인가?

- Google에서 개발 및 지원하는 오픈 소스 프레임워크
- 프런트 엔드 및 풀 스택 개발자는 Flutter를 사용해 다수의 플랫폼에 대한 애플리케이션의 사용자 인터페이스(UI)를 **단일 코드 베이스**로 구축
- Flutter는 iOS, Android, 웹, Windows, MacOS, Linux의 여섯 가지 플랫폼에 대한 애플리케이션 개발을 지원

## Flutter는 앱 개발을 어떻게 지원하나요?

- Flutter는 지원하는 6개의 플랫폼에 걸쳐 일관되고 세련된 애플리케이션 UI를 만드는 프로세스를 간소화
- Flutter는 크로스 플랫폼 개발 프레임워크
    - 네이티브 개발과의 비교
        
        ### 크로스 플랫폼 앱 개발에 비해 네이티브 앱 개발에 더 가까움?
        
        - iOS와 같은 특정 플랫폼을 위한 애플리케이션을 코딩하는 것을 네이티브 앱 개발이라고 함
        - 크로스 플랫폼 앱 개발은 단일 코드 베이스를 기반으로 여러 플랫폼을 위한 애플리케이션을 구축하는 것
        
        ### 네이티브 앱 개발
        
        - 네이티브 앱 개발에서 개발자는 특정 플랫폼용으로 코드를 작성하므로, 네이티브 디바이스 기능에 대한 전체 액세스 권한을 가짐
        - 크로스 플랫폼 앱 개발에 비해 더 높은 성능과 속도
        - 여러 플랫폼에서 애플리케이션을 실행하려는 경우, 네이티브 앱 개발 방식에서는 더 많은 코드와 개발자가 필요 → 비용 외에도, 네이티브 앱 개발의 경우 여러 플랫폼에서 일관된 사용자 경험으로 동시에 실행하기가 더 어려울 수 있음
        - Flutter와 같은크로스 플랫폼 앱 개발 프레임워크가 유용할 수 있다.
        
        ### 크로스 플랫폼 앱 개발
        
        - 크로스 플랫폼 앱 개발을 통해 개발자는 하나의 프로그래밍 언어와 하나의 코드베이스를 사용하여 여러 플랫폼용 애플리케이션을 구축가능
        - 여러 플랫폼용으로 출시하는 경우 크로스 플랫폼 앱 개발 방식이 네이티브 앱 개발 방식보도 비용과 시간이 적게 듦
        - 이 프로세스를 통해 개발자는 플랫폼 전반에 걸쳐 사용자를 위한 보다 일관된 경험을 만들어낼 수 있음
        - 네이티브 디바이스 기능에 대한 제한된 액세스를 비롯하여, 네이티브 앱 개발에 비해 단점이 있을 수 있다
            - but, Flutter는 크로스 플랫폼 앱 개발을 더 원할하게 더 높은 성능으로 진행할 수 있도록 하는 기능을 제공
        
        ### Flutter의 이점
        
        - **네이티브에 가까운 성능** : Flutter는 프로그래밍 언어로 Dart를 사용하고 기계 코드로 컴파일 → 호스트 디바이스가 이 코드를 이해하므로 빠르고 효과적인 성능이 보장
        - **빠르고 일관적이며 사용자 지정이 가능한 랜더링** : Flutter는 플랫폼별 랜더링 도구를 사용하지 않고, **Google의 오픈 소스 [Skia 그래픽 라이브러리](https://skia.org/)를 사용**하여 UI를 랜더링 → 애플리케이션에 액세스하는 데 사용하는 플랫폼에 관계없이 사용자에 일관된 시각적 경험 제공
        - **개발자에게 편리한 도구** : Google은 사용 편의성에 중점을 두고 Flutter를 만들었음. 개발자는 **핫 리로드와 같은 도구를 사용하여 상태를 바꾸지 않고 코드 변경 내용을 미리 볼 수 있다.** **위젯 검사기와 같은 다른 도구를 사용하면 UI 레이아웃 문제를 손쉽게 시각화하고 해결**할 수 있다.

## Flutter는 어떤 프로그래밍 언어를 사용하나요?

- Flutter는 Google이 개발한 오픈 소스 프로그래밍 언어인 **Dart**를 사용
- Dart는 **UI를 구축하는 데 최적**되어 있으며, **Dart의 많은 강점은 Flutter에서 활용**됨
- 예를 들어 Flutter에서 용되는 Dart의 기능 중 하나로 **Sound Null Safety** 기능
    - null 오류라는 일반적인 버그를 손쉽게 감지할 수 있도록 해줌 → 개발자가 코드 유지 관리에 허비하는 시간을 줄이고 **애플리케이션 구축에 집중할 수 있는 시간을 더 확보**

### Flutter의 위젯이란 무엇인가요?

- Flutter에서 개발자는 위젯을 사용하여 UI 레이아웃을 만듦 → 창과 패널부터 버튼과 텍스트에 이르기까지, 사용자가 화면에서 보는 모든 요소가 위젯**으로 부터 만들어짐**
- **Flutter 위젯은 개발자가 손쉽게 사용자 지정할 수 있도록 설계**
    - Flutter는 구성 접근 방식을 통해 이를 실현 → 대부분의 위젯은 작은 위젯으로 구성되며, 가장 기본적인 위젯은 특정한 용도가 있음 → 개발자가 위젯을 결합하거나 편집하여 새 위젯을 만들 수 있음
- Flutter는 플랫폼의 기본 제공 위젯을 사용하는 것이 아니라, 자체 그래픽 엔진을 사용하여 위젯을 랜더링 → 사용자는 플랫폼 전체에 걸쳐 Flutter 애플리케이션에서 유사한 모양과 느낌을 경험할 수 있음 또한 일부 Flutter 위젯은 플랫폼별 위젯에서는 수행할 수 없는 기능을 수행할 수 있으므로, 이러한 접근 방식은 개발자에게 유연성을 제공
- Flutter는 커뮤니티에서 개발한 위젯도 손쉽게 사용할 수 있도록 한다.
    - Flutter의 아키텍처는 여러 위젯 라이브러리를 적용하는 기능을 지원하며, Flutter는 커뮤니티에서 새로운 위젯 라이브러리를 구축하고 유지 관리하도록 장려

### Flutter 위젯의 유형

- Flutter는 다운로드 할 때 부터 광범위한 위젯 카탈로그와 함께 제공 → 카탈로그에는 스타일링, Cupertino(iOS 스타일 위젯) 및 Material Components(Google의 재료 설계 지침을 따르는 위젯)를 비롯한 14개의 범주가 있음
- Fluteer에는 레이아웃과 테마도 포함되어 있어 개발자가 빠르게 구축하는 데 도움

## Flutter는 어떻게 지원되나요?

- Flutter는 Google과 [Reddit](https://www.reddit.com/r/FlutterDev/), [Discord](https://discord.gg/zvPdDfES), [Slack](https://fluttercommunity.dev/joinslack), [Stack Overflow](https://stackoverflow.com/tags/flutter), [Gitter](https://gitter.im/flutter/flutter)의 활성 오픈 소스 커뮤니티에서 지원
- Google은 2018년 출시 이후 꾸준히 Flutter를 업데이트해 왔으며, 여기에는 macOS와 Linux로 안정적 지원을 확장한 2022년 Flutter 3 업데이트가 포함
- Flutter를 쉽게 익힐 수 있도록 Google은 [Flutter 사이트](https://flutter.dev/)에서 광범위한 문서와 자습서를 제공합니다. Flutter 사용자와 소통하기 위해 Google은 글로벌 이벤트를 열고 커뮤니티 프로젝트를 홍보하며 개발자의 도전을 후원하고 있습니다. 예정된 이벤트는 [Flutter 사이트](https://flutter.dev/events)에서 확인할 수 있습니다.
    
    Flutter 커뮤니티에서는 개발자 경험을 간소화하는 수천 가지 서드 파티 패키지와 뛰어난 도구를 만들어냈습니다. 이러한 라이브러리는 [pub.dev](https://pub.dev/)에서 사용할 수 있습니다.
    

## AWS는 Flutter를 어떻게 지원하나요?

- Flutter는 애플리케이션에서 사용자에게 표시되는 부분을 만드는데 도움이 됩니다. 하지만 애플리케이션을 개발하는 데에는 인증, 파일, 스토리지, 분석 등 사용자에게 보이지 않는 많은 기능이 필요 → AWS Amplify와 Amplify Flutter는 바로 여기에 사용
- AWS Amplify는 안전하고 확장 가능한 모바일 및 웹 애플리케이션을 구축할 수 있는 프레임 워크, iOS, Android, 웹, React Native 및 Flutter를 지원하는 AWS Amplify를 사용하면 AWS 기반의 애플리케이션을 쉽고 빠르게 구축할 수 있음
- Amplify Flutter는 Flutter 애플리케이션의 백엔드를 프로비저닝, 빌드 및 배포할 수 있는 도구와 라이브러리의 집합 → Amplify Flutter를 사용하여 Flutter 애플리케이션을 AWS에 연결하고 일반적인 백엔드 요구 사항을 해결할 수 있습니다.

### Amplify Flutter를 백엔드 솔루션으로 사용

Amplify Flutter를 사용하면 AWS와 협력하여 Flutter 애플리케이션에 공통 백엔드 기능을 추가할 수 있습니다.

- 분석 : Amplifer Flutter를 사용하면 [Amazon Pinpoint](https://aws.amazon.com/ko/pinpoint/)에서 사용자에 대한 추적 데이터를 수집할 수 있습니다. 이벤트를 손쉽게 기록하고 필요에 따라 지표와 속성을 사용자 지정할 수 있습니다.
- [API](https://aws.amazon.com/ko/what-is/api/) : Amplify Flutter에는 강력한 API 기능이 있습니다. [GraphQL API](https://docs.amplify.aws/lib/graphqlapi/getting-started/q/platform/flutter)는 백엔드의 데이터를 검색하는 데 유용하며 [AWS AppSync](https://aws.amazon.com/appsync/)에서 지원 [REST API 및 핸들러](https://docs.amplify.aws/lib/restapi/getting-started/q/platform/flutter/)는 백엔드로 요청을 보내도록 지원하기 위해 [Amazon API Gateway](https://aws.amazon.com/apigateway)와 [AWS Lambda](https://aws.amazon.com/lambda/)를 사용
- 인증 : Amplify Flutter를 사용하면 사용자를 인증하고 등록 및 로그인 양식뿐만 아니라 다중 인증도 구현할 수 있음. Amplify Flutter는 백그라운드에서 다른 Amplify 범주에 필요한 권한을 제공. Amplify Flutter는 사용을 시작하는 순간부터 Cognito 사용자 풀과 ID 풀을 지원
- 데이터 스토어 : Amplify Flutter를 사용하면 오프라인 및 온라인 시나리오를 위한 추가 코드를 작성하지 않고도 분산 공유 데이터를 사용할 수 있음. 따라서 분산된 사용자 간 데이터에 대해서도 로컬 전용 데이터만큼 간편하게 작업에 사용할 수 있다. Amplify DataStore는 데이터를 자동으로 버저닝하고 AppSync를 사용하여 클라우드에서 충돌 감지 및 해결 기능을 구현
- 스토리지 : Amplify Flutter를 사용하면 스토리지의 객체를 업로드하고, 다운로드하고, 삭제할 수 있습니다. 또한 Amplify Flutter는 [Amazon Simple Storage Service(S3)](https://aws.amazon.com/s3/)를 기본 지원합니다.

**→ Amplify Flutter**
