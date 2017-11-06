.class public Lcom/ts/main/Media/DvdBoxMainActivity;
.super Landroid/app/Activity;
.source "DvdBoxMainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/common/MainSet;->FtSetInint()I

    .line 19
    const-string v0, "com.ts.dvdplayer"

    const-string v1, "com.ts.dvdplayer.DvdBoxActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/ts/main/Media/DvdBoxMainActivity;->finish()V

    .line 21
    return-void
.end method
