.class public Lcom/ts/bt/BtMusicActivity;
.super Lcom/ts/bt/BtBaseActivity;
.source "BtMusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final BT_ACTIVITY_ID:I = 0x7

.field public static final CMD_UPDATE_PLAY_POSITION:B = 0x2t

.field public static final CMD_UPDATE_PLAY_STATUS:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "BtMusicActivity"


# instance fields
.field public D:Ljava/lang/Boolean;

.field private bt:Lcom/ts/bt/BtExe;

.field private mHandler:Landroid/os/Handler;

.field mMetadataCallback:Lcom/autochips/bluetooth/AvrcpControllerProfile$MetadataCallback;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTvAlbum:Landroid/widget/TextView;

.field private mTvArtist:Landroid/widget/TextView;

.field private mTvName:Landroid/widget/TextView;

.field private musicAlbum:Ljava/lang/String;

.field private musicArtist:Ljava/lang/String;

.field private musicTitle:Ljava/lang/String;

.field mutebutton:Landroid/widget/ImageButton;

.field pausebutton:Landroid/widget/ImageButton;

.field playbutton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lcom/ts/bt/BtBaseActivity;-><init>()V

    .line 33
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/BtMusicActivity;->D:Ljava/lang/Boolean;

    .line 55
    iput-object v1, p0, Lcom/ts/bt/BtMusicActivity;->musicTitle:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/ts/bt/BtMusicActivity;->musicArtist:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/ts/bt/BtMusicActivity;->musicAlbum:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/BtMusicActivity;->bt:Lcom/ts/bt/BtExe;

    .line 65
    new-instance v0, Lcom/ts/bt/BtMusicActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/bt/BtMusicActivity$1;-><init>(Lcom/ts/bt/BtMusicActivity;)V

    iput-object v0, p0, Lcom/ts/bt/BtMusicActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    new-instance v0, Lcom/ts/bt/BtMusicActivity$2;

    invoke-direct {v0, p0}, Lcom/ts/bt/BtMusicActivity$2;-><init>(Lcom/ts/bt/BtMusicActivity;)V

    iput-object v0, p0, Lcom/ts/bt/BtMusicActivity;->mHandler:Landroid/os/Handler;

    .line 398
    new-instance v0, Lcom/ts/bt/BtMusicActivity$3;

    invoke-direct {v0, p0}, Lcom/ts/bt/BtMusicActivity$3;-><init>(Lcom/ts/bt/BtMusicActivity;)V

    iput-object v0, p0, Lcom/ts/bt/BtMusicActivity;->mMetadataCallback:Lcom/autochips/bluetooth/AvrcpControllerProfile$MetadataCallback;

    .line 30
    return-void
.end method

