.class public Lcom/lgb/canmodule/CanDataInfo$GM_Light;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GM_Light"
.end annotation


# instance fields
.field public LightOn:I

.field public Update:I

.field public UpdateOnce:I

.field public ubLevel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
