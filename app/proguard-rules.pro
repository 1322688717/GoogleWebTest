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

# 保留所有类和类成员的名称，不进行混淆
-keepclassmembers class * {
    *;
}

# 保留特定的类和类成员的名称，不进行混淆
-keep class com.java8888.java9999.ui.MainActivity {
    public <methods>;
    private <fields>;
}

# 保留特定的类和类成员的名称，不进行混淆，并且不移除未使用的代码
-keep,allowshrinking class com.java8888.java9999.ui.SplashActivity {
    public <methods>;
    private <fields>;
}

# 保留特定的类和类成员的名称，不进行混淆，并且不移除未使用的代码
-keep,allowshrinking class com.java8888.java9999.ui.CustomWebActivity {
    public <methods>;
    private <fields>;
}

# 移除所有日志调用
-assumenosideeffects class android.util.Log {
    public static boolean isLoggable(java.lang.String, int);
    public static int v(...);
    public static int i(...);
    public static int d(...);
    public static int w(...);
    public static int e(...);
}

# 移除所有调试信息
-assumenosideeffects class * {
    public static void setDebugEnabled(...);
}

# 移除掉未使用的类和类成员
-dontnote
-dontwarn
-dontoptimize
-dontpreverify
-verbose
-ignorewarnings

# 以下是一些常见的库和框架的特定规则示例，你可以根据你的项目需要添加或修改这些规则

# 保留常见的 Android 库
-keep class android.support.** { *; }
-keep interface android.support.** { *; }
-keep class androidx.** { *; }
-keep interface androidx.** { *; }

# 保留常见的 Google Play 服务库
-keep class com.google.android.gms.** { *; }
-keep interface com.google.android.gms.** { *; }

# 保留常见的 Gson 库
-keep class com.google.gson.** { *; }
-keepclassmembers class com.google.gson.** { *; }

# 保留常见的 Retrofit 库
-keep class retrofit.** { *; }
-keepclasseswithmembers class retrofit.** { *; }
-keepattributes Signature
-keepattributes Exceptions

# 保留常见的 OkHttp 库
-dontwarn okhttp3.**
-keep class okhttp3.** { *; }
-keep interface okhttp3.** { *; }
-keepattributes Signature
-keepattributes Exceptions

# 更多的特定规则可以添加在这里

