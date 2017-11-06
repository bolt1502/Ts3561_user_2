.class public Lcom/ts/can/CanTeramontSeatDriveProfileActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanTeramontSeatDriveProfileActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BTN_PROFILE_JINGJI:I = 0x1

.field private static final BTN_PROFILE_XUEDI:I = 0x0

.field private static final BTN_PROFILE_YUEYE:I = 0x2

.field private static final BTN_PROFILE_YUEYEGXH:I = 0x3


# instance fields
.field private mDrvieProfile:[Lcom/ts/other/CustomImgView;

.field private mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mProfile:[Landroid/widget/TextView;

.field private mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 20
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 28
    new-array v0, v1, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    .line 29
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    .line 31
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    .line 20
    return-void
.end method

.method private QueryData()V
    .locals 2

    .prologue
    .line 116
    const/16 v0, 0x40

    const/16 v1, 0xa0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 117
    return-void
.end method

.method private ResetData(Z)V
    .locals 6
    .param p1, "check"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 81
    iget-object v1, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->GolfGetSeatDriveProfile(Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;)V

    .line 83
    iget-object v1, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->Update:I

    invoke-static {v1}, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->Update:I

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->ProfileType:I

    if-gt v1, v5, :cond_3

    .line 95
    iget-object v1, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v3

    invoke-virtual {v1, v3}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 112
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 91
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_3
    iget-object v1, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->ProfileType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 99
    iget-object v1, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v4

    invoke-virtual {v1, v3}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    goto :goto_1

    .line 101
    :cond_4
    iget-object v1, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->ProfileType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 103
    iget-object v1, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    goto :goto_1

    .line 105
    :cond_5
    iget-object v1, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->ProfileType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 107
    iget-object v1, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v5

    invoke-virtual {v1, v3}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    goto :goto_1
.end method

.method private startProfileSetActivity(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ts/can/CanTeramontDriveProfileSetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "drive_pattern"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v0}, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 157
    invoke-virtual {p0, v2, v2}, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->overridePendingTransition(II)V

    .line 158
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 4

    .prologue
    .line 162
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->ResetData(Z)V

    .line 164
    invoke-static {}, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->GetTickCount()J

    move-result-wide v0

    .line 165
    .local v0, "curTick":J
    sget-wide v2, Lcom/ts/can/CanFunc;->mLastDriveProfileTick:J

    .line 169
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v2, 0xd0

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 129
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 151
    :goto_0
    return-void

    .line 132
    :pswitch_0
    const/4 v1, 0x4

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    .line 133
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->startProfileSetActivity(I)V

    goto :goto_0

    .line 138
    :pswitch_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->startProfileSetActivity(I)V

    goto :goto_0

    .line 142
    :pswitch_2
    const/4 v1, 0x5

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    .line 143
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->startProfileSetActivity(I)V

    goto :goto_0

    .line 147
    :pswitch_3
    const/4 v1, 0x6

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    .line 148
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->startProfileSetActivity(I)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/16 v11, 0xb8

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget v2, Lcom/ts/MainUI/R$layout;->activity_can_golf_seat_drive_profile:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->can_teramont_drive_profile_array:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "mProfileArray":[Ljava/lang/String;
    new-instance v2, Lcom/ts/other/RelativeLayoutManager;

    sget v3, Lcom/ts/MainUI/R$id;->can_golf_seat_drive_profile_layout:I

    invoke-direct {v2, p0, v3}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v2, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 43
    iget-object v2, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    iget-object v3, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x73

    const/16 v5, 0x96

    const/16 v6, 0xbe

    invoke-virtual {v3, v4, v5, v6, v11}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v3

    aput-object v3, v2, v7

    .line 44
    iget-object v2, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v2, v2, v7

    sget v3, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car05_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car05_dn:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car05_dn:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/CustomImgView;->setStateDrawable(III)V

    .line 45
    iget-object v2, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v2, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomImgView;->setTag(Ljava/lang/Object;)V

    .line 46
    iget-object v2, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v2, v2, v7

    invoke-virtual {v2, p0}, Lcom/ts/other/CustomImgView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v2, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    iget-object v3, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x13e

    const/16 v5, 0x96

    const/16 v6, 0xbe

    invoke-virtual {v3, v4, v5, v6, v11}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v3

    aput-object v3, v2, v8

    .line 49
    iget-object v2, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v2, v2, v8

    sget v3, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car06_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car06_dn:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car06_dn:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/CustomImgView;->setStateDrawable(III)V

    .line 50
    iget-object v2, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v2, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomImgView;->setTag(Ljava/lang/Object;)V

    .line 51
    iget-object v2, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v2, v2, v8

    invoke-virtual {v2, p0}, Lcom/ts/other/CustomImgView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v2, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    iget-object v3, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x209

    const/16 v5, 0x96

    const/16 v6, 0xbe

    invoke-virtual {v3, v4, v5, v6, v11}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v3

    aput-object v3, v2, v9

    .line 54
    iget-object v2, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v2, v2, v9

    sget v3, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car07_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car07_dn:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car07_dn:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/CustomImgView;->setStateDrawable(III)V

    .line 55
    iget-object v2, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v2, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomImgView;->setTag(Ljava/lang/Object;)V

    .line 56
    iget-object v2, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v2, v2, v9

    invoke-virtual {v2, p0}, Lcom/ts/other/CustomImgView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v2, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    iget-object v3, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x2d4

    const/16 v5, 0x96

    const/16 v6, 0xbe

    invoke-virtual {v3, v4, v5, v6, v11}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v3

    aput-object v3, v2, v10

    .line 59
    iget-object v2, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v2, v2, v10

    sget v3, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car08_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car08_dn:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car08_dn:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/CustomImgView;->setStateDrawable(III)V

    .line 60
    iget-object v2, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v2, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomImgView;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object v2, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v2, v2, v10

    invoke-virtual {v2, p0}, Lcom/ts/other/CustomImgView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 70
    return-void

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit16 v4, v0, 0xcb

    add-int/lit8 v4, v4, 0x73

    const/16 v5, 0xc8

    const/16 v6, 0xbe

    invoke-virtual {v3, v4, v5, v6, v11}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 65
    iget-object v2, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {v2, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 66
    iget-object v2, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget-object v2, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v2, p0, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 122
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 123
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 75
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->ResetData(Z)V

    .line 77
    invoke-direct {p0}, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;->QueryData()V

    .line 78
    return-void
.end method
