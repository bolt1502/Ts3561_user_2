.class public Lcom/ts/can/fiat/CanFiatAllExdActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanFiatAllExdActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_NEXT:I = 0x3

.field public static final ITEM_PLAY:I = 0x1

.field public static final ITEM_PREV:I = 0x0

.field public static final ITEM_STOP:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanFiatAllExdActivity"

.field protected static mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

.field protected static mOldDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

.field protected static mfgExit:Z

.field protected static mfgThis:Z


# instance fields
.field protected mBtnNext:Lcom/ts/other/ParamButton;

.field protected mBtnPlay:Lcom/ts/other/ParamButton;

.field protected mBtnPrev:Lcom/ts/other/ParamButton;

.field protected mBtnStop:Lcom/ts/other/ParamButton;

.field protected mImgDevMode:Lcom/ts/other/CustomImgView;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mTimeData:Lcom/lgb/canmodule/CanDataInfo$FiatUsbTime;

.field protected mTxtTime:Lcom/ts/other/CustomTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;-><init>()V

    sput-object v0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mOldDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    .line 47
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;-><init>()V

    sput-object v0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    .line 49
    sput-boolean v1, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mfgExit:Z

    .line 50
    sput-boolean v1, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mfgThis:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 45
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$FiatUsbTime;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$FiatUsbTime;-><init>()V

    iput-object v0, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$FiatUsbTime;

    .line 27
    return-void
.end method

.method public static DealDevEvent()V
    .locals 5

    .prologue
    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, "fgExit":Z
    const/4 v0, 0x0

    .line 228
    .local v0, "fgEnter":Z
    sget-object v2, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->FiatAllGetDevInfo(Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;)V

    .line 229
    sget-object v2, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mOldDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Voice:I

    sget-object v3, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Voice:I

    if-eq v2, v3, :cond_0

    .line 231
    sget-object v2, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Voice:I

    if-eqz v2, :cond_2

    .line 233
    const/4 v0, 0x1

    .line 234
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/MainUI/Evc;->evol_aux_hold()V

    .line 243
    :cond_0
    :goto_0
    sget-object v2, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mOldDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Phone:I

    sget-object v3, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Phone:I

    if-eq v2, v3, :cond_4

    .line 245
    sget-object v2, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Phone:I

    if-eqz v2, :cond_3

    .line 247
    const/4 v0, 0x1

    .line 248
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/MainUI/Evc;->evol_aux_hold()V

    .line 261
    :goto_1
    const-string v2, "CanFiatAllExdActivity"

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

    .line 263
    if-eqz v0, :cond_5

    .line 265
    sget-boolean v2, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mfgThis:Z

    if-nez v2, :cond_1

    .line 267
    invoke-static {}, Lcom/ts/can/CanFunc;->IsCamMode()I

    move-result v2

    if-nez v2, :cond_1

    .line 269
    const-class v2, Lcom/ts/can/fiat/CanFiatAllExdActivity;

    invoke-static {v2}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    .line 284
    :cond_1
    :goto_2
    sget-object v2, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mOldDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    sget-object v3, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Voice:I

    iput v3, v2, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Voice:I

    .line 285
    sget-object v2, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mOldDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    sget-object v3, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Phone:I

    iput v3, v2, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Phone:I

    .line 286
    sget-object v2, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mOldDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    sget-object v3, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->UsbSta:I

    iput v3, v2, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->UsbSta:I

    .line 287
    return-void

    .line 238
    :cond_2
    const/4 v1, 0x1

    .line 239
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/MainUI/Evc;->evol_aux_release()V

    goto :goto_0

    .line 252
    :cond_3
    const/4 v1, 0x1

    .line 253
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/MainUI/Evc;->evol_aux_release()V

    goto :goto_1

    .line 256
    :cond_4
    sget-object v2, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mOldDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->UsbSta:I

    sget-object v2, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->UsbSta:I

    goto :goto_1

    .line 273
    :cond_5
    if-eqz v1, :cond_1

    .line 275
    sget-boolean v2, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mfgThis:Z

    if-eqz v2, :cond_1

    .line 277
    const/16 v2, 0xc

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 279
    const/4 v2, 0x1

    sput-boolean v2, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mfgExit:Z

    goto :goto_2
.end method

