.class public Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;
.super Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;
.source "CanXbsygSetCompassActivity.java"

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

.field public static final TAG:Ljava/lang/String; = "CanRZygSetCompassActivity"

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
    .line 31
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 32
    const-string v2, "\u5317"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 33
    const-string v2, "\u4e1c\u5317"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 34
    const-string v2, "\u4e1c"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 35
    const-string v2, "\u4e1c\u5357"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 36
    const-string v2, "\u5357"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 37
    const-string v2, "\u897f\u5357"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 38
    const-string v2, "\u897f"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 39
    const-string v2, "\u897f\u5317"

    aput-object v2, v0, v1

    .line 30
    sput-object v0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mStrDirect:[Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 205
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 206
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 207
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 208
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 209
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 136
    new-instance v0, Lcom/ts/canview/CanItemTitleValList;

    sget v1, Lcom/ts/MainUI/R$string;->can_lpzx:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemTitleValList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mItemLpfx:Lcom/ts/canview/CanItemTitleValList;

    .line 137
    new-instance v0, Lcom/ts/canview/CanItemTitleValList;

    sget v1, Lcom/ts/MainUI/R$string;->can_znzjz:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemTitleValList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mItemLpjz:Lcom/ts/canview/CanItemTitleValList;

    .line 138
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    sget v1, Lcom/ts/MainUI/R$string;->can_lppcz:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mItemLpcz:Lcom/ts/canview/CanItemProgressList;

    .line 139
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mItemLpcz:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x1

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 140
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mItemLpcz:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 141
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mItemLpcz:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    .line 146
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mItemLpcz:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mItemLpfx:Lcom/ts/canview/CanItemTitleValList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTitleValList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mItemLpjz:Lcom/ts/canview/CanItemTitleValList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTitleValList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 150
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mItemLpjz:Lcom/ts/canview/CanItemTitleValList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTitleValList;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mItemLpjz:Lcom/ts/canview/CanItemTitleValList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTitleValList;->GetView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 184
    :pswitch_0
    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 170
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
    .line 161
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 165
    return-void

    .line 163
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->ShowItem(I)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 1

    .prologue
    .line 105
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->Query2(I)V

    .line 106
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->GetSetData()V

    .line 64
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->CompassUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->CompassUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->CompassUpdate:I

    .line 69
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mItemLpcz:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->CpsWucha:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 70
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mItemLpcz:Lcom/ts/canview/CanItemProgressList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->CpsWucha:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->CpsDirect:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->CpsDirect:I

    sget-object v1, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mStrDirect:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 74
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mItemLpfx:Lcom/ts/canview/CanItemTitleValList;

    sget-object v1, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mStrDirect:[Ljava/lang/String;

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->CpsDirect:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->CpsShowSta:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :cond_1
    :goto_1
    return-void

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mItemLpfx:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "\u65e0\u4fe1\u53f7"

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :pswitch_0
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mItemLpjz:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "\u6821\u51c6\u5b8c\u6210"

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :pswitch_1
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mItemLpjz:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "\u6b63\u5728\u6821\u51c6"

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    goto :goto_1

    .line 92
    :pswitch_2
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mItemLpjz:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "\u6821\u51c6\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    goto :goto_1

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected ShowItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->IsHaveItem(I)Z

    move-result v0

    .line 192
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 201
    :pswitch_0
    return-void

    .line 192
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->ResetData(Z)V

    .line 242
    return-void
.end method

.method public onChanged(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 248
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->CpsShowSta:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->CarCompassSet(II)V

    .line 252
    :cond_0
    return-void

    .line 250
    :cond_1
    const/16 v0, 0x80

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 218
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 234
    :goto_0
    return-void

    .line 221
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->CpsShowSta:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 223
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->CpsWucha:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->CarCompassSet(II)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->CpsWucha:I

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->CarCompassSet(II)V

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->InitUI()V

    .line 59
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 125
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 126
    invoke-super {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onPause()V

    .line 128
    const-string v0, "CanRZygSetCompassActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onResume()V

    .line 112
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->ResetData(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetCompassActivity;->QueryData()V

    .line 117
    const-string v0, "CanRZygSetCompassActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method
