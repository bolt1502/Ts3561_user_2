.class public Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;
.super Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;
.source "CanGqcqSetDrvAssActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_CSBJ:I = 0x1

.field private static final ITEM_MAX:I = 0x5

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_YCQDSJ:I = 0x4

.field public static final ITEM_YCSDSJ:I = 0x3

.field public static final ITEM_ZHYBYL:I = 0x2

.field public static final ITEM_ZXMS:I = 0x5

.field public static final TAG:Ljava/lang/String; = "CanGqcqSetDrvAssActivity"


# instance fields
.field private mItemCsbj:Lcom/ts/canview/CanItemProgressList;

.field private mItemYcqdsj:Lcom/ts/canview/CanItemProgressList;

.field private mItemYcsdsj:Lcom/ts/canview/CanItemProgressList;

.field private mItemZhybyl:Lcom/ts/canview/CanItemPopupList;

.field private mItemZxms:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field protected mZhybylArr:[I

.field protected mZxmsArr:[I

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;-><init>()V

    .line 33
    new-array v0, v5, [I

    .line 34
    sget v1, Lcom/ts/MainUI/R$string;->can_cdjd:I

    aput v1, v0, v2

    .line 35
    sget v1, Lcom/ts/MainUI/R$string;->can_cdzj:I

    aput v1, v0, v3

    .line 36
    sget v1, Lcom/ts/MainUI/R$string;->can_cdjg:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mZhybylArr:[I

    .line 40
    new-array v0, v5, [I

    .line 41
    sget v1, Lcom/ts/MainUI/R$string;->can_sport:I

    aput v1, v0, v2

    .line 42
    sget v1, Lcom/ts/MainUI/R$string;->can_mode_normal:I

    aput v1, v0, v3

    .line 43
    sget v1, Lcom/ts/MainUI/R$string;->can_mode_ss:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mZxmsArr:[I

    .line 19
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 189
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 190
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 191
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 192
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 193
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 199
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 200
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 201
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 202
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 203
    return-object v0
.end method

.method protected AddProgressItem(II)Lcom/ts/canview/CanItemProgressList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 209
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    .line 210
    .local v0, "item":Lcom/ts/canview/CanItemProgressList;
    invoke-virtual {v0, p2, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 211
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    .line 212
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 213
    return-object v0
.end method

.method protected InitUI()V
    .locals 5

    .prologue
    const/16 v4, 0x1e

    const/4 v3, 0x0

    .line 113
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 115
    sget v0, Lcom/ts/MainUI/R$string;->can_csbj:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->AddProgressItem(II)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mItemCsbj:Lcom/ts/canview/CanItemProgressList;

    .line 116
    sget v0, Lcom/ts/MainUI/R$string;->can_ycsdsj:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->AddProgressItem(II)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mItemYcsdsj:Lcom/ts/canview/CanItemProgressList;

    .line 117
    sget v0, Lcom/ts/MainUI/R$string;->can_ycqdsj:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->AddProgressItem(II)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mItemYcqdsj:Lcom/ts/canview/CanItemProgressList;

    .line 118
    sget v0, Lcom/ts/MainUI/R$string;->can_zhbjyl:I

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mZhybylArr:[I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mItemZhybyl:Lcom/ts/canview/CanItemPopupList;

    .line 119
    sget v0, Lcom/ts/MainUI/R$string;->can_zxms:I

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mZxmsArr:[I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mItemZxms:Lcom/ts/canview/CanItemPopupList;

    .line 121
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mItemCsbj:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    .line 123
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mItemCsbj:Lcom/ts/canview/CanItemProgressList;

    const/16 v1, 0x14

    invoke-virtual {v0, v3, v1}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 124
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mItemYcsdsj:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v3, v4}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 125
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mItemYcqdsj:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v3, v4}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 127
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->LayoutUI()V

    .line 129
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 150
    .local v0, "ret":I
    const/4 v0, 0x1

    .line 151
    invoke-static {v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->i2b(I)Z

    move-result v1

    return v1
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 139
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->ShowItem(I)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->GetSetData()V

    .line 70
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Update:I

    invoke-static {v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Update:I

    .line 75
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mItemCsbj:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->SpeedWarn:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 76
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mItemYcsdsj:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Ycsdsj:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 77
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mItemYcqdsj:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Ycqdsj:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 78
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mItemCsbj:Lcom/ts/canview/CanItemProgressList;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->SpeedWarn:I

    mul-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mItemZhybyl:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Zhybyl:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 80
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mItemZxms:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->ZxMode:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 84
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->IsHaveItem(I)Z

    move-result v0

    .line 159
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 163
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mItemCsbj:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    goto :goto_0

    .line 167
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mItemZhybyl:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 171
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mItemYcsdsj:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    goto :goto_0

    .line 175
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mItemYcqdsj:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    goto :goto_0

    .line 179
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->mItemZxms:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->ResetData(Z)V

    .line 236
    return-void
.end method

.method public onChanged(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 261
    packed-switch p1, :pswitch_data_0

    .line 279
    :goto_0
    :pswitch_0
    return-void

    .line 264
    :pswitch_1
    const/4 v0, 0x7

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GqcqCarSet(II)V

    goto :goto_0

    .line 268
    :pswitch_2
    const/16 v0, 0x9

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GqcqCarSet(II)V

    goto :goto_0

    .line 272
    :pswitch_3
    const/16 v0, 0xa

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GqcqCarSet(II)V

    goto :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 228
    .local v0, "item":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->InitUI()V

    .line 65
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 242
    packed-switch p1, :pswitch_data_0

    .line 255
    :goto_0
    :pswitch_0
    return-void

    .line 245
    :pswitch_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->CarSet(II)V

    goto :goto_0

    .line 249
    :pswitch_2
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->CarSet(II)V

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 108
    invoke-super {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;->onPause()V

    .line 109
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;->onResume()V

    .line 95
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->ResetData(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;->QueryData()V

    .line 99
    const-string v0, "CanGqcqSetDrvAssActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method
