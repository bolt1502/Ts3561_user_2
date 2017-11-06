.class public Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GM_PhoneInfo"
.end annotation


# instance fields
.field public RevUpdated:I

.field public Update:I

.field public UpdateOnce:I

.field public szNum:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1060
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;->szNum:[B

    .line 1055
    return-void
.end method
