.class public Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpTrip;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToyotaConsumpTrip"
.end annotation


# instance fields
.field public DW:I

.field public Trip:[I

.field public Update:I

.field public UpdateOnce:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 685
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpTrip;->Trip:[I

    .line 680
    return-void
.end method
