.class public Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanGqcqBaseActivity.java"


# instance fields
.field protected mSWArr:[I

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 10
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GS4Set;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 14
    sget v2, Lcom/ts/MainUI/R$string;->can_on:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 15
    sget v2, Lcom/ts/MainUI/R$string;->can_off:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;->mSWArr:[I

    .line 8
    return-void
.end method


# virtual methods
.method protected CarSet(II)V
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "itemval"    # I

    .prologue
    .line 25
    add-int/lit8 v0, p2, 0x1

    invoke-static {p1, v0}, Lcom/lgb/canmodule/CanJni;->GqcqCarSet(II)V

    .line 26
    return-void
.end method

.method protected GetSetData()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GqcqGetSet(Lcom/lgb/canmodule/CanDataInfo$GS4Set;)V

    .line 21
    return-void
.end method
