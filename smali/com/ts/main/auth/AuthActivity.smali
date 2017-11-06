.class public Lcom/ts/main/auth/AuthActivity;
.super Landroid/app/Activity;
.source "AuthActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field private static final TAG:Ljava/lang/String; = "AuthActivity"


# instance fields
.field m_AuthServer:Lcom/ts/MainUI/AuthServer;

.field m_dialgo:Landroid/app/AlertDialog;

.field nDellayTime:I

.field nStep:I

.field nUpdateOnce:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    iput v1, p0, Lcom/ts/main/auth/AuthActivity;->nDellayTime:I

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/ts/main/auth/AuthActivity;->nUpdateOnce:I

    .line 30
    invoke-static {}, Lcom/ts/MainUI/AuthServer;->GetInstance()Lcom/ts/MainUI/AuthServer;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/auth/AuthActivity;->m_AuthServer:Lcom/ts/MainUI/AuthServer;

    .line 31
    iput v1, p0, Lcom/ts/main/auth/AuthActivity;->nStep:I

    .line 20
    return-void
.end method

.method private ShowNetIsNotOK()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ts/main/auth/AuthActivity;->m_dialgo:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/ts/main/auth/AuthActivity;->m_dialgo:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 101
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 102
    const-string v1, "\u8bbe\u5907\u672a\u6fc0\u6d3b,\u8bf7\u8054\u7f51"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 103
    const-string v1, "Wifi"

    new-instance v2, Lcom/ts/main/auth/AuthActivity$2;

    invoke-direct {v2, p0}, Lcom/ts/main/auth/AuthActivity$2;-><init>(Lcom/ts/main/auth/AuthActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 113
    const-string v1, "3G/4G"

    new-instance v2, Lcom/ts/main/auth/AuthActivity$3;

    invoke-direct {v2, p0}, Lcom/ts/main/auth/AuthActivity$3;-><init>(Lcom/ts/main/auth/AuthActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 101
    iput-object v0, p0, Lcom/ts/main/auth/AuthActivity;->m_dialgo:Landroid/app/AlertDialog;

    .line 122
    return-void
.end method

.method private ShowOneMessage(Ljava/lang/String;I)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "nFinish"    # I

    .prologue
    .line 73
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 75
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ts/main/auth/AuthActivity$1;

    invoke-direct {v2, p0, p2}, Lcom/ts/main/auth/AuthActivity$1;-><init>(Lcom/ts/main/auth/AuthActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/ts/main/auth/AuthActivity;->m_dialgo:Landroid/app/AlertDialog;

    .line 92
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 6

    .prologue
    const/16 v5, 0x99

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 129
    iget v0, p0, Lcom/ts/main/auth/AuthActivity;->nStep:I

    packed-switch v0, :pswitch_data_0

    .line 195
    :goto_0
    iget v0, p0, Lcom/ts/main/auth/AuthActivity;->nDellayTime:I

    if-lez v0, :cond_0

    .line 197
    iget v0, p0, Lcom/ts/main/auth/AuthActivity;->nDellayTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ts/main/auth/AuthActivity;->nDellayTime:I

    .line 199
    iget v0, p0, Lcom/ts/main/auth/AuthActivity;->nDellayTime:I

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/ts/main/auth/AuthActivity;->m_AuthServer:Lcom/ts/MainUI/AuthServer;

    invoke-virtual {v0}, Lcom/ts/MainUI/AuthServer;->UpdateMcu()V

    .line 205
    :cond_0
    iget v0, p0, Lcom/ts/main/auth/AuthActivity;->nDellayTime:I

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/ts/main/auth/AuthActivity;->m_AuthServer:Lcom/ts/MainUI/AuthServer;

    invoke-virtual {v0}, Lcom/ts/MainUI/AuthServer;->GetnID()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 235
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 132
    :pswitch_1
    iget-object v0, p0, Lcom/ts/main/auth/AuthActivity;->m_AuthServer:Lcom/ts/MainUI/AuthServer;

    invoke-virtual {v0}, Lcom/ts/MainUI/AuthServer;->IsAuthOk()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    const-string v0, "\u8bbe\u5907\u5df2\u6fc0\u6d3b"

    invoke-direct {p0, v0, v4}, Lcom/ts/main/auth/AuthActivity;->ShowOneMessage(Ljava/lang/String;I)V

    .line 135
    iput v5, p0, Lcom/ts/main/auth/AuthActivity;->nStep:I

    goto :goto_0

    .line 139
    :cond_2
    iput v4, p0, Lcom/ts/main/auth/AuthActivity;->nStep:I

    goto :goto_0

    .line 144
    :pswitch_2
    iget-object v0, p0, Lcom/ts/main/auth/AuthActivity;->m_AuthServer:Lcom/ts/MainUI/AuthServer;

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/AuthServer;->IsNetOk(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 146
    invoke-direct {p0}, Lcom/ts/main/auth/AuthActivity;->ShowNetIsNotOK()V

    .line 147
    iput v5, p0, Lcom/ts/main/auth/AuthActivity;->nStep:I

    goto :goto_0

    .line 151
    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Lcom/ts/main/auth/AuthActivity;->nStep:I

    goto :goto_0

    .line 155
    :pswitch_3
    iget-object v0, p0, Lcom/ts/main/auth/AuthActivity;->m_AuthServer:Lcom/ts/MainUI/AuthServer;

    invoke-virtual {v0}, Lcom/ts/MainUI/AuthServer;->GettheLicense()Z

    move-result v0

    if-nez v0, :cond_4

    .line 157
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 158
    const-string v1, "\u672a\u53d1\u73b0\u6388\u6743\u6587\u4ef6"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 159
    const-string v1, "\u91cd\u8bd5"

    new-instance v2, Lcom/ts/main/auth/AuthActivity$4;

    invoke-direct {v2, p0}, Lcom/ts/main/auth/AuthActivity$4;-><init>(Lcom/ts/main/auth/AuthActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 167
    const-string v1, "\u8fd4\u56de"

    new-instance v2, Lcom/ts/main/auth/AuthActivity$5;

    invoke-direct {v2, p0}, Lcom/ts/main/auth/AuthActivity$5;-><init>(Lcom/ts/main/auth/AuthActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 157
    iput-object v0, p0, Lcom/ts/main/auth/AuthActivity;->m_dialgo:Landroid/app/AlertDialog;

    .line 175
    iput v5, p0, Lcom/ts/main/auth/AuthActivity;->nStep:I

    goto :goto_0

    .line 180
    :cond_4
    iget v0, p0, Lcom/ts/main/auth/AuthActivity;->nUpdateOnce:I

    if-ne v0, v4, :cond_5

    .line 182
    const-string v0, "\u5f00\u59cb\u6fc0\u6d3b"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 183
    iget-object v0, p0, Lcom/ts/main/auth/AuthActivity;->m_AuthServer:Lcom/ts/MainUI/AuthServer;

    invoke-virtual {v0}, Lcom/ts/MainUI/AuthServer;->Updateid()V

    .line 184
    iput v3, p0, Lcom/ts/main/auth/AuthActivity;->nUpdateOnce:I

    .line 187
    :cond_5
    iput v5, p0, Lcom/ts/main/auth/AuthActivity;->nStep:I

    goto/16 :goto_0

    .line 212
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ts/main/auth/AuthActivity;->m_AuthServer:Lcom/ts/MainUI/AuthServer;

    iget-object v1, v1, Lcom/ts/MainUI/AuthServer;->m_GetID:Lcom/ts/MainUI/GetID;

    iget v1, v1, Lcom/ts/MainUI/GetID;->mNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\u6fc0\u6d3b\u4e2d..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/ts/main/auth/AuthActivity;->ShowOneMessage(Ljava/lang/String;I)V

    .line 214
    const/16 v0, 0xc8

    iput v0, p0, Lcom/ts/main/auth/AuthActivity;->nDellayTime:I

    goto/16 :goto_1

    .line 218
    :pswitch_5
    const-string v0, "\u7f51\u7edc\u5f02\u5e38"

    invoke-direct {p0, v0, v3}, Lcom/ts/main/auth/AuthActivity;->ShowOneMessage(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 222
    :pswitch_6
    const-string v0, "\u6587\u4ef6\u65e0\u6548"

    invoke-direct {p0, v0, v3}, Lcom/ts/main/auth/AuthActivity;->ShowOneMessage(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 225
    :pswitch_7
    const-string v0, "\u6fc0\u6d3b\u5931\u8d25(1)"

    invoke-direct {p0, v0, v3}, Lcom/ts/main/auth/AuthActivity;->ShowOneMessage(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 229
    :pswitch_8
    const-string v0, "\u6fc0\u6d3b\u5931\u8d25(2)"

    invoke-direct {p0, v0, v3}, Lcom/ts/main/auth/AuthActivity;->ShowOneMessage(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 207
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget v0, Lcom/ts/MainUI/R$layout;->authactivity_main:I

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/AuthActivity;->setContentView(I)V

    .line 40
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 49
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/main/auth/AuthActivity;->nStep:I

    .line 56
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 60
    return-void
.end method
