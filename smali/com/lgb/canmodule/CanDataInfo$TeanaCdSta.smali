.class public Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TeanaCdSta"
.end annotation


# instance fields
.field public DiscSta:[B

.field public Folder:I

.field public Mp3:I

.field public PlayMode:I

.field public Scane:I

.field public Text:I

.field public Update:I

.field public UpdateOnce:I

.field public Wma:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4129
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;->DiscSta:[B

    .line 4119
    return-void
.end method
