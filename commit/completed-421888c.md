# completed@421888c

[Permalink](completed-421888c.md)

|  |  | @@ -0,0 +1,46 @@ |
| :--- | :--- | :--- |
|  |  |  \# Miscellaneous |
|  |  |  \*.class |
|  |  |  \*.log |
|  |  |  \*.pyc |
|  |  |  \*.swp |
|  |  |  .DS\_Store |
|  |  |  .atom/ |
|  |  |  .buildlog/ |
|  |  |  .history |
|  |  |  .svn/ |
|  |  |  |
|  |  |  \# IntelliJ related |
|  |  |  \*.iml |
|  |  |  \*.ipr |
|  |  |  \*.iws |
|  |  |  .idea/ |
|  |  |  |
|  |  |  \# The .vscode folder contains launch configuration and tasks you configure in |
|  |  |  \# VS Code which you may wish to be included in version control, so this line |
|  |  |  \# is commented out by default. |
|  |  |  \#.vscode/ |
|  |  |  |
|  |  |  \# Flutter/Dart/Pub related |
|  |  |  \*\*/doc/api/ |
|  |  |  \*\*/ios/Flutter/.last\_build\_id |
|  |  |  .dart\_tool/ |
|  |  |  .flutter-plugins |
|  |  |  .flutter-plugins-dependencies |
|  |  |  .packages |
|  |  |  .pub-cache/ |
|  |  |  .pub/ |
|  |  |  /build/ |
|  |  |  |
|  |  |  \# Web related |
|  |  |  lib/generated\_plugin\_registrant.dart |
|  |  |  |
|  |  |  \# Symbolication related |
|  |  |  app.\*.symbols |
|  |  |  |
|  |  |  \# Obfuscation related |
|  |  |  app.\*.map.json |
|  |  |  |
|  |  |  \# Android Studio will place build artifacts here |
|  |  |  /android/app/debug |
|  |  |  /android/app/profile |
|  |  |  /android/app/release |

|  |  | @@ -0,0 +1,10 @@ |
| :--- | :--- | :--- |
|  |  |  \# This file tracks properties of this Flutter project. |
|  |  |  \# Used by Flutter tool to assess capabilities and perform upgrades etc. |
|  |  |  \# |
|  |  |  \# This file should be version controlled and should not be manually edited. |
|  |  |  |
|  |  |  version: |
|  |  |  revision: cc9b78fc5c4a4d2d51316d9626523336230a89a9 |
|  |  |  channel: dev |
|  |  |  |
|  |  |  project\_type: app |

