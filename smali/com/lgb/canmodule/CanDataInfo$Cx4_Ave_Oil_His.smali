.class public Lcom/lgb/canmodule/CanDataInfo$Cx4_Ave_Oil_His;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cx4_Ave_Oil_His"
.end annotation


# instance fields
.field public Update:I

.field public UpdateOnce:I

.field public bcjspjyh:I

.field public ieloop:I

.field public pjryls:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3435
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$Cx4_Ave_Oil_His;->pjryls:[I

    .line 3431
    return-void
.end method
