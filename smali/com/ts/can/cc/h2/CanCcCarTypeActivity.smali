.class public Lcom/ts/can/cc/h2/CanCcCarTypeActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanCcCarTypeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_BSQYW:I = 0x3

.field public static final ITEM_LQYWD:I = 0x2

.field private static final ITEM_MAX:I = 0x4

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_TYPE:I = 0x1

.field public static final ITEM_XDCDY:I = 0x4

.field public static final TAG:Ljava/lang/String; = "CanCcCarTypeActivity"

.field private static final mTypeArr:[I


# instance fields
.field private mCarData:Lcom/lgb/canmodule/CanDataInfo$H2CarData;

.field private mItemBsqyw:Lcom/ts/canview/CanItemTitleValList;

.field private mItemCarType:Lcom/ts/canview/CanItemCarType;

.field private mItemLqywd:Lcom/ts/canview/CanItemTitleValList;

.field private mItemXdcdy:Lcom/ts/canview/CanItemTitleValList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 38
    sget v2, Lcom/ts/MainUI/R$string;->can_type_other:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 39
    sget v2, Lcom/ts/MainUI/R$string;->can_cc_h2_red_2017:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 40
    sget v2, Lcom/ts/MainUI/R$string;->can_hf_h2s_red:I

    aput v2, v0, v1

    .line 36
    sput-object v0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mTypeArr:[I

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 49
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$H2CarData;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$H2CarData;-><init>()V

    iput-object v0, p0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mCarData:Lcom/lgb/canmodule/CanDataInfo$H2CarData;

    .line 24
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 180
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 181
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 182
    iget-object v1, p0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 183
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 184
    return-object v0
.end method

.method protected AddItemTitleVal(II)Lcom/ts/canview/CanItemTitleValList;
    .locals 4
    .param p1, "text"    # I
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 195
    new-instance v0, Lcom/ts/canview/CanItemTitleValList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTitleValList;-><init>(Landroid/content/Context;I)V

    .line 196
    .local v0, "item":Lcom/ts/canview/CanItemTitleValList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemTitleValList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 197
    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemTitleValList;->SetIconVisibility(I)V

    .line 198
    iget-object v1, p0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTitleValList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 199
    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemTitleValList;->ShowGone(Z)V

    .line 200
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetIconVisibility(I)V

    .line 201
    return-object v0
.end method

.method protected InitUI()V
    .locals 6

    .prologue
    .line 112
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 114
    new-instance v0, Lcom/ts/canview/CanItemCarType;

    sget v2, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    sget-object v3, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mTypeArr:[I

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/ts/canview/CanItemCarType;-><init>(Landroid/content/Context;I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    .line 115
    iget-object v0, p0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCarType;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 117
    sget v0, Lcom/ts/MainUI/R$string;->can_lqywd:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->AddItemTitleVal(II)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mItemLqywd:Lcom/ts/canview/CanItemTitleValList;

    .line 118
    sget v0, Lcom/ts/MainUI/R$string;->can_bsqyw:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->AddItemTitleVal(II)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mItemBsqyw:Lcom/ts/canview/CanItemTitleValList;

    .line 119
    sget v0, Lcom/ts/MainUI/R$string;->can_xdcdy:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->AddItemTitleVal(II)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mItemXdcdy:Lcom/ts/canview/CanItemTitleValList;

    .line 121
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 152
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 139
    :pswitch_0
    const/4 v0, 0x1

    .line 140
    goto :goto_0

    .line 144
    :pswitch_1
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 146
    const/4 v0, 0x1

    .line 148
    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 127
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 131
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->ShowItem(I)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method protected ResetData(Z)V
    .locals 9
    .param p1, "check"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 68
    iget-object v0, p0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mCarData:Lcom/lgb/canmodule/CanDataInfo$H2CarData;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->CCH2sGetCarSet(Lcom/lgb/canmodule/CanDataInfo$H2CarData;)V

    .line 69
    iget-object v0, p0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mCarData:Lcom/lgb/canmodule/CanDataInfo$H2CarData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$H2CarData;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mCarData:Lcom/lgb/canmodule/CanDataInfo$H2CarData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$H2CarData;->Update:I

    invoke-static {v0}, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mCarData:Lcom/lgb/canmodule/CanDataInfo$H2CarData;

    iput v7, v0, Lcom/lgb/canmodule/CanDataInfo$H2CarData;->Update:I

    .line 74
    iget-object v0, p0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mItemLqywd:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "%.2f \u2103"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mCarData:Lcom/lgb/canmodule/CanDataInfo$H2CarData;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$H2CarData;->Lqywd:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4048000000000000L    # 48.0

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mItemBsqyw:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "%d \u2103"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mCarData:Lcom/lgb/canmodule/CanDataInfo$H2CarData;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$H2CarData;->Bsqyw:I

    add-int/lit8 v3, v3, -0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mItemXdcdy:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "%.2fV"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mCarData:Lcom/lgb/canmodule/CanDataInfo$H2CarData;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$H2CarData;->Xdcdy:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    .line 80
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->IsHaveItem(I)Z

    move-result v0

    .line 160
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 176
    :goto_0
    :pswitch_0
    return-void

    .line 165
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mItemLqywd:Lcom/ts/canview/CanItemTitleValList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTitleValList;->ShowGone(Z)V

    goto :goto_0

    .line 168
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mItemBsqyw:Lcom/ts/canview/CanItemTitleValList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTitleValList;->ShowGone(Z)V

    goto :goto_0

    .line 171
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mItemXdcdy:Lcom/ts/canview/CanItemTitleValList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTitleValList;->ShowGone(Z)V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->ResetData(Z)V

    .line 225
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 217
    .local v0, "item":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->InitUI()V

    .line 63
    return-void
.end method

.method public onItem(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 231
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 233
    const-string v0, "CanCcCarTypeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Select = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {p2}, Lcom/yyw/ts70xhw/FtSet;->SetCanSubT(I)I

    .line 235
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    .line 237
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 107
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 108
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 90
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 91
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 92
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->ResetData(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->QueryData()V

    .line 94
    invoke-virtual {p0}, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->LayoutUI()V

    .line 96
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    .line 97
    .local v0, "sub":I
    const-string v1, "CanCcCarTypeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "subtype = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lcom/ts/can/cc/h2/CanCcCarTypeActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCarType;->GetPopItem()Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 100
    return-void
.end method
