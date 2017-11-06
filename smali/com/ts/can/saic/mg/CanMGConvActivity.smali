.class public Lcom/ts/can/saic/mg/CanMGConvActivity;
.super Lcom/ts/can/saic/mg/CanMGGSBaseActivity;
.source "CanMGConvActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_BWHJ:I = 0x1

.field private static final ITEM_MAX:I = 0x3

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_TURN_FELL:I = 0x3

.field public static final ITEM_XCZS:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanMGConvActivity"

.field private static final mConvsArr:[I

.field private static final mTurnFellsArr:[I


# instance fields
.field private mItemBwhj:Lcom/ts/canview/CanItemSwitchList;

.field private mItemTurnFell:Lcom/ts/canview/CanItemPopupList;

.field private mItemXczs:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-array v0, v4, [I

    .line 38
    sget v1, Lcom/ts/MainUI/R$string;->can_only_light:I

    aput v1, v0, v2

    .line 39
    sget v1, Lcom/ts/MainUI/R$string;->can_dghlb:I

    aput v1, v0, v3

    .line 36
    sput-object v0, Lcom/ts/can/saic/mg/CanMGConvActivity;->mConvsArr:[I

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 44
    sget v1, Lcom/ts/MainUI/R$string;->can_yiban:I

    aput v1, v0, v2

    .line 45
    sget v1, Lcom/ts/MainUI/R$string;->can_mode_ss:I

    aput v1, v0, v3

    .line 46
    sget v1, Lcom/ts/MainUI/R$string;->can_sport:I

    aput v1, v0, v4

    .line 42
    sput-object v0, Lcom/ts/can/saic/mg/CanMGConvActivity;->mTurnFellsArr:[I

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/saic/mg/CanMGGSBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 152
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 153
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 154
    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGConvActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 156
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 162
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 163
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 164
    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGConvActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 165
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 107
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGConvActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 109
    sget v0, Lcom/ts/MainUI/R$string;->can_bwhj:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/saic/mg/CanMGConvActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGConvActivity;->mItemBwhj:Lcom/ts/canview/CanItemSwitchList;

    .line 110
    sget v0, Lcom/ts/MainUI/R$string;->can_xcd:I

    sget-object v1, Lcom/ts/can/saic/mg/CanMGConvActivity;->mConvsArr:[I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/saic/mg/CanMGConvActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGConvActivity;->mItemXczs:Lcom/ts/canview/CanItemPopupList;

    .line 111
    sget v0, Lcom/ts/MainUI/R$string;->can_mg_turnfell:I

    sget-object v1, Lcom/ts/can/saic/mg/CanMGConvActivity;->mTurnFellsArr:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/saic/mg/CanMGConvActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGConvActivity;->mItemTurnFell:Lcom/ts/canview/CanItemPopupList;

    .line 112
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 133
    .local v0, "ret":I
    invoke-static {v0}, Lcom/ts/can/saic/mg/CanMGConvActivity;->i2b(I)Z

    move-result v1

    return v1
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 122
    return-void

    .line 120
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/saic/mg/CanMGConvActivity;->ShowItem(I)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/mg/CanMGConvActivity;->Query(I)V

    .line 81
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/ts/can/saic/mg/CanMGConvActivity;->GetSetData1()V

    .line 65
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGConvActivity;->mSetData1:Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA1;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA1;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/saic/mg/CanMGConvActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGConvActivity;->mSetData1:Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA1;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA1;->Update:I

    invoke-static {v0}, Lcom/ts/can/saic/mg/CanMGConvActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGConvActivity;->mSetData1:Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA1;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA1;->Update:I

    .line 70
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGConvActivity;->mItemBwhj:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGConvActivity;->mSetData1:Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA1;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA1;->fgHomeRevLight:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 71
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGConvActivity;->mItemXczs:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGConvActivity;->mSetData1:Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA1;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA1;->FindIndicator:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 72
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGConvActivity;->mItemTurnFell:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGConvActivity;->mSetData1:Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA1;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA1;->TurnFeel:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 76
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/ts/can/saic/mg/CanMGConvActivity;->IsHaveItem(I)Z

    move-result v0

    .line 148
    .local v0, "show":Z
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/mg/CanMGConvActivity;->ResetData(Z)V

    .line 190
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 173
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 176
    :pswitch_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ts/can/saic/mg/CanMGConvActivity;->mSetData1:Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA1;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA1;->fgHomeRevLight:I

    invoke-virtual {p0, v3}, Lcom/ts/can/saic/mg/CanMGConvActivity;->Neg(I)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/saic/mg/CanMGConvActivity;->CarSet(III)V

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/ts/can/saic/mg/CanMGGSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/mg/CanMGConvActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/ts/can/saic/mg/CanMGConvActivity;->InitUI()V

    .line 59
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    const/4 v1, 0x3

    .line 196
    packed-switch p1, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 199
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0, p2}, Lcom/ts/can/saic/mg/CanMGConvActivity;->CarSet(III)V

    goto :goto_0

    .line 203
    :pswitch_1
    invoke-virtual {p0, v1, v1, p2}, Lcom/ts/can/saic/mg/CanMGConvActivity;->CarSet(III)V

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 100
    invoke-super {p0}, Lcom/ts/can/saic/mg/CanMGGSBaseActivity;->onPause()V

    .line 102
    const-string v0, "CanMGConvActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Lcom/ts/can/saic/mg/CanMGGSBaseActivity;->onResume()V

    .line 87
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/mg/CanMGConvActivity;->ResetData(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/ts/can/saic/mg/CanMGConvActivity;->QueryData()V

    .line 91
    const-string v0, "CanMGConvActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method
