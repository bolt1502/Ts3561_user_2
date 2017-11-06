.class public Lcom/ts/main/auth/FactorytestAudioActivity;
.super Landroid/app/Activity;
.source "FactorytestAudioActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field private static final LEFT_FILE:Ljava/lang/String; = "/storage/ext/sdcard1/left.wav"

.field private static final RIGHT_FILE:Ljava/lang/String; = "/storage/ext/sdcard1/right.wav"

.field private static final TAG:Ljava/lang/String; = "[scj:]Test"


# instance fields
.field BtnLeft:Landroid/widget/Button;

.field BtnRecord:Landroid/widget/Button;

.field BtnRight:Landroid/widget/Button;

.field bRecod:Z

.field mAudioRecoderUtils:Lcom/ts/main/auth/AudioRecoderUtils;

.field m_dialgo:Landroid/app/AlertDialog;

.field private mp:Landroid/media/MediaPlayer;

.field showTextView:Landroid/widget/TextView;

.field sstTextView:Landroid/widget/TextView;

.field strPathString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->bRecod:Z

    .line 47
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->mp:Landroid/media/MediaPlayer;

    .line 50
    new-instance v0, Lcom/ts/main/auth/AudioRecoderUtils;

    const-string v1, "/mnt/sdcard/"

    invoke-direct {v0, v1}, Lcom/ts/main/auth/AudioRecoderUtils;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->mAudioRecoderUtils:Lcom/ts/main/auth/AudioRecoderUtils;

    .line 31
    return-void
.end method

.method private ShowOneMessage(Ljava/lang/String;I)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "nFinish"    # I

    .prologue
    .line 152
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 154
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ts/main/auth/FactorytestAudioActivity$5;

    invoke-direct {v2, p0, p2}, Lcom/ts/main/auth/FactorytestAudioActivity$5;-><init>(Lcom/ts/main/auth/FactorytestAudioActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 152
    iput-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->m_dialgo:Landroid/app/AlertDialog;

    .line 172
    return-void
.end method

.method static synthetic access$0(Lcom/ts/main/auth/FactorytestAudioActivity;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/ts/main/auth/FactorytestAudioActivity;->ShowOneMessage(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method PlayFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "strPath"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v1, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 208
    iget-object v1, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 209
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->mp:Landroid/media/MediaPlayer;

    .line 212
    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->mp:Landroid/media/MediaPlayer;

    .line 216
    :try_start_0
    const-string v1, "[scj:]Test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PlayFile=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v1, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 243
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 250
    :goto_1
    iget-object v1, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 251
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "[scj:]Test"

    const-string v2, "IllegalArgumentException 111"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 224
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "[scj:]Test"

    const-string v2, "IllegalArgumentException 222"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 229
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "[scj:]Test"

    const-string v2, "IllegalArgumentException 333"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 234
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 237
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "[scj:]Test"

    const-string v2, "IllegalArgumentException 444"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 244
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method PlaySource(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/ts/main/auth/FactorytestAudioActivity;->StopMp()V

    .line 188
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->mp:Landroid/media/MediaPlayer;

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    iget-object v1, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 199
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method StopMp()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 180
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->mp:Landroid/media/MediaPlayer;

    .line 183
    :cond_0
    return-void
.end method

.method public UserAll()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method enterSubWin(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 258
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 259
    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactorytestAudioActivity;->startActivity(Landroid/content/Intent;)V

    .line 260
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x4

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget v0, Lcom/ts/MainUI/R$layout;->activity_factory_testaduio:I

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactorytestAudioActivity;->setContentView(I)V

    .line 57
    sget v0, Lcom/ts/MainUI/R$id;->btn_fatctory_record_audio:I

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactorytestAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->BtnRecord:Landroid/widget/Button;

    .line 58
    sget v0, Lcom/ts/MainUI/R$id;->btn_fatctory_record_text:I

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactorytestAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->showTextView:Landroid/widget/TextView;

    .line 59
    sget v0, Lcom/ts/MainUI/R$id;->btn_fatctory_audio_text:I

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactorytestAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->sstTextView:Landroid/widget/TextView;

    .line 60
    sget v0, Lcom/ts/MainUI/R$id;->btn_fatctory_left_audio:I

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactorytestAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->BtnLeft:Landroid/widget/Button;

    .line 61
    sget v0, Lcom/ts/MainUI/R$id;->btn_fatctory_right_audio:I

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactorytestAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->BtnRight:Landroid/widget/Button;

    .line 63
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->sstTextView:Landroid/widget/TextView;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->sstTextView:Landroid/widget/TextView;

    const-string v1, "\u6309\u4e0b\u6309\u94ae\u5f00\u59cb\u5f55\u97f3,\u8bf4\u8bdd\u5927\u4e8e80\u5206\u8d1d\u8ba4\u4e3a\u9ea6\u514b\u6b63\u5e38"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->BtnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->BtnRight:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->BtnLeft:Landroid/widget/Button;

    new-instance v1, Lcom/ts/main/auth/FactorytestAudioActivity$1;

    invoke-direct {v1, p0}, Lcom/ts/main/auth/FactorytestAudioActivity$1;-><init>(Lcom/ts/main/auth/FactorytestAudioActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->BtnRight:Landroid/widget/Button;

    new-instance v1, Lcom/ts/main/auth/FactorytestAudioActivity$2;

    invoke-direct {v1, p0}, Lcom/ts/main/auth/FactorytestAudioActivity$2;-><init>(Lcom/ts/main/auth/FactorytestAudioActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->mAudioRecoderUtils:Lcom/ts/main/auth/AudioRecoderUtils;

    new-instance v1, Lcom/ts/main/auth/FactorytestAudioActivity$3;

    invoke-direct {v1, p0}, Lcom/ts/main/auth/FactorytestAudioActivity$3;-><init>(Lcom/ts/main/auth/FactorytestAudioActivity;)V

    invoke-virtual {v0, v1}, Lcom/ts/main/auth/AudioRecoderUtils;->setOnAudioStatusUpdateListener(Lcom/ts/main/auth/AudioRecoderUtils$OnAudioStatusUpdateListener;)V

    .line 136
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity;->BtnRecord:Landroid/widget/Button;

    new-instance v1, Lcom/ts/main/auth/FactorytestAudioActivity$4;

    invoke-direct {v1, p0}, Lcom/ts/main/auth/FactorytestAudioActivity$4;-><init>(Lcom/ts/main/auth/FactorytestAudioActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 273
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 274
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 275
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 282
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 283
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_vol_set(I)V

    .line 284
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 286
    return-void
.end method
