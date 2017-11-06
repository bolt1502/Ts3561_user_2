.class public Lcom/ts/main/auth/FactorytestvideoActivity;
.super Landroid/app/Activity;
.source "FactorytestvideoActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field private static final TAG:Ljava/lang/String; = "[scj:]Test"


# instance fields
.field BtnVideo:[Landroid/widget/Button;

.field bBt1:Z

.field bBt2:Z

.field bBt3:Z

.field nextWinButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/main/auth/FactorytestvideoActivity;->BtnVideo:[Landroid/widget/Button;

    .line 25
    iput-boolean v1, p0, Lcom/ts/main/auth/FactorytestvideoActivity;->bBt1:Z

    .line 26
    iput-boolean v1, p0, Lcom/ts/main/auth/FactorytestvideoActivity;->bBt2:Z

    .line 27
    iput-boolean v1, p0, Lcom/ts/main/auth/FactorytestvideoActivity;->bBt3:Z

    .line 17
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 0

    .prologue
    .line 114
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
    .line 106
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactorytestvideoActivity;->startActivity(Landroid/content/Intent;)V

    .line 109
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget v0, Lcom/ts/MainUI/R$layout;->activity_factory_testvideo:I

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactorytestvideoActivity;->setContentView(I)V

    .line 32
    iget-object v1, p0, Lcom/ts/main/auth/FactorytestvideoActivity;->BtnVideo:[Landroid/widget/Button;

    sget v0, Lcom/ts/MainUI/R$id;->btn_fatctory_videot1:I

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactorytestvideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v5

    .line 33
    iget-object v1, p0, Lcom/ts/main/auth/FactorytestvideoActivity;->BtnVideo:[Landroid/widget/Button;

    sget v0, Lcom/ts/MainUI/R$id;->btn_fatctory_videot2:I

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactorytestvideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    .line 34
    iget-object v1, p0, Lcom/ts/main/auth/FactorytestvideoActivity;->BtnVideo:[Landroid/widget/Button;

    sget v0, Lcom/ts/MainUI/R$id;->btn_fatctory_videot3:I

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactorytestvideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v3

    .line 36
    sget v0, Lcom/ts/MainUI/R$id;->btn_fatctory_videotnext:I

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactorytestvideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/main/auth/FactorytestvideoActivity;->nextWinButton:Landroid/widget/Button;

    .line 38
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestvideoActivity;->BtnVideo:[Landroid/widget/Button;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestvideoActivity;->BtnVideo:[Landroid/widget/Button;

    aget-object v0, v0, v3

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestvideoActivity;->nextWinButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestvideoActivity;->BtnVideo:[Landroid/widget/Button;

    aget-object v0, v0, v5

    new-instance v1, Lcom/ts/main/auth/FactorytestvideoActivity$1;

    invoke-direct {v1, p0}, Lcom/ts/main/auth/FactorytestvideoActivity$1;-><init>(Lcom/ts/main/auth/FactorytestvideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestvideoActivity;->BtnVideo:[Landroid/widget/Button;

    aget-object v0, v0, v2

    new-instance v1, Lcom/ts/main/auth/FactorytestvideoActivity$2;

    invoke-direct {v1, p0}, Lcom/ts/main/auth/FactorytestvideoActivity$2;-><init>(Lcom/ts/main/auth/FactorytestvideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestvideoActivity;->BtnVideo:[Landroid/widget/Button;

    aget-object v0, v0, v3

    new-instance v1, Lcom/ts/main/auth/FactorytestvideoActivity$3;

    invoke-direct {v1, p0}, Lcom/ts/main/auth/FactorytestvideoActivity$3;-><init>(Lcom/ts/main/auth/FactorytestvideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestvideoActivity;->nextWinButton:Landroid/widget/Button;

    new-instance v1, Lcom/ts/main/auth/FactorytestvideoActivity$4;

    invoke-direct {v1, p0}, Lcom/ts/main/auth/FactorytestvideoActivity$4;-><init>(Lcom/ts/main/auth/FactorytestvideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 122
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 131
    return-void
.end method
