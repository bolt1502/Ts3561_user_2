.class public Lcom/lgb/canmodule/CanDataInfo$TeanaCdText;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TeanaCdText"
.end annotation


# instance fields
.field public Update:I

.field public UpdateOnce:I

.field public szText:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4147
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$TeanaCdText;->szText:[B

    .line 4143
    return-void
.end method
