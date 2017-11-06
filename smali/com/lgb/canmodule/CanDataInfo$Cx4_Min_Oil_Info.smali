.class public Lcom/lgb/canmodule/CanDataInfo$Cx4_Min_Oil_Info;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cx4_Min_Oil_Info"
.end annotation


# instance fields
.field public Update:I

.field public UpdateOnce:I

.field public pjyh:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3444
    const/16 v0, 0xf

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$Cx4_Min_Oil_Info;->pjyh:[I

    .line 3440
    return-void
.end method
