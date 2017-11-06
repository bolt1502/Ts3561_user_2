.class public Lcom/ts/can/fiat/CanFiatBravoExdActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanFiatBravoExdActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_NEXT:I = 0x3

.field public static final ITEM_PLAY:I = 0x1

.field public static final ITEM_PREV:I = 0x0

.field public static final ITEM_STOP:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanFiatBravoExdActivity"

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

    sput-object v0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mOldDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    .line 47
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;-><init>()V

    sput-object v0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    .line 49
    sput-boolean v1, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mfgExit:Z

    .line 50
    sput-boolean v1, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mfgThis:Z

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

    iput-object v0, p0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$FiatUsbTime;

    .line 27
    return-void
.end method

.method public static DealDevEvent()V
    .locals 5

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, "fgExit":Z
    const/4 v0, 0x0

    .line 231
    .local v0, "fgEnter":Z
    sget-object v2, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->FiatBravoGetDevInfo(Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;)V

    .line 232
    sget-object v2, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mOldDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Voice:I

    sget-object v3, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Voice:I

    if-eq v2, v3, :cond_0

    .line 234
    sget-object v2, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Voice:I

    if-eqz v2, :cond_2

    .line 236
    const/4 v0, 0x1

    .line 237
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/MainUI/Evc;->evol_aux_hold()V

    .line 246
    :cond_0
    :goto_0
    sget-object v2, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mOldDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Phone:I

    sget-object v3, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Phone:I

    if-eq v2, v3, :cond_4

    .line 248
    sget-object v2, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Phone:I

    if-eqz v2, :cond_3

    .line 250
    const/4 v0, 0x1

    .line 251
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/MainUI/Evc;->evol_aux_hold()V

    .line 264
    :goto_1
    const-string v2, "CanFiatBravoExdActivity"

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

    .line 266
    if-eqz v0, :cond_5

    .line 268
    sget-boolean v2, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mfgThis:Z

    if-nez v2, :cond_1

    .line 270
    invoke-static {}, Lcom/ts/can/CanFunc;->IsCamMode()I

    move-result v2

    if-nez v2, :cond_1

    .line 272
    const-class v2, Lcom/ts/can/fiat/CanFiatBravoExdActivity;

    invoke-static {v2}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    .line 287
    :cond_1
    :goto_2
    sget-object v2, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mOldDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    sget-object v3, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Voice:I

    iput v3, v2, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Voice:I

    .line 288
    sget-object v2, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mOldDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    sget-object v3, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Phone:I

    iput v3, v2, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Phone:I

    .line 289
    sget-object v2, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mOldDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    sget-object v3, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->UsbSta:I

    iput v3, v2, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->UsbSta:I

    .line 290
    return-void

    .line 241
    :cond_2
    const/4 v1, 0x1

    .line 242
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/MainUI/Evc;->evol_aux_release()V

    goto :goto_0

    .line 255
    :cond_3
    const/4 v1, 0x1

    .line 256
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/MainUI/Evc;->evol_aux_release()V

    goto :goto_1

    .line 259
    :cond_4
    sget-object v2, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mOldDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->UsbSta:I

    sget-object v2, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->UsbSta:I

    goto :goto_1

    .line 276
    :cond_5
    if-eqz v1, :cond_1

    .line 278
    sget-boolean v2, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mfgThis:Z

    if-eqz v2, :cond_1

    .line 280
    const/16 v2, 0xc

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 282
    const/4 v2, 0x1

    sput-boolean v2, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mfgExit:Z

    goto :goto_2
.end method

.method private ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 142
    sget-object v0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    if-eqz p1, :cond_0

    sget-object v0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Update:I

    invoke-static {v0}, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    sget-object v0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Update:I

    .line 147
    sget-object v0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Voice:I

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mImgDevMode:Lcom/ts/other/CustomImgView;

    sget v1, Lcom/ts/MainUI/R$drawable;->original_car_mike:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 176
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mfgExit:Z

    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->finish()V

    .line 179
    sput-boolean v2, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mfgExit:Z

    .line 181
    :cond_2
    return-void

    .line 151
    :cond_3
    sget-object v0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Phone:I

    if-eqz v0, :cond_4

    .line 153
    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mImgDevMode:Lcom/ts/other/CustomImgView;

    sget v1, Lcom/ts/MainUI/R$drawable;->original_car_call:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    goto :goto_0

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mImgDevMode:Lcom/ts/other/CustomImgView;

    sget v1, Lcom/ts/MainUI/R$drawable;->original_car_usb:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    goto :goto_0
