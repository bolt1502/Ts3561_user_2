.class public Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;
.super Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;
.source "CanBMWMiniStatusCheckActivity.java"


# instance fields
.field private mItemDoor:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemNone:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemReset:Lcom/ts/canview/CanItemTextBtnList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;-><init>()V

    return-void
.end method

.method private AddIcoItem(I)Lcom/ts/canview/CanItemTextBtnList;
    .locals 3
    .param p1, "text"    # I

    .prologue
    const/4 v1, 0x0

    .line 71
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 72
    .local v0, "item":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTextBtnList;->ShowArrow(Z)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 74
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 75
    return-object v0
.end method


# virtual methods
.method protected AddItemView()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->AddIcoItem(I)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->mItemNone:Lcom/ts/canview/CanItemTextBtnList;

    .line 15
    sget v0, Lcom/ts/MainUI/R$string;->can_check_control_door:I

    invoke-direct {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->AddIcoItem(I)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->mItemDoor:Lcom/ts/canview/CanItemTextBtnList;

    .line 16
    sget v0, Lcom/ts/MainUI/R$string;->can_check_control_reset:I

    invoke-direct {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->AddIcoItem(I)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->mItemReset:Lcom/ts/canview/CanItemTextBtnList;

    .line 17
    return-void
.end method

.method protected Query()V
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->Query(I)V

    .line 67
    return-void
.end method

.method protected ResetData(Z)V
    .locals 8
    .param p1, "check"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 21
    invoke-virtual {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->GetMiniCheck()V

    .line 23
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->mCarCheck:Lcom/lgb/canmodule/CanDataInfo$MiniCheck;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$MiniCheck;->UpdateOnce:I

    invoke-static {v6}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 25
    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->mCarCheck:Lcom/lgb/canmodule/CanDataInfo$MiniCheck;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$MiniCheck;->Update:I

    invoke-static {v6}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 27
    :cond_0
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->mCarCheck:Lcom/lgb/canmodule/CanDataInfo$MiniCheck;

    iput v5, v6, Lcom/lgb/canmodule/CanDataInfo$MiniCheck;->Update:I

    .line 29
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->mCarCheck:Lcom/lgb/canmodule/CanDataInfo$MiniCheck;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$MiniCheck;->Num:I

    if-nez v6, :cond_1

    .line 30
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->mItemNone:Lcom/ts/canview/CanItemTextBtnList;

    sget v7, Lcom/ts/MainUI/R$string;->can_check_control_none:I

    invoke-virtual {v6, v7}, Lcom/ts/canview/CanItemTextBtnList;->SetVal(I)V

    .line 32
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->mItemNone:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v6, v4}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 33
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->mItemDoor:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v6, v5}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 34
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->mItemReset:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v6, v5}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 37
    :cond_1
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->mCarCheck:Lcom/lgb/canmodule/CanDataInfo$MiniCheck;

    iget v0, v6, Lcom/lgb/canmodule/CanDataInfo$MiniCheck;->CurIndex:I

    .line 39
    .local v0, "curIndex":I
    if-lt v0, v4, :cond_2

    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->mCarCheck:Lcom/lgb/canmodule/CanDataInfo$MiniCheck;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$MiniCheck;->Num:I

    if-gt v0, v6, :cond_2

    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, "doorFlag":Z
    const/4 v3, 0x0

    .line 43
    .local v3, "resetFlag":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v6, 0x8

    if-lt v2, v6, :cond_3

    .line 52
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->mItemNone:Lcom/ts/canview/CanItemTextBtnList;

    sget v7, Lcom/ts/MainUI/R$string;->can_check_control_ok:I

    invoke-virtual {v6, v7}, Lcom/ts/canview/CanItemTextBtnList;->SetVal(I)V

    .line 54
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->mItemNone:Lcom/ts/canview/CanItemTextBtnList;

    if-nez v1, :cond_6

    if-nez v3, :cond_6

    :goto_1
    invoke-virtual {v6, v4}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 55
    iget-object v4, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->mItemDoor:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v4, v1}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 56
    iget-object v4, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->mItemReset:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v4, v3}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 62
    .end local v0    # "curIndex":I
    .end local v1    # "doorFlag":Z
    .end local v2    # "i":I
    .end local v3    # "resetFlag":Z
    :cond_2
    return-void

    .line 45
    .restart local v0    # "curIndex":I
    .restart local v1    # "doorFlag":Z
    .restart local v2    # "i":I
    .restart local v3    # "resetFlag":Z
    :cond_3
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->mCarCheck:Lcom/lgb/canmodule/CanDataInfo$MiniCheck;

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$MiniCheck;->Item:[I

    aget v6, v6, v2

    if-ne v6, v4, :cond_5

    .line 46
    const/4 v1, 0x1

    .line 43
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :cond_5
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;->mCarCheck:Lcom/lgb/canmodule/CanDataInfo$MiniCheck;

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$MiniCheck;->Item:[I

    aget v6, v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 48
    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    move v4, v5

    .line 54
    goto :goto_1
.end method
