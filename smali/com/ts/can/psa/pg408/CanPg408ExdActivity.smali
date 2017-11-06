.class public Lcom/ts/can/psa/pg408/CanPg408ExdActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanPg408ExdActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_FILE_DN:I = 0x5

.field public static final ITEM_FILE_UP:I = 0x4

.field public static final ITEM_NEXT:I = 0x3

.field public static final ITEM_PLAY:I = 0x1

.field public static final ITEM_PREV:I = 0x0

.field public static final ITEM_STOP:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanPg408ExdActivity"

.field protected static mBtInfo:Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;

.field protected static mOldBtInfo:Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;

.field protected static mfgExit:Z

.field protected static mfgThis:Z


# instance fields
.field protected mBtnFileDn:Lcom/ts/other/ParamButton;

.field protected mBtnFileUp:Lcom/ts/other/ParamButton;

.field protected mBtnNext:Lcom/ts/other/ParamButton;

.field protected mBtnPlay:Lcom/ts/other/ParamButton;

.field protected mBtnPrev:Lcom/ts/other/ParamButton;

.field protected mBtnStop:Lcom/ts/other/ParamButton;

.field protected mImgDevMode:Lcom/ts/other/CustomImgView;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mStaArr:[Ljava/lang/String;

.field protected mTxtTime:Lcom/ts/other/CustomTextView;

.field protected mTxtTrack:Lcom/ts/other/CustomTextView;

.field protected mTxtUsbSta:Lcom/ts/other/CustomTextView;

.field protected mUsbInfo:Lcom/lgb/canmodule/CanDataInfo$PgUSBInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;-><init>()V

    sput-object v0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mBtInfo:Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;

    .line 52
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;-><init>()V

    sput-object v0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mOldBtInfo:Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;

    .line 55
    sput-boolean v1, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mfgExit:Z

    .line 56
    sput-boolean v1, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mfgThis:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 53
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PgUSBInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PgUSBInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mUsbInfo:Lcom/lgb/canmodule/CanDataInfo$PgUSBInfo;

    .line 59
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 60
    const-string v2, "USB\u6ca1\u6709\u8fde\u63a5"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 61
    const-string v2, "\u6b63\u5728\u8bfb\u53d6USB"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 62
    const-string v2, "\u64ad\u653e"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 63
    const-string v2, "\u6682\u505c"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 64
    const-string v2, "\u5feb\u8fdb"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 65
    const-string v2, "\u5feb\u9000"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mStaArr:[Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static DealDevEvent()V
    .locals 5

    .prologue
    .line 260
    const/4 v1, 0x0

    .line 261
    .local v1, "fgExit":Z
    const/4 v0, 0x0

    .line 262
    .local v0, "fgEnter":Z
    sget-object v2, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mBtInfo:Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->Pg408GetBtInfo(Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;)V

    .line 263
    sget-object v2, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mOldBtInfo:Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;->ubSta:I

    sget-object v3, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mBtInfo:Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;->ubSta:I

    if-eq v2, v3, :cond_0

    .line 265
    sget-object v2, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mBtInfo:Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;->ubSta:I

    if-eqz v2, :cond_2

    .line 267
    const/4 v0, 0x1

    .line 268
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/MainUI/Evc;->evol_aux_hold()V

    .line 277
    :cond_0
    :goto_0
    const-string v2, "CanPg408ExdActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DealDevEvent enter = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exit = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    if-eqz v0, :cond_3

    .line 281
    sget-boolean v2, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mfgThis:Z

    if-nez v2, :cond_1

    .line 283
    invoke-static {}, Lcom/ts/can/CanFunc;->IsCamMode()I

    move-result v2

    if-nez v2, :cond_1

    .line 285
    const-class v2, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;

    invoke-static {v2}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    .line 300
    :cond_1
    :goto_1
    sget-object v2, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mOldBtInfo:Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;

    sget-object v3, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mBtInfo:Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;->ubSta:I

    iput v3, v2, Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;->ubSta:I

    .line 301
    return-void

    .line 272
    :cond_2
    const/4 v1, 0x1

    .line 273
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/MainUI/Evc;->evol_aux_release()V

    goto :goto_0

    .line 289
    :cond_3
    if-eqz v1, :cond_1

    .line 291
    sget-boolean v2, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mfgThis:Z

    if-eqz v2, :cond_1

    .line 293
    const/16 v2, 0xc

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 295
    const/4 v2, 0x1

    sput-boolean v2, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mfgExit:Z

    goto :goto_1
.end method

.method private ResetData(Z)V
    .locals 7
    .param p1, "check"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    sget-boolean v0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mfgExit:Z

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->finish()V

    .line 168
    sput-boolean v2, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mfgExit:Z

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    sget-object v0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mBtInfo:Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    if-eqz p1, :cond_2

    sget-object v0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mBtInfo:Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;->Update:I

    invoke-static {v0}, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    :cond_2
    sget-object v0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mBtInfo:Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;->Update:I

    .line 178
    sget-object v0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mBtInfo:Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;->ubSta:I

    if-eqz v0, :cond_5

    .line 180
    iget-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mImgDevMode:Lcom/ts/other/CustomImgView;

    sget v3, Lcom/ts/MainUI/R$drawable;->original_car_call:I

    invoke-virtual {v0, v3}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 187
    :goto_1
    sget-object v0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mBtInfo:Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;->ubSta:I

    if-nez v0, :cond_6

    move v0, v1

    :goto_2
    invoke-direct {p0, v0}, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->ShowUsb(Z)V

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mUsbInfo:Lcom/lgb/canmodule/CanDataInfo$PgUSBInfo;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->Pg408GetUsbInfo(Lcom/lgb/canmodule/CanDataInfo$PgUSBInfo;)V

    .line 192
    iget-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mUsbInfo:Lcom/lgb/canmodule/CanDataInfo$PgUSBInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$PgUSBInfo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mUsbInfo:Lcom/lgb/canmodule/CanDataInfo$PgUSBInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$PgUSBInfo;->Update:I

    invoke-static {v0}, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    :cond_4
    iget-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mUsbInfo:Lcom/lgb/canmodule/CanDataInfo$PgUSBInfo;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$PgUSBInfo;->Update:I

    .line 197
    iget-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mTxtTime:Lcom/ts/other/CustomTextView;

    const-string v3, "%02d:%02d"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mUsbInfo:Lcom/lgb/canmodule/CanDataInfo$PgUSBInfo;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$PgUSBInfo;->ubMin:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mUsbInfo:Lcom/lgb/canmodule/CanDataInfo$PgUSBInfo;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$PgUSBInfo;->ubSec:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mTxtTrack:Lcom/ts/other/CustomTextView;

    const-string v3, "%02d:%02d"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mUsbInfo:Lcom/lgb/canmodule/CanDataInfo$PgUSBInfo;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$PgUSBInfo;->uwCur:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mUsbInfo:Lcom/lgb/canmodule/CanDataInfo$PgUSBInfo;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$PgUSBInfo;->uwTotal:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mTxtUsbSta:Lcom/ts/other/CustomTextView;

    const-string v3, "%s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mStaArr:[Ljava/lang/String;

    iget-object v5, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mUsbInfo:Lcom/lgb/canmodule/CanDataInfo$PgUSBInfo;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$PgUSBInfo;->ubSta:I

    aget-object v4, v4, v5

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 184
    :cond_5
    iget-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mImgDevMode:Lcom/ts/other/CustomImgView;

    sget v3, Lcom/ts/MainUI/R$drawable;->original_car_usb:I

    invoke-virtual {v0, v3}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_6
    move v0, v2

    .line 187
    goto/16 :goto_2
.end method

.method private ShowUsb(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 152
    iget-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mBtnPrev:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 153
    iget-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mBtnPlay:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 154
    iget-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mBtnStop:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 155
    iget-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mBtnNext:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 156
    iget-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mTxtTime:Lcom/ts/other/CustomTextView;

    invoke-virtual {v0, p1}, Lcom/ts/other/CustomTextView;->ShowHide(Z)V

    .line 157
    iget-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mBtnFileUp:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 158
    iget-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mBtnFileDn:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 159
    iget-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mTxtTrack:Lcom/ts/other/CustomTextView;

    invoke-virtual {v0, p1}, Lcom/ts/other/CustomTextView;->ShowHide(Z)V

    .line 160
    iget-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mTxtUsbSta:Lcom/ts/other/CustomTextView;

    invoke-virtual {v0, p1}, Lcom/ts/other/CustomTextView;->ShowHide(Z)V

    .line 161
    return-void
.end method


# virtual methods
.method protected AddBtn(IIIII)Lcom/ts/other/ParamButton;
    .locals 2
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "up"    # I
    .param p5, "dn"    # I

    .prologue
    .line 134
    iget-object v1, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 135
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-virtual {v0, p4, p5}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 138
    return-object v0
.end method

.method protected AddTxtLt(IIII)Lcom/ts/other/CustomTextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 143
    iget-object v1, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    .line 144
    .local v0, "temp":Lcom/ts/other/CustomTextView;
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 146
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 147
    return-object v0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->ResetData(Z)V

    .line 250
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 256
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 212
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 241
    :goto_0
    return-void

    .line 215
    :pswitch_0
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->Pg408SetUsbCtrl(I)V

    goto :goto_0

    .line 219
    :pswitch_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->Pg408SetUsbCtrl(I)V

    goto :goto_0

    .line 223
    :pswitch_2
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->Pg408SetUsbCtrl(I)V

    goto :goto_0

    .line 227
    :pswitch_3
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->Pg408SetUsbCtrl(I)V

    goto :goto_0

    .line 231
    :pswitch_4
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->Pg408SetUsbCtrl(I)V

    goto :goto_0

    .line 235
    :pswitch_5
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->Pg408SetUsbCtrl(I)V

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x64

    const/16 v8, 0xc8

    const/16 v7, 0x26

    const/16 v6, 0x17

    const/16 v3, 0x1ab

    .line 74
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->setContentView(I)V

    .line 78
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 80
    const/4 v1, 0x0

    const/16 v2, 0x101

    sget v4, Lcom/ts/MainUI/R$drawable;->original_car_seekup_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->original_car_seekup_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mBtnPrev:Lcom/ts/other/ParamButton;

    .line 81
    const/4 v1, 0x1

    const/16 v2, 0x18c

    sget v4, Lcom/ts/MainUI/R$drawable;->original_car_play_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->original_car_play_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mBtnPlay:Lcom/ts/other/ParamButton;

    .line 82
    const/4 v1, 0x2

    const/16 v2, 0x218

    sget v4, Lcom/ts/MainUI/R$drawable;->original_car_stop_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->original_car_stop_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mBtnStop:Lcom/ts/other/ParamButton;

    .line 83
    const/4 v1, 0x3

    const/16 v2, 0x2a3

    sget v4, Lcom/ts/MainUI/R$drawable;->original_car_seekdn_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->original_car_seekdn_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mBtnNext:Lcom/ts/other/ParamButton;

    .line 84
    const/4 v1, 0x4

    const/16 v2, 0x76

    sget v4, Lcom/ts/MainUI/R$drawable;->original_car_foldup_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->original_car_foldup_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mBtnFileUp:Lcom/ts/other/ParamButton;

    .line 85
    const/4 v1, 0x5

    const/16 v2, 0x32e

    sget v4, Lcom/ts/MainUI/R$drawable;->original_car_folddn_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->original_car_folddn_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mBtnFileDn:Lcom/ts/other/ParamButton;

    .line 87
    iget-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x1d2

    const/16 v2, 0x4f

    const/16 v3, 0xfc

    invoke-virtual {v0, v1, v2, v9, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mImgDevMode:Lcom/ts/other/CustomImgView;

    .line 88
    iget-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mImgDevMode:Lcom/ts/other/CustomImgView;

    sget v1, Lcom/ts/MainUI/R$drawable;->original_car_usb:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 90
    const/16 v0, 0x190

    invoke-virtual {p0, v0, v6, v8, v7}, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->AddTxtLt(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mTxtTime:Lcom/ts/other/CustomTextView;

    .line 93
    const/16 v0, 0x320

    invoke-virtual {p0, v0, v6, v8, v7}, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->AddTxtLt(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mTxtTrack:Lcom/ts/other/CustomTextView;

    .line 96
    invoke-virtual {p0, v9, v6, v8, v7}, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->AddTxtLt(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mTxtUsbSta:Lcom/ts/other/CustomTextView;

    .line 98
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
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 126
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mfgThis:Z

    .line 129
    const-string v0, "CanPg408ExdActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 105
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->ResetData(Z)V

    .line 107
    const-string v0, "CanPg408ExdActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mBtInfo:Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;->ubSta:I

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 115
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->mfgThis:Z

    .line 117
    return-void
.end method
