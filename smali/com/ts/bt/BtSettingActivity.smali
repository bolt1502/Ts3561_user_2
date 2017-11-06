.class public Lcom/ts/bt/BtSettingActivity;
.super Landroid/app/Activity;
.source "BtSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field private static final MAXPINCODELENGTH:I = 0x10

.field private static final MINPINCODELENGTH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BtConnectActivity"

.field public static mDevName:Ljava/lang/String;

.field public static mPinCode:Ljava/lang/String;


# instance fields
.field bt:Lcom/ts/bt/BtExe;

.field private mBtnConnect:Landroid/widget/ImageButton;

.field private mBtnDisconnect:Landroid/widget/ImageButton;

.field private mIcoPhone:Landroid/widget/ImageView;

.field private mTvDevice:Landroid/widget/TextView;

.field private mTvPhone:Landroid/widget/TextView;

.field private mTvPin:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "0000"

    sput-object v0, Lcom/ts/bt/BtSettingActivity;->mPinCode:Ljava/lang/String;

    .line 41
    const-string v0, "Car Bt"

    sput-object v0, Lcom/ts/bt/BtSettingActivity;->mDevName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/BtSettingActivity;->bt:Lcom/ts/bt/BtExe;

    .line 25
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/bt/BtExe;->setBluetoothDiscoverability(Z)V

    .line 108
    sget v0, Lcom/ts/MainUI/R$id;->btIvIcon:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/bt/BtSettingActivity;->mIcoPhone:Landroid/widget/ImageView;

    .line 109
    sget v0, Lcom/ts/MainUI/R$id;->btTvDev:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/bt/BtSettingActivity;->mTvDevice:Landroid/widget/TextView;

    .line 111
    sget v0, Lcom/ts/MainUI/R$id;->btTvPhone:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/bt/BtSettingActivity;->mTvPhone:Landroid/widget/TextView;

    .line 112
    sget v0, Lcom/ts/MainUI/R$id;->btBtnConnect:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtSettingActivity;->mBtnConnect:Landroid/widget/ImageButton;

    .line 113
    sget v0, Lcom/ts/MainUI/R$id;->btBtnDisconnect:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtSettingActivity;->mBtnDisconnect:Landroid/widget/ImageButton;

    .line 114
    iget-object v0, p0, Lcom/ts/bt/BtSettingActivity;->mBtnConnect:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/ts/bt/BtSettingActivity;->mBtnDisconnect:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/ts/bt/BtSettingActivity;->mTvDevice:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/ts/bt/BtSettingActivity;->mTvPin:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_1

    .line 120
    :cond_0
    const-string v0, "BtConnectActivity"

    const-string v1, "Widget missing!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/ts/bt/BtSettingActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->getDevName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ts/bt/BtSettingActivity;->mDevName:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/ts/bt/BtSettingActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->getDevPin()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ts/bt/BtSettingActivity;->mPinCode:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/ts/bt/BtSettingActivity;->mTvDevice:Landroid/widget/TextView;

    sget-object v1, Lcom/ts/bt/BtSettingActivity;->mDevName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/ts/bt/BtSettingActivity;->mTvPin:Landroid/widget/TextView;

    sget-object v1, Lcom/ts/bt/BtSettingActivity;->mPinCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/ts/bt/BtSettingActivity;->mBtnConnect:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/ts/bt/BtSettingActivity;->mBtnDisconnect:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public UserAll()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 99
    .local v0, "id":I
    sget v1, Lcom/ts/MainUI/R$id;->btBtnConnect:I

    if-ne v0, v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/ts/bt/BtSettingActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->connect()V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    sget v1, Lcom/ts/MainUI/R$id;->btBtnDisconnect:I

    if-ne v0, v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/ts/bt/BtSettingActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->disconnect()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget v0, Lcom/ts/MainUI/R$layout;->activity_bt_connect:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtSettingActivity;->setContentView(I)V

    .line 57
    invoke-direct {p0}, Lcom/ts/bt/BtSettingActivity;->initView()V

    .line 59
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 94
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 88
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 89
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 73
    iget-object v0, p0, Lcom/ts/bt/BtSettingActivity;->mTvDevice:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/bt/BtSettingActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->getDevName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/ts/bt/BtSettingActivity;->mTvPin:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/bt/BtSettingActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->getDevPin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/ts/bt/BtSettingActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/ts/bt/BtSettingActivity;->mIcoPhone:Landroid/widget/ImageView;

    sget v1, Lcom/ts/MainUI/R$drawable;->bt_bluetooth_dn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 77
    iget-object v0, p0, Lcom/ts/bt/BtSettingActivity;->mTvPhone:Landroid/widget/TextView;

    sget-object v1, Lcom/ts/bt/BtExe;->mPhoneName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_0
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 83
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/ts/bt/BtSettingActivity;->mIcoPhone:Landroid/widget/ImageView;

    sget v1, Lcom/ts/MainUI/R$drawable;->bt_bluetooth_up:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 80
    iget-object v0, p0, Lcom/ts/bt/BtSettingActivity;->mTvPhone:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outstate"    # Landroid/os/Bundle;

    .prologue
    .line 68
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 64
    return-void
.end method
