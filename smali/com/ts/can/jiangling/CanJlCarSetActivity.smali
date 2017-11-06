.class public Lcom/ts/can/jiangling/CanJlCarSetActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanJlCarSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_MAX:I = 0x1

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_YDMS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanJlCarSetActivity"

.field private static final mYdmsArr:[Ljava/lang/String;


# instance fields
.field protected mItemJsms:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mSetData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_SET;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 32
    const-string v2, "\u8212\u9002\u6a21\u5f0f"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 33
    const-string v2, "\u8fd0\u52a8\u6a21\u5f0f"

    aput-object v2, v0, v1

    .line 28
    sput-object v0, Lcom/ts/can/jiangling/CanJlCarSetActivity;->mYdmsArr:[Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 44
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_SET;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_SET;-><init>()V

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_SET;

    .line 19
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 149
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 150
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 151
    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlCarSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 152
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 153
    return-object v0
.end method

.method protected AddPopupItem(II[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;
    .locals 6
    .param p1, "text"    # I
    .param p2, "icon"    # I
    .param p3, "val"    # [Ljava/lang/String;
    .param p4, "id"    # I

    .prologue
    .line 158
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;II[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 159
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p4}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 160
    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlCarSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 161
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 162
    return-object v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    .line 99
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlCarSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 101
    sget v0, Lcom/ts/MainUI/R$string;->can_eps_mode:I

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_esc:I

    sget-object v2, Lcom/ts/can/jiangling/CanJlCarSetActivity;->mYdmsArr:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/can/jiangling/CanJlCarSetActivity;->AddPopupItem(II[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlCarSetActivity;->mItemJsms:Lcom/ts/canview/CanItemPopupList;

    .line 103
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 126
    :goto_0
    invoke-static {v0}, Lcom/ts/can/jiangling/CanJlCarSetActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 120
    :pswitch_0
    const/4 v0, 0x1

    .line 121
    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 112
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/jiangling/CanJlCarSetActivity;->ShowItem(I)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_SET;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->JLGetCarSet(Lcom/lgb/canmodule/CanDataInfo$JL_CAR_SET;)V

    .line 59
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_SET;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_SET;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/jiangling/CanJlCarSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_SET;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_SET;->Update:I

    invoke-static {v0}, Lcom/ts/can/jiangling/CanJlCarSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_SET;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_SET;->Update:I

    .line 64
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_SET;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_SET;->EpsZl:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 65
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlCarSetActivity;->mItemJsms:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_SET;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_SET;->EpsZl:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 68
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/ts/can/jiangling/CanJlCarSetActivity;->IsHaveItem(I)Z

    move-result v0

    .line 134
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlCarSetActivity;->mItemJsms:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/jiangling/CanJlCarSetActivity;->ResetData(Z)V

    .line 188
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 170
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 180
    :pswitch_0
    return-void

    .line 170
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/jiangling/CanJlCarSetActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/ts/can/jiangling/CanJlCarSetActivity;->InitUI()V

    .line 54
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 194
    packed-switch p1, :pswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 197
    :pswitch_0
    const/4 v0, 0x1

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->JLCarSet(II)V

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 92
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 94
    const-string v0, "CanJlCarSetActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 78
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 79
    invoke-virtual {p0}, Lcom/ts/can/jiangling/CanJlCarSetActivity;->LayoutUI()V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/jiangling/CanJlCarSetActivity;->ResetData(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/ts/can/jiangling/CanJlCarSetActivity;->QueryData()V

    .line 83
    const-string v0, "CanJlCarSetActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method
