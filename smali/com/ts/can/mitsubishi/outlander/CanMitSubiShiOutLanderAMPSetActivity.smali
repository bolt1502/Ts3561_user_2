.class public Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanMitSubiShiOutLanderAMPSetActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_AMP_DOLBY_VOLUME:I = 0x6

.field public static final ITEM_AMP_LISTENING_POSITION:I = 0x3

.field public static final ITEM_AMP_PREMIDIA_HD:I = 0x4

.field public static final ITEM_AMP_PUNCH:I = 0x1

.field public static final ITEM_AMP_SCV:I = 0x5

.field public static final ITEM_AMP_SURROUND_TYPE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanMitSubiShiOutLanderAMPSetActivity"

.field private static final mAmpDolbyVolumeArr:[I

.field private static final mAmpPremidiaHdArr:[I

.field private static final mAmpScvArr:[I

.field private static final mAmpSurroundTypeArr:[I

.field private static final mListeningPositionArr:[I


# instance fields
.field protected mAmpData:Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;

.field protected mItemAmpDolbyVolume:Lcom/ts/canview/CanItemPopupList;

.field protected mItemAmpListeningPosition:Lcom/ts/canview/CanItemPopupList;

.field protected mItemAmpPremidiaHd:Lcom/ts/canview/CanItemPopupList;

.field protected mItemAmpPunch:Lcom/ts/canview/CanItemProgressList;

.field protected mItemAmpScv:Lcom/ts/canview/CanItemPopupList;

.field protected mItemAmpSurroundType:Lcom/ts/canview/CanItemPopupList;

.field protected mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-array v0, v5, [I

    .line 44
    sget v1, Lcom/ts/MainUI/R$string;->can_amp_off:I

    aput v1, v0, v2

    .line 45
    sget v1, Lcom/ts/MainUI/R$string;->can_amp_surround_type2:I

    aput v1, v0, v3

    .line 46
    sget v1, Lcom/ts/MainUI/R$string;->can_amp_surround_type3:I

    aput v1, v0, v4

    .line 42
    sput-object v0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mAmpSurroundTypeArr:[I

    .line 50
    new-array v0, v5, [I

    .line 51
    sget v1, Lcom/ts/MainUI/R$string;->can_amp_listening_position_1:I

    aput v1, v0, v2

    .line 52
    sget v1, Lcom/ts/MainUI/R$string;->can_amp_listening_position_2:I

    aput v1, v0, v3

    .line 53
    sget v1, Lcom/ts/MainUI/R$string;->can_amp_listening_position_3:I

    aput v1, v0, v4

    .line 49
    sput-object v0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mListeningPositionArr:[I

    .line 57
    new-array v0, v5, [I

    .line 58
    sget v1, Lcom/ts/MainUI/R$string;->can_amp_off:I

    aput v1, v0, v2

    .line 59
    sget v1, Lcom/ts/MainUI/R$string;->can_amp_low:I

    aput v1, v0, v3

    .line 60
    sget v1, Lcom/ts/MainUI/R$string;->can_amp_high:I

    aput v1, v0, v4

    .line 56
    sput-object v0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mAmpPremidiaHdArr:[I

    .line 64
    new-array v0, v6, [I

    .line 65
    sget v1, Lcom/ts/MainUI/R$string;->can_amp_off:I

    aput v1, v0, v2

    .line 66
    sget v1, Lcom/ts/MainUI/R$string;->can_amp_low:I

    aput v1, v0, v3

    .line 67
    sget v1, Lcom/ts/MainUI/R$string;->can_amp_mid:I

    aput v1, v0, v4

    .line 68
    sget v1, Lcom/ts/MainUI/R$string;->can_amp_high:I

    aput v1, v0, v5

    .line 63
    sput-object v0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mAmpScvArr:[I

    .line 72
    new-array v0, v6, [I

    .line 73
    sget v1, Lcom/ts/MainUI/R$string;->can_amp_off:I

    aput v1, v0, v2

    .line 74
    sget v1, Lcom/ts/MainUI/R$string;->can_amp_low:I

    aput v1, v0, v3

    .line 75
    sget v1, Lcom/ts/MainUI/R$string;->can_amp_mid:I

    aput v1, v0, v4

    .line 76
    sget v1, Lcom/ts/MainUI/R$string;->can_amp_high:I

    aput v1, v0, v5

    .line 71
    sput-object v0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mAmpDolbyVolumeArr:[I

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 39
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;-><init>()V

    iput-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mAmpData:Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;

    .line 17
    return-void
.end method


# virtual methods
.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 127
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 128
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 129
    iget-object v1, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 130
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 131
    return-object v0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    .line 185
    iget-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mAmpData:Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->OutLanderGetAMPSet(Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;)V

    .line 186
    iget-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mAmpData:Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mAmpData:Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;->Update:I

    invoke-static {v0}, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mAmpData:Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;->Update:I

    .line 191
    iget-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mItemAmpPunch:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mAmpData:Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;->Punch:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 192
    iget-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mItemAmpPunch:Lcom/ts/canview/CanItemProgressList;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mAmpData:Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;->Punch:I

    add-int/lit8 v2, v2, -0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mItemAmpSurroundType:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mAmpData:Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;->SurroundType:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 195
    iget-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mItemAmpListeningPosition:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mAmpData:Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;->ListeningPos:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 196
    iget-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mItemAmpPremidiaHd:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mAmpData:Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;->PremidiaHD:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 197
    iget-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mItemAmpScv:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mAmpData:Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;->SCV:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 198
    iget-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mItemAmpDolbyVolume:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mAmpData:Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;->DolbyVolume:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 203
    :cond_1
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->ResetData(Z)V

    .line 210
    return-void
.end method

.method public onChanged(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 143
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 145
    const/4 v0, 0x7

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->OutLanderAMPSet(II)V

    .line 147
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x2

    .line 89
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->setContentView(I)V

    .line 92
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 93
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    sget v1, Lcom/ts/MainUI/R$string;->can_amp_punch:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mItemAmpPunch:Lcom/ts/canview/CanItemProgressList;

    .line 94
    iget-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mItemAmpPunch:Lcom/ts/canview/CanItemProgressList;

    const/16 v1, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 95
    iget-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mItemAmpPunch:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 96
    iget-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mItemAmpPunch:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 98
    sget v0, Lcom/ts/MainUI/R$string;->can_amp_surround_type:I

    sget-object v1, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mAmpSurroundTypeArr:[I

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mItemAmpSurroundType:Lcom/ts/canview/CanItemPopupList;

    .line 99
    sget v0, Lcom/ts/MainUI/R$string;->can_amp_listening_position:I

    sget-object v1, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mListeningPositionArr:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mItemAmpListeningPosition:Lcom/ts/canview/CanItemPopupList;

    .line 100
    sget v0, Lcom/ts/MainUI/R$string;->can_amp_premidia_hd:I

    sget-object v1, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mAmpPremidiaHdArr:[I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mItemAmpPremidiaHd:Lcom/ts/canview/CanItemPopupList;

    .line 101
    sget v0, Lcom/ts/MainUI/R$string;->can_amp_scv:I

    sget-object v1, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mAmpScvArr:[I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mItemAmpScv:Lcom/ts/canview/CanItemPopupList;

    .line 102
    sget v0, Lcom/ts/MainUI/R$string;->can_amp_dolby_volume:I

    sget-object v1, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mAmpDolbyVolumeArr:[I

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->mItemAmpDolbyVolume:Lcom/ts/canview/CanItemPopupList;

    .line 104
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 154
    packed-switch p1, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 157
    :pswitch_0
    const/16 v0, 0xa

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->OutLanderAMPSet(II)V

    goto :goto_0

    .line 161
    :pswitch_1
    const/16 v0, 0xb

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->OutLanderAMPSet(II)V

    goto :goto_0

    .line 164
    :pswitch_2
    const/16 v0, 0xc

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->OutLanderAMPSet(II)V

    goto :goto_0

    .line 167
    :pswitch_3
    const/16 v0, 0xd

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->OutLanderAMPSet(II)V

    goto :goto_0

    .line 170
    :pswitch_4
    const/16 v0, 0xe

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->OutLanderAMPSet(II)V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 111
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 112
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 119
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->ResetData(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;->QueryData()V

    .line 122
    return-void
.end method
