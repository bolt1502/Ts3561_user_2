.class public Lcom/ts/bt/BtCallMsgbox;
.super Ljava/lang/Object;
.source "BtCallMsgbox.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CALL_HOLD_TIME:J = 0xfa0L

.field private static final CONTACT_SELECT_BY_ID:Ljava/lang/String; = "_id=?"

.field private static final CONTACT_SELECT_BY_NUMBER:Ljava/lang/String; = "data1=?"

.field public static final TAG:Ljava/lang/String; = "BtCallMsgbox"

.field protected static mInstance:Lcom/ts/bt/BtCallMsgbox;


# instance fields
.field private answerButton:Landroid/widget/Button;

.field bt:Lcom/ts/bt/BtExe;

.field private callNameView:Landroid/widget/TextView;

.field private callNoView:Landroid/widget/TextView;

.field private callStateView:Landroid/widget/TextView;

.field h:Landroid/os/Handler;

.field private hangButton:Landroid/widget/Button;

.field private isHaveTwoCall:Z

.field private kbButton:Landroid/widget/Button;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallName:Ljava/lang/String;

.field private mCallNumber:Ljava/lang/String;

.field private mCallType:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mCurState:I

.field private mFirstCallNumber:Ljava/lang/String;

.field private mFirstCallType:Ljava/lang/String;

.field private mFloatLayout:Landroid/widget/RelativeLayout;

.field protected mIsShow:Z

.field private mLastBtSta:I

.field private mLastType:Z

.field private mOldState:I

.field public mStrSta:Ljava/lang/String;

.field r:Ljava/lang/Runnable;

.field private v:Landroid/widget/RelativeLayout;

.field protected wManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mCallType:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mCallNumber:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mCallName:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mFirstCallType:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mFirstCallNumber:Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lcom/ts/bt/BtCallMsgbox;->mLastType:Z

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mFloatLayout:Landroid/widget/RelativeLayout;

    .line 74
    iput v1, p0, Lcom/ts/bt/BtCallMsgbox;->mLastBtSta:I

    .line 84
    iput v2, p0, Lcom/ts/bt/BtCallMsgbox;->mOldState:I

    .line 85
    iput v2, p0, Lcom/ts/bt/BtCallMsgbox;->mCurState:I

    .line 86
    iput-boolean v1, p0, Lcom/ts/bt/BtCallMsgbox;->isHaveTwoCall:Z

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mStrSta:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/ts/bt/BtExe;

    invoke-direct {v0}, Lcom/ts/bt/BtExe;-><init>()V

    iput-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->bt:Lcom/ts/bt/BtExe;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->h:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcom/ts/bt/BtCallMsgbox$1;

    invoke-direct {v0, p0}, Lcom/ts/bt/BtCallMsgbox$1;-><init>(Lcom/ts/bt/BtCallMsgbox;)V

    iput-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->r:Ljava/lang/Runnable;

    .line 196
    new-instance v0, Lcom/ts/bt/BtCallMsgbox$2;

    invoke-direct {v0, p0}, Lcom/ts/bt/BtCallMsgbox$2;-><init>(Lcom/ts/bt/BtCallMsgbox;)V

    iput-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    return-void
.end method

.method public static GetInstance()Lcom/ts/bt/BtCallMsgbox;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/ts/bt/BtCallMsgbox;->mInstance:Lcom/ts/bt/BtCallMsgbox;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lcom/ts/bt/BtCallMsgbox;

    invoke-direct {v0}, Lcom/ts/bt/BtCallMsgbox;-><init>()V

    sput-object v0, Lcom/ts/bt/BtCallMsgbox;->mInstance:Lcom/ts/bt/BtCallMsgbox;

    .line 188
    :cond_0
    sget-object v0, Lcom/ts/bt/BtCallMsgbox;->mInstance:Lcom/ts/bt/BtCallMsgbox;

    return-object v0
.end method

