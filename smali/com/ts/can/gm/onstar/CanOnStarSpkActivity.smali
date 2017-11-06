.class public Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanOnStarSpkActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_BKSP:I = 0x23

.field public static final ITEM_CALL:I = 0x20

.field public static final ITEM_HANGUP:I = 0x21

.field public static final ITEM_NUM0:I = 0x10

.field public static final ITEM_NUM9:I = 0x19

.field public static final ITEM_NUMJ:I = 0x1b

.field public static final ITEM_NUMX:I = 0x1a

.field public static final ITEM_PWROFF:I = 0x22

.field public static final TAG:Ljava/lang/String; = "CanOnStarSpkActivity"

.field protected static final mNumArrDn:[I

.field protected static final mNumArrUp:[I

.field private static mStrNo:Ljava/lang/String;

.field private static mThis:Landroid/app/Activity;


# instance fields
.field protected mBtnBackSp:Lcom/ts/other/ParamButton;

.field protected mBtnCall:Lcom/ts/other/ParamButton;

.field protected mBtnHangup:Lcom/ts/other/ParamButton;

.field protected mBtnNum:[Lcom/ts/other/ParamButton;

.field protected mBtnPWROff:Lcom/ts/other/ParamButton;

.field protected mImgCall:Lcom/ts/other/CustomImgView;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mPhoneData:Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;

.field private mStaData:Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;

.field protected mTvCall:Lcom/ts/other/CustomTextView;

.field protected mTvInput:Lcom/ts/other/CustomTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 42
    sget v1, Lcom/ts/MainUI/R$drawable;->can_an_num01_up:I

    aput v1, v0, v3

    .line 43
    sget v1, Lcom/ts/MainUI/R$drawable;->can_an_num02_up:I

    aput v1, v0, v4

    .line 44
    sget v1, Lcom/ts/MainUI/R$drawable;->can_an_num03_up:I

    aput v1, v0, v5

    .line 45
    sget v1, Lcom/ts/MainUI/R$drawable;->can_an_num04_up:I

    aput v1, v0, v6

    .line 46
    sget v1, Lcom/ts/MainUI/R$drawable;->can_an_num05_up:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 47
    sget v2, Lcom/ts/MainUI/R$drawable;->can_an_num06_up:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 48
    sget v2, Lcom/ts/MainUI/R$drawable;->can_an_num07_up:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 49
    sget v2, Lcom/ts/MainUI/R$drawable;->can_an_num08_up:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 50
    sget v2, Lcom/ts/MainUI/R$drawable;->can_an_num09_up:I

    aput v2, v0, v1

    .line 40
    sput-object v0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mNumArrUp:[I

    .line 54
    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 55
    sget v1, Lcom/ts/MainUI/R$drawable;->can_an_num01_dn:I

    aput v1, v0, v3

    .line 56
    sget v1, Lcom/ts/MainUI/R$drawable;->can_an_num02_dn:I

    aput v1, v0, v4

    .line 57
    sget v1, Lcom/ts/MainUI/R$drawable;->can_an_num03_dn:I

    aput v1, v0, v5

    .line 58
    sget v1, Lcom/ts/MainUI/R$drawable;->can_an_num04_dn:I

    aput v1, v0, v6

    .line 59
    sget v1, Lcom/ts/MainUI/R$drawable;->can_an_num05_dn:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 60
    sget v2, Lcom/ts/MainUI/R$drawable;->can_an_num06_dn:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 61
    sget v2, Lcom/ts/MainUI/R$drawable;->can_an_num07_dn:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 62
    sget v2, Lcom/ts/MainUI/R$drawable;->can_an_num08_dn:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 63
    sget v2, Lcom/ts/MainUI/R$drawable;->can_an_num09_dn:I

    aput v2, v0, v1

    .line 53
    sput-object v0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mNumArrDn:[I

    .line 76
    const-string v0, ""

    sput-object v0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStrNo:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mThis:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 67
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    .line 78
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;

    .line 79
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mPhoneData:Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;

    .line 27
    return-void
.end method

.method public static HandleStaChange(II)V
    .locals 2
    .param p0, "NewSta"    # I
    .param p1, "OldSta"    # I

    .prologue
    .line 336
    if-lez p0, :cond_1

    .line 338
    sget-object v1, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mThis:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 340
    invoke-static {}, Lcom/ts/can/CanFunc;->IsCamMode()I

    move-result v1

    invoke-static {v1}, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->i2b(I)Z

    move-result v0

    .line 341
    .local v0, "isCamMode":Z
    if-nez v0, :cond_0

    .line 343
    const-class v1, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;

    invoke-static {v1}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    .line 347
    .end local v0    # "isCamMode":Z
    :cond_0
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/MainUI/Evc;->evol_aux_hold()V

    .line 362
    :goto_0
    return-void

    .line 351
    :cond_1
    const-string v1, ""

    sput-object v1, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStrNo:Ljava/lang/String;

    .line 352
    if-lez p1, :cond_2

    .line 354
    sget-object v1, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mThis:Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 356
    sget-object v1, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mThis:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 360
    :cond_2
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/MainUI/Evc;->evol_aux_release()V

    goto :goto_0
.end method

.method private ResetData(Z)V
    .locals 4
    .param p1, "check"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 185
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;

    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mPhoneData:Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GMGetOnStar(Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;)V

    .line 186
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;

    iput v3, v0, Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;->Update:I

    .line 191
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;->Sta:I

    packed-switch v0, :pswitch_data_0

    .line 209
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mImgCall:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0, v3}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 215
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mPhoneData:Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mPhoneData:Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mPhoneData:Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;

    iput v3, v0, Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;->Update:I

    .line 220
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mTvCall:Lcom/ts/other/CustomTextView;

    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mPhoneData:Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;->szNum:[B

    invoke-static {v1}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_3
    if-nez p1, :cond_4

    .line 226
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;->Sta:I

    if-nez v0, :cond_4

    .line 228
    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->GMOnStarCtrl(I)V

    .line 232
    :cond_4
    return-void

    .line 194
    :pswitch_0
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mImgCall:Lcom/ts/other/CustomImgView;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_an_phone1:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 195
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mImgCall:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomImgView;->Show(Z)V

    goto :goto_0

    .line 199
    :pswitch_1
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mImgCall:Lcom/ts/other/CustomImgView;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_an_phone2:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 200
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mImgCall:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomImgView;->Show(Z)V

    goto :goto_0

    .line 204
    :pswitch_2
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mImgCall:Lcom/ts/other/CustomImgView;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_an_phone:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 205
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mImgCall:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomImgView;->Show(Z)V

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private UpdateInputText()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mTvInput:Lcom/ts/other/CustomTextView;

    sget-object v1, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStrNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->ResetData(Z)V

    .line 325
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 332
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x1b

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 246
    .local v0, "Id":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    if-gt v0, v4, :cond_4

    .line 248
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;->Sta:I

    if-ne v1, v2, :cond_0

    .line 250
    add-int/lit8 v1, v0, -0x10

    or-int/lit16 v1, v1, 0x80

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->GMOnStarCtrl(I)V

    .line 253
    :cond_0
    const/16 v1, 0x1a

    if-ne v1, v0, :cond_2

    .line 255
    sget-object v1, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStrNo:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "*"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStrNo:Ljava/lang/String;

    .line 266
    :goto_0
    invoke-direct {p0}, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->UpdateInputText()V

    .line 316
    :cond_1
    :goto_1
    return-void

    .line 257
    :cond_2
    if-ne v4, v0, :cond_3

    .line 259
    sget-object v1, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStrNo:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStrNo:Ljava/lang/String;

    goto :goto_0

    .line 263
    :cond_3
    sget-object v1, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStrNo:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%c"

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x30

    add-int/lit8 v4, v4, -0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStrNo:Ljava/lang/String;

    goto :goto_0

    .line 270
    :cond_4
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 273
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;->Sta:I

    if-ne v2, v1, :cond_5

    .line 275
    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->GMOnStarCtrl(I)V

    goto :goto_1

    .line 279
    :cond_5
    sget-object v1, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStrNo:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStrNo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 281
    sget-object v1, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStrNo:Ljava/lang/String;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->GMOnStarDial(Ljava/lang/String;)V

    goto :goto_1

    .line 287
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;->Sta:I

    if-le v1, v3, :cond_6

    .line 289
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->GMOnStarCtrl(I)V

    .line 291
    :cond_6
    const-string v1, ""

    sput-object v1, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStrNo:Ljava/lang/String;

    .line 292
    invoke-direct {p0}, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->UpdateInputText()V

    goto :goto_1

    .line 296
    :pswitch_2
    invoke-static {v5}, Lcom/lgb/canmodule/CanJni;->GMOnStarCtrl(I)V

    goto :goto_1

    .line 300
    :pswitch_3
    sget-object v1, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStrNo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_7

    .line 302
    const-string v1, ""

    sput-object v1, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStrNo:Ljava/lang/String;

    .line 308
    :goto_2
    invoke-direct {p0}, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->UpdateInputText()V

    goto/16 :goto_1

    .line 306
    :cond_7
    sget-object v1, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStrNo:Ljava/lang/String;

    sget-object v2, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStrNo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mStrNo:Ljava/lang/String;

    goto :goto_2

    .line 270
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x351

    const/16 v9, 0x1b5

    const/16 v8, 0xb

    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    sget v1, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->setContentView(I)V

    .line 92
    new-instance v1, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v1, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 93
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x11

    const/16 v3, 0xe

    sget v4, Lcom/ts/MainUI/R$drawable;->can_an_bg:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x201

    invoke-virtual {v2, v3, v9}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v1, v6

    .line 104
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v6

    sget v2, Lcom/ts/MainUI/R$drawable;->can_an_num00_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_an_num00_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 105
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v6

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v6

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 108
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x15c

    invoke-virtual {v2, v3, v9}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v1, v7

    .line 109
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v7

    sget v2, Lcom/ts/MainUI/R$drawable;->can_an_asterisk_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_an_asterisk_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 110
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v7

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v7

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 113
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x2a9

    invoke-virtual {v2, v3, v9}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v1, v8

    .line 114
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v8

    sget v2, Lcom/ts/MainUI/R$drawable;->can_an_well_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_an_well_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 115
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v8

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v8

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 118
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x7d

    invoke-virtual {v1, v10, v2}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnCall:Lcom/ts/other/ParamButton;

    .line 119
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnCall:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_an_call_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_an_call_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 120
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnCall:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnCall:Lcom/ts/other/ParamButton;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 123
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x108

    invoke-virtual {v1, v10, v2}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnHangup:Lcom/ts/other/ParamButton;

    .line 124
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnHangup:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_an_hand_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_an_hand_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 125
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnHangup:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnHangup:Lcom/ts/other/ParamButton;

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 128
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x194

    invoke-virtual {v1, v10, v2}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnPWROff:Lcom/ts/other/ParamButton;

    .line 129
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnPWROff:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_an_off_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_an_off_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 130
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnPWROff:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnPWROff:Lcom/ts/other/ParamButton;

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 133
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x395

    const/16 v3, 0x13

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnBackSp:Lcom/ts/other/ParamButton;

    .line 134
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnBackSp:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_an_del_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_an_del_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 135
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnBackSp:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnBackSp:Lcom/ts/other/ParamButton;

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 138
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x6a

    const/16 v3, 0x73

    const/16 v4, 0x7b

    const/16 v5, 0x6a

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mImgCall:Lcom/ts/other/CustomImgView;

    .line 140
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x15d

    const/16 v3, 0x13

    const/16 v4, 0x22c

    const/16 v5, 0x4a

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mTvInput:Lcom/ts/other/CustomTextView;

    .line 141
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mTvInput:Lcom/ts/other/CustomTextView;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 142
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mTvInput:Lcom/ts/other/CustomTextView;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 143
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mTvInput:Lcom/ts/other/CustomTextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 144
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mTvInput:Lcom/ts/other/CustomTextView;

    invoke-virtual {v1}, Lcom/ts/other/CustomTextView;->setSingleLine()V

    .line 146
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x1d

    const/16 v3, 0x149

    const/16 v4, 0x116

    const/16 v5, 0x76

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mTvCall:Lcom/ts/other/CustomTextView;

    .line 147
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mTvCall:Lcom/ts/other/CustomTextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 148
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mTvCall:Lcom/ts/other/CustomTextView;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 149
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mTvCall:Lcom/ts/other/CustomTextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 158
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v4, v0, 0x3

    mul-int/lit16 v4, v4, 0xa5

    add-int/lit16 v4, v4, 0x15c

    div-int/lit8 v5, v0, 0x3

    mul-int/lit8 v5, v5, 0x68

    add-int/lit8 v5, v5, 0x7c

    invoke-virtual {v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v3

    aput-object v3, v1, v2

    .line 98
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    sget-object v2, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mNumArrUp:[I

    aget v2, v2, v0

    sget-object v3, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mNumArrDn:[I

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 99
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v1, p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    add-int/lit8 v2, v0, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 176
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 177
    sput-object v1, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mThis:Landroid/app/Activity;

    .line 178
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 165
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->ResetData(Z)V

    .line 167
    invoke-direct {p0}, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->UpdateInputText()V

    .line 168
    sput-object p0, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->mThis:Landroid/app/Activity;

    .line 169
    return-void
.end method
