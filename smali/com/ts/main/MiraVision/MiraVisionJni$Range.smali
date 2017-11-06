.class public Lcom/ts/main/MiraVision/MiraVisionJni$Range;
.super Ljava/lang/Object;
.source "MiraVisionJni.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/main/MiraVision/MiraVisionJni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation


# instance fields
.field public defaultValue:I

.field public max:I

.field public min:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p0, v0, v0, v0}, Lcom/ts/main/MiraVision/MiraVisionJni$Range;->set(III)V

    .line 85
    return-void
.end method


# virtual methods
.method public set(III)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "defaultValue"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/ts/main/MiraVision/MiraVisionJni$Range;->min:I

    .line 89
    iput p2, p0, Lcom/ts/main/MiraVision/MiraVisionJni$Range;->max:I

    .line 90
    iput p3, p0, Lcom/ts/main/MiraVision/MiraVisionJni$Range;->defaultValue:I

    .line 91
    return-void
.end method
