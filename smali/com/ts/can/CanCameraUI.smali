.class public Lcom/ts/can/CanCameraUI;
.super Ljava/lang/Object;
.source "CanCameraUI.java"

# interfaces
.implements Lcom/ts/other/CustomImgView$onPaint;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final BTN_BZ:I = 0x65

.field public static final BTN_CCH2_ESC:I = 0xb4

.field public static final BTN_CCH2_MODE1:I = 0xb5

.field public static final BTN_CCH2_MODE2:I = 0xb6

.field public static final BTN_CCH2_MODE3:I = 0xb7

.field public static final BTN_CHANA_ALSVINV7_MODE1:I = 0x212

.field public static final BTN_CHANA_ALSVINV7_MODE2:I = 0x213

.field public static final BTN_CHANA_ALSVINV7_MODE3:I = 0x214

.field public static final BTN_CS75_MODE:I = 0x97

.field public static final BTN_DISPLAY_SET:I = 0x67

.field public static final BTN_FJ:I = 0x66

.field public static final BTN_GEELYBOY_ESC:I = 0xcc

.field public static final BTN_GEELYBOY_MODE1:I = 0xc8

.field public static final BTN_GEELYBOY_MODE2:I = 0xc9

.field public static final BTN_GEELYBOY_MODE3:I = 0xca

.field public static final BTN_GEELYBOY_MODE4:I = 0xcb

.field public static final BTN_GEELY_YJX6_ESC:I = 0x20c

.field public static final BTN_GEELY_YJX6_MODE1:I = 0x208

.field public static final BTN_GEELY_YJX6_MODE2:I = 0x209

.field public static final BTN_GEELY_YJX6_MODE3:I = 0x20a

.field public static final BTN_GEELY_YJX6_MODE4:I = 0x20b

.field public static final BTN_GJ:I = 0x64

.field public static final BTN_GS5_360_1:I = 0x6f

.field public static final BTN_GS5_360_2:I = 0x70

.field public static final BTN_GS5_360_3:I = 0x71

.field public static final BTN_GS5_360_4:I = 0x72

.field public static final BTN_GS5_360_5:I = 0x73

.field public static final BTN_GS5_MODE:I = 0x69

.field public static final BTN_GST_BZ:I = 0x79

.field public static final BTN_GST_FJ:I = 0x7a

.field public static final BTN_HMS7_ESC:I = 0x1f8

.field public static final BTN_HMS7_HELP_LINE:I = 0x1f9

.field public static final BTN_HMS7_MODE1:I = 0x1f4

.field public static final BTN_HMS7_MODE2:I = 0x1f5

.field public static final BTN_HMS7_MODE3:I = 0x1f6

.field public static final BTN_HMS7_MODE4:I = 0x1f7

.field public static final BTN_LIFAN_MODE_1:I = 0xab

.field public static final BTN_LIFAN_MODE_2:I = 0xac

.field public static final BTN_MAGOTEN_MODE_1:I = 0x8d

.field public static final BTN_MAGOTEN_MODE_2:I = 0x8e

.field public static final BTN_MAGOTEN_MODE_3:I = 0x8f

.field public static final BTN_MAGOTEN_MODE_4:I = 0x90

.field public static final BTN_RAV4_360_1:I = 0x83

.field public static final BTN_RAV4_360_2:I = 0x84

.field public static final BTN_RAV4_360_3:I = 0x85

.field public static final BTN_TIGGER7_MODE_1:I = 0xa1

.field public static final BTN_TIGGER7_MODE_2:I = 0xa2

.field public static final BTN_TIGGER7_MODE_3:I = 0xa3

.field public static final BTN_TIGGER7_MODE_4:I = 0xa4

.field public static final BTN_TRUMPCHI_GS4_MODE1:I = 0x190

.field public static final BTN_TRUMPCHI_GS4_MODE2:I = 0x191

.field public static final BTN_TRUMPCHI_GS4_MODE3:I = 0x192

.field public static final BTN_TRUMPCHI_GS4_MODE4:I = 0x193

.field public static final BTN_VENUCIA_T70_ESC:I = 0x130

.field public static final BTN_VENUCIA_T70_MODE1:I = 0x12c

.field public static final BTN_VENUCIA_T70_MODE2:I = 0x12d

.field public static final BTN_VENUCIA_T70_MODE3:I = 0x12e

.field public static final BTN_VENUCIA_T70_MODE4:I = 0x12f

.field public static final BTN_X80_MODE1:I = 0xbe

.field public static final BTN_X80_MODE2:I = 0xbf

.field public static final BTN_X80_MODE3:I = 0xc0

.field public static final BTN_X80_MODE4:I = 0xc1

.field public static final BTN_YG9_XBS_MODE1:I = 0x1fe

.field public static final BTN_YG9_XBS_MODE2:I = 0x1ff

.field public static final BTN_YG9_XBS_MODE3:I = 0x200

.field public static final BTN_ZOOM:I = 0x68

.field public static final EPS_DT:I = 0x2e

.field public static final EPS_MAX_VAL:I = 0x438

.field public static final ITEM_LAYOUT:I = 0x63

.field public static final TAG:Ljava/lang/String; = "CanCameraActivity"

.field protected static mContext:Landroid/content/Context;

.field static mInstance:Lcom/ts/can/CanCameraUI;


# instance fields
.field private cameraClick:Landroid/view/View$OnClickListener;

.field private mBtnCCH2Esc:Lcom/ts/other/ParamButton;

