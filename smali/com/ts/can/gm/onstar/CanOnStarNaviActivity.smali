.class public Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanOnStarNaviActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_CANCEL:I = 0x7

.field public static final ITEM_DES_INFO:I = 0x5

.field public static final ITEM_NEXT_STA:I = 0x4

.field public static final ITEM_PREVVIEW:I = 0x2

.field public static final ITEM_PREV_STA:I = 0x3

.field public static final ITEM_REPEAT:I = 0x1

.field public static final ITEM_UPDATE:I = 0x6

.field public static final TAG:Ljava/lang/String; = "CanOnStarNaviActivity"

.field protected static final mDirectArr:[I


# instance fields
.field protected mBtnCancel:Lcom/ts/other/ParamButton;

.field protected mBtnDesInfo:Lcom/ts/other/ParamButton;

.field protected mBtnNextSta:Lcom/ts/other/ParamButton;

.field protected mBtnPrevSta:Lcom/ts/other/ParamButton;

.field protected mBtnPreview:Lcom/ts/other/ParamButton;

.field protected mBtnRepeat:Lcom/ts/other/ParamButton;

.field protected mBtnUpdate:Lcom/ts/other/ParamButton;

.field private mCommData:Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;

.field protected mCommText:Lcom/ts/other/CustomTextView;

.field private mDesData:Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;

.field protected mDesText:Lcom/ts/other/CustomTextView;

.field protected mImgDirect:Lcom/ts/other/CustomImgView;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mNextDisText:Lcom/ts/other/CustomTextView;

.field protected mProgress:Lcom/ts/canview/CanVerticalBar;

.field private mStrComm:Ljava/lang/String;

.field private mStrDes:Ljava/lang/String;

.field private mStrNextDis:Ljava/lang/String;

.field private mStrTotalRange:Ljava/lang/String;

.field protected mTotalDisText:Lcom/ts/other/CustomTextView;

.field private mTripData:Lcom/lgb/canmodule/CanDataInfo$GM_Trip;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/16 v0, 0x21

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 41
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate00:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 42
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate01:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 43
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate02:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 44
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate03:I

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 45
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate04:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 46
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate05:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 47
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate06:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 48
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate07:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 49
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate08:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 50
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate09:I

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 51
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate0a:I

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 52
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate0b:I

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 53
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate0c:I

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 54
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate0d:I

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 55
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate0e:I

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 56
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate0f:I

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 57
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate10:I

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 58
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate11:I

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 59
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate12:I

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 60
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate13:I

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 61
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate14:I

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 62
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate15:I

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 63
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate16:I

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 64
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate17:I

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 65
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate18:I

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 66
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate19:I

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 67
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate1a:I

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 68
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate1b:I

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 69
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate1c:I

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 70
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate1d:I

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 71
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate1e:I

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 72
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate1f:I

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 73
    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_indicate20:I

    aput v2, v0, v1

    .line 39
    sput-object v0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mDirectArr:[I

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 93
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mDesData:Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;

    .line 94
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mCommData:Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;

    .line 95
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_Trip;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_Trip;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$GM_Trip;

    .line 27
    return-void
.end method

.method private ResetData(Z)V
    .locals 9
    .param p1, "check"    # Z

    .prologue
    const/16 v8, 0x3e8

    const/high16 v7, 0x447a0000    # 1000.0f

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 171
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mDesData:Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;

    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mCommData:Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;

    iget-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$GM_Trip;

    invoke-static {v0, v1, v2}, Lcom/lgb/canmodule/CanJni;->GMGetGps(Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;Lcom/lgb/canmodule/CanDataInfo$GM_Trip;)V

    .line 172
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mDesData:Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mDesData:Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mDesData:Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;

    iput v4, v0, Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;->Update:I

    .line 177
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mDesText:Lcom/ts/other/CustomTextView;

    const-string v1, "%s: %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mStrDes:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mDesData:Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;

    iget-object v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;->szInfo:[B

    invoke-static {v3}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mCommData:Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mCommData:Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mCommData:Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;

    iput v4, v0, Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;->Update:I

    .line 186
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mCommText:Lcom/ts/other/CustomTextView;

    const-string v1, "%s: %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mStrComm:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mCommData:Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;

    iget-object v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;->szInfo:[B

    invoke-static {v3}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$GM_Trip;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_Trip;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 192
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$GM_Trip;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_Trip;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 194
    :cond_4
    const-string v0, "CanOnStarNaviActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JXYLD = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$GM_Trip;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_Trip;->JXYLD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ZXCJL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$GM_Trip;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_Trip;->ZXCJL:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$GM_Trip;

    iput v4, v0, Lcom/lgb/canmodule/CanDataInfo$GM_Trip;->Update:I

    .line 196
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$GM_Trip;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_Trip;->Icon:I

    const/16 v1, 0x20

    if-gt v0, v1, :cond_6

    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$GM_Trip;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_Trip;->Icon:I

    if-ltz v0, :cond_6

    .line 198
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mImgDirect:Lcom/ts/other/CustomImgView;

    sget-object v1, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mDirectArr:[I

    iget-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$GM_Trip;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_Trip;->Icon:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 199
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mImgDirect:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0, v5}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mProgress:Lcom/ts/canview/CanVerticalBar;

    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$GM_Trip;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_Trip;->Progress:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanVerticalBar;->setCurPos(I)V

    .line 208
    const v0, 0xffffff

    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$GM_Trip;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_Trip;->JXYLD:I

    if-eq v0, v1, :cond_8

    .line 210
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$GM_Trip;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_Trip;->JXYLD:I

    if-le v0, v8, :cond_7

    .line 212
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mNextDisText:Lcom/ts/other/CustomTextView;

    const-string v1, "%s: %.3fkm"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mStrNextDis:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$GM_Trip;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_Trip;->JXYLD:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :goto_1
    const v0, 0xffffff

    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$GM_Trip;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_Trip;->ZXCJL:I

    if-eq v0, v1, :cond_a

    .line 226
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$GM_Trip;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_Trip;->JXYLD:I

    if-le v0, v8, :cond_9

    .line 228
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mTotalDisText:Lcom/ts/other/CustomTextView;

    const-string v1, "%s: %.3fkm"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mStrTotalRange:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$GM_Trip;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_Trip;->ZXCJL:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :cond_5
    :goto_2
    return-void

    .line 203
    :cond_6
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mImgDirect:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0, v4}, Lcom/ts/other/CustomImgView;->Show(Z)V

    goto :goto_0

    .line 216
    :cond_7
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mNextDisText:Lcom/ts/other/CustomTextView;

    const-string v1, "%s: %dm"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mStrNextDis:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$GM_Trip;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_Trip;->JXYLD:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 221
    :cond_8
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mNextDisText:Lcom/ts/other/CustomTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mStrNextDis:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 232
    :cond_9
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mTotalDisText:Lcom/ts/other/CustomTextView;

    const-string v1, "%s: %dm"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mStrTotalRange:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$GM_Trip;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_Trip;->ZXCJL:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 237
    :cond_a
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mTotalDisText:Lcom/ts/other/CustomTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mStrTotalRange:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private addBtn(IIII)Lcom/ts/other/ParamButton;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "resTitle"    # I
    .param p4, "id"    # I

    .prologue
    .line 254
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 255
    .local v0, "btn":Lcom/ts/other/ParamButton;
    const/4 v1, 0x0

    const/high16 v2, 0x42100000    # 36.0f

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setTextSize(IF)V

    .line 256
    invoke-virtual {v0, p3}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 257
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 258
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 259
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    return-object v0
.end method

.method private addBtnLong(IIII)Lcom/ts/other/ParamButton;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "resTitle"    # I
    .param p4, "id"    # I

    .prologue
    .line 266
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->addBtn(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 267
    .local v0, "btn":Lcom/ts/other/ParamButton;
    sget v1, Lcom/ts/MainUI/R$drawable;->can_onstar_rect_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_rect_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 268
    return-object v0
.end method

.method private addBtnShort(IIII)Lcom/ts/other/ParamButton;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "resTitle"    # I
    .param p4, "id"    # I

    .prologue
    .line 273
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->addBtn(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 274
    .local v0, "btn":Lcom/ts/other/ParamButton;
    sget v1, Lcom/ts/MainUI/R$drawable;->can_onstar_txt_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_onstar_txt_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 275
    return-object v0
.end method

.method private addInfoText(IIII)Lcom/ts/other/CustomTextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 246
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    .line 247
    .local v0, "tv":Lcom/ts/other/CustomTextView;
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 248
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 249
    return-object v0
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->ResetData(Z)V

    .line 326
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 333
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 284
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 317
    :goto_0
    return-void

    .line 287
    :pswitch_0
    invoke-static {v2, v2}, Lcom/lgb/canmodule/CanJni;->GMGpsCtrl(II)V

    goto :goto_0

    .line 291
    :pswitch_1
    const/4 v1, 0x1

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMGpsCtrl(II)V

    goto :goto_0

    .line 295
    :pswitch_2
    const/4 v1, 0x2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMGpsCtrl(II)V

    goto :goto_0

    .line 299
    :pswitch_3
    const/4 v1, 0x3

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMGpsCtrl(II)V

    goto :goto_0

    .line 303
    :pswitch_4
    const/4 v1, 0x4

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMGpsCtrl(II)V

    goto :goto_0

    .line 307
    :pswitch_5
    const/4 v1, 0x5

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMGpsCtrl(II)V

    goto :goto_0

    .line 311
    :pswitch_6
    const/4 v1, 0x6

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMGpsCtrl(II)V

    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v11, 0x2d

    const/16 v10, 0x209

    const/16 v9, 0x284

    const/16 v8, 0x153

    const/16 v7, 0x28

    .line 106
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    sget v2, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->setContentView(I)V

    .line 110
    new-instance v2, Lcom/ts/other/RelativeLayoutManager;

    sget v3, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v2, p0, v3}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 112
    iget-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x22

    const/16 v4, 0x1e

    sget v5, Lcom/ts/MainUI/R$drawable;->can_onstar_bg:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 114
    iget-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x3e

    const/16 v4, 0x3a

    const/16 v5, 0x96

    const/16 v6, 0x96

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mImgDirect:Lcom/ts/other/CustomImgView;

    .line 116
    new-instance v2, Lcom/ts/canview/CanVerticalBar;

    sget v3, Lcom/ts/MainUI/R$drawable;->can_onstar_pro_dn:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_onstar_pro_up:I

    invoke-direct {v2, p0, v3, v4}, Lcom/ts/canview/CanVerticalBar;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mProgress:Lcom/ts/canview/CanVerticalBar;

    .line 117
    iget-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mProgress:Lcom/ts/canview/CanVerticalBar;

    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v2, v3, v4}, Lcom/ts/canview/CanVerticalBar;->setMinMax(FF)V

    .line 118
    iget-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v3, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mProgress:Lcom/ts/canview/CanVerticalBar;

    const/16 v4, 0x10a

    const/16 v5, 0x26

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    .line 121
    iget-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x40

    const/16 v4, 0xa

    const/16 v5, 0x91

    const/16 v6, 0x2c

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v1

    .line 122
    .local v1, "tv":Lcom/ts/other/CustomTextView;
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 123
    sget v2, Lcom/ts/MainUI/R$string;->can_onstar_direct:I

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(I)V

    .line 124
    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 126
    const/16 v2, 0x24

    invoke-direct {p0, v8, v2, v9, v7}, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->addInfoText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mDesText:Lcom/ts/other/CustomTextView;

    .line 127
    const/16 v2, 0x52

    invoke-direct {p0, v8, v2, v9, v7}, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->addInfoText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mCommText:Lcom/ts/other/CustomTextView;

    .line 128
    const/16 v2, 0x8f

    invoke-direct {p0, v8, v2, v9, v7}, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->addInfoText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mNextDisText:Lcom/ts/other/CustomTextView;

    .line 129
    const/16 v2, 0xbd

    invoke-direct {p0, v8, v2, v9, v7}, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->addInfoText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mTotalDisText:Lcom/ts/other/CustomTextView;

    .line 131
    const/16 v2, 0x109

    sget v3, Lcom/ts/MainUI/R$string;->can_onstar_repeat:I

    const/4 v4, 0x1

    invoke-direct {p0, v11, v2, v3, v4}, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->addBtnLong(IIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mBtnRepeat:Lcom/ts/other/ParamButton;

    .line 132
    const/16 v2, 0x188

    sget v3, Lcom/ts/MainUI/R$string;->can_onstar_preview:I

    const/4 v4, 0x2

    invoke-direct {p0, v11, v2, v3, v4}, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->addBtnShort(IIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mBtnPreview:Lcom/ts/other/ParamButton;

    .line 133
    const/16 v2, 0x11c

    const/16 v3, 0x160

    sget v4, Lcom/ts/MainUI/R$string;->can_onstar_last_sta:I

    const/4 v5, 0x3

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->addBtnShort(IIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mBtnPrevSta:Lcom/ts/other/ParamButton;

    .line 134
    const/16 v2, 0x11c

    const/16 v3, 0x1b6

    sget v4, Lcom/ts/MainUI/R$string;->can_onstar_next_sta:I

    const/4 v5, 0x4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->addBtnShort(IIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mBtnNextSta:Lcom/ts/other/ParamButton;

    .line 135
    const/16 v2, 0x109

    sget v3, Lcom/ts/MainUI/R$string;->can_onstar_des_info:I

    const/4 v4, 0x5

    invoke-direct {p0, v10, v2, v3, v4}, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->addBtnLong(IIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mBtnDesInfo:Lcom/ts/other/ParamButton;

    .line 136
    const/16 v2, 0x160

    sget v3, Lcom/ts/MainUI/R$string;->can_onstar_update:I

    const/4 v4, 0x6

    invoke-direct {p0, v10, v2, v3, v4}, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->addBtnLong(IIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mBtnUpdate:Lcom/ts/other/ParamButton;

    .line 137
    const/16 v2, 0x1b6

    sget v3, Lcom/ts/MainUI/R$string;->can_onstar_cancle:I

    const/4 v4, 0x7

    invoke-direct {p0, v10, v2, v3, v4}, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->addBtnLong(IIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mBtnCancel:Lcom/ts/other/ParamButton;

    .line 140
    invoke-virtual {p0}, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    .local v0, "res":Landroid/content/res/Resources;
    sget v2, Lcom/ts/MainUI/R$string;->can_zdxx:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mStrDes:Ljava/lang/String;

    .line 142
    sget v2, Lcom/ts/MainUI/R$string;->can_ybxx:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mStrComm:Ljava/lang/String;

    .line 143
    sget v2, Lcom/ts/MainUI/R$string;->can_jxyld:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mStrNextDis:Ljava/lang/String;

    .line 144
    sget v2, Lcom/ts/MainUI/R$string;->can_zxc:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->mStrTotalRange:Ljava/lang/String;

    .line 147
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 163
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 164
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 154
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;->ResetData(Z)V

    .line 156
    return-void
.end method
