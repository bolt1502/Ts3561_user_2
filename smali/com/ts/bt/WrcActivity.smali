.class public Lcom/ts/bt/WrcActivity;
.super Landroid/app/Activity;
.source "WrcActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field private static final TAG:Ljava/lang/String; = "lh"


# instance fields
.field private mConnect:Landroid/widget/Button;

.field private mConnectListener:Landroid/view/View$OnClickListener;

.field private mWatch:Landroid/widget/ImageView;

.field private mWatchConnect:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Lcom/ts/bt/WrcActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/bt/WrcActivity$1;-><init>(Lcom/ts/bt/WrcActivity;)V

    iput-object v0, p0, Lcom/ts/bt/WrcActivity;->mConnectListener:Landroid/view/View$OnClickListener;

    .line 24
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ts/bt/WrcActivity;->mConnect:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ts/bt/WrcActivity;->mConnectListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/ts/MainUI/R$id;->btn_connect:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/WrcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/bt/WrcActivity;->mConnect:Landroid/widget/Button;

    .line 41
    sget v0, Lcom/ts/MainUI/R$id;->iv_watch_break:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/WrcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/bt/WrcActivity;->mWatchConnect:Landroid/widget/ImageView;

    .line 42
    sget v0, Lcom/ts/MainUI/R$id;->iv_watch_pic:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/WrcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/bt/WrcActivity;->mWatch:Landroid/widget/ImageView;

    .line 43
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/ts/main/txz/Wrc;->GetInstance()Lcom/ts/main/txz/Wrc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/txz/Wrc;->isConnectWrc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/ts/bt/WrcActivity;->mWatchConnect:Landroid/widget/ImageView;

    sget v1, Lcom/ts/MainUI/R$drawable;->watch_connect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    iget-object v0, p0, Lcom/ts/bt/WrcActivity;->mWatch:Landroid/widget/ImageView;

    sget v1, Lcom/ts/MainUI/R$drawable;->watch_pic_dn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/ts/bt/WrcActivity;->mWatchConnect:Landroid/widget/ImageView;

    sget v1, Lcom/ts/MainUI/R$drawable;->watch_break:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v0, p0, Lcom/ts/bt/WrcActivity;->mWatch:Landroid/widget/ImageView;

    sget v1, Lcom/ts/MainUI/R$drawable;->watch_pic_up:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget v0, Lcom/ts/MainUI/R$layout;->activity_bt_wrc:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/WrcActivity;->setContentView(I)V

    .line 35
    invoke-direct {p0}, Lcom/ts/bt/WrcActivity;->initView()V

    .line 36
    invoke-direct {p0}, Lcom/ts/bt/WrcActivity;->initListener()V

    .line 37
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 71
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 66
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 60
    return-void
.end method
