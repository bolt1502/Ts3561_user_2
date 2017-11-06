.class public Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;
.super Lcom/ts/can/chrysler/CanChrOthBaseActivity;
.source "CanChrOthSetCompassActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_LPCZ:I = 0x2

.field public static final ITEM_LPFX:I = 0x1

.field public static final ITEM_LPJZ:I = 0x3

.field private static final ITEM_MAX:I = 0x3

.field private static final ITEM_MIN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanChrOthSetCompassActivity"

.field private static final mStrDirect:[Ljava/lang/String;


# instance fields
.field private mItemLpcz:Lcom/ts/canview/CanItemProgressList;

.field private mItemLpfx:Lcom/ts/canview/CanItemTitleValList;

.field private mItemLpjz:Lcom/ts/canview/CanItemTitleValList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 30
    const-string v2, "\u5317"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 31
    const-string v2, "\u4e1c\u5317"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 32
    const-string v2, "\u4e1c"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 33
    const-string v2, "\u4e1c\u5357"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 34
    const-string v2, "\u5357"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 35
    const-string v2, "\u897f\u5357"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 36
    const-string v2, "\u897f"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 37
    const-string v2, "\u897f\u5317"

    aput-object v2, v0, v1

    .line 28
    sput-object v0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mStrDirect:[Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 191
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 192
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 193
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 194
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 195
    return-object v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 120
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 123
    new-instance v0, Lcom/ts/canview/CanItemTitleValList;

    sget v1, Lcom/ts/MainUI/R$string;->can_lpzx:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemTitleValList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mItemLpfx:Lcom/ts/canview/CanItemTitleValList;

    .line 124
    new-instance v0, Lcom/ts/canview/CanItemTitleValList;

    sget v1, Lcom/ts/MainUI/R$string;->can_znzjz:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemTitleValList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mItemLpjz:Lcom/ts/canview/CanItemTitleValList;

    .line 125
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    sget v1, Lcom/ts/MainUI/R$string;->can_lppcz:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mItemLpcz:Lcom/ts/canview/CanItemProgressList;

    .line 126
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mItemLpcz:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 127
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mItemLpcz:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 128
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mItemLpcz:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->GetBtnSub()Lcom/ts/other/ParamButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 129
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mItemLpcz:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->GetProgress()Lcom/ts/other/CustomImgView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 132
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mItemLpcz:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 133
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mItemLpfx:Lcom/ts/canview/CanItemTitleValList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTitleValList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mItemLpjz:Lcom/ts/canview/CanItemTitleValList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTitleValList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 136
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mItemLpjz:Lcom/ts/canview/CanItemTitleValList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTitleValList;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mItemLpjz:Lcom/ts/canview/CanItemTitleValList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTitleValList;->GetView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 170
    :pswitch_0
    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 151
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->ShowItem(I)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 92
    const/16 v0, 0x40

    const/16 v1, 0xb0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->Query(II)V

    .line 93
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->GetSetData()V

    .line 62
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->CompassUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->CompassUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->CompassUpdate:I

    .line 67
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mItemLpcz:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->CpsWucha:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 69
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->CpsDirect:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->CpsDirect:I

    sget-object v1, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mStrDirect:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 71
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mItemLpfx:Lcom/ts/canview/CanItemTitleValList;

    sget-object v1, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mStrDirect:[Ljava/lang/String;

    iget-object v2, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->CpsDirect:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->CpsShowSta:I

    if-nez v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mItemLpjz:Lcom/ts/canview/CanItemTitleValList;

    sget v1, Lcom/ts/MainUI/R$string;->can_fjz:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(I)V

    .line 88
    :cond_1
    :goto_1
    return-void

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mItemLpfx:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "\u65e0\u4fe1\u53f7"

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->mItemLpjz:Lcom/ts/canview/CanItemTitleValList;

    sget v1, Lcom/ts/MainUI/R$string;->can_zzjz:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(I)V

    goto :goto_1
.end method

.method protected ShowItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->IsHaveItem(I)Z

    move-result v0

    .line 178
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 187
    :pswitch_0
    return-void

    .line 178
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->ResetData(Z)V

    .line 221
    return-void
.end method

.method public onChanged(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 227
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 229
    const/16 v0, 0xb0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->CarSet(II)V

    .line 231
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 204
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 207
    :pswitch_0
    const/16 v1, 0xb1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->CarSet(II)V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->InitUI()V

    .line 57
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 113
    invoke-super {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onPause()V

    .line 115
    const-string v0, "CanChrOthSetCompassActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onResume()V

    .line 99
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->ResetData(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;->QueryData()V

    .line 104
    const-string v0, "CanChrOthSetCompassActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method