.method private UpdateUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 455
    sget-object v0, Lcom/ts/bt/BtExe;->mStrId3Name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 456
    sget-object v0, Lcom/ts/bt/BtExe;->mStrId3Name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 458
    iput-object v2, p0, Lcom/ts/bt/BtMusicActivity;->musicTitle:Ljava/lang/String;

    .line 459
    iget-object v0, p0, Lcom/ts/bt/BtMusicActivity;->mTvName:Landroid/widget/TextView;

    const-string v1, "NULL"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    :cond_0
    :goto_0
    sget-object v0, Lcom/ts/bt/BtExe;->mStrId3Album:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 469
    sget-object v0, Lcom/ts/bt/BtExe;->mStrId3Album:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 471
    iput-object v2, p0, Lcom/ts/bt/BtMusicActivity;->musicAlbum:Ljava/lang/String;

    .line 472
    iget-object v0, p0, Lcom/ts/bt/BtMusicActivity;->mTvAlbum:Landroid/widget/TextView;

    const-string v1, "NULL"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    :cond_1
    :goto_1
    sget-object v0, Lcom/ts/bt/BtExe;->mStrId3Artist:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 482
    sget-object v0, Lcom/ts/bt/BtExe;->mStrId3Artist:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 484
    iput-object v2, p0, Lcom/ts/bt/BtMusicActivity;->musicArtist:Ljava/lang/String;

    .line 485
    iget-object v0, p0, Lcom/ts/bt/BtMusicActivity;->mTvArtist:Landroid/widget/TextView;

    const-string v1, "NULL"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    :cond_2
    :goto_2
    return-void

    .line 461
    :cond_3
    sget-object v0, Lcom/ts/bt/BtExe;->mStrId3Name:Ljava/lang/String;

    iget-object v1, p0, Lcom/ts/bt/BtMusicActivity;->musicTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    sget-object v0, Lcom/ts/bt/BtExe;->mStrId3Name:Ljava/lang/String;

    iput-object v0, p0, Lcom/ts/bt/BtMusicActivity;->musicTitle:Ljava/lang/String;

    .line 464
    iget-object v0, p0, Lcom/ts/bt/BtMusicActivity;->mTvName:Landroid/widget/TextView;

    sget-object v1, Lcom/ts/bt/BtExe;->mStrId3Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 474
    :cond_4
    sget-object v0, Lcom/ts/bt/BtExe;->mStrId3Album:Ljava/lang/String;

    iget-object v1, p0, Lcom/ts/bt/BtMusicActivity;->musicAlbum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 476
    sget-object v0, Lcom/ts/bt/BtExe;->mStrId3Album:Ljava/lang/String;

    iput-object v0, p0, Lcom/ts/bt/BtMusicActivity;->musicAlbum:Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lcom/ts/bt/BtMusicActivity;->mTvAlbum:Landroid/widget/TextView;

    sget-object v1, Lcom/ts/bt/BtExe;->mStrId3Album:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 487
    :cond_5
    sget-object v0, Lcom/ts/bt/BtExe;->mStrId3Artist:Ljava/lang/String;

    iget-object v1, p0, Lcom/ts/bt/BtMusicActivity;->musicArtist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 489
    sget-object v0, Lcom/ts/bt/BtExe;->mStrId3Artist:Ljava/lang/String;

    iput-object v0, p0, Lcom/ts/bt/BtMusicActivity;->musicArtist:Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lcom/ts/bt/BtMusicActivity;->mTvArtist:Landroid/widget/TextView;

    sget-object v1, Lcom/ts/bt/BtExe;->mStrId3Artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/ts/bt/BtMusicActivity;I)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/ts/bt/BtMusicActivity;->handleBtStateChanged(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/ts/bt/BtMusicActivity;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0, p1, p2}, Lcom/ts/bt/BtMusicActivity;->handleA2dpSinkStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$2(Lcom/ts/bt/BtMusicActivity;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .prologue
    .line 361
    invoke-direct {p0, p1, p2}, Lcom/ts/bt/BtMusicActivity;->handleAvrcpCtStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$3(Lcom/ts/bt/BtMusicActivity;)Lcom/ts/bt/BtExe;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ts/bt/BtMusicActivity;->bt:Lcom/ts/bt/BtExe;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ts/bt/BtMusicActivity;)V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/ts/bt/BtMusicActivity;->UpdateUI()V

    return-void
.end method

