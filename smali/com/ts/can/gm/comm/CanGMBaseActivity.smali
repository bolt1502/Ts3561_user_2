.class public Lcom/ts/can/gm/comm/CanGMBaseActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanGMBaseActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CanGMBaseActivity"


# instance fields
.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 11
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMBaseActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    .line 7
    return-void
.end method


# virtual methods
.method protected CarSet(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 28
    invoke-static {p1, p2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    .line 29
    return-void
.end method

.method protected GetSetData()V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMBaseActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMGetCarSet(Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;)V

    .line 16
    return-void
.end method

.method protected QuerySetData()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMBaseActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->UpdateOnce:I

    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMQuery(I)V

    .line 24
    :cond_0
    return-void
.end method