.method private ResetData(Z)V
    .locals 6
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    sget-boolean v0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mfgExit:Z

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/ts/can/fiat/CanFiatAllExdActivity;->finish()V

    .line 141
    sput-boolean v1, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mfgExit:Z

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    sget-object v0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/fiat/CanFiatAllExdActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    if-eqz p1, :cond_2

    sget-object v0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Update:I

    invoke-static {v0}, Lcom/ts/can/fiat/CanFiatAllExdActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    :cond_2
    sget-object v0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Update:I

    .line 150
    sget-object v0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Voice:I

    if-eqz v0, :cond_5

    .line 152
    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mImgDevMode:Lcom/ts/other/CustomImgView;

    sget v3, Lcom/ts/MainUI/R$drawable;->original_car_mike:I

    invoke-virtual {v0, v3}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 163
    :goto_1
    sget-object v0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Voice:I

    if-nez v0, :cond_7

    sget-object v0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Phone:I

    if-nez v0, :cond_7

    move v0, v1

    :goto_2
    invoke-direct {p0, v0}, Lcom/ts/can/fiat/CanFiatAllExdActivity;->ShowUsb(Z)V

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$FiatUsbTime;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->FiatAllGetUSBTime(Lcom/lgb/canmodule/CanDataInfo$FiatUsbTime;)V

    .line 168
    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$FiatUsbTime;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FiatUsbTime;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/fiat/CanFiatAllExdActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$FiatUsbTime;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FiatUsbTime;->Update:I

    invoke-static {v0}, Lcom/ts/can/fiat/CanFiatAllExdActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$FiatUsbTime;

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$FiatUsbTime;->Update:I

    .line 173
    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mTxtTime:Lcom/ts/other/CustomTextView;

    const-string v3, "%02d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$FiatUsbTime;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$FiatUsbTime;->Min:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v1, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$FiatUsbTime;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FiatUsbTime;->Sec:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 154
    :cond_5
    sget-object v0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Phone:I

    if-eqz v0, :cond_6

    .line 156
    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mImgDevMode:Lcom/ts/other/CustomImgView;

    sget v3, Lcom/ts/MainUI/R$drawable;->original_car_call:I

    invoke-virtual {v0, v3}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    goto :goto_1

    .line 160
    :cond_6
    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mImgDevMode:Lcom/ts/other/CustomImgView;

    sget v3, Lcom/ts/MainUI/R$drawable;->original_car_usb:I

    invoke-virtual {v0, v3}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    goto :goto_1

    :cond_7
    move v0, v2

    .line 163
    goto :goto_2
.end method

.method private ShowUsb(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 128
    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mBtnPrev:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 129
    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mBtnPlay:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 130
    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mBtnStop:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 131
    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mBtnNext:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 132
    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mTxtTime:Lcom/ts/other/CustomTextView;

    invoke-virtual {v0, p1}, Lcom/ts/other/CustomTextView;->ShowHide(Z)V

    .line 133
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
    .line 110
    iget-object v1, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 111
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {v0, p4, p5}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 114
    return-object v0
.end method

.method protected AddTxtLt(IIII)Lcom/ts/other/CustomTextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 119
    iget-object v1, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    .line 120
    .local v0, "temp":Lcom/ts/other/CustomTextView;
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 122
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 123
    return-object v0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/fiat/CanFiatAllExdActivity;->ResetData(Z)V

    .line 216
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 222
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 186
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 207
    :goto_0
    return-void

    .line 189
    :pswitch_0
    invoke-static {}, Lcom/ts/can/CanIF;->FiatAllPrev()V

    goto :goto_0

    .line 193
    :pswitch_1
    invoke-static {}, Lcom/ts/can/CanIF;->FiatAllPlay()V

    goto :goto_0

    .line 197
    :pswitch_2
    invoke-static {}, Lcom/ts/can/CanIF;->FiatAllStop()V

    goto :goto_0

    .line 201
    :pswitch_3
    invoke-static {}, Lcom/ts/can/CanIF;->FiatAllNext()V

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x1ab

    .line 58
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/fiat/CanFiatAllExdActivity;->setContentView(I)V

    .line 62
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 64
    const/4 v1, 0x0

    const/16 v2, 0x101

    sget v4, Lcom/ts/MainUI/R$drawable;->original_car_seekup_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->original_car_seekup_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/fiat/CanFiatAllExdActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mBtnPrev:Lcom/ts/other/ParamButton;

    .line 65
    const/4 v1, 0x1

    const/16 v2, 0x18c

    sget v4, Lcom/ts/MainUI/R$drawable;->original_car_play_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->original_car_play_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/fiat/CanFiatAllExdActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mBtnPlay:Lcom/ts/other/ParamButton;

    .line 66
    const/4 v1, 0x2

    const/16 v2, 0x218

    sget v4, Lcom/ts/MainUI/R$drawable;->original_car_stop_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->original_car_stop_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/fiat/CanFiatAllExdActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mBtnStop:Lcom/ts/other/ParamButton;

    .line 67
    const/4 v1, 0x3

    const/16 v2, 0x2a3

    sget v4, Lcom/ts/MainUI/R$drawable;->original_car_seekdn_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->original_car_seekdn_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/fiat/CanFiatAllExdActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mBtnNext:Lcom/ts/other/ParamButton;

    .line 69
    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x1d2

    const/16 v2, 0x4f

    const/16 v3, 0x64

    const/16 v4, 0xfc

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mImgDevMode:Lcom/ts/other/CustomImgView;

    .line 70
    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mImgDevMode:Lcom/ts/other/CustomImgView;

    sget v1, Lcom/ts/MainUI/R$drawable;->original_car_usb:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 72
    const/16 v0, 0x320

    const/16 v1, 0x17

    const/16 v2, 0xc8

    const/16 v3, 0x26

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/can/fiat/CanFiatAllExdActivity;->AddTxtLt(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mTxtTime:Lcom/ts/other/CustomTextView;

    .line 75
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 100
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 102
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mfgThis:Z

    .line 105
    const-string v0, "CanFiatAllExdActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 82
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/fiat/CanFiatAllExdActivity;->ResetData(Z)V

    .line 84
    const-string v0, "CanFiatAllExdActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object v0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Voice:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Phone:I

    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 91
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/can/fiat/CanFiatAllExdActivity;->mfgThis:Z

    .line 93
    return-void
.end method
