# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

# Keep Hilt classes
-keep class dagger.hilt.** { *; }
-keep class javax.inject.** { *; }
-keep class * extends dagger.hilt.android.AndroidEntryPoint
-keepclasseswithmembers class * {
    @dagger.hilt.android.AndroidEntryPoint <methods>;
}

# Keep Compose classes
-keep class androidx.compose.** { *; }
-keep class kotlin.Metadata { *; }

# Keep data classes used in Room
-keep class com.tictactoe.game.data.model.** { *; }

# Keep AdMob classes
-keep class com.google.android.gms.ads.** { *; }
-keep class com.google.ads.** { *; }

# Keep Kotlin coroutines
-keepnames class kotlinx.coroutines.internal.MainDispatcherFactory {}
-keepnames class kotlinx.coroutines.CoroutineExceptionHandler {}

# Keep serialization classes
-keepattributes *Annotation*, InnerClasses
-dontnote kotlinx.serialization.AnnotationsKt

# JDK 24 compatibility - keep modern Java features
-keep class java.lang.invoke.** { *; }
-keep class java.util.concurrent.** { *; }
-keep class java.time.** { *; }

# Android 14+ compatibility
-keep class android.window.** { *; }
-keep class androidx.window.** { *; } 