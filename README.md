# XcodeSwiftPMSample
Xcode project with SwiftPM

## プロジェクト構成

- アプリのXcodeプロジェクト（`Hello.xcodeproj`）には、必要最小限のものだけ入れる。
- アプリの実装コードは、Swiftパッケージ（`AppFeature`、`Core`）に入れる。
- `Hello.xcodeproj` でアプリに `AppFeature` パッケージをリンクする。

## SwiftPMプラグイン

- Xcodeプロジェクトでビルドスクリプトを設定する代わりに、SwiftPMのビルドツールプラグインを利用する。
- Xcode上でビルドを実行すると、SwiftLintが実行されてXcode上でwarningが表示される。
- Thanks to https://github.com/juozasvalancius/ExampleSPMProjectWithSwiftLint

