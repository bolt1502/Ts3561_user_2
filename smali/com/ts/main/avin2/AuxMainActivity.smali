.class public Lcom/ts/main/avin2/AuxMainActivity;
.super Landroid/app/Activity;
.source "AuxMainActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field private static final TAG:Ljava/lang/String; = "AuxMainActivity"


# instance fields
.field private mEvc:Lcom/ts/MainUI/Evc;

.field private nMode:I

.field private nOpen:I

.field private textview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/avin2/AuxMainActivity;->mEvc:Lcom/ts/MainUI/Evc;

    .line 22
    iput v1, p0, Lcom/ts/main/avin2/AuxMainActivity;->nOpen:I

    .line 23
    iput v1, p0, Lcom/ts/main/avin2/AuxMainActivity;->nMode:I

    .line 14
    return-void
.end method

.method private DisplayToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 38
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    sget v0, Lcom/ts/MainUI/R$layout;->activity_aux_main:I

    invoke-virtual {p0, v0}, Lcom/ts/main/avin2/AuxMainActivity;->setContentView(I)V

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 53
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ts/main/avin2/AuxMainActivity;->mEvc:Lcom/ts/MainUI/Evc;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 44
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 46
    return-void
.end method
