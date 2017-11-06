.class public Lcom/ts/can/CanGolfSeatDriveProfileActivity;
.super Lcom/ts/can/CanGolfBaseActivity;
.source "CanGolfSeatDriveProfileActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ITEM_CHANG_BUT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanGolfSeatDriveProfileActivity"


# instance fields
.field private mChangBut:Lcom/ts/other/ParamButton;

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
    invoke-direct {p0}, Lcom/ts/can/CanGolfBaseActivity;-><init>()V

    .line 26
    new-array v0, v1, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    .line 28
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    .line 31
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    .line 20
    return-void
.end method

.method private QueryData()V
    .locals 2

    .prologue
    .line 129
    const/16 v0, 0x40

    const/16 v1, 0xa0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 130
    return-void
.end method

.method private ResetData(Z)V
    .locals 5
    .param p1, "check"    # Z

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GolfGetSeatDriveProfile(Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;)V

    .line 93
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->ProfileType:I

    if-nez v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 98
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 99
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 100
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 123
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->Update:I

    .line 125
    :cond_2
    return-void

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->ProfileType:I

    if-ne v0, v2, :cond_4

    .line 104
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 105
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 106
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 107
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    goto :goto_0

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->ProfileType:I

    if-ne v0, v3, :cond_5

    .line 111
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 112
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 113
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 114
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    goto :goto_0

    .line 116
    :cond_5
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->ProfileType:I

    if-ne v0, v4, :cond_1

    .line 118
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 119
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 120
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 121
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    goto :goto_0
.end method


# virtual methods
.method public UserAll()V
    .locals 6

    .prologue
    .line 177
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->ResetData(Z)V

    .line 179
    invoke-static {}, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->GetTickCount()J

    move-result-wide v0

    .line 180
    .local v0, "curTick":J
    sget-wide v2, Lcom/ts/can/CanFunc;->mLastDriveProfileTick:J

    const-wide/16 v4, 0x1770

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->finish()V

    .line 184
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 155
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 170
    :goto_0
    return-void

    .line 158
    :pswitch_0
    const/4 v1, 0x0

    .line 159
    .local v1, "seat":I
    iget-object v2, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->ProfileType:I

    add-int/lit8 v1, v2, 0x1

    .line 160
    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 162
    const/4 v1, 0x0

    .line 164
    :cond_0
    const/16 v2, 0xd0

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    .line 165
    invoke-static {}, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->GetTickCount()J

    move-result-wide v2

    sput-wide v2, Lcom/ts/can/CanFunc;->mLastDriveProfileTick:J

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x2

    const/16 v8, 0xbe

    const/16 v7, 0xb8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 37
    invoke-super {p0, p1}, Lcom/ts/can/CanGolfBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_golf_seat_drive_profile:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->setContentView(I)V

    .line 40
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_golf_seat_drive_profile_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 42
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x73

    const/16 v3, 0x74

    invoke-virtual {v1, v2, v3, v8, v7}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v1

    aput-object v1, v0, v5

    .line 43
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v5

    sget v1, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car01_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car01_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 45
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x13e

    const/16 v3, 0x74

    invoke-virtual {v1, v2, v3, v8, v7}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v1

    aput-object v1, v0, v6

    .line 46
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v6

    sget v1, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car02_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car02_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 48
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x209

    const/16 v3, 0x74

    invoke-virtual {v1, v2, v3, v8, v7}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v1

    aput-object v1, v0, v9

    .line 49
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v9

    sget v1, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car03_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car03_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 51
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x2d4

    const/16 v4, 0x74

    invoke-virtual {v2, v3, v4, v8, v7}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v0, v1

    .line 52
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car04_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car04_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 54
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x73

    const/16 v3, 0xa6

    invoke-virtual {v1, v2, v3, v8, v7}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    aput-object v1, v0, v5

    .line 55
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    aget-object v0, v0, v5

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 56
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    aget-object v0, v0, v5

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    aget-object v0, v0, v5

    sget v1, Lcom/ts/MainUI/R$string;->can_golf_seat_drive_eco:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 58
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    aget-object v0, v0, v5

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 60
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x13e

    const/16 v3, 0xa6

    invoke-virtual {v1, v2, v3, v8, v7}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    aput-object v1, v0, v6

    .line 61
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 62
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    sget v1, Lcom/ts/MainUI/R$string;->can_golf_seat_drive_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 64
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 66
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x209

    const/16 v3, 0xa6

    invoke-virtual {v1, v2, v3, v8, v7}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    aput-object v1, v0, v9

    .line 67
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    aget-object v0, v0, v9

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 68
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    aget-object v0, v0, v9

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    aget-object v0, v0, v9

    sget v1, Lcom/ts/MainUI/R$string;->can_golf_seat_drive_sport:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    aget-object v0, v0, v9

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 72
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x2d4

    const/16 v4, 0xa6

    invoke-virtual {v2, v3, v4, v8, v7}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v0, v1

    .line 73
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 74
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$string;->can_golf_seat_drive_individual:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 76
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mProfile:[Landroid/widget/TextView;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 78
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x106

    const/16 v2, 0x185

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mChangBut:Lcom/ts/other/ParamButton;

    .line 79
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mChangBut:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_golf_case_right_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_dzjcms_chang_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_dzjcms_chang_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 80
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mChangBut:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$string;->can_golf_seat_drive_chang:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 81
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mChangBut:Lcom/ts/other/ParamButton;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v0, v5, v1}, Lcom/ts/other/ParamButton;->setTextSize(IF)V

    .line 82
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mChangBut:Lcom/ts/other/ParamButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 83
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mChangBut:Lcom/ts/other/ParamButton;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->mChangBut:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 147
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onPause()V

    .line 148
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onResume()V

    .line 137
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->ResetData(Z)V

    .line 139
    invoke-direct {p0}, Lcom/ts/can/CanGolfSeatDriveProfileActivity;->QueryData()V

    .line 140
    return-void
.end method
