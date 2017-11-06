.class public Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HondaMediaDev"
.end annotation


# instance fields
.field public CurSong:I

.field public Hour:I

.field public Min:I

.field public Progress:I

.field public Sec:I

.field public Source:I

.field public Status:I

.field public TotalSong:I

.field public USBFolderIndex:I

.field public Update:I

.field public UpdateOnce:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
