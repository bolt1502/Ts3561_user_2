.class public Lcom/ts/can/CanGolfSetPMActivity;
.super Lcom/ts/can/CanGolfBaseActivity;
.source "CanGolfSetPMActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_ACTIVE:I = 0x1

.field public static final ITEM_AUTO_ACTIVATE:I = 0x2

.field public static final ITEM_FRONT_TONE:I = 0x4

.field public static final ITEM_FRONT_VOL:I = 0x3

.field private static final ITEM_MAX:I = 0x6

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_REAR_TONE:I = 0x6

.field public static final ITEM_REAR_VOL:I = 0x5

.field public static final TAG:Ljava/lang/String; = "CanGolfSetPMActivity"


# instance fields
.field private mAdtPM:Lcom/lgb/canmodule/CanDataInfo$GolfAdtParkAndM;

.field private mItemActive:Lcom/ts/canview/CanItemCheckList;

.field private mItemAutoActivate:Lcom/ts/canview/CanItemCheckList;

.field private mItemFrontTone:Lcom/ts/canview/CanItemProgressList;

.field private mItemFrontVol:Lcom/ts/canview/CanItemProgressList;

.field private mItemRearTone:Lcom/ts/canview/CanItemProgressList;

.field private mItemRearVol:Lcom/ts/canview/CanItemProgressList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mPMData:Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/CanGolfBaseActivity;-><init>()V

    .line 40
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mPMData:Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;

    .line 41
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtParkAndM;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfAdtParkAndM;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mAdtPM:Lcom/lgb/canmodule/CanDataInfo$GolfAdtParkAndM;

    .line 18
    return-void
.end method