|  |  | @@ -0,0 +1,16 @@ |
| :--- | :--- | :--- |
|  |  |  \# etablo\_csv |
|  |  |  |
|  |  |  A new Flutter project. |
|  |  |  |
|  |  |  \#\# Getting Started |
|  |  |  |
|  |  |  This project is a starting point for a Flutter application. |
|  |  |  |
|  |  |  A few resources to get you started if this is your first Flutter project: |
|  |  |  |
|  |  |  - \[Lab: Write your first Flutter app\]\(https://flutter.dev/docs/get-started/codelab\) |
|  |  |  - \[Cookbook: Useful Flutter samples\]\(https://flutter.dev/docs/cookbook\) |
|  |  |  |
|  |  |  For help getting started with Flutter, view our |
|  |  |  \[online documentation\]\(https://flutter.dev/docs\), which offers tutorials, |
|  |  |  samples, guidance on mobile development, and a full API reference. |

|  |  | @@ -0,0 +1,11 @@ |
| :--- | :--- | :--- |
|  |  |  gradle-wrapper.jar |
|  |  |  /.gradle |
|  |  |  /captures/ |
|  |  |  /gradlew |
|  |  |  /gradlew.bat |
|  |  |  /local.properties |
|  |  |  GeneratedPluginRegistrant.java |
|  |  |  |
|  |  |  \# Remember to never publicly share your keystore. |
|  |  |  \# See https://flutter.dev/docs/deployment/android\#reference-the-keystore-from-the-app |
|  |  |  key.properties |

|  |  | @@ -0,0 +1,59 @@ |
| :--- | :--- | :--- |
|  |  |  def localProperties = new Properties\(\) |
|  |  |  def localPropertiesFile = rootProject.file\('local.properties'\) |
|  |  |  if \(localPropertiesFile.exists\(\)\) { |
|  |  |  localPropertiesFile.withReader\('UTF-8'\) { reader -&gt; |
|  |  |  localProperties.load\(reader\) |
|  |  |  } |
|  |  |  } |
|  |  |  |
|  |  |  def flutterRoot = localProperties.getProperty\('flutter.sdk'\) |
|  |  |  if \(flutterRoot == null\) { |
|  |  |  throw new GradleException\("Flutter SDK not found. Define location with flutter.sdk in the local.properties file."\) |
|  |  |  } |
|  |  |  |
|  |  |  def flutterVersionCode = localProperties.getProperty\('flutter.versionCode'\) |
|  |  |  if \(flutterVersionCode == null\) { |
|  |  |  flutterVersionCode = '1' |
|  |  |  } |
|  |  |  |
|  |  |  def flutterVersionName = localProperties.getProperty\('flutter.versionName'\) |
|  |  |  if \(flutterVersionName == null\) { |
|  |  |  flutterVersionName = '1.0' |
|  |  |  } |
|  |  |  |
|  |  |  apply plugin: 'com.android.application' |
|  |  |  apply plugin: 'kotlin-android' |
|  |  |  apply from: "$flutterRoot/packages/flutter\_tools/gradle/flutter.gradle" |
|  |  |  |
|  |  |  android { |
|  |  |  compileSdkVersion 30 |
|  |  |  |
|  |  |  sourceSets { |
|  |  |  main.java.srcDirs += 'src/main/kotlin' |
|  |  |  } |
|  |  |  |
|  |  |  defaultConfig { |
|  |  |  // TODO: Specify your own unique Application ID \(https://developer.android.com/studio/build/application-id.html\). |
|  |  |  applicationId "com.example.etablo\_csv" |
|  |  |  minSdkVersion 16 |
|  |  |  targetSdkVersion 30 |
|  |  |  versionCode flutterVersionCode.toInteger\(\) |
|  |  |  versionName flutterVersionName |
|  |  |  } |
|  |  |  |
|  |  |  buildTypes { |
|  |  |  release { |
|  |  |  // TODO: Add your own signing config for the release build. |
|  |  |  // Signing with the debug keys for now, so \`flutter run --release\` works. |
|  |  |  signingConfig signingConfigs.debug |
|  |  |  } |
|  |  |  } |
|  |  |  } |
|  |  |  |
|  |  |  flutter { |
|  |  |  source '../..' |
|  |  |  } |
|  |  |  |
|  |  |  dependencies { |
|  |  |  implementation "org.jetbrains.kotlin:kotlin-stdlib-jdk7:$kotlin\_version" |
|  |  |  } |

|  |  | @@ -0,0 +1,7 @@ |
| :--- | :--- | :--- |
|  |  |  &lt;manifest xmlns:android="http://schemas.android.com/apk/res/android" |
|  |  |  package="com.example.etablo\_csv"&gt; |
|  |  |  |
|  |  |  &lt;uses-permission android:name="android.permission.INTERNET"/&gt; |
|  |  |  manifest&gt; |

|  |  | @@ -0,0 +1,41 @@ |
| :--- | :--- | :--- |
|  |  |  &lt;manifest xmlns:android="http://schemas.android.com/apk/res/android" |
|  |  |  package="com.example.etablo\_csv"&gt; |
|  |  |  &lt;application |
|  |  |  android:label="etablo\_csv" |
|  |  |  android:icon="@mipmap/ic\_launcher"&gt; |
|  |  |  &lt;activity |
|  |  |  android:name=".MainActivity" |
|  |  |  android:launchMode="singleTop" |
|  |  |  android:theme="@style/LaunchTheme" |
|  |  |  android:configChanges="orientation\|keyboardHidden\|keyboard\|screenSize\|smallestScreenSize\|locale\|layoutDirection\|fontScale\|screenLayout\|density\|uiMode" |
|  |  |  android:hardwareAccelerated="true" |
|  |  |  android:windowSoftInputMode="adjustResize"&gt; |
|  |  |  |
|  |  |  &lt;meta-data |
|  |  |  android:name="io.flutter.embedding.android.NormalTheme" |
|  |  |  android:resource="@style/NormalTheme" |
|  |  |  /&gt; |
|  |  |  |
|  |  |  &lt;meta-data |
|  |  |  android:name="io.flutter.embedding.android.SplashScreenDrawable" |
|  |  |  android:resource="@drawable/launch\_background" |
|  |  |  /&gt; |
|  |  |  &lt;intent-filter&gt; |
|  |  |  &lt;action android:name="android.intent.action.MAIN"/&gt; |
|  |  |  &lt;category android:name="android.intent.category.LAUNCHER"/&gt; |
|  |  |  intent-filter&gt; |
|  |  |  activity&gt; |
|  |  |  |
|  |  |  &lt;meta-data |
|  |  |  android:name="flutterEmbedding" |
|  |  |  android:value="2" /&gt; |
|  |  |  application&gt; |
|  |  |  manifest&gt; |

|  |  | @@ -0,0 +1,6 @@ |
| :--- | :--- | :--- |
|  |  |  package com.example.etablo\_csv |
|  |  |  |
|  |  |  import io.flutter.embedding.android.FlutterActivity |
|  |  |  |
|  |  |  class MainActivity: FlutterActivity\(\) { |
|  |  |  } |

|  |  | @@ -0,0 +1,12 @@ |
| :--- | :--- | :--- |
|  |  |  xml version="1.0" encoding="utf-8"?&gt; |
|  |  |  |
|  |  |  &lt;layer-list xmlns:android="http://schemas.android.com/apk/res/android"&gt; |
|  |  |  &lt;item android:drawable="?android:colorBackground" /&gt; |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  layer-list&gt; |

|  |  | @@ -0,0 +1,12 @@ |
| :--- | :--- | :--- |
|  |  |  xml version="1.0" encoding="utf-8"?&gt; |
|  |  |  |
|  |  |  &lt;layer-list xmlns:android="http://schemas.android.com/apk/res/android"&gt; |
|  |  |  &lt;item android:drawable="@android:color/white" /&gt; |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  layer-list&gt; |

|  |  | @@ -0,0 +1,18 @@ |
| :--- | :--- | :--- |
|  |  |  xml version="1.0" encoding="utf-8"?&gt; |
|  |  |  &lt;resources&gt; |
|  |  |  |
|  |  |  &lt;style name="LaunchTheme" parent="@android:style/Theme.Black.NoTitleBar"&gt; |
|  |  |  |
|  |  |  &lt;item name="android:windowBackground"&gt;@drawable/launch\_backgrounditem&gt; |
|  |  |  style&gt; |
|  |  |  |
|  |  |  &lt;style name="NormalTheme" parent="@android:style/Theme.Black.NoTitleBar"&gt; |
|  |  |  &lt;item name="android:windowBackground"&gt;?android:colorBackgrounditem&gt; |
|  |  |  style&gt; |
|  |  |  resources&gt; |

|  |  | @@ -0,0 +1,18 @@ |
| :--- | :--- | :--- |
|  |  |  xml version="1.0" encoding="utf-8"?&gt; |
|  |  |  &lt;resources&gt; |
|  |  |  |
|  |  |  &lt;style name="LaunchTheme" parent="@android:style/Theme.Light.NoTitleBar"&gt; |
|  |  |  |
|  |  |  &lt;item name="android:windowBackground"&gt;@drawable/launch\_backgrounditem&gt; |
|  |  |  style&gt; |
|  |  |  |
|  |  |  &lt;style name="NormalTheme" parent="@android:style/Theme.Light.NoTitleBar"&gt; |
|  |  |  &lt;item name="android:windowBackground"&gt;?android:colorBackgrounditem&gt; |
|  |  |  style&gt; |
|  |  |  resources&gt; |

|  |  | @@ -0,0 +1,7 @@ |
| :--- | :--- | :--- |
|  |  |  &lt;manifest xmlns:android="http://schemas.android.com/apk/res/android" |
|  |  |  package="com.example.etablo\_csv"&gt; |
|  |  |  |
|  |  |  &lt;uses-permission android:name="android.permission.INTERNET"/&gt; |
|  |  |  manifest&gt; |

|  |  | @@ -0,0 +1,31 @@ |
| :--- | :--- | :--- |
|  |  |  buildscript { |
|  |  |  ext.kotlin\_version = '1.3.50' |
|  |  |  repositories { |
|  |  |  google\(\) |
|  |  |  jcenter\(\) |
|  |  |  } |
|  |  |  |
|  |  |  dependencies { |
|  |  |  classpath 'com.android.tools.build:gradle:4.1.0' |
|  |  |  classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlin\_version" |
|  |  |  } |
|  |  |  } |
|  |  |  |
|  |  |  allprojects { |
|  |  |  repositories { |
|  |  |  google\(\) |
|  |  |  jcenter\(\) |
|  |  |  } |
|  |  |  } |
|  |  |  |
|  |  |  rootProject.buildDir = '../build' |
|  |  |  subprojects { |
|  |  |  project.buildDir = "${rootProject.buildDir}/${project.name}" |
|  |  |  } |
|  |  |  subprojects { |
|  |  |  project.evaluationDependsOn\(':app'\) |
|  |  |  } |
|  |  |  |
|  |  |  task clean\(type: Delete\) { |
|  |  |  delete rootProject.buildDir |
|  |  |  } |

|  |  | @@ -0,0 +1,3 @@ |
| :--- | :--- | :--- |
|  |  |  org.gradle.jvmargs=-Xmx1536M |
|  |  |  android.useAndroidX=true |
|  |  |  android.enableJetifier=true |

|  |  | @@ -0,0 +1,6 @@ |
| :--- | :--- | :--- |
|  |  |  \#Fri Jun 23 08:50:38 CEST 2017 |
|  |  |  distributionBase=GRADLE\_USER\_HOME |
|  |  |  distributionPath=wrapper/dists |
|  |  |  zipStoreBase=GRADLE\_USER\_HOME |
|  |  |  zipStorePath=wrapper/dists |
|  |  |  distributionUrl=https\://services.gradle.org/distributions/gradle-6.7-all.zip |

|  |  | @@ -0,0 +1,11 @@ |
| :--- | :--- | :--- |
|  |  |  include ':app' |
|  |  |  |
|  |  |  def localPropertiesFile = new File\(rootProject.projectDir, "local.properties"\) |
|  |  |  def properties = new Properties\(\) |
|  |  |  |
|  |  |  assert localPropertiesFile.exists\(\) |
|  |  |  localPropertiesFile.withReader\("UTF-8"\) { reader -&gt; properties.load\(reader\) } |
|  |  |  |
|  |  |  def flutterSdkPath = properties.getProperty\("flutter.sdk"\) |
|  |  |  assert flutterSdkPath != null, "flutter.sdk not set in local.properties" |
|  |  |  apply from: "$flutterSdkPath/packages/flutter\_tools/gradle/app\_plugin\_loader.gradle" |

|  |  | @@ -0,0 +1,32 @@ |
| :--- | :--- | :--- |
|  |  |  \*.mode1v3 |
|  |  |  \*.mode2v3 |
|  |  |  \*.moved-aside |
|  |  |  \*.pbxuser |
|  |  |  \*.perspectivev3 |
|  |  |  \*\*/\*sync/ |
|  |  |  .sconsign.dblite |
|  |  |  .tags\* |
|  |  |  \*\*/.vagrant/ |
|  |  |  \*\*/DerivedData/ |
|  |  |  Icon? |
|  |  |  \*\*/Pods/ |
|  |  |  \*\*/.symlinks/ |
|  |  |  profile |
|  |  |  xcuserdata |
|  |  |  \*\*/.generated/ |
|  |  |  Flutter/App.framework |
|  |  |  Flutter/Flutter.framework |
|  |  |  Flutter/Flutter.podspec |
|  |  |  Flutter/Generated.xcconfig |
|  |  |  Flutter/app.flx |
|  |  |  Flutter/app.zip |
|  |  |  Flutter/flutter\_assets/ |
|  |  |  Flutter/flutter\_export\_environment.sh |
|  |  |  ServiceDefinitions.json |
|  |  |  Runner/GeneratedPluginRegistrant.\* |
|  |  |  |
|  |  |  \# Exceptions to above rules. |
|  |  |  !default.mode1v3 |
|  |  |  !default.mode2v3 |
|  |  |  !default.pbxuser |
|  |  |  !default.perspectivev3 |

|  |  | @@ -0,0 +1,26 @@ |
| :--- | :--- | :--- |
|  |  |  xml version="1.0" encoding="UTF-8"?&gt; |
|  |  |  DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd"&gt; |
|  |  |  &lt;plist version="1.0"&gt; |
|  |  |  &lt;dict&gt; |
|  |  |  &lt;key&gt;CFBundleDevelopmentRegionkey&gt; |
|  |  |  &lt;string&gt;enstring&gt; |
|  |  |  &lt;key&gt;CFBundleExecutablekey&gt; |
|  |  |  &lt;string&gt;Appstring&gt; |
|  |  |  &lt;key&gt;CFBundleIdentifierkey&gt; |
|  |  |  &lt;string&gt;io.flutter.flutter.appstring&gt; |
|  |  |  &lt;key&gt;CFBundleInfoDictionaryVersionkey&gt; |
|  |  |  &lt;string&gt;6.0string&gt; |
|  |  |  &lt;key&gt;CFBundleNamekey&gt; |
|  |  |  &lt;string&gt;Appstring&gt; |
|  |  |  &lt;key&gt;CFBundlePackageTypekey&gt; |
|  |  |  &lt;string&gt;FMWKstring&gt; |
|  |  |  &lt;key&gt;CFBundleShortVersionStringkey&gt; |
|  |  |  &lt;string&gt;1.0string&gt; |
|  |  |  &lt;key&gt;CFBundleSignaturekey&gt; |
|  |  |  &lt;string&gt;????string&gt; |
|  |  |  &lt;key&gt;CFBundleVersionkey&gt; |
|  |  |  &lt;string&gt;1.0string&gt; |
|  |  |  &lt;key&gt;MinimumOSVersionkey&gt; |
|  |  |  &lt;string&gt;8.0string&gt; |
|  |  |  dict&gt; |
|  |  |  plist&gt; |

|  |  | @@ -0,0 +1 @@ |
| :--- | :--- | :--- |
|  |  |  \#include "Generated.xcconfig" |

|  |  | @@ -0,0 +1 @@ |
| :--- | :--- | :--- |
|  |  |  \#include "Generated.xcconfig" |

