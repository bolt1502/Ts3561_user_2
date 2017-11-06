.class public Lcom/ts/main/TsDailer/TsDailerActivity;
.super Landroid/app/Activity;
.source "TsDailerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    const-string v1, "com.android.dialer"

    invoke-virtual {v0, v1}, Lcom/ts/main/common/MainSet;->IsHaveApk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    const-string v1, "com.android.dialer"

    invoke-virtual {v0, p0, v1}, Lcom/ts/main/common/MainSet;->openApplication(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/ts/main/TsDailer/TsDailerActivity;->finish()V

    .line 26
    return-void
.end method
