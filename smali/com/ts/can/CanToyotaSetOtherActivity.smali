.class public Lcom/ts/can/CanToyotaSetOtherActivity;
.super Lcom/ts/can/CanToyotaBaseActivity;
.source "CanToyotaSetOtherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ID_TRACK_0:I = 0x7d0

.field private static final ID_TRACK_1:I = 0x7d1

.field private static final ID_TRACK_2:I = 0x7d2

.field private static final ITEM_EDOOR:I = 0x2

.field private static final ITEM_MAX:I = 0x2

.field private static final ITEM_MIN:I = 0x1

.field private static final ITEM_TRACK:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanGolfSetMFDActivity"

.field public static final mStrHbxArray:[Ljava/lang/String;


# instance fields
.field private mBtnTrackType:[Lcom/ts/other/ParamButton;

.field private mItemEDoor:Lcom/ts/canview/CanItemPopupList;

.field private mItemTrack:Lcom/ts/canview/CanItemTextBtnList;

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 46
    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 47
    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 48
    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 49
    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 50
    const-string v2, "5"

    aput-object v2, v0, v1

    .line 44
    sput-object v0, Lcom/ts/can/CanToyotaSetOtherActivity;->mStrHbxArray:[Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/CanToyotaBaseActivity;-><init>()V

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mBtnTrackType:[Lcom/ts/other/ParamButton;

    .line 18
    return-void
.end method


# virtual methods
.method protected AddItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/ts/can/CanToyotaSetOtherActivity;->IsHaveItem(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 208
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 211
    :pswitch_0
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mItemTrack:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 215
    :pswitch_1
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mItemEDoor:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected InitUI()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 138
    new-instance v1, Lcom/ts/canview/CanScrollList;

    invoke-direct {v1, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 139
    new-instance v1, Lcom/ts/canview/CanItemTextBtnList;

    sget v2, Lcom/ts/MainUI/R$string;->can_rc_track_set:I

    invoke-direct {v1, p0, v2}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mItemTrack:Lcom/ts/canview/CanItemTextBtnList;

    .line 140
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mItemTrack:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v3}, Lcom/ts/canview/CanItemTextBtnList;->ShowArrow(Z)V

    .line 144
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mItemTrack:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mLayout:Landroid/widget/RelativeLayout;

    .line 145
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mItemTrack:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mBtnTrackType:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mBtnTrackType:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v3

    sget v2, Lcom/ts/MainUI/R$drawable;->can_camera_tarack_line_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_camera_tarack_line_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 156
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mBtnTrackType:[Lcom/ts/other/ParamButton;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_camera_tarack_cha_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_camera_tarack_cha_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 157
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mBtnTrackType:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v4

    sget v2, Lcom/ts/MainUI/R$drawable;->can_camera_tarack_wan_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_camera_tarack_wan_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 159
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mBtnTrackType:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 164
    new-instance v1, Lcom/ts/canview/CanItemPopupList;

    sget v2, Lcom/ts/MainUI/R$string;->can_hbx_kd:I

    sget-object v3, Lcom/ts/can/CanToyotaSetOtherActivity;->mStrHbxArray:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mItemEDoor:Lcom/ts/canview/CanItemPopupList;

    .line 165
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mItemEDoor:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v4}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 168
    return-void

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mBtnTrackType:[Lcom/ts/other/ParamButton;

    new-instance v2, Lcom/ts/other/ParamButton;

    invoke-direct {v2, p0}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 151
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mBtnTrackType:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    add-int/lit16 v2, v0, 0x7d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 152
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mBtnTrackType:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mBtnTrackType:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    mul-int/lit16 v2, v0, 0xa0

    add-int/lit16 v2, v2, 0x1f4

    const/16 v3, 0x8

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/CanToyotaSetOtherActivity;->setViewPos(Landroid/view/View;II)V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 198
    :goto_0
    invoke-static {v0}, Lcom/ts/can/CanToyotaSetOtherActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 188
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;->TrackMode:I

    .line 189
    goto :goto_0

    .line 192
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;->EDoor:I

    .line 193
    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 172
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v1}, Lcom/ts/canview/CanScrollList;->RemoveAllViews()V

    .line 175
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 179
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/CanToyotaSetOtherActivity;->AddItem(I)V

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method protected ResetData(Z)V
    .locals 4
    .param p1, "check"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/ts/can/CanToyotaSetOtherActivity;->GetSetData()V

    .line 67
    iget-boolean v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mbLayout:Z

    if-nez v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/ts/can/CanToyotaSetOtherActivity;->GetAdaptData()V

    .line 70
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/CanToyotaSetOtherActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    invoke-virtual {p0}, Lcom/ts/can/CanToyotaSetOtherActivity;->LayoutUI()V

    .line 74
    const/4 p1, 0x0

    .line 75
    iput-boolean v3, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mbLayout:Z

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/CanToyotaSetOtherActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->Update:I

    invoke-static {v1}, Lcom/ts/can/CanToyotaSetOtherActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->Update:I

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mBtnTrackType:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 93
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->TrackMode:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 95
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mBtnTrackType:[Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->TrackMode:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 98
    :cond_2
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mItemEDoor:Lcom/ts/canview/CanItemPopupList;

    iget-object v2, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->ERearDoorGear:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 102
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 90
    .restart local v0    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mBtnTrackType:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanToyotaSetOtherActivity;->ResetData(Z)V

    .line 247
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 228
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 239
    :goto_0
    return-void

    .line 233
    :pswitch_0
    const/16 v1, 0x22

    add-int/lit16 v2, v0, -0x7d0

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanToyotaSetOtherActivity;->CarSet(II)V

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/ts/can/CanToyotaBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanToyotaSetOtherActivity;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/ts/can/CanToyotaSetOtherActivity;->InitUI()V

    .line 61
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "Id"    # I
    .param p2, "item"    # I

    .prologue
    .line 253
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 255
    const/16 v0, 0x23

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/CanToyotaSetOtherActivity;->CarSet(II)V

    .line 257
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 124
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onPause()V

    .line 125
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onResume()V

    .line 113
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanToyotaSetOtherActivity;->ResetData(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/ts/can/CanToyotaSetOtherActivity;->QueryData()V

    .line 117
    return-void
.end method

.method protected setViewPos(Landroid/view/View;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v1, -0x2

    .line 129
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 130
    .local v0, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 131
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetOtherActivity;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 134
    return-void
.end method
