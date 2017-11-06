.class public Lcom/ts/can/CanGolfSetTyresActivity;
.super Lcom/ts/can/CanGolfBaseActivity;
.source "CanGolfSetTyresActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field private static final ITEM_MAX:I = 0x3

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_SET_BTN:I = 0x1

.field public static final ITEM_SPEED_WARN:I = 0x2

.field public static final ITEM_WARN_AT:I = 0x3

.field public static final TAG:Ljava/lang/String; = "CanGolfSetTyresActivity"


# instance fields
.field private mAdtTyres:Lcom/lgb/canmodule/CanDataInfo$GolfAdtTyres;

.field private mItemSetTitle:Lcom/ts/canview/CanItemBlankTextList;

.field private mItemSpeedWarn:Lcom/ts/canview/CanItemCheckList;

.field private mItemTyresSet:Lcom/ts/canview/CanItemIcoList;

.field private mItemWarnAt:Lcom/ts/canview/CanItemProgressList;

.field private mItemWarnTitle:Lcom/ts/canview/CanItemBlankTextList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mTyresData:Lcom/lgb/canmodule/CanDataInfo$GolfTyres;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ts/can/CanGolfBaseActivity;-><init>()V

    .line 40
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfTyres;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfTyres;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mTyresData:Lcom/lgb/canmodule/CanDataInfo$GolfTyres;

    .line 41
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtTyres;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfAdtTyres;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mAdtTyres:Lcom/lgb/canmodule/CanDataInfo$GolfAdtTyres;

    .line 22
    return-void
.end method