.end method

.method private ShowUsb(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mBtnPrev:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 133
    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mBtnPlay:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 134
    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mBtnStop:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 135
    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mBtnNext:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 136
    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mTxtTime:Lcom/ts/other/CustomTextView;

    invoke-virtual {v0, p1}, Lcom/ts/other/CustomTextView;->ShowHide(Z)V

    .line 137
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
    .line 114
    iget-object v1, p0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 115
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {v0, p4, p5}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 118
    return-object v0
.end method

.method protected AddTxtLt(IIII)Lcom/ts/other/CustomTextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 123
    iget-object v1, p0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    .line 124
    .local v0, "temp":Lcom/ts/other/CustomTextView;
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 126
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 127
    return-object v0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->ResetData(Z)V

    .line 219
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 225
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 189
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 192
    :pswitch_0
    invoke-static {}, Lcom/ts/can/CanIF;->FiatBravoPrev()V

    goto :goto_0

    .line 196
    :pswitch_1
    invoke-static {}, Lcom/ts/can/CanIF;->FiatBravoPlay()V

    goto :goto_0

    .line 200
    :pswitch_2
    invoke-static {}, Lcom/ts/can/CanIF;->FiatBravoStop()V

    goto :goto_0

    .line 204
    :pswitch_3
    invoke-static {}, Lcom/ts/can/CanIF;->FiatBravoNext()V

    goto :goto_0

    .line 189
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
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x1ab

    .line 58
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->setContentView(I)V

    .line 62
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 64
    const/16 v2, 0x101

    sget v4, Lcom/ts/MainUI/R$drawable;->original_car_seekup_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->original_car_seekup_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mBtnPrev:Lcom/ts/other/ParamButton;

    .line 65
    const/4 v5, 0x1

    const/16 v6, 0x18c

    sget v8, Lcom/ts/MainUI/R$drawable;->original_car_play_up:I

    sget v9, Lcom/ts/MainUI/R$drawable;->original_car_play_dn:I

    move-object v4, p0

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mBtnPlay:Lcom/ts/other/ParamButton;

    .line 66
    const/4 v5, 0x2

    const/16 v6, 0x218

    sget v8, Lcom/ts/MainUI/R$drawable;->original_car_stop_up:I

    sget v9, Lcom/ts/MainUI/R$drawable;->original_car_stop_dn:I

    move-object v4, p0

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mBtnStop:Lcom/ts/other/ParamButton;

    .line 67
    const/4 v5, 0x3

    const/16 v6, 0x2a3

    sget v8, Lcom/ts/MainUI/R$drawable;->original_car_seekdn_up:I

    sget v9, Lcom/ts/MainUI/R$drawable;->original_car_seekdn_dn:I

    move-object v4, p0

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mBtnNext:Lcom/ts/other/ParamButton;

    .line 71
    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x1d2

    const/16 v3, 0x4f

    const/16 v4, 0x64

    const/16 v5, 0xfc

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mImgDevMode:Lcom/ts/other/CustomImgView;

    .line 72
    iget-object v0, p0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mImgDevMode:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->original_car_usb:I

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 74
    const/16 v0, 0x320

    const/16 v2, 0x17

    const/16 v3, 0xc8

    const/16 v4, 0x26

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->AddTxtLt(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mTxtTime:Lcom/ts/other/CustomTextView;

    .line 77
    invoke-direct {p0, v1}, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->ShowUsb(Z)V

    .line 79
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 104
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 106
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mfgThis:Z

    .line 109
    const-string v0, "CanFiatBravoExdActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 86
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->ResetData(Z)V

    .line 88
    const-string v0, "CanFiatBravoExdActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Voice:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mDevData:Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;->Phone:I

    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 95
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->mfgThis:Z

    .line 97
    return-void
.end method