.field private mBtnCCH2Mode:[Lcom/ts/other/ParamButton;

.field private mBtnChanAAlsvinV76Mode:[Lcom/ts/other/ParamButton;

.field private mBtnCs75Mode:Lcom/ts/other/ParamButton;

.field private mBtnDisplaySet:Landroid/widget/Button;

.field private mBtnGS5Cam360:[Lcom/ts/other/ParamButton;

.field private mBtnGS5Mode:Lcom/ts/other/ParamButton;

.field private mBtnGeelyBoyEsc:Lcom/ts/other/ParamButton;

.field private mBtnGeelyBoyMode:[Lcom/ts/other/ParamButton;

.field private mBtnGeelyYjX6Esc:Lcom/ts/other/ParamButton;

.field private mBtnGeelyYjX6Mode:[Lcom/ts/other/ParamButton;

.field private mBtnHmS7Esc:Lcom/ts/other/ParamButton;

.field private mBtnHmS7Line:Lcom/ts/other/ParamButton;

.field private mBtnHmS7Mode:[Lcom/ts/other/ParamButton;

.field private mBtnLiFanCamMode:[Lcom/ts/other/ParamButton;

.field private mBtnMagotenMode:[Lcom/ts/other/ParamButton;

.field private mBtnRav4Cam360:[Lcom/ts/other/ParamButton;

.field private mBtnRtShowRadar:Landroid/widget/Button;

.field private mBtnShowLine:Landroid/widget/Button;

.field private mBtnShowTrack:Landroid/widget/Button;

.field private mBtnTigger7Cam:[Lcom/ts/other/ParamButton;

.field private mBtnTrumpchiGs4Mode:[Lcom/ts/other/ParamButton;

.field private mBtnVenuciaEsc:Lcom/ts/other/ParamButton;

.field private mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

.field private mBtnViewBz:Lcom/ts/other/ParamButton;

.field private mBtnViewFj:Lcom/ts/other/ParamButton;

.field private mBtnViewGj:Lcom/ts/other/ParamButton;

.field private mBtnX80CamMode:[Lcom/ts/other/ParamButton;

.field private mBtnYg9Mode:[Lcom/ts/other/ParamButton;

.field private mBtnZoom:Lcom/ts/other/ParamButton;

.field private mCameraMode:Lcom/lgb/canmodule/CanDataInfo$GolfCarRvsCameraMode;

.field private mEnterCamSta:I

.field private mEpsLineView:Lcom/ts/can/CameraUIView;

.field private mGS5CamData:Lcom/lgb/canmodule/CanDataInfo$GS5Cam;

.field private mHmS7Set:Lcom/lgb/canmodule/CanDataInfo$HmS7_CarSet;

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mLiFanCamMode:Lcom/lgb/canmodule/CanDataInfo$Lifan_CamMode;

.field private mListBotView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOldCamPort:I

.field private mOldXt5UI:Z

.field private mRightForeRadar:Lcom/ts/can/RadarUIView;

.field private mRightRadarLayout:Landroid/widget/LinearLayout;

.field private mRightRearRadar:Lcom/ts/can/RadarUIView;

.field private mTickNow:J

.field private mUpdateCount:I

.field private mVenuciaCamState:Lcom/lgb/canmodule/CanDataInfo$VenuciaCamState;

.field private mX80Camera:Lcom/lgb/canmodule/CanDataInfo$X80_Camera;

.field private mYg9Set:Lcom/lgb/canmodule/CanDataInfo$AccordXbsCamMode;

.field private mbResume:Z

.field private mfgFullScr:Z

.field private mfgShowCanBtn:Z

.field private mfgShowLine:Z

.field private mfgShowTrack:Z

.field nDelayCheck:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/can/CanCameraUI;->mfgFullScr:Z

    .line 155
    iput-boolean v1, p0, Lcom/ts/can/CanCameraUI;->mfgShowTrack:Z

    .line 156
    iput-boolean v1, p0, Lcom/ts/can/CanCameraUI;->mfgShowLine:Z

    .line 157
    iput-boolean v1, p0, Lcom/ts/can/CanCameraUI;->mfgShowCanBtn:Z

    .line 162
    iput v1, p0, Lcom/ts/can/CanCameraUI;->mEnterCamSta:I

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Lcom/ts/can/CanCameraUI;->mOldCamPort:I

    .line 165
    iput-boolean v1, p0, Lcom/ts/can/CanCameraUI;->mOldXt5UI:Z

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mListBotView:Ljava/util/ArrayList;

    .line 169
    iput v1, p0, Lcom/ts/can/CanCameraUI;->mUpdateCount:I

    .line 1102
    new-instance v0, Lcom/ts/can/CanCameraUI$1;

    invoke-direct {v0, p0}, Lcom/ts/can/CanCameraUI$1;-><init>(Lcom/ts/can/CanCameraUI;)V

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->cameraClick:Landroid/view/View$OnClickListener;

    .line 1373
    iput v1, p0, Lcom/ts/can/CanCameraUI;->nDelayCheck:I

    .line 225
    return-void
.end method

.method private CheckGS5Btn(Z)V
    .locals 4
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1217
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnGS5Cam360:[Lcom/ts/other/ParamButton;

    if-eqz v1, :cond_1

    .line 1219
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mGS5CamData:Lcom/lgb/canmodule/CanDataInfo$GS5Cam;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->GqcqGetCamMode(Lcom/lgb/canmodule/CanDataInfo$GS5Cam;)V

    .line 1220
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mGS5CamData:Lcom/lgb/canmodule/CanDataInfo$GS5Cam;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS5Cam;->UpdateOnce:I

    if-eqz v1, :cond_1

    .line 1222
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mGS5CamData:Lcom/lgb/canmodule/CanDataInfo$GS5Cam;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS5Cam;->Update:I

    if-eqz v1, :cond_1

    .line 1224
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mGS5CamData:Lcom/lgb/canmodule/CanDataInfo$GS5Cam;

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$GS5Cam;->Update:I

    .line 1225
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 1233
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 1227
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnGS5Cam360:[Lcom/ts/other/ParamButton;

    aget-object v3, v1, v0

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mGS5CamData:Lcom/lgb/canmodule/CanDataInfo$GS5Cam;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS5Cam;->Mode:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 1225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 1227
    goto :goto_1
.end method

.method private CheckHmS7Mode(Z)V
    .locals 4
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1339
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Mode:[Lcom/ts/other/ParamButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mHmS7Set:Lcom/lgb/canmodule/CanDataInfo$HmS7_CarSet;

    if-eqz v1, :cond_1

    .line 1340
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mHmS7Set:Lcom/lgb/canmodule/CanDataInfo$HmS7_CarSet;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->HmS7GetCarSet(Lcom/lgb/canmodule/CanDataInfo$HmS7_CarSet;)V

    .line 1342
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mHmS7Set:Lcom/lgb/canmodule/CanDataInfo$HmS7_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HmS7_CarSet;->UpdateOnce:I

    if-eqz v1, :cond_1

    .line 1343
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mHmS7Set:Lcom/lgb/canmodule/CanDataInfo$HmS7_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HmS7_CarSet;->Update:I

    if-eqz v1, :cond_1

    .line 1344
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mHmS7Set:Lcom/lgb/canmodule/CanDataInfo$HmS7_CarSet;

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$HmS7_CarSet;->Update:I

    .line 1346
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Line:Lcom/ts/other/ParamButton;

    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mHmS7Set:Lcom/lgb/canmodule/CanDataInfo$HmS7_CarSet;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$HmS7_CarSet;->Fzxzt:I

    invoke-virtual {v1, v3}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 1348
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Mode:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 1355
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 1349
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Mode:[Lcom/ts/other/ParamButton;

    aget-object v3, v1, v0

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mHmS7Set:Lcom/lgb/canmodule/CanDataInfo$HmS7_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HmS7_CarSet;->CamSta:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 1348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 1349
    goto :goto_1
.end method

.method private CheckLiFanBtn(Z)V
    .locals 4
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1254
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnLiFanCamMode:[Lcom/ts/other/ParamButton;

    if-eqz v1, :cond_1

    .line 1255
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mLiFanCamMode:Lcom/lgb/canmodule/CanDataInfo$Lifan_CamMode;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->LifanGetCamMode(Lcom/lgb/canmodule/CanDataInfo$Lifan_CamMode;)V

    .line 1257
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mLiFanCamMode:Lcom/lgb/canmodule/CanDataInfo$Lifan_CamMode;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Lifan_CamMode;->UpdateOnce:I

    if-eqz v1, :cond_1

    .line 1259
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mLiFanCamMode:Lcom/lgb/canmodule/CanDataInfo$Lifan_CamMode;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Lifan_CamMode;->Update:I

    if-eqz v1, :cond_1

    .line 1261
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mLiFanCamMode:Lcom/lgb/canmodule/CanDataInfo$Lifan_CamMode;

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$Lifan_CamMode;->Update:I

    .line 1263
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnLiFanCamMode:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 1269
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 1264
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnLiFanCamMode:[Lcom/ts/other/ParamButton;

    aget-object v3, v1, v0

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mLiFanCamMode:Lcom/lgb/canmodule/CanDataInfo$Lifan_CamMode;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Lifan_CamMode;->Mode:I

    if-ne v0, v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 1263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 1264
    goto :goto_1
.end method

.method private CheckMagotenBtn(Z)V
    .locals 4
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1236
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnMagotenMode:[Lcom/ts/other/ParamButton;

    if-eqz v1, :cond_1

    .line 1237
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mCameraMode:Lcom/lgb/canmodule/CanDataInfo$GolfCarRvsCameraMode;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->MagotenGetRvsCameraMode(Lcom/lgb/canmodule/CanDataInfo$GolfCarRvsCameraMode;)V

    .line 1239
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mCameraMode:Lcom/lgb/canmodule/CanDataInfo$GolfCarRvsCameraMode;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfCarRvsCameraMode;->UpdateOnce:I

    if-eqz v1, :cond_1

    .line 1241
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mCameraMode:Lcom/lgb/canmodule/CanDataInfo$GolfCarRvsCameraMode;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfCarRvsCameraMode;->Update:I

    if-eqz v1, :cond_1

    .line 1243
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mCameraMode:Lcom/lgb/canmodule/CanDataInfo$GolfCarRvsCameraMode;

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$GolfCarRvsCameraMode;->Update:I

    .line 1245
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnMagotenMode:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 1251
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 1246
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnMagotenMode:[Lcom/ts/other/ParamButton;

    aget-object v3, v1, v0

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mCameraMode:Lcom/lgb/canmodule/CanDataInfo$GolfCarRvsCameraMode;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfCarRvsCameraMode;->RvsMode:I

    if-ne v0, v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 1245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 1246
    goto :goto_1
.end method

.method private CheckPort()V
    .locals 3

    .prologue
    .line 1147
    invoke-static {}, Lcom/ts/main/common/MainUI;->IsCamVPort()I

    move-result v0

    .line 1148
    .local v0, "curMode":I
    iget v1, p0, Lcom/ts/can/CanCameraUI;->mOldCamPort:I

    if-eq v1, v0, :cond_0

    .line 1150
    iput v0, p0, Lcom/ts/can/CanCameraUI;->mOldCamPort:I

    .line 1151
    if-nez v0, :cond_1

    .line 1154
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private CheckVenuciaT70Btn(Z)V
    .locals 8
    .param p1, "check"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v3, 0x0

    .line 1303
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

    if-eqz v2, :cond_1

    .line 1304
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mVenuciaCamState:Lcom/lgb/canmodule/CanDataInfo$VenuciaCamState;

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->VenuciaCarGetCamState(Lcom/lgb/canmodule/CanDataInfo$VenuciaCamState;)V

    .line 1306
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mVenuciaCamState:Lcom/lgb/canmodule/CanDataInfo$VenuciaCamState;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$VenuciaCamState;->UpdateOnce:I

    if-eqz v2, :cond_1

    .line 1307
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mVenuciaCamState:Lcom/lgb/canmodule/CanDataInfo$VenuciaCamState;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$VenuciaCamState;->Update:I

    if-eqz v2, :cond_1

    .line 1308
    :cond_0
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mVenuciaCamState:Lcom/lgb/canmodule/CanDataInfo$VenuciaCamState;

    iput v3, v2, Lcom/lgb/canmodule/CanDataInfo$VenuciaCamState;->Update:I

    .line 1310
    iget-object v4, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-lt v2, v5, :cond_2

    .line 1314
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mVenuciaCamState:Lcom/lgb/canmodule/CanDataInfo$VenuciaCamState;

    iget v1, v2, Lcom/lgb/canmodule/CanDataInfo$VenuciaCamState;->CamState:I

    .line 1315
    .local v1, "state":I
    packed-switch v1, :pswitch_data_0

    .line 1331
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

    aget-object v2, v2, v6

    sget v3, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_01_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_01_dn:I

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 1337
    .end local v1    # "state":I
    :cond_1
    :goto_1
    return-void

    .line 1310
    :cond_2
    aget-object v0, v4, v2

    .line 1311
    .local v0, "mode":Lcom/ts/other/ParamButton;
    invoke-virtual {v0, v3}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 1310
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1320
    .end local v0    # "mode":Lcom/ts/other/ParamButton;
    .restart local v1    # "state":I
    :pswitch_0
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

    aget-object v2, v2, v6

    sget v3, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_02_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_02_dn:I

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 1321
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

    add-int/lit8 v3, v1, -0x3

    aget-object v2, v2, v3

    invoke-virtual {v2, v7}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto :goto_1

    .line 1327
    :pswitch_1
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

    aget-object v2, v2, v6

    sget v3, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_01_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_01_dn:I

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 1328
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

    add-int/lit8 v3, v1, -0x7

    aget-object v2, v2, v3

    invoke-virtual {v2, v7}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto :goto_1

    .line 1315
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private CheckX80Btn(Z)V
    .locals 4
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1272
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnX80CamMode:[Lcom/ts/other/ParamButton;

    if-eqz v1, :cond_1

    .line 1273
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mX80Camera:Lcom/lgb/canmodule/CanDataInfo$X80_Camera;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->X80GetCameraMode(Lcom/lgb/canmodule/CanDataInfo$X80_Camera;)V

    .line 1275
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mX80Camera:Lcom/lgb/canmodule/CanDataInfo$X80_Camera;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$X80_Camera;->UpdateOnce:I

    if-eqz v1, :cond_1

    .line 1276
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mX80Camera:Lcom/lgb/canmodule/CanDataInfo$X80_Camera;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$X80_Camera;->Update:I

    if-eqz v1, :cond_1

    .line 1277
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mX80Camera:Lcom/lgb/canmodule/CanDataInfo$X80_Camera;

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$X80_Camera;->Update:I

    .line 1279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnX80CamMode:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 1283
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mX80Camera:Lcom/lgb/canmodule/CanDataInfo$X80_Camera;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$X80_Camera;->Mode:I

    packed-switch v1, :pswitch_data_0

    .line 1300
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 1280
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnX80CamMode:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 1279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1285
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnX80CamMode:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto :goto_1

    .line 1288
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnX80CamMode:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v3

    invoke-virtual {v1, v3}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto :goto_1

    .line 1291
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnX80CamMode:[Lcom/ts/other/ParamButton;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto :goto_1

    .line 1294
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnX80CamMode:[Lcom/ts/other/ParamButton;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto :goto_1

    .line 1283
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private CheckYg9Mode(Z)V
    .locals 4
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1357
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnYg9Mode:[Lcom/ts/other/ParamButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mYg9Set:Lcom/lgb/canmodule/CanDataInfo$AccordXbsCamMode;

    if-eqz v1, :cond_1

    .line 1358
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mYg9Set:Lcom/lgb/canmodule/CanDataInfo$AccordXbsCamMode;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->Yg9XbsGetCamMode(Lcom/lgb/canmodule/CanDataInfo$AccordXbsCamMode;)V

    .line 1360
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mYg9Set:Lcom/lgb/canmodule/CanDataInfo$AccordXbsCamMode;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordXbsCamMode;->UpdateOnce:I

    if-eqz v1, :cond_1

    .line 1361
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mYg9Set:Lcom/lgb/canmodule/CanDataInfo$AccordXbsCamMode;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordXbsCamMode;->Update:I

    if-eqz v1, :cond_1

    .line 1362
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mYg9Set:Lcom/lgb/canmodule/CanDataInfo$AccordXbsCamMode;

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$AccordXbsCamMode;->Update:I

    .line 1364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnYg9Mode:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 1371
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 1365
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnYg9Mode:[Lcom/ts/other/ParamButton;

    aget-object v3, v1, v0

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mYg9Set:Lcom/lgb/canmodule/CanDataInfo$AccordXbsCamMode;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordXbsCamMode;->Mode:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 1364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 1365
    goto :goto_1
.end method

.method public static GetInstance()Lcom/ts/can/CanCameraUI;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/ts/can/CanCameraUI;->mInstance:Lcom/ts/can/CanCameraUI;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/ts/can/CanCameraUI;

    invoke-direct {v0}, Lcom/ts/can/CanCameraUI;-><init>()V

    sput-object v0, Lcom/ts/can/CanCameraUI;->mInstance:Lcom/ts/can/CanCameraUI;

    .line 234
    :cond_0
    sget-object v0, Lcom/ts/can/CanCameraUI;->mInstance:Lcom/ts/can/CanCameraUI;

    return-object v0
.end method

.method private Init16GS4Mode(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v3, 0x1f4

    const/16 v4, 0x52

    const/16 v5, 0x48

    .line 563
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnTrumpchiGs4Mode:[Lcom/ts/other/ParamButton;

    .line 565
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnTrumpchiGs4Mode:[Lcom/ts/other/ParamButton;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnTrumpchiGs4Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v7

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_01_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_01_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 574
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnTrumpchiGs4Mode:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v7

    const/16 v2, 0x6f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 576
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnTrumpchiGs4Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v8

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_02_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_02_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 577
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnTrumpchiGs4Mode:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v8

    const/16 v2, 0xe8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 579
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnTrumpchiGs4Mode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_09_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_09_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 580
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnTrumpchiGs4Mode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/16 v2, 0x160

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 582
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnTrumpchiGs4Mode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_08_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_08_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 583
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnTrumpchiGs4Mode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    const/16 v2, 0x1d8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 584
    return-void

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnTrumpchiGs4Mode:[Lcom/ts/other/ParamButton;

    new-instance v1, Lcom/ts/other/ParamButton;

    invoke-direct {v1, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v6

    .line 567
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnTrumpchiGs4Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnTrumpchiGs4Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    add-int/lit16 v1, v6, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 570
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mListBotView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnTrumpchiGs4Mode:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private InitB50_X80(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v3, 0x1f4

    const/16 v4, 0x52

    const/16 v5, 0x48

    .line 476
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnX80CamMode:[Lcom/ts/other/ParamButton;

    .line 477
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$X80_Camera;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$X80_Camera;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mX80Camera:Lcom/lgb/canmodule/CanDataInfo$X80_Camera;

    .line 479
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnX80CamMode:[Lcom/ts/other/ParamButton;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnX80CamMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v7

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_01_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_01_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 488
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnX80CamMode:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v7

    const/16 v2, 0x6f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 490
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnX80CamMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v8

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_02_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_02_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 491
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnX80CamMode:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v8

    const/16 v2, 0xe8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 493
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnX80CamMode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_09_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_09_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 494
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnX80CamMode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/16 v2, 0x160

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 496
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnX80CamMode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_08_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_08_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 497
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnX80CamMode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    const/16 v2, 0x1d8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 498
    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnX80CamMode:[Lcom/ts/other/ParamButton;

    new-instance v1, Lcom/ts/other/ParamButton;

    invoke-direct {v1, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v6

    .line 481
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnX80CamMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnX80CamMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    add-int/lit16 v1, v6, 0xbe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 484
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mListBotView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnX80CamMode:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private InitCCH2(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x14

    const/16 v4, 0x73

    .line 448
    new-instance v0, Lcom/ts/other/ParamButton;

    invoke-direct {v0, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnCCH2Esc:Lcom/ts/other/ParamButton;

    .line 449
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnCCH2Esc:Lcom/ts/other/ParamButton;

    const/16 v1, 0xb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 450
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnCCH2Esc:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnCCH2Esc:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_camera_track_esc_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_camera_track_esc_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 452
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mListBotView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnCCH2Esc:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnCCH2Esc:Lcom/ts/other/ParamButton;

    const/16 v2, 0x38d

    const/16 v3, 0x21c

    const/16 v5, 0x3c

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 455
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnCCH2Mode:[Lcom/ts/other/ParamButton;

    .line 457
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnCCH2Mode:[Lcom/ts/other/ParamButton;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnCCH2Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v8

    sget v1, Lcom/ts/MainUI/R$drawable;->can_eps_park_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_eps_park_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 466
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnCCH2Mode:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v8

    const/16 v3, 0xd4

    move-object v0, p0

    move v2, v7

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 468
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnCCH2Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v9

    sget v1, Lcom/ts/MainUI/R$drawable;->can_eps_park_side_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_eps_park_side_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 469
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnCCH2Mode:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v9

    const/16 v3, 0x15b

    move-object v0, p0

    move v2, v7

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 471
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnCCH2Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v10

    sget v1, Lcom/ts/MainUI/R$drawable;->can_eps_park_right_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_eps_park_right_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 472
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnCCH2Mode:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v10

    const/16 v3, 0x1e2

    move-object v0, p0

    move v2, v7

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 473
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnCCH2Mode:[Lcom/ts/other/ParamButton;

    new-instance v1, Lcom/ts/other/ParamButton;

    invoke-direct {v1, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v6

    .line 459
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnCCH2Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    add-int/lit16 v1, v6, 0xb5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 460
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnCCH2Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mListBotView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnCCH2Mode:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private InitChanAAlsvinV7(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v3, 0x1f4

    const/16 v4, 0x52

    const/16 v5, 0x4b

    .line 681
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnChanAAlsvinV76Mode:[Lcom/ts/other/ParamButton;

    .line 682
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnChanAAlsvinV76Mode:[Lcom/ts/other/ParamButton;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnChanAAlsvinV76Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v7

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_05_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_05_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 691
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnChanAAlsvinV76Mode:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v7

    const/16 v2, 0x6f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 693
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnChanAAlsvinV76Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v8

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_04_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_04_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 694
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnChanAAlsvinV76Mode:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v8

    const/16 v2, 0xe8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 696
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnChanAAlsvinV76Mode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_camera_line_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_camera_line_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 697
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnChanAAlsvinV76Mode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/16 v2, 0x160

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 699
    return-void

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnChanAAlsvinV76Mode:[Lcom/ts/other/ParamButton;

    new-instance v1, Lcom/ts/other/ParamButton;

    invoke-direct {v1, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v6

    .line 684
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnChanAAlsvinV76Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnChanAAlsvinV76Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    add-int/lit16 v1, v6, 0x212

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 687
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mListBotView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnChanAAlsvinV76Mode:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private InitGeelyBoy(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x52

    const/16 v7, 0x48

    const/16 v3, 0x1f4

    .line 501
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyBoyMode:[Lcom/ts/other/ParamButton;

    .line 502
    new-instance v0, Lcom/ts/other/ParamButton;

    invoke-direct {v0, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyBoyEsc:Lcom/ts/other/ParamButton;

    .line 504
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyBoyEsc:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyBoyEsc:Lcom/ts/other/ParamButton;

    const/16 v1, 0xcc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 506
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyBoyEsc:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_camera_track_esc_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_camera_track_esc_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 507
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyBoyEsc:Lcom/ts/other/ParamButton;

    const/16 v2, 0x250

    const/16 v4, 0x73

    const/16 v5, 0x3c

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 508
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mListBotView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyBoyEsc:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyBoyMode:[Lcom/ts/other/ParamButton;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyBoyMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v9

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_01_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_01_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 519
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyBoyMode:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v9

    const/16 v2, 0x6f

    move-object v0, p0

    move v4, v8

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 521
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyBoyMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v10

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_02_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_02_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 522
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyBoyMode:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v10

    const/16 v2, 0xe8

    move-object v0, p0

    move v4, v8

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 524
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyBoyMode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_09_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_09_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 525
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyBoyMode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/16 v2, 0x160

    move-object v0, p0

    move v4, v8

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 527
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyBoyMode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_08_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_08_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 528
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyBoyMode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    const/16 v2, 0x1d8

    move-object v0, p0

    move v4, v8

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 529
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyBoyMode:[Lcom/ts/other/ParamButton;

    new-instance v1, Lcom/ts/other/ParamButton;

    invoke-direct {v1, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v6

    .line 512
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyBoyMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyBoyMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    add-int/lit16 v1, v6, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 515
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mListBotView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyBoyMode:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private InitGeelyYjX6(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x52

    const/16 v7, 0x4b

    const/16 v3, 0x1f4

    .line 650
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyYjX6Mode:[Lcom/ts/other/ParamButton;

    .line 651
    new-instance v0, Lcom/ts/other/ParamButton;

    invoke-direct {v0, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyYjX6Esc:Lcom/ts/other/ParamButton;

    .line 653
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyYjX6Esc:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyYjX6Esc:Lcom/ts/other/ParamButton;

    const/16 v1, 0x20c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 655
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyYjX6Esc:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_camera_track_esc_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_camera_track_esc_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 656
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyYjX6Esc:Lcom/ts/other/ParamButton;

    const/16 v2, 0x250

    const/16 v4, 0x73

    const/16 v5, 0x3c

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 657
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mListBotView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyYjX6Esc:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyYjX6Mode:[Lcom/ts/other/ParamButton;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyYjX6Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v9

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_09_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_09_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 668
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyYjX6Mode:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v9

    const/16 v2, 0x6f

    move-object v0, p0

    move v4, v8

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 670
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyYjX6Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v10

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_08_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_08_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 671
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyYjX6Mode:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v10

    const/16 v2, 0xe8

    move-object v0, p0

    move v4, v8

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 673
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyYjX6Mode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_01_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_01_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 674
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyYjX6Mode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/16 v2, 0x160

    move-object v0, p0

    move v4, v8

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 676
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyYjX6Mode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_02_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_02_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 677
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyYjX6Mode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    const/16 v2, 0x1d8

    move-object v0, p0

    move v4, v8

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 678
    return-void

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyYjX6Mode:[Lcom/ts/other/ParamButton;

    new-instance v1, Lcom/ts/other/ParamButton;

    invoke-direct {v1, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v6

    .line 661
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyYjX6Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyYjX6Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    add-int/lit16 v1, v6, 0x208

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 664
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mListBotView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyYjX6Mode:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private InitHMS7(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x52

    const/16 v7, 0x48

    const/16 v3, 0x1f4

    .line 587
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Mode:[Lcom/ts/other/ParamButton;

    .line 588
    new-instance v0, Lcom/ts/other/ParamButton;

    invoke-direct {v0, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Esc:Lcom/ts/other/ParamButton;

    .line 589
    new-instance v0, Lcom/ts/other/ParamButton;

    invoke-direct {v0, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Line:Lcom/ts/other/ParamButton;

    .line 590
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$HmS7_CarSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$HmS7_CarSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mHmS7Set:Lcom/lgb/canmodule/CanDataInfo$HmS7_CarSet;

    .line 592
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Line:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Line:Lcom/ts/other/ParamButton;

    const/16 v1, 0x1f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 594
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Line:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_camera_tarack_line_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_camera_tarack_line_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 595
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Line:Lcom/ts/other/ParamButton;

    const/16 v2, 0x258

    const/16 v4, 0x80

    const/16 v5, 0x40

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 596
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mListBotView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Line:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Esc:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Esc:Lcom/ts/other/ParamButton;

    const/16 v1, 0x1f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 600
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Esc:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_camera_track_esc_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_camera_track_esc_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 601
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Esc:Lcom/ts/other/ParamButton;

    const/16 v2, 0x2ee

    const/16 v4, 0x80

    const/16 v5, 0x40

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 602
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mListBotView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Esc:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Mode:[Lcom/ts/other/ParamButton;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v9

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_01_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_01_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 613
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Mode:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v9

    const/16 v2, 0x6f

    move-object v0, p0

    move v4, v8

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 615
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v10

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_02_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_02_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 616
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Mode:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v10

    const/16 v2, 0xe8

    move-object v0, p0

    move v4, v8

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 618
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Mode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_09_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_09_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 619
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Mode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/16 v2, 0x160

    move-object v0, p0

    move v4, v8

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 621
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Mode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_08_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_08_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 622
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Mode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    const/16 v2, 0x1d8

    move-object v0, p0

    move v4, v8

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 623
    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Mode:[Lcom/ts/other/ParamButton;

    new-instance v1, Lcom/ts/other/ParamButton;

    invoke-direct {v1, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v6

    .line 606
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    add-int/lit16 v1, v6, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 609
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mListBotView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Mode:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private InitVenuciaT70(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x52

    const/16 v8, 0x48

    const/16 v7, 0x2d

    .line 532
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

    .line 533
    new-instance v0, Lcom/ts/other/ParamButton;

    invoke-direct {v0, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaEsc:Lcom/ts/other/ParamButton;

    .line 534
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$VenuciaCamState;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$VenuciaCamState;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mVenuciaCamState:Lcom/lgb/canmodule/CanDataInfo$VenuciaCamState;

    .line 536
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaEsc:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaEsc:Lcom/ts/other/ParamButton;

    const/16 v1, 0x130

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 538
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaEsc:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_camera_track_esc_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_camera_track_esc_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 539
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaEsc:Lcom/ts/other/ParamButton;

    const/16 v2, 0x23

    const/16 v3, 0x28

    const/16 v4, 0x73

    const/16 v5, 0x3c

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 540
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mListBotView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaEsc:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v10

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_10_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_10_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 550
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v10

    const/16 v3, 0x96

    move-object v0, p0

    move v2, v7

    move v4, v9

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 552
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v11

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_08_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_08_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 553
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v11

    const/16 v3, 0xfa

    move-object v0, p0

    move v2, v7

    move v4, v9

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 555
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_09_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_09_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 556
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/16 v3, 0x15e

    move-object v0, p0

    move v2, v7

    move v4, v9

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 558
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_01_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_01_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 559
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    const/16 v3, 0x1c2

    move-object v0, p0

    move v2, v7

    move v4, v9

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 560
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

    new-instance v1, Lcom/ts/other/ParamButton;

    invoke-direct {v1, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v6

    .line 544
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    add-int/lit16 v1, v6, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 546
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mListBotView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private InitYg9(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v3, 0x1f4

    const/16 v4, 0x52

    const/16 v5, 0x4b

    .line 627
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnYg9Mode:[Lcom/ts/other/ParamButton;

    .line 628
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$AccordXbsCamMode;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$AccordXbsCamMode;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mYg9Set:Lcom/lgb/canmodule/CanDataInfo$AccordXbsCamMode;

    .line 630
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnYg9Mode:[Lcom/ts/other/ParamButton;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnYg9Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v7

    sget v1, Lcom/ts/MainUI/R$drawable;->can_view_bz_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_view_bz_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 639
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnYg9Mode:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v7

    const/16 v2, 0x6f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 641
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnYg9Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v8

    sget v1, Lcom/ts/MainUI/R$drawable;->can_view_fj_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_view_fj_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 642
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnYg9Mode:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v8

    const/16 v2, 0xe8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 644
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnYg9Mode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_view_gj_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_view_gj_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 645
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnYg9Mode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/16 v2, 0x160

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 646
    return-void

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnYg9Mode:[Lcom/ts/other/ParamButton;

    new-instance v1, Lcom/ts/other/ParamButton;

    invoke-direct {v1, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v6

    .line 632
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnYg9Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnYg9Mode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    add-int/lit16 v1, v6, 0x1fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 635
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mListBotView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnYg9Mode:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private ShowCanBtn(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 1411
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnViewFj:Lcom/ts/other/ParamButton;

    if-eqz v3, :cond_0

    .line 1413
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnViewFj:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 1416
    :cond_0
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnViewBz:Lcom/ts/other/ParamButton;

    if-eqz v3, :cond_1

    .line 1418
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnViewBz:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 1421
    :cond_1
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnViewGj:Lcom/ts/other/ParamButton;

    if-eqz v3, :cond_2

    .line 1423
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnViewGj:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 1426
    :cond_2
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnZoom:Lcom/ts/other/ParamButton;

    if-eqz v3, :cond_3

    .line 1428
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnZoom:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 1431
    :cond_3
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnDisplaySet:Landroid/widget/Button;

    if-eqz v3, :cond_4

    .line 1433
    if-eqz p1, :cond_11

    .line 1435
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnDisplaySet:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1443
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnGS5Mode:Lcom/ts/other/ParamButton;

    if-eqz v3, :cond_5

    .line 1445
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnGS5Mode:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 1456
    :cond_5
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnMagotenMode:[Lcom/ts/other/ParamButton;

    if-eqz v3, :cond_6

    .line 1458
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v4, :cond_12

    .line 1464
    .end local v1    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnCCH2Mode:[Lcom/ts/other/ParamButton;

    if-eqz v3, :cond_7

    .line 1466
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnCCH2Mode:[Lcom/ts/other/ParamButton;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 1467
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnCCH2Mode:[Lcom/ts/other/ParamButton;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 1468
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnCCH2Mode:[Lcom/ts/other/ParamButton;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 1470
    :cond_7
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnCCH2Esc:Lcom/ts/other/ParamButton;

    if-eqz v3, :cond_8

    .line 1472
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnCCH2Esc:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 1475
    :cond_8
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnX80CamMode:[Lcom/ts/other/ParamButton;

    if-eqz v3, :cond_9

    .line 1476
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnX80CamMode:[Lcom/ts/other/ParamButton;

    array-length v3, v3

    if-lt v1, v3, :cond_13

    .line 1481
    .end local v1    # "i":I
    :cond_9
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyBoyMode:[Lcom/ts/other/ParamButton;

    if-eqz v3, :cond_a

    .line 1482
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyBoyEsc:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 1484
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyBoyMode:[Lcom/ts/other/ParamButton;

    array-length v3, v3

    if-lt v1, v3, :cond_14

    .line 1489
    .end local v1    # "i":I
    :cond_a
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

    if-eqz v3, :cond_b

    .line 1490
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaEsc:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 1492
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

    array-length v3, v3

    if-lt v1, v3, :cond_15

    .line 1497
    .end local v1    # "i":I
    :cond_b
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnTrumpchiGs4Mode:[Lcom/ts/other/ParamButton;

    if-eqz v3, :cond_c

    .line 1498
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnTrumpchiGs4Mode:[Lcom/ts/other/ParamButton;

    array-length v3, v3

    if-lt v1, v3, :cond_16

    .line 1503
    .end local v1    # "i":I
    :cond_c
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Mode:[Lcom/ts/other/ParamButton;

    if-eqz v3, :cond_d

    .line 1504
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Mode:[Lcom/ts/other/ParamButton;

    array-length v4, v3

    :goto_6
    if-lt v2, v4, :cond_17

    .line 1508
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Esc:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 1509
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mBtnHmS7Line:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 1511
    :cond_d
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mBtnYg9Mode:[Lcom/ts/other/ParamButton;

    if-eqz v2, :cond_e

    .line 1512
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mBtnYg9Mode:[Lcom/ts/other/ParamButton;

    array-length v2, v2

    if-lt v1, v2, :cond_18

    .line 1517
    .end local v1    # "i":I
    :cond_e
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyYjX6Mode:[Lcom/ts/other/ParamButton;

    if-eqz v2, :cond_f

    .line 1518
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyYjX6Esc:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 1520
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyYjX6Mode:[Lcom/ts/other/ParamButton;

    array-length v2, v2

    if-lt v1, v2, :cond_19

    .line 1525
    .end local v1    # "i":I
    :cond_f
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mBtnChanAAlsvinV76Mode:[Lcom/ts/other/ParamButton;

    if-eqz v2, :cond_10

    .line 1526
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mBtnChanAAlsvinV76Mode:[Lcom/ts/other/ParamButton;

    array-length v2, v2

    if-lt v1, v2, :cond_1a

    .line 1530
    .end local v1    # "i":I
    :cond_10
    return-void

    .line 1439
    :cond_11
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnDisplaySet:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 1460
    .restart local v1    # "i":I
    :cond_12
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnMagotenMode:[Lcom/ts/other/ParamButton;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 1458
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1477
    :cond_13
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnX80CamMode:[Lcom/ts/other/ParamButton;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 1476
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1485
    :cond_14
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyBoyMode:[Lcom/ts/other/ParamButton;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 1484
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1493
    :cond_15
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnVenuciaMode:[Lcom/ts/other/ParamButton;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 1492
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1499
    :cond_16
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mBtnTrumpchiGs4Mode:[Lcom/ts/other/ParamButton;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 1498
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1504
    .end local v1    # "i":I
    :cond_17
    aget-object v0, v3, v2

    .line 1505
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 1504
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1513
    .end local v0    # "btn":Lcom/ts/other/ParamButton;
    .restart local v1    # "i":I
    :cond_18
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mBtnYg9Mode:[Lcom/ts/other/ParamButton;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 1512
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1521
    :cond_19
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mBtnGeelyYjX6Mode:[Lcom/ts/other/ParamButton;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 1520
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1527
    :cond_1a
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mBtnChanAAlsvinV76Mode:[Lcom/ts/other/ParamButton;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 1526
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method static synthetic access$0(Lcom/ts/can/CanCameraUI;)Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/ts/can/CanCameraUI;->mfgFullScr:Z

    return v0
.end method

.method static synthetic access$1(Lcom/ts/can/CanCameraUI;Z)V
    .locals 0

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/ts/can/CanCameraUI;->mfgFullScr:Z

    return-void
.end method

.method static synthetic access$2(Lcom/ts/can/CanCameraUI;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnShowLine:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ts/can/CanCameraUI;Z)V
    .locals 0

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/ts/can/CanCameraUI;->mfgShowLine:Z

    return-void
.end method

.method static synthetic access$4(Lcom/ts/can/CanCameraUI;)Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/ts/can/CanCameraUI;->mfgShowLine:Z

    return v0
.end method

.method static synthetic access$5(Lcom/ts/can/CanCameraUI;Z)V
    .locals 0

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/ts/can/CanCameraUI;->mfgShowTrack:Z

    return-void
.end method

.method static synthetic access$6(Lcom/ts/can/CanCameraUI;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnShowTrack:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ts/can/CanCameraUI;)Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/ts/can/CanCameraUI;->mfgShowTrack:Z

    return v0
.end method

.method protected static int2Bool(I)Z
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 249
    if-nez p0, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static showEps(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 1071
    const/4 v0, 0x0

    .line 1072
    .local v0, "DEBUG_EPS":Z
    const/4 v1, 0x1

    .line 1084
    .local v1, "DEBUG_RADAR":Z
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateRadar()V

    .line 1086
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateEps()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1087
    sget-object v4, Lcom/lgb/canmodule/Can;->mRadarForeInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->Update:I

    invoke-static {v4}, Lcom/ts/can/CanCameraUI;->int2Bool(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1088
    sget-object v4, Lcom/lgb/canmodule/Can;->mRadarRearInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->Update:I

    invoke-static {v4}, Lcom/ts/can/CanCameraUI;->int2Bool(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1090
    :cond_0
    sget-object v4, Lcom/lgb/canmodule/Can;->mRadarForeInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;

    iput v3, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->Update:I

    .line 1091
    sget-object v4, Lcom/lgb/canmodule/Can;->mRadarRearInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;

    iput v3, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->Update:I

    .line 1092
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1093
    .local v2, "intent":Landroid/content/Intent;
    const-class v3, Lcom/ts/can/CanCameraActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1094
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1095
    const/4 v3, 0x1

    .line 1098
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return v3
.end method


# virtual methods
.method protected CheckBotBtn(Z)V
    .locals 5
    .param p1, "check"    # Z

    .prologue
    .line 900
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mListBotView:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mListBotView:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 905
    :cond_1
    if-nez p1, :cond_2

    .line 907
    invoke-static {}, Lcom/ts/can/CanFunc;->getTickCount()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ts/can/CanCameraUI;->mTickNow:J

    .line 908
    const/4 v3, 0x0

    iput v3, p0, Lcom/ts/can/CanCameraUI;->mUpdateCount:I

    goto :goto_0

    .line 912
    :cond_2
    iget v3, p0, Lcom/ts/can/CanCameraUI;->mUpdateCount:I

    const/16 v4, 0x32

    if-ge v3, v4, :cond_0

    .line 914
    invoke-static {}, Lcom/ts/can/CanFunc;->getTickCount()J

    move-result-wide v0

    .line 917
    .local v0, "CurTick":J
    iput-wide v0, p0, Lcom/ts/can/CanCameraUI;->mTickNow:J

    .line 918
    iget v3, p0, Lcom/ts/can/CanCameraUI;->mUpdateCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ts/can/CanCameraUI;->mUpdateCount:I

    .line 919
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mListBotView:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 921
    iget-object v3, p0, Lcom/ts/can/CanCameraUI;->mListBotView:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 919
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public EnterCamera(I)V
    .locals 3
    .param p1, "sta"    # I

    .prologue
    const/4 v2, 0x0

    .line 1166
    iput v2, p0, Lcom/ts/can/CanCameraUI;->nDelayCheck:I

    .line 1167
    iget v0, p0, Lcom/ts/can/CanCameraUI;->mEnterCamSta:I

    if-eq p1, v0, :cond_0

    .line 1169
    iput p1, p0, Lcom/ts/can/CanCameraUI;->mEnterCamSta:I

    .line 1170
    if-nez p1, :cond_2

    .line 1173
    invoke-static {}, Lcom/ts/can/CanFunc;->IsCadillacXt51280x480()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1175
    iget-boolean v0, p0, Lcom/ts/can/CanCameraUI;->mOldXt5UI:Z

    if-eqz v0, :cond_0

    .line 1177
    const-string v0, "CanCameraActivity"

    const-string v1, "Xt5 Camera finish "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    iput-boolean v2, p0, Lcom/ts/can/CanCameraUI;->mOldXt5UI:Z

    .line 1179
    invoke-static {}, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->finishCadillacXt5Win()V

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1184
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/ts/can/CanCameraUI;->mOldCamPort:I

    .line 1185
    invoke-virtual {p0}, Lcom/ts/can/CanCameraUI;->onPause()V

    .line 1186
    const-string v0, "CanCameraActivity"

    const-string v1, "BackcarService.getInstance().StopCamera() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    invoke-static {}, Lcom/ts/backcar/BackcarService;->getInstance()Lcom/ts/backcar/BackcarService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/backcar/BackcarService;->StopCamera()V

    .line 1188
    invoke-static {}, Lcom/ts/main/common/MainVolume;->GetInstance()Lcom/ts/main/common/MainVolume;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/common/MainVolume;->Destroy()V

    goto :goto_0

    .line 1193
    :cond_2
    invoke-static {}, Lcom/ts/can/CanFunc;->IsCadillacXt51280x480()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1195
    invoke-static {}, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->IsCadillacXt5Win()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/can/CanCameraUI;->mOldXt5UI:Z

    .line 1198
    const-string v0, "CanCameraActivity"

    const-string v1, "Xt5 Camera ent "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-static {}, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->showCadillacXt5Win()V

    goto :goto_0

    .line 1204
    :cond_3
    invoke-static {}, Lcom/ts/backcar/BackcarService;->getInstance()Lcom/ts/backcar/BackcarService;

    move-result-object v1

    sget v0, Lcom/ts/MainUI/R$id;->CameratextureView:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCameraUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ts/backcar/AutoFitTextureView;

    invoke-virtual {v1, v0}, Lcom/ts/backcar/BackcarService;->StartCamera(Lcom/ts/backcar/AutoFitTextureView;)V

    .line 1206
    invoke-direct {p0}, Lcom/ts/can/CanCameraUI;->CheckPort()V

    .line 1207
    invoke-virtual {p0}, Lcom/ts/can/CanCameraUI;->onResume()V

    .line 1208
    invoke-static {}, Lcom/ts/main/common/MainVolume;->GetInstance()Lcom/ts/main/common/MainVolume;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ts/can/CanCameraUI;->getLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/main/common/MainVolume;->InintScreen(Landroid/widget/RelativeLayout;)V

    goto :goto_0
.end method

.method public Init(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 703
    iget-object v4, p0, Lcom/ts/can/CanCameraUI;->mLayout:Landroid/widget/RelativeLayout;

    if-nez v4, :cond_0

    if-nez p1, :cond_1

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    sput-object p1, Lcom/ts/can/CanCameraUI;->mContext:Landroid/content/Context;

    .line 709
    sget-object v4, Lcom/ts/can/CanCameraUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 711
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v4, Lcom/ts/MainUI/R$layout;->activity_can_camera:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/ts/can/CanCameraUI;->mLayout:Landroid/widget/RelativeLayout;

    .line 712
    iget-object v4, p0, Lcom/ts/can/CanCameraUI;->mLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0x63

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 713
    iget-object v4, p0, Lcom/ts/can/CanCameraUI;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    iget-object v4, p0, Lcom/ts/can/CanCameraUI;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 716
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetTconAdj()I

    move-result v4

    if-eqz v4, :cond_2

    .line 719
    sget v4, Lcom/ts/MainUI/R$id;->btn_display:I

    invoke-virtual {p0, v4}, Lcom/ts/can/CanCameraUI;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/ts/can/CanCameraUI;->mBtnDisplaySet:Landroid/widget/Button;

    .line 720
    iget-object v4, p0, Lcom/ts/can/CanCameraUI;->mBtnDisplaySet:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 721
    iget-object v4, p0, Lcom/ts/can/CanCameraUI;->mBtnDisplaySet:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    iget-object v4, p0, Lcom/ts/can/CanCameraUI;->mBtnDisplaySet:Landroid/widget/Button;

    const/16 v5, 0x67

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 725
    :cond_2
    sget v4, Lcom/ts/MainUI/R$id;->can_eps_line:I

    invoke-virtual {p0, v4}, Lcom/ts/can/CanCameraUI;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/ts/can/CameraUIView;

    iput-object v4, p0, Lcom/ts/can/CanCameraUI;->mEpsLineView:Lcom/ts/can/CameraUIView;

    .line 727
    sget v4, Lcom/ts/MainUI/R$id;->right_radar_layout:I

    invoke-virtual {p0, v4}, Lcom/ts/can/CanCameraUI;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/ts/can/CanCameraUI;->mRightRadarLayout:Landroid/widget/LinearLayout;

    .line 728
    sget v4, Lcom/ts/MainUI/R$id;->right_fore_radar:I

    invoke-virtual {p0, v4}, Lcom/ts/can/CanCameraUI;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/ts/can/RadarUIView;

    iput-object v4, p0, Lcom/ts/can/CanCameraUI;->mRightForeRadar:Lcom/ts/can/RadarUIView;

    .line 729
    sget v4, Lcom/ts/MainUI/R$id;->right_rear_radar:I

    invoke-virtual {p0, v4}, Lcom/ts/can/CanCameraUI;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/ts/can/RadarUIView;

    iput-object v4, p0, Lcom/ts/can/CanCameraUI;->mRightRearRadar:Lcom/ts/can/RadarUIView;

    .line 733
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v0

    .line 734
    .local v0, "cantype":I
    sparse-switch v0, :sswitch_data_0

    .line 749
    sget-object v3, Lcom/ts/can/RadarUIView$Type;->COMMON:Lcom/ts/can/RadarUIView$Type;

    .line 753
    .local v3, "type":Lcom/ts/can/RadarUIView$Type;
    :goto_1
    iget-object v4, p0, Lcom/ts/can/CanCameraUI;->mRightForeRadar:Lcom/ts/can/RadarUIView;

    invoke-virtual {v4, v3}, Lcom/ts/can/RadarUIView;->setRadarType(Lcom/ts/can/RadarUIView$Type;)V

    .line 754
    iget-object v4, p0, Lcom/ts/can/CanCameraUI;->mRightRearRadar:Lcom/ts/can/RadarUIView;

    invoke-virtual {v4, v3}, Lcom/ts/can/RadarUIView;->setRadarType(Lcom/ts/can/RadarUIView$Type;)V

    .line 755
    iget-object v4, p0, Lcom/ts/can/CanCameraUI;->mRightForeRadar:Lcom/ts/can/RadarUIView;

    invoke-virtual {v4, v7, v7}, Lcom/ts/can/RadarUIView;->showRadar(ZZ)V

    .line 756
    iget-object v4, p0, Lcom/ts/can/CanCameraUI;->mRightRearRadar:Lcom/ts/can/RadarUIView;

    invoke-virtual {v4, v7, v6}, Lcom/ts/can/RadarUIView;->showRadar(ZZ)V

    .line 758
    sget v4, Lcom/ts/MainUI/R$id;->can_eps_show_rtradar:I

    invoke-virtual {p0, v4}, Lcom/ts/can/CanCameraUI;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/ts/can/CanCameraUI;->mBtnRtShowRadar:Landroid/widget/Button;

    .line 759
    sget v4, Lcom/ts/MainUI/R$id;->can_eps_show_line:I

    invoke-virtual {p0, v4}, Lcom/ts/can/CanCameraUI;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/ts/can/CanCameraUI;->mBtnShowLine:Landroid/widget/Button;

    .line 760
    sget v4, Lcom/ts/MainUI/R$id;->can_eps_show_track:I

    invoke-virtual {p0, v4}, Lcom/ts/can/CanCameraUI;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/ts/can/CanCameraUI;->mBtnShowTrack:Landroid/widget/Button;

    .line 762
    iget-object v4, p0, Lcom/ts/can/CanCameraUI;->mBtnRtShowRadar:Landroid/widget/Button;

    iget-object v5, p0, Lcom/ts/can/CanCameraUI;->cameraClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 763
    iget-object v4, p0, Lcom/ts/can/CanCameraUI;->mBtnShowLine:Landroid/widget/Button;

    iget-object v5, p0, Lcom/ts/can/CanCameraUI;->cameraClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 764
    iget-object v4, p0, Lcom/ts/can/CanCameraUI;->mBtnShowTrack:Landroid/widget/Button;

    iget-object v5, p0, Lcom/ts/can/CanCameraUI;->cameraClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    iget-object v4, p0, Lcom/ts/can/CanCameraUI;->mBtnShowTrack:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 767
    iget-object v4, p0, Lcom/ts/can/CanCameraUI;->mBtnShowLine:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 770
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v2

    .line 771
    .local v2, "subType":I
    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_0

    .line 816
    :sswitch_0
    if-eq v6, v2, :cond_3

    if-eq v9, v2, :cond_3

    .line 817
    if-ne v10, v2, :cond_0

    .line 819
    :cond_3
    invoke-virtual {p0, p1}, Lcom/ts/can/CanCameraUI;->InitGolfMagoten(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 737
    .end local v2    # "subType":I
    .end local v3    # "type":Lcom/ts/can/RadarUIView$Type;
    :sswitch_1
    sget-object v3, Lcom/ts/can/RadarUIView$Type;->FORD:Lcom/ts/can/RadarUIView$Type;

    .line 738
    .restart local v3    # "type":Lcom/ts/can/RadarUIView$Type;
    goto :goto_1

    .line 742
    .end local v3    # "type":Lcom/ts/can/RadarUIView$Type;
    :sswitch_2
    sget-object v3, Lcom/ts/can/RadarUIView$Type;->COMMON:Lcom/ts/can/RadarUIView$Type;

    .line 743
    .restart local v3    # "type":Lcom/ts/can/RadarUIView$Type;
    new-array v4, v8, [I

    .line 744
    sget v5, Lcom/ts/MainUI/R$drawable;->radar_shang_golf:I

    aput v5, v4, v7

    sget v5, Lcom/ts/MainUI/R$drawable;->radar_xia_golf:I

    aput v5, v4, v6

    .line 745
    sget v5, Lcom/ts/MainUI/R$drawable;->big_radar_shang_golf:I

    aput v5, v4, v9

    sget v5, Lcom/ts/MainUI/R$drawable;->big_radar_xia_golf:I

    aput v5, v4, v10

    .line 743
    sput-object v4, Lcom/ts/can/RadarUIView$Common;->mBmpIds:[I

    goto :goto_1

    .line 774
    .restart local v2    # "subType":I
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/ts/can/CanCameraUI;->InitHondaDA(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 778
    :sswitch_4
    const/4 v4, 0x6

    if-ne v4, v2, :cond_0

    .line 780
    invoke-virtual {p0, p1}, Lcom/ts/can/CanCameraUI;->InitFord(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 785
    :sswitch_5
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 788
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/ts/can/CanCameraUI;->InitGS5Mode(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 792
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/ts/can/CanCameraUI;->InitGS5Super(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 796
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/ts/can/CanCameraUI;->Init16GS4Mode(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 805
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/ts/can/CanCameraUI;->InitCrosstour(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 809
    :sswitch_7
    if-ne v6, v2, :cond_0

    .line 811
    invoke-virtual {p0, p1}, Lcom/ts/can/CanCameraUI;->InitRav4(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 824
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/ts/can/CanCameraUI;->InitCs75(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 828
    :sswitch_9
    if-ne v6, v2, :cond_0

    .line 829
    invoke-virtual {p0, p1}, Lcom/ts/can/CanCameraUI;->InitTigger7(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 834
    :sswitch_a
    invoke-virtual {p0, p1}, Lcom/ts/can/CanCameraUI;->InitLiFan(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 838
    :sswitch_b
    invoke-direct {p0, p1}, Lcom/ts/can/CanCameraUI;->InitCCH2(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 842
    :sswitch_c
    invoke-direct {p0, p1}, Lcom/ts/can/CanCameraUI;->InitB50_X80(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 846
    :sswitch_d
    invoke-direct {p0, p1}, Lcom/ts/can/CanCameraUI;->InitGeelyBoy(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 850
    :sswitch_e
    if-ne v6, v2, :cond_0

    .line 851
    invoke-direct {p0, p1}, Lcom/ts/can/CanCameraUI;->InitVenuciaT70(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 856
    :sswitch_f
    if-ne v6, v2, :cond_0

    .line 857
    invoke-direct {p0, p1}, Lcom/ts/can/CanCameraUI;->InitHMS7(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 863
    :sswitch_10
    invoke-direct {p0, p1}, Lcom/ts/can/CanCameraUI;->InitYg9(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 867
    :sswitch_11
    if-ne v6, v2, :cond_0

    .line 868
    invoke-direct {p0, p1}, Lcom/ts/can/CanCameraUI;->InitGeelyYjX6(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 872
    :sswitch_12
    invoke-direct {p0, p1}, Lcom/ts/can/CanCameraUI;->InitChanAAlsvinV7(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 734
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0xd -> :sswitch_1
        0x6e -> :sswitch_2
    .end sparse-switch

    .line 771
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_7
        0x5 -> :sswitch_3
        0xd -> :sswitch_4
        0x11 -> :sswitch_5
        0x14 -> :sswitch_6
        0x2f -> :sswitch_e
        0x39 -> :sswitch_9
        0x47 -> :sswitch_c
        0x48 -> :sswitch_11
        0x49 -> :sswitch_8
        0x4a -> :sswitch_a
        0x4e -> :sswitch_b
        0x52 -> :sswitch_f
        0x5b -> :sswitch_d
        0x60 -> :sswitch_10
        0x63 -> :sswitch_12
        0x64 -> :sswitch_10
    .end sparse-switch

    .line 785
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public InitCrosstour(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x1b8

    const/16 v4, 0x6e

    const/16 v5, 0x68

    .line 332
    new-instance v0, Lcom/ts/other/ParamButton;

    invoke-direct {v0, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnViewBz:Lcom/ts/other/ParamButton;

    .line 333
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnViewBz:Lcom/ts/other/ParamButton;

    const/16 v1, 0x79

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnViewBz:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_view_bz_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_view_bz_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 335
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnViewBz:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    new-instance v0, Lcom/ts/other/ParamButton;

    invoke-direct {v0, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnViewFj:Lcom/ts/other/ParamButton;

    .line 338
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnViewFj:Lcom/ts/other/ParamButton;

    const/16 v1, 0x7a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnViewFj:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_view_fj_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_view_fj_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 340
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnViewFj:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnViewBz:Lcom/ts/other/ParamButton;

    const/16 v2, 0x2f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 343
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnViewFj:Lcom/ts/other/ParamButton;

    const/16 v2, 0xa4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 344
    return-void
.end method

.method public InitCs75(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 395
    new-instance v0, Lcom/ts/other/ParamButton;

    invoke-direct {v0, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnCs75Mode:Lcom/ts/other/ParamButton;

    .line 396
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnCs75Mode:Lcom/ts/other/ParamButton;

    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 397
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnCs75Mode:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_camera_mode_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_camera_mode_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 398
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnCs75Mode:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnCs75Mode:Lcom/ts/other/ParamButton;

    const/16 v2, 0x64

    const/16 v3, 0x1d1

    const/16 v4, 0x96

    const/16 v5, 0x3c

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 400
    return-void
.end method

.method public InitFord(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x70

    .line 282
    new-instance v0, Lcom/ts/other/ParamButton;

    invoke-direct {v0, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnZoom:Lcom/ts/other/ParamButton;

    .line 283
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnZoom:Lcom/ts/other/ParamButton;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnZoom:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_jnh_search_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_jnh_search_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 285
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnZoom:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnZoom:Lcom/ts/other/ParamButton;

    const/16 v2, 0x53

    const/16 v3, 0x1b8

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 287
    return-void
.end method

.method public InitGS5Mode(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 291
    new-instance v0, Lcom/ts/other/ParamButton;

    invoke-direct {v0, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGS5Mode:Lcom/ts/other/ParamButton;

    .line 292
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGS5Mode:Lcom/ts/other/ParamButton;

    const/16 v1, 0x69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGS5Mode:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_camera_mode_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_camera_mode_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 294
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGS5Mode:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnGS5Mode:Lcom/ts/other/ParamButton;

    const/16 v2, 0x64

    const/16 v3, 0x1d1

    const/16 v4, 0xcf

    const/16 v5, 0x4f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 296
    return-void
.end method

.method public InitGS5Super(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v3, 0x1fc

    const/16 v4, 0x52

    const/16 v5, 0x48

    .line 300
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGS5Cam360:[Lcom/ts/other/ParamButton;

    .line 301
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GS5Cam;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GS5Cam;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mGS5CamData:Lcom/lgb/canmodule/CanDataInfo$GS5Cam;

    .line 304
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v0, 0x5

    if-lt v6, v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGS5Cam360:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v7

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_01_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_01_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 314
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGS5Cam360:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v7

    const/16 v2, 0xb

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 316
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGS5Cam360:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v8

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_03_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_03_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 317
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGS5Cam360:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v8

    const/16 v2, 0x83

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 319
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGS5Cam360:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_02_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_02_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 320
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGS5Cam360:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/16 v2, 0xfc

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 322
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGS5Cam360:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_04_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_04_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 323
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGS5Cam360:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    const/16 v2, 0x174

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 325
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGS5Cam360:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_05_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_05_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 326
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGS5Cam360:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    const/16 v2, 0x1ec

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 327
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGS5Cam360:[Lcom/ts/other/ParamButton;

    new-instance v1, Lcom/ts/other/ParamButton;

    invoke-direct {v1, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v6

    .line 307
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGS5Cam360:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    add-int/lit8 v1, v6, 0x6f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnGS5Cam360:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mListBotView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnGS5Cam360:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method public InitGolfMagoten(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v3, 0x1fc

    const/16 v4, 0x52

    const/16 v5, 0x48

    .line 370
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnMagotenMode:[Lcom/ts/other/ParamButton;

    .line 371
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfCarRvsCameraMode;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfCarRvsCameraMode;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mCameraMode:Lcom/lgb/canmodule/CanDataInfo$GolfCarRvsCameraMode;

    .line 373
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnMagotenMode:[Lcom/ts/other/ParamButton;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnMagotenMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v7

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_05_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_05_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 382
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnMagotenMode:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v7

    const/16 v2, 0x83

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 384
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnMagotenMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v8

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_04_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_04_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 385
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnMagotenMode:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v8

    const/16 v2, 0xfc

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 387
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnMagotenMode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_06_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_06_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 388
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnMagotenMode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/16 v2, 0x174

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 390
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnMagotenMode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_07_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_07_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 391
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnMagotenMode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    const/16 v2, 0x1ec

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 392
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnMagotenMode:[Lcom/ts/other/ParamButton;

    new-instance v1, Lcom/ts/other/ParamButton;

    invoke-direct {v1, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v6

    .line 375
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnMagotenMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    add-int/lit16 v1, v6, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 376
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnMagotenMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mListBotView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnMagotenMode:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method public InitHondaDA(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x1b8

    const/16 v4, 0x6e

    const/16 v5, 0x68

    .line 260
    new-instance v0, Lcom/ts/other/ParamButton;

    invoke-direct {v0, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnViewGj:Lcom/ts/other/ParamButton;

    .line 261
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnViewGj:Lcom/ts/other/ParamButton;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnViewGj:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_view_gj_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_view_gj_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 263
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnViewGj:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    new-instance v0, Lcom/ts/other/ParamButton;

    invoke-direct {v0, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnViewBz:Lcom/ts/other/ParamButton;

    .line 266
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnViewBz:Lcom/ts/other/ParamButton;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnViewBz:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_view_bz_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_view_bz_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 268
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnViewBz:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    new-instance v0, Lcom/ts/other/ParamButton;

    invoke-direct {v0, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnViewFj:Lcom/ts/other/ParamButton;

    .line 271
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnViewFj:Lcom/ts/other/ParamButton;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnViewFj:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_view_fj_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_view_fj_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 273
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnViewFj:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnViewGj:Lcom/ts/other/ParamButton;

    const/16 v2, 0x2f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 276
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnViewBz:Lcom/ts/other/ParamButton;

    const/16 v2, 0xa4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 277
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnViewFj:Lcom/ts/other/ParamButton;

    const/16 v2, 0x119

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 278
    return-void
.end method

.method public InitLiFan(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x1f4

    const/16 v4, 0x52

    const/16 v5, 0x48

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 429
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnLiFanCamMode:[Lcom/ts/other/ParamButton;

    .line 430
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$Lifan_CamMode;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$Lifan_CamMode;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mLiFanCamMode:Lcom/lgb/canmodule/CanDataInfo$Lifan_CamMode;

    .line 432
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnLiFanCamMode:[Lcom/ts/other/ParamButton;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnLiFanCamMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v7

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_05_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_05_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 441
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnLiFanCamMode:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v7

    const/16 v2, 0x28

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 443
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnLiFanCamMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v8

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_04_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gs5_bot_04_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 444
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnLiFanCamMode:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v8

    const/16 v2, 0xa0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 445
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnLiFanCamMode:[Lcom/ts/other/ParamButton;

    new-instance v1, Lcom/ts/other/ParamButton;

    invoke-direct {v1, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v6

    .line 434
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnLiFanCamMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    add-int/lit16 v1, v6, 0xab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 435
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnLiFanCamMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mListBotView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mBtnLiFanCamMode:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public InitRav4(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0xc4

    const/16 v5, 0x6f

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 348
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnRav4Cam360:[Lcom/ts/other/ParamButton;

    .line 349
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnRav4Cam360:[Lcom/ts/other/ParamButton;

    new-instance v1, Lcom/ts/other/ParamButton;

    invoke-direct {v1, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v2

    .line 350
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnRav4Cam360:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v2

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 351
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnRav4Cam360:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setBackgroundColor(I)V

    .line 352
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnRav4Cam360:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnRav4Cam360:[Lcom/ts/other/ParamButton;

    new-instance v1, Lcom/ts/other/ParamButton;

    invoke-direct {v1, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v6

    .line 355
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnRav4Cam360:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 356
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnRav4Cam360:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setBackgroundColor(I)V

    .line 357
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnRav4Cam360:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnRav4Cam360:[Lcom/ts/other/ParamButton;

    new-instance v1, Lcom/ts/other/ParamButton;

    invoke-direct {v1, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v7

    .line 360
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnRav4Cam360:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v7

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 361
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnRav4Cam360:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v7

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setBackgroundColor(I)V

    .line 362
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnRav4Cam360:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v7

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnRav4Cam360:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v2

    const/16 v2, 0x20

    const/16 v3, 0x1e2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 365
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnRav4Cam360:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v6

    const/16 v2, 0x21e

    const/16 v3, 0x1e2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 366
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnRav4Cam360:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v7

    const/16 v2, 0x322

    const/16 v3, 0x1e2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 367
    return-void
.end method

.method public InitTigger7(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 404
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnTigger7Cam:[Lcom/ts/other/ParamButton;

    .line 406
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnTigger7Cam:[Lcom/ts/other/ParamButton;

    array-length v0, v0

    if-lt v7, v0, :cond_0

    .line 413
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 414
    .local v8, "manager":Landroid/view/WindowManager;
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 415
    .local v9, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 416
    iget v11, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 417
    .local v11, "width":I
    iget v6, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 419
    .local v6, "height":I
    int-to-float v0, v11

    mul-float/2addr v0, v2

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    int-to-float v1, v6

    mul-float/2addr v1, v2

    const/high16 v2, 0x44160000    # 600.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v10, v0

    .line 421
    .local v10, "radius":I
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnTigger7Cam:[Lcom/ts/other/ParamButton;

    aget-object v1, v0, v3

    mul-int/lit16 v2, v10, 0x28a

    mul-int/lit16 v4, v10, 0x176

    mul-int/lit8 v5, v10, 0x78

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 422
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnTigger7Cam:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    mul-int/lit16 v2, v10, 0x28a

    mul-int/lit16 v3, v10, 0x1e0

    mul-int/lit16 v4, v10, 0x176

    mul-int/lit8 v5, v10, 0x78

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 423
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnTigger7Cam:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    mul-int/lit16 v2, v10, 0x28a

    mul-int/lit8 v3, v10, 0x78

    mul-int/lit8 v4, v10, 0x78

    mul-int/lit16 v5, v10, 0x168

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 424
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnTigger7Cam:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    mul-int/lit16 v2, v10, 0x388

    mul-int/lit8 v3, v10, 0x78

    mul-int/lit8 v4, v10, 0x78

    mul-int/lit16 v5, v10, 0x168

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/CanCameraUI;->setViewPos(Landroid/view/View;IIII)V

    .line 426
    return-void

    .line 407
    .end local v6    # "height":I
    .end local v8    # "manager":Landroid/view/WindowManager;
    .end local v9    # "outMetrics":Landroid/util/DisplayMetrics;
    .end local v10    # "radius":I
    .end local v11    # "width":I
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnTigger7Cam:[Lcom/ts/other/ParamButton;

    new-instance v1, Lcom/ts/other/ParamButton;

    invoke-direct {v1, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v7

    .line 408
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnTigger7Cam:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v7

    add-int/lit16 v1, v7, 0xa1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 409
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnTigger7Cam:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v7

    invoke-virtual {v0, v3}, Lcom/ts/other/ParamButton;->setBackgroundColor(I)V

    .line 410
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mBtnTigger7Cam:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v7

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 931
    invoke-direct {p0, p1}, Lcom/ts/can/CanCameraUI;->CheckGS5Btn(Z)V

    .line 932
    invoke-virtual {p0, p1}, Lcom/ts/can/CanCameraUI;->CheckBotBtn(Z)V

    .line 933
    invoke-direct {p0, p1}, Lcom/ts/can/CanCameraUI;->CheckMagotenBtn(Z)V

    .line 934
    invoke-direct {p0, p1}, Lcom/ts/can/CanCameraUI;->CheckLiFanBtn(Z)V

    .line 936
    invoke-direct {p0, p1}, Lcom/ts/can/CanCameraUI;->CheckVenuciaT70Btn(Z)V

    .line 937
    invoke-direct {p0, p1}, Lcom/ts/can/CanCameraUI;->CheckHmS7Mode(Z)V

    .line 938
    invoke-direct {p0, p1}, Lcom/ts/can/CanCameraUI;->CheckYg9Mode(Z)V

    .line 939
    return-void
.end method

.method public UserAll()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1377
    iget-boolean v0, p0, Lcom/ts/can/CanCameraUI;->mbResume:Z

    if-nez v0, :cond_1

    .line 1406
    :cond_0
    :goto_0
    return-void

    .line 1381
    :cond_1
    iget v0, p0, Lcom/ts/can/CanCameraUI;->nDelayCheck:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ts/can/CanCameraUI;->nDelayCheck:I

    rem-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_2

    .line 1383
    const-string v0, "CanCameraActivity"

    const-string v1, "UserAll"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ts/main/common/MainSet;->CheckCamSignal(Z)V

    .line 1388
    :cond_2
    invoke-virtual {p0, v2}, Lcom/ts/can/CanCameraUI;->ResetData(Z)V

    .line 1389
    invoke-direct {p0}, Lcom/ts/can/CanCameraUI;->CheckPort()V

    .line 1390
    iget-boolean v0, p0, Lcom/ts/can/CanCameraUI;->mfgShowTrack:Z

    if-eqz v0, :cond_3

    .line 1392
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateEps()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1394
    invoke-virtual {p0}, Lcom/ts/can/CanCameraUI;->updateEps()V

    .line 1398
    :cond_3
    iget-boolean v0, p0, Lcom/ts/can/CanCameraUI;->mfgFullScr:Z

    if-nez v0, :cond_0

    .line 1400
    sget-boolean v0, Lcom/ts/can/CanFunc;->mbRadarUIUpdate:Z

    if-eqz v0, :cond_0

    .line 1402
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/CanFunc;->mbRadarUIUpdate:Z

    .line 1403
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mRightForeRadar:Lcom/ts/can/RadarUIView;

    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mRightRearRadar:Lcom/ts/can/RadarUIView;

    invoke-static {v0, v1}, Lcom/ts/can/CanRadarActivity;->invalidateRadar(Lcom/ts/can/RadarUIView;Lcom/ts/can/RadarUIView;)V

    goto :goto_0
.end method

.method protected findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/ts/can/CanCameraUI;->mLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected initCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 974
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->IsHaveEps()Z

    move-result v0

    .line 975
    .local v0, "isHaveEps":Z
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->IsHaveRadar()Z

    move-result v1

    .line 977
    .local v1, "isHaveRadar":Z
    if-eqz v0, :cond_1

    .line 979
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mBtnShowTrack:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 987
    :goto_0
    if-eqz v1, :cond_2

    .line 989
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mBtnRtShowRadar:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 998
    :goto_1
    invoke-static {}, Lcom/ts/can/CanFunc;->IsCadillacXt51280x480()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1000
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mBtnRtShowRadar:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1001
    iput-boolean v4, p0, Lcom/ts/can/CanCameraUI;->mfgFullScr:Z

    .line 1004
    :cond_0
    return-void

    .line 983
    :cond_1
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mBtnShowTrack:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 984
    iput-boolean v4, p0, Lcom/ts/can/CanCameraUI;->mfgShowTrack:Z

    goto :goto_0

    .line 994
    :cond_2
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mBtnRtShowRadar:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 995
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ts/can/CanCameraUI;->mfgFullScr:Z

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x40

    const/4 v6, 0x2

    const/16 v5, 0x21

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1535
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1536
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 1730
    :cond_0
    :goto_0
    return-void

    .line 1539
    :sswitch_0
    iget-boolean v2, p0, Lcom/ts/can/CanCameraUI;->mfgShowCanBtn:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/ts/can/CanCameraUI;->mfgShowCanBtn:Z

    .line 1540
    iget-boolean v2, p0, Lcom/ts/can/CanCameraUI;->mfgShowCanBtn:Z

    invoke-direct {p0, v2}, Lcom/ts/can/CanCameraUI;->ShowCanBtn(Z)V

    goto :goto_0

    :cond_1
    move v2, v4

    .line 1539
    goto :goto_1

    .line 1544
    :sswitch_1
    invoke-static {}, Lcom/ts/main/common/ScreenSet;->GetInstance()Lcom/ts/main/common/ScreenSet;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/ts/main/common/ScreenSet;->Show(I)V

    goto :goto_0

    .line 1548
    :sswitch_2
    invoke-static {v7, v4}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 1552
    :sswitch_3
    invoke-static {v7, v3}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 1556
    :sswitch_4
    invoke-static {v7, v6}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 1560
    :sswitch_5
    new-instance v1, Lcom/lgb/canmodule/CanDataInfo$FordSet;

    invoke-direct {v1}, Lcom/lgb/canmodule/CanDataInfo$FordSet;-><init>()V

    .line 1561
    .local v1, "set":Lcom/lgb/canmodule/CanDataInfo$FordSet;
    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->FordGetSetup(Lcom/lgb/canmodule/CanDataInfo$FordSet;)V

    .line 1562
    const/16 v2, 0xab

    iget v3, v1, Lcom/lgb/canmodule/CanDataInfo$FordSet;->Zoom:I

    and-int/lit8 v3, v3, 0x1

    rsub-int/lit8 v3, v3, 0x13

    invoke-static {v2, v3}, Lcom/lgb/canmodule/CanJni;->FordCarSet(II)V

    goto :goto_0

    .line 1566
    .end local v1    # "set":Lcom/lgb/canmodule/CanDataInfo$FordSet;
    :sswitch_6
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GqcqCamModeSW()V

    goto :goto_0

    .line 1574
    :sswitch_7
    add-int/lit8 v2, v0, -0x6f

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->GqcqCamModeSet(I)V

    goto :goto_0

    .line 1578
    :sswitch_8
    invoke-static {v4}, Lcom/lgb/canmodule/CanJni;->CrstourCamModeSet(I)V

    goto :goto_0

    .line 1582
    :sswitch_9
    invoke-static {v6}, Lcom/lgb/canmodule/CanJni;->CrstourCamModeSet(I)V

    goto :goto_0

    .line 1586
    :sswitch_a
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->ToyotaGetGear()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 1588
    const/4 v2, 0x4

    invoke-static {v5, v2}, Lcom/lgb/canmodule/CanJni;->ToyotaCarSet(II)V

    goto :goto_0

    .line 1592
    :cond_2
    invoke-static {v5, v6}, Lcom/lgb/canmodule/CanJni;->ToyotaCarSet(II)V

    goto :goto_0

    .line 1597
    :sswitch_b
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->ToyotaGetGear()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 1599
    const/4 v2, 0x7

    invoke-static {v5, v2}, Lcom/lgb/canmodule/CanJni;->ToyotaCarSet(II)V

    goto :goto_0

    .line 1603
    :cond_3
    invoke-static {v5, v4}, Lcom/lgb/canmodule/CanJni;->ToyotaCarSet(II)V

    goto :goto_0

    .line 1608
    :sswitch_c
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->ToyotaGetGear()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1610
    const/4 v2, 0x3

    invoke-static {v5, v2}, Lcom/lgb/canmodule/CanJni;->ToyotaCarSet(II)V

    goto :goto_0

    .line 1618
    :sswitch_d
    const/16 v2, 0x46

    add-int/lit16 v3, v0, -0x8d

    invoke-static {v2, v3}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 1622
    :sswitch_e
    invoke-static {v3}, Lcom/lgb/canmodule/CanJni;->Cs75SetCameraMode(I)V

    goto :goto_0

    .line 1629
    :sswitch_f
    add-int/lit16 v2, v0, -0xa1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->Tigger7CarVedioSet(I)V

    goto/16 :goto_0

    .line 1634
    :sswitch_10
    add-int/lit16 v2, v0, -0xab

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->LifanSetCamMode(I)V

    goto/16 :goto_0

    .line 1638
    :sswitch_11
    invoke-static {v3}, Lcom/lgb/canmodule/CanJni;->CCH2RevCamSet(I)V

    goto/16 :goto_0

    .line 1644
    :sswitch_12
    add-int/lit16 v2, v0, -0xb5

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->CCH2SetCamMode(I)V

    goto/16 :goto_0

    .line 1651
    :sswitch_13
    add-int/lit16 v2, v0, -0xbe

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->X80CameraSet(I)V

    goto/16 :goto_0

    .line 1658
    :sswitch_14
    add-int/lit16 v2, v0, -0xc8

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarCameraSet(I)V

    goto/16 :goto_0

    .line 1661
    :sswitch_15
    const/16 v2, 0xd

    invoke-static {v2, v3}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarSet(II)V

    goto/16 :goto_0

    .line 1668
    :sswitch_16
    add-int/lit16 v2, v0, -0x12c

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->VenuciaCarCamChange(I)V

    goto/16 :goto_0

    .line 1671
    :sswitch_17
    invoke-static {v3}, Lcom/lgb/canmodule/CanJni;->VenuciaCarCamChange(I)V

    goto/16 :goto_0

    .line 1676
    :sswitch_18
    add-int/lit16 v2, v0, -0x190

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->Gs4CarCamSwitch(I)V

    goto/16 :goto_0

    .line 1680
    :sswitch_19
    add-int/lit16 v2, v0, -0x190

    add-int/lit8 v2, v2, 0x5

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->Gs4CarCamSwitch(I)V

    goto/16 :goto_0

    .line 1687
    :sswitch_1a
    add-int/lit16 v2, v0, -0x1f4

    add-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->HmS7CarSet(I)V

    goto/16 :goto_0

    .line 1690
    :sswitch_1b
    invoke-static {v6}, Lcom/lgb/canmodule/CanJni;->HmS7CarSet(I)V

    goto/16 :goto_0

    .line 1693
    :sswitch_1c
    iget-object v2, p0, Lcom/ts/can/CanCameraUI;->mHmS7Set:Lcom/lgb/canmodule/CanDataInfo$HmS7_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HmS7_CarSet;->Fzxzt:I

    if-nez v2, :cond_4

    .line 1694
    const/4 v2, 0x7

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->HmS7CarSet(I)V

    goto/16 :goto_0

    .line 1696
    :cond_4
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->HmS7CarSet(I)V

    goto/16 :goto_0

    .line 1703
    :sswitch_1d
    const/16 v2, 0x60

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 1705
    add-int/lit16 v2, v0, -0x1fe

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->Yg9XbsCarRvsSet(I)V

    goto/16 :goto_0

    .line 1707
    :cond_5
    const/16 v2, 0x64

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1709
    add-int/lit16 v2, v0, -0x1fe

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->Yg9XbsCarRvsSet(I)V

    goto/16 :goto_0

    .line 1717
    :sswitch_1e
    add-int/lit16 v2, v0, -0x208

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->GeelyCarCameraSet(I)V

    goto/16 :goto_0

    .line 1720
    :sswitch_1f
    invoke-static {v3}, Lcom/lgb/canmodule/CanJni;->GeelyCarCameraSet(I)V

    goto/16 :goto_0

    .line 1726
    :sswitch_20
    add-int/lit16 v2, v0, -0x212

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v3}, Lcom/lgb/canmodule/CanJni;->AlsvinCarSet(II)V

    goto/16 :goto_0

    .line 1536
    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_0
        0x64 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_1
        0x68 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6f -> :sswitch_7
        0x70 -> :sswitch_7
        0x71 -> :sswitch_7
        0x72 -> :sswitch_7
        0x73 -> :sswitch_7
        0x79 -> :sswitch_8
        0x7a -> :sswitch_9
        0x83 -> :sswitch_a
        0x84 -> :sswitch_b
        0x85 -> :sswitch_c
        0x8d -> :sswitch_d
        0x8e -> :sswitch_d
        0x8f -> :sswitch_d
        0x90 -> :sswitch_d
        0x97 -> :sswitch_e
        0xa1 -> :sswitch_f
        0xa2 -> :sswitch_f
        0xa3 -> :sswitch_f
        0xa4 -> :sswitch_f
        0xab -> :sswitch_10
        0xac -> :sswitch_10
        0xb4 -> :sswitch_11
        0xb5 -> :sswitch_12
        0xb6 -> :sswitch_12
        0xb7 -> :sswitch_12
        0xbe -> :sswitch_13
        0xbf -> :sswitch_13
        0xc0 -> :sswitch_13
        0xc1 -> :sswitch_13
        0xc8 -> :sswitch_14
        0xc9 -> :sswitch_14
        0xca -> :sswitch_14
        0xcb -> :sswitch_14
        0xcc -> :sswitch_15
        0x12c -> :sswitch_16
        0x12d -> :sswitch_16
        0x12e -> :sswitch_16
        0x12f -> :sswitch_16
        0x130 -> :sswitch_17
        0x190 -> :sswitch_18
        0x191 -> :sswitch_18
        0x192 -> :sswitch_19
        0x193 -> :sswitch_19
        0x1f4 -> :sswitch_1a
        0x1f5 -> :sswitch_1a
        0x1f6 -> :sswitch_1a
        0x1f7 -> :sswitch_1a
        0x1f8 -> :sswitch_1b
        0x1f9 -> :sswitch_1c
        0x1fe -> :sswitch_1d
        0x1ff -> :sswitch_1d
        0x200 -> :sswitch_1d
        0x208 -> :sswitch_1e
        0x209 -> :sswitch_1e
        0x20a -> :sswitch_1e
        0x20b -> :sswitch_1e
        0x20c -> :sswitch_1f
        0x212 -> :sswitch_20
        0x213 -> :sswitch_20
        0x214 -> :sswitch_20
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 967
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/can/CanCameraUI;->mbResume:Z

    .line 969
    invoke-static {}, Lcom/ts/main/common/ScreenSet;->GetInstance()Lcom/ts/main/common/ScreenSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/common/ScreenSet;->Hide()V

    .line 970
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 945
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/can/CanCameraUI;->mbResume:Z

    .line 947
    iput-boolean v1, p0, Lcom/ts/can/CanCameraUI;->mfgShowCanBtn:Z

    .line 948
    iget-boolean v0, p0, Lcom/ts/can/CanCameraUI;->mfgShowCanBtn:Z

    invoke-direct {p0, v0}, Lcom/ts/can/CanCameraUI;->ShowCanBtn(Z)V

    .line 950
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetRadarDis()I

    move-result v0

    invoke-static {v0}, Lcom/ts/can/CanFunc;->i2b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ts/can/CanCameraUI;->mfgFullScr:Z

    .line 951
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCamTrack()I

    move-result v0

    invoke-static {v0}, Lcom/ts/can/CanFunc;->i2b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ts/can/CanCameraUI;->mfgShowTrack:Z

    .line 952
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCamLine()I

    move-result v0

    invoke-static {v0}, Lcom/ts/can/CanFunc;->i2b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ts/can/CanCameraUI;->mfgShowLine:Z

    .line 954
    iget-boolean v0, p0, Lcom/ts/can/CanCameraUI;->mfgShowTrack:Z

    if-eqz v0, :cond_0

    .line 957
    iput-boolean v1, p0, Lcom/ts/can/CanCameraUI;->mfgShowLine:Z

    .line 959
    :cond_0
    invoke-virtual {p0}, Lcom/ts/can/CanCameraUI;->initCamera()V

    .line 960
    invoke-virtual {p0}, Lcom/ts/can/CanCameraUI;->updateEps()V

    .line 961
    invoke-virtual {p0, v1}, Lcom/ts/can/CanCameraUI;->ResetData(Z)V

    .line 962
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v5, 0x42960000    # 75.0f

    const/high16 v4, 0x42000000    # 32.0f

    const/high16 v3, 0x40800000    # 4.0f

    .line 1735
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1736
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/common/MainSet;->IsDIAO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1738
    const/16 v0, 0xfc

    const/4 v1, 0x3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/yyw/ts70xhw/Mcu;->SendxyTouch(IIII)I

    .line 1739
    const-string v0, "CanCameraActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTouch event.getX() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    const-string v0, "CanCameraActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTouch event.getY() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1744
    :cond_1
    const/16 v0, 0xaa

    const/16 v1, 0x55

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/yyw/ts70xhw/Mcu;->SendxyTouch(IIII)I

    .line 1745
    const-string v0, "CanCameraActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTouch event.getX() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    const-string v0, "CanCameraActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTouch event.getY() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setViewPos(Landroid/view/View;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v1, -0x2

    .line 882
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 883
    .local v0, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 884
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 885
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 886
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 887
    return-void
.end method

.method protected setViewPos(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 891
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 892
    .local v0, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 893
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 894
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 895
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 896
    return-void
.end method

.method protected updateEps()V
    .locals 6

    .prologue
    const/16 v5, 0x438

    const/16 v4, 0x2e

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1008
    iget-boolean v1, p0, Lcom/ts/can/CanCameraUI;->mfgFullScr:Z

    if-nez v1, :cond_1

    .line 1010
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mRightRadarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1017
    :goto_0
    iget-boolean v1, p0, Lcom/ts/can/CanCameraUI;->mfgShowLine:Z

    if-eqz v1, :cond_2

    .line 1019
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mEpsLineView:Lcom/ts/can/CameraUIView;

    invoke-virtual {v1, v2}, Lcom/ts/can/CameraUIView;->setVisibility(I)V

    .line 1020
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mEpsLineView:Lcom/ts/can/CameraUIView;

    invoke-virtual {v1, v2}, Lcom/ts/can/CameraUIView;->setCanTurnable(Z)V

    .line 1021
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mEpsLineView:Lcom/ts/can/CameraUIView;

    invoke-virtual {v1}, Lcom/ts/can/CameraUIView;->showCenterLine()V

    .line 1034
    :goto_1
    sget-object v1, Lcom/lgb/canmodule/Can;->mEpsInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_EpsInfo;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_EpsInfo;->Eps:I

    .line 1037
    .local v0, "eps":I
    sget-object v1, Lcom/lgb/canmodule/Can;->mEpsInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_EpsInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_EpsInfo;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/CanCameraUI;->int2Bool(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1039
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "eps = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1041
    const/16 v1, -0x2e

    if-lt v0, v1, :cond_4

    if-gt v0, v4, :cond_4

    .line 1043
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mEpsLineView:Lcom/ts/can/CameraUIView;

    invoke-virtual {v1}, Lcom/ts/can/CameraUIView;->showCenterLine()V

    .line 1067
    :cond_0
    :goto_2
    return-void

    .line 1014
    .end local v0    # "eps":I
    :cond_1
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mRightRadarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1023
    :cond_2
    iget-boolean v1, p0, Lcom/ts/can/CanCameraUI;->mfgShowTrack:Z

    if-eqz v1, :cond_3

    .line 1025
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mEpsLineView:Lcom/ts/can/CameraUIView;

    invoke-virtual {v1, v2}, Lcom/ts/can/CameraUIView;->setVisibility(I)V

    .line 1026
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mEpsLineView:Lcom/ts/can/CameraUIView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ts/can/CameraUIView;->setCanTurnable(Z)V

    goto :goto_1

    .line 1030
    :cond_3
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mEpsLineView:Lcom/ts/can/CameraUIView;

    invoke-virtual {v1, v3}, Lcom/ts/can/CameraUIView;->setVisibility(I)V

    .line 1031
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mEpsLineView:Lcom/ts/can/CameraUIView;

    invoke-virtual {v1, v2}, Lcom/ts/can/CameraUIView;->setCanTurnable(Z)V

    goto :goto_1

    .line 1045
    .restart local v0    # "eps":I
    :cond_4
    if-le v0, v4, :cond_6

    .line 1048
    if-le v0, v5, :cond_5

    .line 1050
    const/16 v0, 0x438

    .line 1053
    :cond_5
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mEpsLineView:Lcom/ts/can/CameraUIView;

    div-int/lit8 v2, v0, 0x2e

    invoke-virtual {v1, v2}, Lcom/ts/can/CameraUIView;->turnLeft(I)V

    goto :goto_2

    .line 1058
    :cond_6
    neg-int v0, v0

    .line 1059
    if-le v0, v5, :cond_7

    .line 1061
    const/16 v0, 0x438

    .line 1064
    :cond_7
    iget-object v1, p0, Lcom/ts/can/CanCameraUI;->mEpsLineView:Lcom/ts/can/CameraUIView;

    div-int/lit8 v2, v0, 0x2e

    invoke-virtual {v1, v2}, Lcom/ts/can/CameraUIView;->turnRight(I)V

    goto :goto_2
.end method

.method public userPaint(Lcom/ts/other/CustomImgView;Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 1
    .param p1, "view"    # Lcom/ts/other/CustomImgView;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1142
    const/4 v0, 0x0

    return v0
.end method