# virtual methods
.method protected AddItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/ts/can/CanGolfSetPMActivity;->IsHaveItem(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 226
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 229
    :pswitch_0
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemActive:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 233
    :pswitch_1
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemAutoActivate:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 237
    :pswitch_2
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemFrontVol:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 241
    :pswitch_3
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemFrontTone:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 245
    :pswitch_4
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemRearVol:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 249
    :pswitch_5
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemRearTone:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected InitItem(I)V
    .locals 4
    .param p1, "item"    # I

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x1

    .line 178
    packed-switch p1, :pswitch_data_0

    .line 217
    :goto_0
    return-void

    .line 181
    :pswitch_0
    new-instance v0, Lcom/ts/canview/CanItemCheckList;

    sget v1, Lcom/ts/MainUI/R$string;->can_active:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemActive:Lcom/ts/canview/CanItemCheckList;

    .line 182
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemActive:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v0, p0, v2}, Lcom/ts/canview/CanItemCheckList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    goto :goto_0

    .line 186
    :pswitch_1
    new-instance v0, Lcom/ts/canview/CanItemCheckList;

    sget v1, Lcom/ts/MainUI/R$string;->can_active_auto:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemAutoActivate:Lcom/ts/canview/CanItemCheckList;

    .line 187
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemAutoActivate:Lcom/ts/canview/CanItemCheckList;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    goto :goto_0

    .line 191
    :pswitch_2
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    sget v1, Lcom/ts/MainUI/R$string;->can_front_vol:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemFrontVol:Lcom/ts/canview/CanItemProgressList;

    .line 192
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemFrontVol:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 193
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemFrontVol:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v2, v3}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    goto :goto_0

    .line 197
    :pswitch_3
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    sget v1, Lcom/ts/MainUI/R$string;->can_front_tone:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemFrontTone:Lcom/ts/canview/CanItemProgressList;

    .line 198
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemFrontTone:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 199
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemFrontTone:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v2, v3}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    goto :goto_0

    .line 203
    :pswitch_4
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    sget v1, Lcom/ts/MainUI/R$string;->can_rear_vol:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemRearVol:Lcom/ts/canview/CanItemProgressList;

    .line 204
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemRearVol:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 205
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemRearVol:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v2, v3}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    goto :goto_0

    .line 209
    :pswitch_5
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    sget v1, Lcom/ts/MainUI/R$string;->can_rear_tone:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemRearTone:Lcom/ts/canview/CanItemProgressList;

    .line 210
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemRearTone:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 211
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemRearTone:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v2, v3}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected InitUI()V
    .locals 2

    .prologue
    .line 122
    new-instance v1, Lcom/ts/canview/CanScrollList;

    invoke-direct {v1, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetPMActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 124
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 128
    return-void

    .line 126
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetPMActivity;->InitItem(I)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 173
    :goto_0
    invoke-static {v0}, Lcom/ts/can/CanGolfSetPMActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 147
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/CanGolfSetPMActivity;->mAdtPM:Lcom/lgb/canmodule/CanDataInfo$GolfAdtParkAndM;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtParkAndM;->Active:I

    .line 148
    goto :goto_0

    .line 151
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/CanGolfSetPMActivity;->mAdtPM:Lcom/lgb/canmodule/CanDataInfo$GolfAdtParkAndM;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtParkAndM;->ActiveAutomatically:I

    .line 152
    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/CanGolfSetPMActivity;->mAdtPM:Lcom/lgb/canmodule/CanDataInfo$GolfAdtParkAndM;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtParkAndM;->FrontVol:I

    .line 156
    goto :goto_0

    .line 159
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/CanGolfSetPMActivity;->mAdtPM:Lcom/lgb/canmodule/CanDataInfo$GolfAdtParkAndM;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtParkAndM;->FrontTone:I

    .line 160
    goto :goto_0

    .line 163
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/CanGolfSetPMActivity;->mAdtPM:Lcom/lgb/canmodule/CanDataInfo$GolfAdtParkAndM;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtParkAndM;->RearVol:I

    .line 164
    goto :goto_0

    .line 167
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/CanGolfSetPMActivity;->mAdtPM:Lcom/lgb/canmodule/CanDataInfo$GolfAdtParkAndM;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtParkAndM;->RearTone:I

    .line 168
    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcom/ts/can/CanGolfSetPMActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v1}, Lcom/ts/canview/CanScrollList;->RemoveAllViews()V

    .line 135
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 139
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetPMActivity;->AddItem(I)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 3

    .prologue
    const/16 v2, 0x40

    .line 92
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mAdtPM:Lcom/lgb/canmodule/CanDataInfo$GolfAdtParkAndM;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtParkAndM;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetPMActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const/16 v0, 0x41

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 95
    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanGolfSetPMActivity;->Sleep(J)V

    .line 99
    :cond_0
    invoke-static {v2, v2}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 101
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mPMData:Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GolfGetParkMan(Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;)V

    .line 58
    iget-boolean v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mbLayout:Z

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mAdtPM:Lcom/lgb/canmodule/CanDataInfo$GolfAdtParkAndM;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GolfGetAdtPM(Lcom/lgb/canmodule/CanDataInfo$GolfAdtParkAndM;)V

    .line 61
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mAdtPM:Lcom/lgb/canmodule/CanDataInfo$GolfAdtParkAndM;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtParkAndM;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetPMActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mPMData:Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetPMActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetPMActivity;->LayoutUI()V

    .line 65
    const/4 p1, 0x0

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mbLayout:Z

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mPMData:Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetPMActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mPMData:Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetPMActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mPMData:Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;->Update:I

    .line 80
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemActive:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetPMActivity;->mPMData:Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;->Active:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 81
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemAutoActivate:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetPMActivity;->mPMData:Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;->fgActiveAuto:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 82
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemFrontVol:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetPMActivity;->mPMData:Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;->FrontVol:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 83
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemFrontTone:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetPMActivity;->mPMData:Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;->FrontTone:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 84
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemRearVol:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetPMActivity;->mPMData:Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;->RearVol:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 85
    iget-object v0, p0, Lcom/ts/can/CanGolfSetPMActivity;->mItemRearTone:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetPMActivity;->mPMData:Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;->RearTone:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 88
    :cond_2
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetPMActivity;->ResetData(Z)V

    .line 310
    return-void
.end method

.method public onChanged(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 282
    packed-switch p1, :pswitch_data_0

    .line 303
    :goto_0
    return-void

    .line 285
    :pswitch_0
    const/16 v0, 0x41

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 289
    :pswitch_1
    const/16 v0, 0x42

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 293
    :pswitch_2
    const/16 v0, 0x43

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 297
    :pswitch_3
    const/16 v0, 0x44

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 262
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 275
    :goto_0
    return-void

    .line 265
    :pswitch_0
    const/16 v1, 0x45

    iget-object v2, p0, Lcom/ts/can/CanGolfSetPMActivity;->mPMData:Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;->Active:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetPMActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 269
    :pswitch_1
    const/16 v1, 0x40

    iget-object v2, p0, Lcom/ts/can/CanGolfSetPMActivity;->mPMData:Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;->fgActiveAuto:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetPMActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 262
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
    .line 49
    invoke-super {p0, p1}, Lcom/ts/can/CanGolfBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetPMActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetPMActivity;->InitUI()V

    .line 53
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 118
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onPause()V

    .line 119
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onResume()V

    .line 107
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetPMActivity;->ResetData(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetPMActivity;->QueryData()V

    .line 111
    return-void
.end method