.method static synthetic access$0(Lcom/ts/bt/BtCallMsgbox;Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/ts/bt/BtCallMsgbox;->isHaveTwoCall:Z

    return-void
.end method

.method static synthetic access$1(Lcom/ts/bt/BtCallMsgbox;)Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/ts/bt/BtCallMsgbox;->isHaveTwoCall:Z

    return v0
.end method

.method static synthetic access$10(Lcom/ts/bt/BtCallMsgbox;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mCallName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/ts/bt/BtCallMsgbox;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->callNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/ts/bt/BtCallMsgbox;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->callNoView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/ts/bt/BtCallMsgbox;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->answerButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$14(Lcom/ts/bt/BtCallMsgbox;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->kbButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$15(Lcom/ts/bt/BtCallMsgbox;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0, p1, p2}, Lcom/ts/bt/BtCallMsgbox;->onActionCallStateChanged(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$16(Lcom/ts/bt/BtCallMsgbox;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0, p1, p2}, Lcom/ts/bt/BtCallMsgbox;->onActionHFPConnectStateChanged(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$17(Lcom/ts/bt/BtCallMsgbox;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0, p1, p2}, Lcom/ts/bt/BtCallMsgbox;->onActionSCOStateChanged(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2(Lcom/ts/bt/BtCallMsgbox;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mCallType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ts/bt/BtCallMsgbox;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ts/bt/BtCallMsgbox;->mCallType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/ts/bt/BtCallMsgbox;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ts/bt/BtCallMsgbox;->mCallNumber:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/ts/bt/BtCallMsgbox;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/ts/bt/BtCallMsgbox;->mFirstCallType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/ts/bt/BtCallMsgbox;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mCallNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ts/bt/BtCallMsgbox;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ts/bt/BtCallMsgbox;->mFirstCallNumber:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/ts/bt/BtCallMsgbox;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->callStateView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/ts/bt/BtCallMsgbox;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ts/bt/BtCallMsgbox;->mCallName:Ljava/lang/String;

    return-void
.end method

.method private onActionCallStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 306
    const-string v2, "android.bluetooth.headsetclient.extra.CALL"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 307
    .local v0, "callStatus":Landroid/bluetooth/BluetoothHeadsetClientCall;
    iget-object v2, p0, Lcom/ts/bt/BtCallMsgbox;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v2}, Lcom/ts/bt/BtExe;->updateLastPhoneNum()V

    .line 308
    if-nez v0, :cond_1

    .line 309
    const-string v2, "BtCallMsgbox"

    const-string v3, "get callStatus fall!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    const-string v2, "BtCallMsgbox"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onActionCallStateChanged:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 317
    iget-object v2, p0, Lcom/ts/bt/BtCallMsgbox;->answerButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 318
    iget-object v2, p0, Lcom/ts/bt/BtCallMsgbox;->answerButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 319
    iget-object v2, p0, Lcom/ts/bt/BtCallMsgbox;->kbButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 323
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v1

    .line 324
    .local v1, "state":I
    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    .line 325
    invoke-virtual {p0}, Lcom/ts/bt/BtCallMsgbox;->Destroy()V

    .line 331
    :cond_3
    :goto_1
    sget-boolean v2, Lcom/ts/bt/BtExe;->isAutoAnswer:Z

    if-eqz v2, :cond_0

    .line 332
    iget-object v2, p0, Lcom/ts/bt/BtCallMsgbox;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v2}, Lcom/ts/bt/BtExe;->answer()V

    .line 333
    sput-boolean v5, Lcom/ts/bt/BtExe;->isAutoAnswer:Z

    .line 334
    iget-object v2, p0, Lcom/ts/bt/BtCallMsgbox;->h:Landroid/os/Handler;

    iget-object v3, p0, Lcom/ts/bt/BtCallMsgbox;->r:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    const-string v2, "lh"

    const-string v3, "answer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 326
    :cond_4
    if-nez v1, :cond_3

    .line 327
    iget-object v2, p0, Lcom/ts/bt/BtCallMsgbox;->mCallType:Ljava/lang/String;

    const-string v3, "missed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 328
    const-string v2, "incoming"

    iput-object v2, p0, Lcom/ts/bt/BtCallMsgbox;->mCallType:Ljava/lang/String;

    goto :goto_1
.end method

.method private onActionHFPConnectStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 349
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 350
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_1

    .line 351
    const-string v2, "BtCallMsgbox"

    const-string v3, "onActionBondStateChanged, get device fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    const-string v2, "android.bluetooth.profile.extra.STATE"

    .line 356
    const/4 v3, 0x0

    .line 355
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 358
    .local v1, "newState":I
    const-string v2, "BtCallMsgbox"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "device:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hfpState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/ts/bt/BtCallMsgbox;->Destroy()V

    goto :goto_0
.end method

.method private onActionSCOStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 368
    const/16 v4, 0x10

    invoke-static {v4}, Lcom/ts/bt/BtExe;->getProfile(I)Lcom/autochips/bluetooth/LocalBluetoothProfile;

    move-result-object v2

    .line 367
    check-cast v2, Lcom/autochips/bluetooth/HeadsetClientProfile;

    .line 369
    .local v2, "hfProfile":Lcom/autochips/bluetooth/HeadsetClientProfile;
    if-nez v2, :cond_0

    .line 370
    const-string v4, "BtCallMsgbox"

    const-string v5, "get hf profile fail!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-virtual {v2}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 375
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 376
    :cond_1
    const-string v4, "BtCallMsgbox"

    const-string v5, "hf client is not connected!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 380
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v0

    .line 381
    .local v0, "callList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 382
    :cond_3
    const-string v4, "BtCallMsgbox"

    const-string v5, "no call!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 386
    :cond_4
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 387
    const-string v4, "BtCallMsgbox"

    const-string v5, "call incoming, not show audio state!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 390
    :cond_5
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 392
    .local v3, "newState":I
    goto :goto_0
.end method


# virtual methods
.method public Destroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 454
    iget-object v1, p0, Lcom/ts/bt/BtCallMsgbox;->mFloatLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 456
    iget-object v1, p0, Lcom/ts/bt/BtCallMsgbox;->wManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/ts/bt/BtCallMsgbox;->mFloatLayout:Landroid/widget/RelativeLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 457
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ts/bt/BtCallMsgbox;->mFloatLayout:Landroid/widget/RelativeLayout;

    .line 458
    sget-boolean v1, Lcom/ts/bt/BtExe;->isFirstCallLog:Z

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/ts/bt/BtCallMsgbox;->mFirstCallType:Ljava/lang/String;

    iput-object v1, p0, Lcom/ts/bt/BtCallMsgbox;->mCallType:Ljava/lang/String;

    .line 460
    iget-object v1, p0, Lcom/ts/bt/BtCallMsgbox;->mFirstCallNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/ts/bt/BtCallMsgbox;->mCallNumber:Ljava/lang/String;

    .line 461
    const-string v1, "lh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mCallType+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/bt/BtCallMsgbox;->mCallType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v1, "lh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mCallNumber+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/bt/BtCallMsgbox;->mCallNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    sput-boolean v4, Lcom/ts/bt/BtExe;->isFirstCallLog:Z

    .line 465
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autochips.bluetooth.BtUtils.action.ACTION_BLUETOOTH_CALL_LOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    .local v0, "callLogIntent":Landroid/content/Intent;
    const-string v1, "com.autochips.bluetooth.BtUtils.extra.EXTRA_CALL_TYPE"

    iget-object v2, p0, Lcom/ts/bt/BtCallMsgbox;->mCallType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    const-string v1, "com.autochips.bluetooth.BtUtils.extra.EXTRA_CALL_NUMBER"

    iget-object v2, p0, Lcom/ts/bt/BtCallMsgbox;->mCallNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    const-string v1, "com.autochips.bluetooth.BtUtils.extra.EXTRA_CALL_NAME"

    iget-object v2, p0, Lcom/ts/bt/BtCallMsgbox;->mCallName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const/16 v1, 0x54

    invoke-static {v1, v0, v4, v4}, Lcom/ts/bt/BtExe;->dispatchMessage(ILjava/lang/Object;II)V

    .line 470
    iget-object v1, p0, Lcom/ts/bt/BtCallMsgbox;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ts/bt/BtCallMsgbox;->r:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 472
    .end local v0    # "callLogIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public Hide()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtCallMsgbox;->Show(I)V

    .line 195
    return-void
.end method

.method public Init(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mFloatLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "BtCallMsgbox"

    const-string v1, "Already have instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lcom/ts/bt/BtCallMsgbox;->Hide()V

    .line 304
    :goto_0
    return-void

    .line 219
    :cond_0
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/ts/bt/BtExe;->getProfile(I)Lcom/autochips/bluetooth/LocalBluetoothProfile;

    move-result-object v11

    .line 218
    check-cast v11, Lcom/autochips/bluetooth/HeadsetClientProfile;

    .line 220
    .local v11, "hfProfile":Lcom/autochips/bluetooth/HeadsetClientProfile;
    if-nez v11, :cond_1

    .line 221
    const-string v0, "BtCallMsgbox"

    const-string v1, "get hf profile fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0}, Lcom/ts/bt/BtCallMsgbox;->Destroy()V

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {v11}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v9

    .line 227
    .local v9, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 228
    :cond_2
    const-string v0, "BtCallMsgbox"

    const-string v1, "hf client is not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p0}, Lcom/ts/bt/BtCallMsgbox;->Destroy()V

    goto :goto_0

    .line 233
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v7

    .line 234
    .local v7, "callList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 235
    :cond_4
    const-string v0, "BtCallMsgbox"

    const-string v1, "Call had been ended before this activity create!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0}, Lcom/ts/bt/BtCallMsgbox;->Destroy()V

    goto :goto_0

    .line 240
    :cond_5
    iput-object p1, p0, Lcom/ts/bt/BtCallMsgbox;->mContext:Landroid/content/Context;

    .line 241
    invoke-virtual {p0}, Lcom/ts/bt/BtCallMsgbox;->Destroy()V

    .line 242
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 244
    .local v12, "layoutInflater":Landroid/view/LayoutInflater;
    sget v0, Lcom/ts/MainUI/R$layout;->bt_msgbox:I

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->v:Landroid/widget/RelativeLayout;

    .line 246
    iget-object v2, p0, Lcom/ts/bt/BtCallMsgbox;->v:Landroid/widget/RelativeLayout;

    const/16 v3, 0xb3

    const/16 v4, 0x2d

    const/16 v5, 0x29b

    const/16 v6, 0xb1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/ts/bt/BtCallMsgbox;->InitWinManager(Landroid/content/Context;Landroid/widget/RelativeLayout;IIII)V

    .line 247
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 249
    .local v8, "callStatus":Landroid/bluetooth/BluetoothHeadsetClientCall;
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->v:Landroid/widget/RelativeLayout;

    sget v1, Lcom/ts/MainUI/R$id;->bt_calling_name:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->callNameView:Landroid/widget/TextView;

    .line 250
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->v:Landroid/widget/RelativeLayout;

    sget v1, Lcom/ts/MainUI/R$id;->bt_calling_no:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->callNoView:Landroid/widget/TextView;

    .line 251
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->v:Landroid/widget/RelativeLayout;

    sget v1, Lcom/ts/MainUI/R$id;->bt_calling_state:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->callStateView:Landroid/widget/TextView;

    .line 252
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->v:Landroid/widget/RelativeLayout;

    sget v1, Lcom/ts/MainUI/R$id;->btn_calling_hang:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->hangButton:Landroid/widget/Button;

    .line 253
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->v:Landroid/widget/RelativeLayout;

    sget v1, Lcom/ts/MainUI/R$id;->btn_calling_answer:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->answerButton:Landroid/widget/Button;

    .line 254
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->v:Landroid/widget/RelativeLayout;

    sget v1, Lcom/ts/MainUI/R$id;->btn_calling_kb:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->kbButton:Landroid/widget/Button;

    .line 255
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->hangButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->answerButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->kbButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mCallNumber:Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/bt/BtExe;->getContactByNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mCallName:Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mCallName:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mCallName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 262
    :cond_6
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mCallNumber:Ljava/lang/String;

    sput-object v0, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->UpdateCallName()V

    .line 264
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->GetCallName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mCallName:Ljava/lang/String;

    .line 266
    :cond_7
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->callNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 267
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->callNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/bt/BtCallMsgbox;->mCallName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->callNoView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/bt/BtCallMsgbox;->mCallNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :cond_8
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 271
    const-string v0, "missed"

    iput-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mCallType:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->callStateView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 274
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->callStateView:Landroid/widget/TextView;

    sget v1, Lcom/ts/MainUI/R$string;->str_bt_call_in:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 276
    :cond_9
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->answerButton:Landroid/widget/Button;

    if-eqz v0, :cond_a

    .line 277
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->answerButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->kbButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 297
    :cond_a
    :goto_1
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 298
    .local v10, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string v0, "android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string v0, "android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/bt/BtCallMsgbox;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0}, Lcom/ts/bt/BtCallMsgbox;->Hide()V

    .line 303
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ts/bt/BtCallMsgbox;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 281
    .end local v10    # "filter":Landroid/content/IntentFilter;
    :cond_b
    iget-boolean v0, p0, Lcom/ts/bt/BtCallMsgbox;->mLastType:Z

    if-eqz v0, :cond_d

    .line 282
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ts/bt/BtCallMsgbox;->mFirstCallType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mCallType:Ljava/lang/String;

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/bt/BtCallMsgbox;->mLastType:Z

    .line 287
    :goto_2
    const-string v0, "lh"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callstatus ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v0, "lh"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCallType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/bt/BtCallMsgbox;->mCallType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->callStateView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 290
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->callStateView:Landroid/widget/TextView;

    sget v1, Lcom/ts/MainUI/R$string;->str_bt_call_out:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 292
    :cond_c
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->kbButton:Landroid/widget/Button;

    if-eqz v0, :cond_a

    .line 293
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->answerButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->kbButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 285
    :cond_d
    const-string v0, "outgoing"

    iput-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mCallType:Ljava/lang/String;

    goto :goto_2
.end method

.method public InitWinManager(Landroid/content/Context;Landroid/widget/RelativeLayout;IIII)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/widget/RelativeLayout;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 430
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 432
    .local v0, "wmParams":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/ts/bt/BtCallMsgbox;->wManager:Landroid/view/WindowManager;

    .line 433
    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 434
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 435
    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 436
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 442
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 443
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 445
    iput p5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 446
    iput p6, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 447
    iget-object v1, p0, Lcom/ts/bt/BtCallMsgbox;->wManager:Landroid/view/WindowManager;

    invoke-interface {v1, p2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    iput-object p2, p0, Lcom/ts/bt/BtCallMsgbox;->mFloatLayout:Landroid/widget/RelativeLayout;

    .line 450
    return-void
.end method

.method public Show(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 396
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mFloatLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 398
    if-eqz p1, :cond_1

    .line 400
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mFloatLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mFloatLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public create(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/ts/bt/BtCallMsgbox;->mFloatLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 476
    if-eqz p1, :cond_0

    .line 478
    invoke-virtual {p0, p1}, Lcom/ts/bt/BtCallMsgbox;->Init(Landroid/content/Context;)V

    .line 482
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 424
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 487
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 488
    .local v1, "id":I
    sget v3, Lcom/ts/MainUI/R$id;->btn_calling_hang:I

    if-ne v1, v3, :cond_2

    .line 489
    iget-boolean v3, p0, Lcom/ts/bt/BtCallMsgbox;->isHaveTwoCall:Z

    if-nez v3, :cond_1

    .line 490
    iget-object v3, p0, Lcom/ts/bt/BtCallMsgbox;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v3}, Lcom/ts/bt/BtExe;->hangup()V

    .line 495
    :goto_0
    iget-object v3, p0, Lcom/ts/bt/BtCallMsgbox;->h:Landroid/os/Handler;

    iget-object v4, p0, Lcom/ts/bt/BtCallMsgbox;->r:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 516
    :cond_0
    :goto_1
    return-void

    .line 492
    :cond_1
    iget-object v3, p0, Lcom/ts/bt/BtCallMsgbox;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v3}, Lcom/ts/bt/BtExe;->hangup1()V

    .line 493
    iput-boolean v4, p0, Lcom/ts/bt/BtCallMsgbox;->mLastType:Z

    goto :goto_0

    .line 496
    :cond_2
    sget v3, Lcom/ts/MainUI/R$id;->btn_calling_answer:I

    if-ne v1, v3, :cond_4

    .line 497
    iget-boolean v3, p0, Lcom/ts/bt/BtCallMsgbox;->isHaveTwoCall:Z

    if-nez v3, :cond_3

    .line 498
    iget-object v3, p0, Lcom/ts/bt/BtCallMsgbox;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v3}, Lcom/ts/bt/BtExe;->answer()V

    goto :goto_1

    .line 500
    :cond_3
    sput-boolean v4, Lcom/ts/bt/BtExe;->isAutoAnswer:Z

    .line 501
    sput-boolean v4, Lcom/ts/bt/BtExe;->isFirstCallLog:Z

    .line 502
    iget-object v3, p0, Lcom/ts/bt/BtCallMsgbox;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v3}, Lcom/ts/bt/BtExe;->hangup()V

    .line 503
    iput-boolean v4, p0, Lcom/ts/bt/BtCallMsgbox;->mLastType:Z

    .line 504
    iget-object v3, p0, Lcom/ts/bt/BtCallMsgbox;->h:Landroid/os/Handler;

    iget-object v4, p0, Lcom/ts/bt/BtCallMsgbox;->r:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 506
    :cond_4
    sget v3, Lcom/ts/MainUI/R$id;->btn_calling_kb:I

    if-ne v1, v3, :cond_0

    .line 507
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    invoke-static {}, Lcom/ts/bt/BtExe;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 508
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 509
    .local v2, "intent":Landroid/content/Intent;
    const-class v3, Lcom/ts/bt/BtDialActivity;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 510
    const/high16 v3, 0x10010000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 511
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 512
    invoke-virtual {p0}, Lcom/ts/bt/BtCallMsgbox;->Hide()V

    .line 513
    const-string v3, "BtCallMsgbox"

    const-string v4, "BTN_KB"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 418
    return-void
.end method
