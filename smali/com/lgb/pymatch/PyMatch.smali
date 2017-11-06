.class public Lcom/lgb/pymatch/PyMatch;
.super Ljava/lang/Object;
.source "PyMatch.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "pymatch"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native GetMatchVal(Ljava/lang/String;)I
.end method

.method public static native SetSubstr(Ljava/lang/String;)V
.end method
