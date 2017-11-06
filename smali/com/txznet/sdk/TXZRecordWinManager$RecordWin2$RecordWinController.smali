.class public interface abstract Lcom/txznet/sdk/TXZRecordWinManager$RecordWin2$RecordWinController;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZRecordWinManager$RecordWin2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecordWinController"
.end annotation


# static fields
.field public static final OPERATE_CLICK:I = 0x0

.field public static final OPERATE_LONG_CLICK:I = 0x1

.field public static final OPERATE_TOUCH:I = 0x2

.field public static final TARGET_CONTENT_CHAT:I = 0xa

.field public static final TARGET_CONTENT_FULL:I = 0x14

.field public static final TARGET_VIEW_MIC:I = 0x1e

.field public static final VIEW_CLOSE:I = 0xd

.field public static final VIEW_HELP:I = 0xa

.field public static final VIEW_LIST_ITEM:I = 0x3

.field public static final VIEW_LIST_NEXTPAGE:I = 0x1

.field public static final VIEW_LIST_PREPAGE:I = 0x2

.field public static final VIEW_RECORD:I = 0xc

.field public static final VIEW_SETTING:I = 0xb

.field public static final VIEW_TIPS:I = 0xe

.field public static final VIEW_TTS_QRCODE:I = 0xf


# virtual methods
.method public abstract addView(ILandroid/view/View;)Ljava/lang/Object;
.end method

.method public abstract dismiss()V
.end method

.method public abstract operateView(IIII)Ljava/lang/Object;
.end method

.method public abstract show()V
.end method
