.class public Lcom/mediatek/miravision/setting/MiraVisionJni$Range;
.super Ljava/lang/Object;
.source "MiraVisionJni.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/miravision/setting/MiraVisionJni;
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

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p0, v0, v0, v0}, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->set(III)V

    .line 83
    return-void
.end method


# virtual methods
.method public set(III)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "defaultValue"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->min:I

    .line 87
    iput p2, p0, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->max:I

    .line 88
    iput p3, p0, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->defaultValue:I

    .line 89
    return-void
.end method
