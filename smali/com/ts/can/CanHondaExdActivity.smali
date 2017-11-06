.class public Lcom/ts/can/CanHondaExdActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanHondaExdActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final BTN_NEXT:I = 0x3

.field public static final BTN_PLAY:I = 0x1

.field public static final BTN_PREV:I = 0x0

.field public static final BTN_STOP:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanHondaExdActivity"


# instance fields
.field private mBmpProgDn:Landroid/graphics/Bitmap;

.field private mBtnNext:Lcom/ts/other/ParamButton;

.field private mBtnPlay:Lcom/ts/other/ParamButton;

.field private mBtnPrev:Lcom/ts/other/ParamButton;

.field private mBtnStop:Lcom/ts/other/ParamButton;

.field private mCurTime:Lcom/ts/other/CustomTextView;

.field private mImgIpod:Lcom/ts/other/CustomImgView;

.field private mImgUsb:Lcom/ts/other/CustomImgView;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mMediaData:Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;

.field private mPercent:Lcom/ts/other/CustomTextView;

.field private mProgress:Lcom/ts/other/CustomImgView;

.field private mSongNum:Lcom/ts/other/CustomTextView;

.field private mStatus:Lcom/ts/other/CustomTextView;

.field private mStrArrStatus:[Ljava/lang/String;

.field private mStrDevSta:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 53
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mMediaData:Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;

    .line 27
    return-void
.end method

.method private ResetData(Z)V
    .locals 7
    .param p1, "check"    # Z

    .prologue
    const/4 v1, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 164
    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mMediaData:Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->HondaOldGetMediaDev(Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;)V

    .line 165
    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mMediaData:Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanHondaExdActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mMediaData:Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanHondaExdActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mMediaData:Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;

    iput v4, v0, Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;->Update:I

    .line 171
    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mImgIpod:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0, v4}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 172
    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mImgUsb:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0, v4}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 174
    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mMediaData:Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;->Status:I

    if-le v0, v1, :cond_1

    .line 176
    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mMediaData:Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;->Status:I

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mStatus:Lcom/ts/other/CustomTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/can/CanHondaExdActivity;->mStrDevSta:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ts/can/CanHondaExdActivity;->mStrArrStatus:[Ljava/lang/String;

    iget-object v3, p0, Lcom/ts/can/CanHondaExdActivity;->mMediaData:Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;->Status:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mMediaData:Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;->Status:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_6

    .line 181
    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mMediaData:Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;->Source:I

    if-ne v6, v0, :cond_5

    .line 183
    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mImgUsb:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0, v5}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 190
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mSongNum:Lcom/ts/other/CustomTextView;

    const-string v1, "%d/%d"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/CanHondaExdActivity;->mMediaData:Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;->CurSong:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ts/can/CanHondaExdActivity;->mMediaData:Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;->TotalSong:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mCurTime:Lcom/ts/other/CustomTextView;

    const-string v1, "%02d:%02d"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/CanHondaExdActivity;->mMediaData:Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;->Min:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ts/can/CanHondaExdActivity;->mMediaData:Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;->Sec:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mMediaData:Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;->Progress:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_3

    .line 194
    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mPercent:Lcom/ts/other/CustomTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/can/CanHondaExdActivity;->mMediaData:Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;->Progress:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mProgress:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0}, Lcom/ts/other/CustomImgView;->invalidate()V

    .line 211
    :cond_4
    return-void

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mMediaData:Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;->Source:I

    if-ne v6, v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mImgIpod:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0, v5}, Lcom/ts/other/CustomImgView;->Show(Z)V

    goto :goto_0

    .line 201
    :cond_6
    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mMediaData:Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;

    const/16 v1, 0xc8

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;->Progress:I

    .line 202
    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mSongNum:Lcom/ts/other/CustomTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mCurTime:Lcom/ts/other/CustomTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mPercent:Lcom/ts/other/CustomTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/ts/can/CanHondaExdActivity;)Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mMediaData:Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ts/can/CanHondaExdActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ts/can/CanHondaExdActivity;->mBmpProgDn:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/CanHondaExdActivity;->ResetData(Z)V

    .line 236
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 243
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 261
    :goto_0
    return-void

    .line 246
    :pswitch_0
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->HondaOldPlayCtrl(I)V

    goto :goto_0

    .line 250
    :pswitch_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->HondaOldPlayCtrl(I)V

    goto :goto_0

    .line 254
    :pswitch_2
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->HondaOldPlayCtrl(I)V

    goto :goto_0

    .line 258
    :pswitch_3
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->HondaOldPlayCtrl(I)V

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x1ab

    const/16 v5, 0x26

    const/16 v7, 0x1e

    const/4 v6, -0x1

    .line 62
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget v1, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanHondaExdActivity;->setContentView(I)V

    .line 65
    new-instance v1, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v1, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 67
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x1d2

    const/16 v3, 0x4f

    sget v4, Lcom/ts/MainUI/R$drawable;->original_car_usb:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mImgUsb:Lcom/ts/other/CustomImgView;

    .line 68
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0xe5

    const/16 v3, 0x3c

    sget v4, Lcom/ts/MainUI/R$drawable;->original_car_ipod:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mImgIpod:Lcom/ts/other/CustomImgView;

    .line 70
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x4c

    const/16 v3, 0x17

    sget v4, Lcom/ts/MainUI/R$drawable;->original_car_arrow:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 71
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x6f

    const/16 v3, 0x17

    const/16 v4, 0x12c

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mStatus:Lcom/ts/other/CustomTextView;

    .line 72
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mStatus:Lcom/ts/other/CustomTextView;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 73
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mStatus:Lcom/ts/other/CustomTextView;

    invoke-virtual {v1, v5}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 74
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mStatus:Lcom/ts/other/CustomTextView;

    invoke-virtual {v1, v6}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 76
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x320

    const/16 v3, 0x17

    const/16 v4, 0xc8

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mSongNum:Lcom/ts/other/CustomTextView;

    .line 77
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mSongNum:Lcom/ts/other/CustomTextView;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 78
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mSongNum:Lcom/ts/other/CustomTextView;

    invoke-virtual {v1, v5}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 79
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mSongNum:Lcom/ts/other/CustomTextView;

    invoke-virtual {v1, v6}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 81
    invoke-virtual {p0}, Lcom/ts/can/CanHondaExdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$drawable;->can_mediadev_slider_dn:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 82
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mBmpProgDn:Landroid/graphics/Bitmap;

    .line 84
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x83

    const/16 v3, 0x17a

    const/16 v4, 0x2fe

    const/16 v5, 0x19

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mProgress:Lcom/ts/other/CustomImgView;

    .line 85
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mProgress:Lcom/ts/other/CustomImgView;

    new-instance v2, Lcom/ts/can/CanHondaExdActivity$1;

    invoke-direct {v2, p0}, Lcom/ts/can/CanHondaExdActivity$1;-><init>(Lcom/ts/can/CanHondaExdActivity;)V

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomImgView;->setUserPaint(Lcom/ts/other/CustomImgView$onPaint;)V

    .line 118
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0xa

    const/16 v3, 0x177

    const/16 v4, 0x78

    invoke-virtual {v1, v2, v3, v4, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mCurTime:Lcom/ts/other/CustomTextView;

    .line 119
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mCurTime:Lcom/ts/other/CustomTextView;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 120
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mCurTime:Lcom/ts/other/CustomTextView;

    invoke-virtual {v1, v7}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 121
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mCurTime:Lcom/ts/other/CustomTextView;

    invoke-virtual {v1, v6}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 123
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x381

    const/16 v3, 0x177

    const/16 v4, 0x82

    invoke-virtual {v1, v2, v3, v4, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mPercent:Lcom/ts/other/CustomTextView;

    .line 124
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mPercent:Lcom/ts/other/CustomTextView;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 125
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mPercent:Lcom/ts/other/CustomTextView;

    invoke-virtual {v1, v7}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 126
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mPercent:Lcom/ts/other/CustomTextView;

    invoke-virtual {v1, v6}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 128
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x101

    invoke-virtual {v1, v2, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mBtnPrev:Lcom/ts/other/ParamButton;

    .line 129
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mBtnPrev:Lcom/ts/other/ParamButton;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 130
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mBtnPrev:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->original_car_seekup_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->original_car_seekup_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 131
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mBtnPrev:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x18c

    invoke-virtual {v1, v2, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mBtnPlay:Lcom/ts/other/ParamButton;

    .line 134
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mBtnPlay:Lcom/ts/other/ParamButton;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 135
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mBtnPlay:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->original_car_play_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->original_car_play_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 136
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mBtnPlay:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x218

    invoke-virtual {v1, v2, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mBtnStop:Lcom/ts/other/ParamButton;

    .line 139
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mBtnStop:Lcom/ts/other/ParamButton;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 140
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mBtnStop:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->original_car_stop_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->original_car_stop_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 141
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mBtnStop:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x2a3

    invoke-virtual {v1, v2, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mBtnNext:Lcom/ts/other/ParamButton;

    .line 144
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mBtnNext:Lcom/ts/other/ParamButton;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 145
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mBtnNext:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->original_car_seekdn_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->original_car_seekdn_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 146
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mBtnNext:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mImgIpod:Lcom/ts/other/CustomImgView;

    invoke-virtual {v1, v9}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 149
    iget-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mImgUsb:Lcom/ts/other/CustomImgView;

    invoke-virtual {v1, v9}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/ts/can/CanHondaExdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->can_car_dev_sta:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mStrDevSta:Ljava/lang/String;

    .line 158
    invoke-virtual {p0}, Lcom/ts/can/CanHondaExdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$array;->can_car_play_sta:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanHondaExdActivity;->mStrArrStatus:[Ljava/lang/String;

    .line 159
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 217
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 218
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 219
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 226
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 227
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/CanHondaExdActivity;->ResetData(Z)V

    .line 229
    return-void
.end method
