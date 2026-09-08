# Dimipay Design Kit (2.0)

디미페이 2.0 앱과 키오스크를 위한 공통 디자인 키트

> [!NOTE]
> 이 패키지는 Alpha 버전입니다. 사용 전 변경사항과 앱·키오스크의 호환성을 확인해주세요.

## Docs

- App: <https://github.com/dimipay/dimipay_app_v2>
- Kiosk: <https://github.com/dimipay/dimipay_kiosk>
- Backend: <https://github.com/dimipay/dimipay-back-v2>

## Flutter & Theme

Flutter의 `ThemeExtension`으로 공통 색상과 타이포그래피를 정의합니다. `DPTheme`은 색상(`colors`)과 타이포그래피(`textStyle`)를 묶어 제공합니다.

| Directory | Description |
| --- | --- |
| `lib/interfaces/` | 테마, 색상 및 타이포그래피의 공통 인터페이스를 정의합니다. |
| `lib/theme/` | 라이트, 다크 및 POS 테마를 제공합니다. |

## Setup

사용하는 Flutter 프로젝트의 `pubspec.yaml`에 의존성을 추가한 후 `flutter pub get`을 실행합니다.

```yaml
dependencies:
  dimipay_design_kit:
    git:
      url: https://github.com/dimipay/dimipay_design_kit.git
      ref: main
```

> [!TIP]
> 타이포그래피는 `SUITv1` 폰트를 사용합니다. 사용하는 앱의 `pubspec.yaml`에 폰트 파일과 굵기를 등록해주세요.

## Features

### Colors

`DPColors`는 `grayscale100`부터 `grayscale1000`까지의 회색조와 `primaryBrand`, `primaryNegative` 색상을 제공합니다.

### Typography

`DPTypography`는 다음 텍스트 스타일을 제공합니다.

| Style | Description |
| --- | --- |
| `title`, `header1`, `header2` | 제목과 헤더에 사용합니다. |
| `itemTitle`, `itemDescription` | 항목의 제목과 설명에 사용합니다. |
| `description`, `readable`, `token`, `hint` | 설명과 보조 텍스트에 사용합니다. |
| `paragraph1`, `paragraph2` | 본문에 사용합니다. |
| `paragraph1Underlined`, `paragraph2Underlined` | 밑줄이 있는 본문에 사용합니다. |

### Theme

`DPLightTheme`, `DPDarkTheme`, `DPPosTheme`을 제공합니다.

```dart
import 'package:flutter/material.dart';
import 'package:dimipay_design_kit/dimipay_design_kit.dart';

final theme = DPLightTheme();
final title = Text(
  'Hello Dimigo Students!',
  style: theme.textStyle.title,
);
final background = theme.colors.grayscale100;
```

## Test

`test/dimipay_design_kit_test.dart`에 테스트 골격이 있습니다. 현재 검증문이 없으므로 테스트 통과만으로 테마의 동작을 검증할 수는 없습니다.

## Scripts

### Setup

| Script | Description |
| --- | --- |
| `flutter pub get` | 의존성을 설치합니다. |

### Lint

| Script | Description |
| --- | --- |
| `flutter analyze` | Dart 코드를 정적 분석합니다. |
| `dart format .` | Dart 코드 형식을 정리합니다. |

### Test

| Script | Description |
| --- | --- |
| `flutter test` | 전체 테스트를 실행합니다. |
