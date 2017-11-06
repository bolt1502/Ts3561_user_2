.class public Lcom/ts/main/Media/SDMainActivity;
.super Landroid/app/Activity;
.source "SDMainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/common/MainSet;->FtSetInint()I

    .line 18
    const-string v0, "com.ts.dvdplayer"

    const-string v1, "com.ts.dvdplayer.SDActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, v2, v2}, Lcom/ts/main/Media/SDMainActivity;->overridePendingTransition(II)V

    .line 20
    invoke-virtual {p0}, Lcom/ts/main/Media/SDMainActivity;->finish()V

    .line 21
    invoke-virtual {p0, v2, v2}, Lcom/ts/main/Media/SDMainActivity;->overridePendingTransition(II)V

    .line 22
    return-void
.end method
