.class public Lcom/ts/main/ipod/IpodMainActivity;
.super Landroid/app/Activity;
.source "IpodMainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/common/MainSet;->FtSetInint()I

    .line 17
    const-string v0, "com.ts.ipodplayer"

    const-string v1, "com.ts.ipodplayer.activity.IpodMainActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 19
    invoke-virtual {p0}, Lcom/ts/main/ipod/IpodMainActivity;->finish()V

    .line 20
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 28
    return-void
.end method
