.class public Lcom/ts/can/saic/rw950/CanRW950BaseActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanRW950BaseActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CanGMBaseActivity"


# instance fields
.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 11
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;-><init>()V

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950BaseActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    .line 7
    return-void
.end method


# virtual methods
.method protected CarSet(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 25
    invoke-static {p1, p2}, Lcom/lgb/canmodule/CanJni;->RW950CarSet(II)V

    .line 26
    return-void
.end method

.method protected GetSetData()V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950BaseActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->RW950GetCarSetData(Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;)V

    .line 16
    return-void
.end method

.method protected QuerySetData()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method
