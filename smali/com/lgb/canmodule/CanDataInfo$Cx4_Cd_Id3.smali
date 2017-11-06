.class public Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cx4_Cd_Id3"
.end annotation


# instance fields
.field public EncoderMode:I

.field public Update:I

.field public UpdateOnce:I

.field public szArtist:[B

.field public szDisc:[B

.field public szTitle:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x50

    .line 3391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3395
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;->szTitle:[B

    .line 3396
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;->szDisc:[B

    .line 3397
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;->szArtist:[B

    .line 3391
    return-void
.end method
