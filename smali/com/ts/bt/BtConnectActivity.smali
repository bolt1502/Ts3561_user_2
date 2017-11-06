.class public Lcom/ts/bt/BtConnectActivity;
.super Lcom/ts/bt/BtBaseActivity;
.source "BtConnectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final BT_ACTIVITY_ID:I = 0x1

.field private static final MAXPINCODELENGTH:I = 0x10

.field private static final MINPINCODELENGTH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BtConnectActivity"

.field static mIsConnected:Z

.field public static mStrPinCode:Ljava/lang/String;


# instance fields
.field bt:Lcom/ts/bt/BtExe;

.field private mBtnConnect:Landroid/widget/ImageButton;

.field private mBtnDisconnect:Landroid/widget/ImageButton;

.field private mIcoPhone:Landroid/widget/ImageView;

.field private mStrDevName:Ljava/lang/String;

.field private mTvDevice:Landroid/widget/TextView;

.field private mTvPhone:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/bt/BtConnectActivity;->mIsConnected:Z

    .line 46
    const-string v0, "0000"

    sput-object v0, Lcom/ts/bt/BtConnectActivity;->mStrPinCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ts/bt/BtBaseActivity;-><init>()V

    .line 48
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/BtConnectActivity;->bt:Lcom/ts/bt/BtExe;

    .line 32
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/bt/BtExe;->setBluetoothDiscoverability(Z)V

    .line 137
    sget v0, Lcom/ts/MainUI/R$id;->btIvIcon:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/bt/BtConnectActivity;->mIcoPhone:Landroid/widget/ImageView;

    .line 138
    sget v0, Lcom/ts/MainUI/R$id;->btTvDev:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/bt/BtConnectActivity;->mTvDevice:Landroid/widget/TextView;

    .line 140
    sget v0, Lcom/ts/MainUI/R$id;->btTvPhone:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/bt/BtConnectActivity;->mTvPhone:Landroid/widget/TextView;

    .line 141
    sget v0, Lcom/ts/MainUI/R$id;->btBtnConnect:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtConnectActivity;->mBtnConnect:Landroid/widget/ImageButton;

    .line 142
    sget v0, Lcom/ts/MainUI/R$id;->btBtnDisconnect:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtConnectActivity;->mBtnDisconnect:Landroid/widget/ImageButton;

    .line 143
    iget-object v0, p0, Lcom/ts/bt/BtConnectActivity;->mBtnConnect:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/ts/bt/BtConnectActivity;->mBtnDisconnect:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/ts/bt/BtConnectActivity;->mBtnConnect:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/ts/bt/BtConnectActivity;->mBtnDisconnect:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-virtual {p0}, Lcom/ts/bt/BtConnectActivity;->send()V

    .line 149
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 0

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/ts/bt/BtConnectActivity;->onTimer()V

    .line 195
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 128
    .local v0, "id":I
    sget v1, Lcom/ts/MainUI/R$id;->btBtnConnect:I

    if-ne v0, v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/ts/bt/BtConnectActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->connect()V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    sget v1, Lcom/ts/MainUI/R$id;->btBtnDisconnect:I

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/ts/bt/BtConnectActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->disconnect()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/ts/bt/BtBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget v0, Lcom/ts/MainUI/R$layout;->activity_bt_connect:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtConnectActivity;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcom/ts/bt/BtConnectActivity;->initView()V

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onDestroy()V

    .line 123
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 116
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onPause()V

    .line 117
    iget-object v0, p0, Lcom/ts/bt/BtConnectActivity;->bt:Lcom/ts/bt/BtExe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/bt/BtExe;->setUI(Z)V

    .line 118
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 75
    invoke-virtual {p0, p0, v2}, Lcom/ts/bt/BtConnectActivity;->SubItemsInit(Landroid/app/Activity;I)V

    .line 76
    iget-object v0, p0, Lcom/ts/bt/BtConnectActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->powerAbnomarlCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget v0, Lcom/ts/MainUI/R$string;->str_bt_reset:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/ts/bt/BtConnectActivity;->updatePhoneInfo()V

    .line 82
    invoke-virtual {p0}, Lcom/ts/bt/BtConnectActivity;->updateDevInfo()V

    .line 83
    iget-object v0, p0, Lcom/ts/bt/BtConnectActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v0, v2}, Lcom/ts/bt/BtExe;->setUI(Z)V

    .line 84
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 85
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onResume()V

    .line 86
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outstate"    # Landroid/os/Bundle;

    .prologue
    .line 62
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onStart()V

    .line 58
    return-void