.method static synthetic access$5(Lcom/ts/bt/BtMusicActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ts/bt/BtMusicActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleA2dpSinkStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    const/4 v1, 0x0

    .line 347
    move v0, p2

    .line 349
    .local v0, "newState":I
    packed-switch v0, :pswitch_data_0

    .line 359
    :goto_0
    :pswitch_0
    return-void

    .line 351
    :pswitch_1
    sput v1, Lcom/ts/bt/BtExe;->mA2dpsinkstate:I

    .line 352
    invoke-direct {p0, v1}, Lcom/ts/bt/BtMusicActivity;->updatePlayPauseButton(B)V

    goto :goto_0

    .line 356
    :pswitch_2
    const/4 v1, 0x2

    sput v1, Lcom/ts/bt/BtExe;->mA2dpsinkstate:I

    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleAvrcpCtStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 362
    move v0, p2

    .line 364
    .local v0, "newState":I
    packed-switch v0, :pswitch_data_0

    .line 373
    :goto_0
    :pswitch_0
    return-void

    .line 366
    :pswitch_1
    const/4 v1, 0x0

    sput v1, Lcom/ts/bt/BtExe;->mAvrcpctstate:I

    goto :goto_0

    .line 370
    :pswitch_2
    const/4 v1, 0x2

    sput v1, Lcom/ts/bt/BtExe;->mAvrcpctstate:I

    goto :goto_0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleBtStateChanged(I)V
    .locals 1
    .param p1, "btState"    # I

    .prologue
    const/4 v0, 0x0

    .line 140
    packed-switch p1, :pswitch_data_0

    .line 151
    :goto_0
    :pswitch_0
    return-void

    .line 146
    :pswitch_1
    sput v0, Lcom/ts/bt/BtExe;->mA2dpsinkstate:I

    .line 147
    sput v0, Lcom/ts/bt/BtExe;->mAvrcpctstate:I

    .line 148
    invoke-direct {p0, v0}, Lcom/ts/bt/BtMusicActivity;->updatePlayPauseButton(B)V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 245
    sget v0, Lcom/ts/MainUI/R$id;->btn_music_mute:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtMusicActivity;->mutebutton:Landroid/widget/ImageButton;

    .line 246
    sget v0, Lcom/ts/MainUI/R$id;->btn_music_pause:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtMusicActivity;->pausebutton:Landroid/widget/ImageButton;

    .line 247
    sget v0, Lcom/ts/MainUI/R$id;->btn_music_play:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtMusicActivity;->playbutton:Landroid/widget/ImageButton;

    .line 248
    iget-object v0, p0, Lcom/ts/bt/BtMusicActivity;->mutebutton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/ts/bt/BtMusicActivity;->pausebutton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, p0, Lcom/ts/bt/BtMusicActivity;->playbutton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    sget-byte v0, Lcom/ts/bt/BtExe;->musicState:B

    invoke-direct {p0, v0}, Lcom/ts/bt/BtMusicActivity;->updatePlayPauseButton(B)V

    .line 252
    sget v0, Lcom/ts/MainUI/R$id;->btn_music_prev:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    sget v0, Lcom/ts/MainUI/R$id;->btn_music_next:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    sget v0, Lcom/ts/MainUI/R$id;->tv_music_title:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/bt/BtMusicActivity;->mTvName:Landroid/widget/TextView;

    .line 257
    sget v0, Lcom/ts/MainUI/R$id;->tv_music_icon_album:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/bt/BtMusicActivity;->mTvAlbum:Landroid/widget/TextView;

    .line 258
    sget v0, Lcom/ts/MainUI/R$id;->tv_music_icon_artist:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/bt/BtMusicActivity;->mTvArtist:Landroid/widget/TextView;

    .line 259
    return-void
.end method

.method private updatePlayPauseButton(B)V
    .locals 2
    .param p1, "playState"    # B

    .prologue
    .line 262
    const-string v0, "BtMusicActivity"

    const-string v1, "updatePlayPauseButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sput-byte p1, Lcom/ts/bt/BtExe;->musicState:B

    .line 267
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 0

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/ts/bt/BtMusicActivity;->onTimer()V

    .line 499
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 227
    .local v0, "id":I
    sget v1, Lcom/ts/MainUI/R$id;->btn_music_play:I

    if-ne v0, v1, :cond_1

    .line 228
    sget v1, Lcom/ts/bt/BtExe;->mCallSta:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 229
    iget-object v1, p0, Lcom/ts/bt/BtMusicActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->musicPlay()V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    sget v1, Lcom/ts/MainUI/R$id;->btn_music_pause:I

    if-ne v0, v1, :cond_2

    .line 232
    iget-object v1, p0, Lcom/ts/bt/BtMusicActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->musicPause()V

    goto :goto_0

    .line 233
    :cond_2
    sget v1, Lcom/ts/MainUI/R$id;->btn_music_prev:I

    if-ne v0, v1, :cond_3

    .line 234
    iget-object v1, p0, Lcom/ts/bt/BtMusicActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->musicPrev()V

    goto :goto_0

    .line 235
    :cond_3
    sget v1, Lcom/ts/MainUI/R$id;->btn_music_next:I

    if-ne v0, v1, :cond_4

    .line 236
    iget-object v1, p0, Lcom/ts/bt/BtMusicActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->musicNext()V

    goto :goto_0

    .line 237
    :cond_4
    sget v1, Lcom/ts/MainUI/R$id;->btn_music_mute:I

    if-ne v0, v1, :cond_0

    .line 238
    invoke-static {}, Lcom/ts/main/common/MainVolume;->GetInstance()Lcom/ts/main/common/MainVolume;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/main/common/MainVolume;->VolWinShow()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/ts/bt/BtBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    sget v0, Lcom/ts/MainUI/R$layout;->activity_bt_music:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtMusicActivity;->setContentView(I)V

    .line 158
    iget-object v0, p0, Lcom/ts/bt/BtMusicActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtMusicActivity;->showActivity(I)V

    .line 162
    invoke-virtual {p0}, Lcom/ts/bt/BtMusicActivity;->finish()V

    .line 172
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/ts/bt/BtMusicActivity;->D:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BtMusicActivity"

    const-string v1, "+ onCreat()+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/ts/bt/BtMusicActivity;->initView()V

    .line 171
    iget-object v0, p0, Lcom/ts/bt/BtMusicActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/ts/bt/BtExe;->addHandler(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onDestroy()V

    .line 218
    invoke-virtual {p0}, Lcom/ts/bt/BtMusicActivity;->unregMetadataCallback()V

    .line 220
    iget-object v0, p0, Lcom/ts/bt/BtMusicActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/ts/bt/BtExe;->removeHandler(Landroid/os/Handler;)V

    .line 221
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 184
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 185
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onPause()V

    .line 186
    iget-object v0, p0, Lcom/ts/bt/BtMusicActivity;->D:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BtMusicActivity"

    const-string v1, "+ onPause()+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 192
    const/4 v0, 0x7

    invoke-virtual {p0, p0, v0}, Lcom/ts/bt/BtMusicActivity;->SubItemsInit(Landroid/app/Activity;I)V

    .line 193
    iget-object v0, p0, Lcom/ts/bt/BtMusicActivity;->D:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BtMusicActivity"

    const-string v1, "+ onResume()+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 197
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->regPlayerUtility()V

    .line 198
    invoke-virtual {p0}, Lcom/ts/bt/BtMusicActivity;->regMetadataCallback()V

    .line 199
    iget-object v0, p0, Lcom/ts/bt/BtMusicActivity;->bt:Lcom/ts/bt/BtExe;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/bt/BtExe;->checkBtAvState(Z)V

    .line 200
    iget-object v0, p0, Lcom/ts/bt/BtMusicActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->musicPlay()V

    .line 201
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onResume()V

    .line 202
    invoke-direct {p0}, Lcom/ts/bt/BtMusicActivity;->UpdateUI()V

    .line 203
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 204
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onStart()V

    .line 178
    iget-object v0, p0, Lcom/ts/bt/BtMusicActivity;->D:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BtMusicActivity"

    const-string v1, "+ onStart()+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onStop()V

    .line 210
    iget-object v0, p0, Lcom/ts/bt/BtMusicActivity;->D:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BtMusicActivity"

    const-string v1, "+ onStop()+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    return-void
.end method

.method public onTimer()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/ts/bt/BtMusicActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtMusicActivity;->showActivity(I)V

    .line 447
    invoke-virtual {p0}, Lcom/ts/bt/BtMusicActivity;->finish()V

    .line 451
    :cond_0
    return-void
.end method

.method regMetadataCallback()V
    .locals 3

    .prologue
    .line 376
    const-string v1, "BtMusicActivity"

    const-string v2, "regMetadataCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/16 v1, 0xc

    invoke-static {v1}, Lcom/ts/bt/BtExe;->getProfile(I)Lcom/autochips/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    .line 377
    check-cast v0, Lcom/autochips/bluetooth/AvrcpControllerProfile;

    .line 379
    .local v0, "avrcpProfile":Lcom/autochips/bluetooth/AvrcpControllerProfile;
    if-eqz v0, :cond_0

    .line 380
    iget-object v1, p0, Lcom/ts/bt/BtMusicActivity;->mMetadataCallback:Lcom/autochips/bluetooth/AvrcpControllerProfile$MetadataCallback;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/AvrcpControllerProfile;->regMetaCallback(Lcom/autochips/bluetooth/AvrcpControllerProfile$MetadataCallback;)V

    .line 381
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/AvrcpControllerProfile;->setPlayerState(Z)V

    .line 383
    :cond_0
    return-void
.end method

.method unregMetadataCallback()V
    .locals 3

    .prologue
    .line 386
    const-string v1, "BtMusicActivity"

    const-string v2, "unregMetadataCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/16 v1, 0xc

    invoke-static {v1}, Lcom/ts/bt/BtExe;->getProfile(I)Lcom/autochips/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    .line 387
    check-cast v0, Lcom/autochips/bluetooth/AvrcpControllerProfile;

    .line 390
    .local v0, "avrcpProfile":Lcom/autochips/bluetooth/AvrcpControllerProfile;
    if-eqz v0, :cond_0

    .line 391
    iget-object v1, p0, Lcom/ts/bt/BtMusicActivity;->mMetadataCallback:Lcom/autochips/bluetooth/AvrcpControllerProfile$MetadataCallback;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/AvrcpControllerProfile;->unregMetaCallback(Lcom/autochips/bluetooth/AvrcpControllerProfile$MetadataCallback;)V

    .line 392
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/AvrcpControllerProfile;->setPlayerState(Z)V

    .line 394
    :cond_0
    return-void
.end method
