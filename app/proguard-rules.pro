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
#
#-dontwarn kotlin.**
#
## Add this global rule
#-keepattributes Signature
#
## This rule will properly ProGuard all the model classes in
## the package com.yourcompany.models. Modify to fit the structure
## of your app.
#-keepclassmembers class com.unipi.torpiles.smartalert.* {
#    *;
#}
#
#-keep class kotlin.Metadata { *; }
#
#-keepattributes RuntimeVisibleAnnotations
#
## Keep custom model classes
#-keep class com.google.firebase.example.fireeats.java.model.** { *; }
#-keep class com.google.firebase.example.fireeats.kotlin.model.** { *; }
#
## https://github.com/firebase/FirebaseUI-Android/issues/1175
#-dontwarn okio.**
#-dontwarn retrofit2.Call
#
#-keep public class * implements com.bumptech.glide.module.GlideModule
#-keep class * extends com.bumptech.glide.module.AppGlideModule {
# <init>(...);
#}
#-keep public enum com.bumptech.glide.load.ImageHeaderParser$** {
#  **[] $VALUES;
#  public *;
#}
#-keep class com.bumptech.glide.load.data.ParcelFileDescriptorRewinder$InternalRewinder {
#  *** rewind();
#}