.end method

.method public onTimer()V
    .locals 4

    .prologue
    .line 153
    iget-object v1, p0, Lcom/ts/bt/BtConnectActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    const-string v1, ""

    sput-object v1, Lcom/ts/bt/BtConnectActivity;->mBaseStrDialNo:Ljava/lang/String;

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/ts/bt/BtConnectActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v1

    sget-boolean v2, Lcom/ts/bt/BtConnectActivity;->mIsConnected:Z

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/ts/bt/BtConnectActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->IsNeedUpdatePhoneName()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    :cond_1
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->saveLastAddr()V

    .line 159
    invoke-virtual {p0}, Lcom/ts/bt/BtConnectActivity;->updatePhoneInfo()V

    .line 160
    const-string v1, "lh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PhoneName+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/bt/BtConnectActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v3}, Lcom/ts/bt/BtExe;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/ts/bt/BtConnectActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ts/bt/BtConnectActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 162
    const-string v1, "lh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "phoneName setFalse"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/bt/BtConnectActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v3}, Lcom/ts/bt/BtExe;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lcom/ts/bt/BtConnectActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->ResetUpdatePhoneName()V

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/ts/bt/BtConnectActivity;->mStrDevName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 169
    iget-object v1, p0, Lcom/ts/bt/BtConnectActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->getDevName()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "strName":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 172
    iget-object v1, p0, Lcom/ts/bt/BtConnectActivity;->mStrDevName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 174
    invoke-virtual {p0}, Lcom/ts/bt/BtConnectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 175
    iput-object v0, p0, Lcom/ts/bt/BtConnectActivity;->mStrDevName:Ljava/lang/String;

    .line 176
    iget-object v1, p0, Lcom/ts/bt/BtConnectActivity;->mTvDevice:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEV    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/bt/BtConnectActivity;->mStrDevName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    const-string v1, "BtConnectActivity"

    const-string v2, "device name changed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v0    # "strName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public send()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BT_BOOT_BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "msg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Lcom/ts/bt/BtConnectActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method updateDevInfo()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ts/bt/BtConnectActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->readDeviceNamePin()V

    .line 91
    iget-object v0, p0, Lcom/ts/bt/BtConnectActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->getDevName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/BtConnectActivity;->mStrDevName:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/ts/bt/BtConnectActivity;->mTvDevice:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEV    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/bt/BtConnectActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v2}, Lcom/ts/bt/BtExe;->getDevName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method

.method updatePhoneInfo()V
    .locals 4

    .prologue
    .line 98
    iget-object v1, p0, Lcom/ts/bt/BtConnectActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v0

    .line 99
    .local v0, "bIsConnectd":Z
    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/ts/bt/BtConnectActivity;->mTvPhone:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ts/bt/BtConnectActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v2}, Lcom/ts/bt/BtExe;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v1, p0, Lcom/ts/bt/BtConnectActivity;->mIcoPhone:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ts/bt/BtConnectActivity;->res:Landroid/content/res/Resources;

    sget v3, Lcom/ts/MainUI/R$drawable;->bt_bluetooth_dn:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :goto_0
    sput-boolean v0, Lcom/ts/bt/BtConnectActivity;->mIsConnected:Z

    .line 111
    return-void

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/ts/bt/BtConnectActivity;->mTvPhone:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/ts/bt/BtConnectActivity;->mIcoPhone:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ts/bt/BtConnectActivity;->res:Landroid/content/res/Resources;

    sget v3, Lcom/ts/MainUI/R$drawable;->bt_bluetooth_up:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