# virtual methods
.method protected AddItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/ts/can/CanGolfSetTyresActivity;->IsHaveItem(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 196
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 199
    :pswitch_0
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemTyresSet:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 203
    :pswitch_1
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemSpeedWarn:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 207
    :pswitch_2
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemWarnAt:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 147
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 150
    new-instance v0, Lcom/ts/canview/CanItemBlankTextList;

    sget v1, Lcom/ts/MainUI/R$string;->can_tyres_tpms:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemBlankTextList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemSetTitle:Lcom/ts/canview/CanItemBlankTextList;

    .line 151
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_golf_icon10:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemTyresSet:Lcom/ts/canview/CanItemIcoList;

    .line 152
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemTyresSet:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoList;->GetBtn()Landroid/widget/Button;

    move-result-object v0

    const-string v1, "SET"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemTyresSet:Lcom/ts/canview/CanItemIcoList;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 155
    new-instance v0, Lcom/ts/canview/CanItemBlankTextList;

    sget v1, Lcom/ts/MainUI/R$string;->can_winter_tyres:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemBlankTextList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemWarnTitle:Lcom/ts/canview/CanItemBlankTextList;

    .line 157
    new-instance v0, Lcom/ts/canview/CanItemCheckList;

    sget v1, Lcom/ts/MainUI/R$string;->can_warn_at:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemSpeedWarn:Lcom/ts/canview/CanItemCheckList;

    .line 158
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemSpeedWarn:Lcom/ts/canview/CanItemCheckList;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 161
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    sget v1, Lcom/ts/MainUI/R$string;->can_speed_warn:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemWarnAt:Lcom/ts/canview/CanItemProgressList;

    .line 162
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemWarnAt:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 163
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemWarnAt:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    .line 165
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

    .line 187
    :goto_0
    invoke-static {v0}, Lcom/ts/can/CanGolfSetTyresActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 173
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mAdtTyres:Lcom/lgb/canmodule/CanDataInfo$GolfAdtTyres;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtTyres;->SetBtn:I

    .line 174
    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mAdtTyres:Lcom/lgb/canmodule/CanDataInfo$GolfAdtTyres;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtTyres;->SpeedWarning:I

    .line 178
    goto :goto_0

    .line 181
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mAdtTyres:Lcom/lgb/canmodule/CanDataInfo$GolfAdtTyres;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtTyres;->WarnningAt:I

    .line 182
    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected QueryData()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 115
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mAdtTyres:Lcom/lgb/canmodule/CanDataInfo$GolfAdtTyres;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtTyres;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetTyresActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const/16 v0, 0x41

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 118
    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanGolfSetTyresActivity;->Sleep(J)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mTyresData:Lcom/lgb/canmodule/CanDataInfo$GolfTyres;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfTyres;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetTyresActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    const/16 v0, 0x40

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 125
    :cond_1
    return-void
.end method

.method protected ResetData(Z)V
    .locals 5
    .param p1, "check"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    .line 55
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mAdtTyres:Lcom/lgb/canmodule/CanDataInfo$GolfAdtTyres;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtTyres;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetTyresActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mAdtTyres:Lcom/lgb/canmodule/CanDataInfo$GolfAdtTyres;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GolfGetAdtTyres(Lcom/lgb/canmodule/CanDataInfo$GolfAdtTyres;)V

    .line 58
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mAdtTyres:Lcom/lgb/canmodule/CanDataInfo$GolfAdtTyres;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtTyres;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetTyresActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 61
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanScrollList;->RemoveAllViews()V

    .line 63
    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetTyresActivity;->IsHaveItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemSetTitle:Lcom/ts/canview/CanItemBlankTextList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemBlankTextList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 67
    :cond_0
    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetTyresActivity;->AddItem(I)V

    .line 69
    invoke-virtual {p0, v4}, Lcom/ts/can/CanGolfSetTyresActivity;->IsHaveItem(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/ts/can/CanGolfSetTyresActivity;->IsHaveItem(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemWarnTitle:Lcom/ts/canview/CanItemBlankTextList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemBlankTextList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 73
    :cond_2
    invoke-virtual {p0, v4}, Lcom/ts/can/CanGolfSetTyresActivity;->AddItem(I)V

    .line 74
    invoke-virtual {p0, v3}, Lcom/ts/can/CanGolfSetTyresActivity;->AddItem(I)V

    .line 75
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemWarnAt:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mTyresData:Lcom/lgb/canmodule/CanDataInfo$GolfTyres;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfTyres;->fgSpeedWarning:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->ShowGone(I)V

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mTyresData:Lcom/lgb/canmodule/CanDataInfo$GolfTyres;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GolfGetTyres(Lcom/lgb/canmodule/CanDataInfo$GolfTyres;)V

    .line 84
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mTyresData:Lcom/lgb/canmodule/CanDataInfo$GolfTyres;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfTyres;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetTyresActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 86
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mTyresData:Lcom/lgb/canmodule/CanDataInfo$GolfTyres;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfTyres;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetTyresActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mTyresData:Lcom/lgb/canmodule/CanDataInfo$GolfTyres;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GolfTyres;->Update:I

    .line 89
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemSpeedWarn:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mTyresData:Lcom/lgb/canmodule/CanDataInfo$GolfTyres;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfTyres;->fgSpeedWarning:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 90
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mTyresData:Lcom/lgb/canmodule/CanDataInfo$GolfTyres;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfTyres;->SpeedDW:I

    if-nez v0, :cond_6

    .line 92
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemWarnAt:Lcom/ts/canview/CanItemProgressList;

    const/16 v1, 0x1e

    const/16 v2, 0xf0

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 93
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemWarnAt:Lcom/ts/canview/CanItemProgressList;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetStep(I)V

    .line 94
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemWarnAt:Lcom/ts/canview/CanItemProgressList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mTyresData:Lcom/lgb/canmodule/CanDataInfo$GolfTyres;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfTyres;->Data:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " km/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemWarnAt:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mTyresData:Lcom/lgb/canmodule/CanDataInfo$GolfTyres;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfTyres;->Data:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 105
    invoke-virtual {p0, v3}, Lcom/ts/can/CanGolfSetTyresActivity;->IsHaveItem(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 107
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemWarnAt:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mTyresData:Lcom/lgb/canmodule/CanDataInfo$GolfTyres;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfTyres;->fgSpeedWarning:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->ShowGone(I)V

    .line 111
    :cond_5
    return-void

    .line 98
    :cond_6
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemWarnAt:Lcom/ts/canview/CanItemProgressList;

    const/16 v1, 0x14

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 99
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemWarnAt:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetStep(I)V

    .line 100
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mItemWarnAt:Lcom/ts/canview/CanItemProgressList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mTyresData:Lcom/lgb/canmodule/CanDataInfo$GolfTyres;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfTyres;->Data:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mph"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetTyresActivity;->ResetData(Z)V

    .line 261
    return-void
.end method

.method public onChanged(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 249
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 251
    const/16 v0, 0x21

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    .line 254
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 220
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 233
    :goto_0
    return-void

    .line 223
    :pswitch_0
    new-instance v1, Lcom/ts/canview/CanItemMsgBox;

    sget v2, Lcom/ts/MainUI/R$string;->can_tpms_box:I

    invoke-direct {v1, v0, p0, v2, p0}, Lcom/ts/canview/CanItemMsgBox;-><init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V

    .line 224
    .local v1, "msgbox":Lcom/ts/canview/CanItemMsgBox;
    goto :goto_0

    .line 227
    .end local v1    # "msgbox":Lcom/ts/canview/CanItemMsgBox;
    :pswitch_1
    const/16 v2, 0x20

    iget-object v3, p0, Lcom/ts/can/CanGolfSetTyresActivity;->mTyresData:Lcom/lgb/canmodule/CanDataInfo$GolfTyres;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTyres;->fgSpeedWarning:I

    and-int/lit8 v3, v3, 0x1

    rsub-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/ts/can/CanGolfBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetTyresActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetTyresActivity;->InitUI()V

    .line 51
    return-void
.end method

.method public onOK(I)V
    .locals 2
    .param p1, "param"    # I

    .prologue
    const/4 v1, 0x1

    .line 239
    if-ne v1, p1, :cond_0

    .line 241
    const/16 v0, 0x22

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    .line 243
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 142
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onPause()V

    .line 143
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onResume()V

    .line 131
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetTyresActivity;->ResetData(Z)V

    .line 133
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetTyresActivity;->QueryData()V

    .line 135
    return-void
.end method
