.class public Lcom/ts/main/navi/NaviMainActivity;
.super Landroid/app/Activity;
.source "NaviMainActivity.java"


# static fields
.field static final NAVI_PATH_STRING:Ljava/lang/String; = "/mnt/sdcard/amapauto8"


# instance fields
.field bCheck:Z

.field byteNavipath:[B

.field m_dialgo:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ts/main/navi/NaviMainActivity;->byteNavipath:[B

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/main/navi/NaviMainActivity;->bCheck:Z

    .line 20
    return-void
.end method

.method private ShowOneMessage(Ljava/lang/String;I)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "nFinish"    # I

    .prologue
    .line 67
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 69
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ts/main/navi/NaviMainActivity$1;

    invoke-direct {v2, p0}, Lcom/ts/main/navi/NaviMainActivity$1;-><init>(Lcom/ts/main/navi/NaviMainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 78
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/ts/main/navi/NaviMainActivity$2;

    invoke-direct {v2, p0}, Lcom/ts/main/navi/NaviMainActivity$2;-><init>(Lcom/ts/main/navi/NaviMainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 86
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    iget-object v2, p0, Lcom/ts/main/navi/NaviMainActivity;->byteNavipath:[B

    invoke-static {v2}, Lcom/yyw/ts70xhw/StSet;->GetNaviPack([B)I

    .line 29
    iget-object v2, p0, Lcom/ts/main/navi/NaviMainActivity;->byteNavipath:[B

    invoke-static {v2}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "NaviPath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ts/main/navi/NaviMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 31
    .local v1, "it":Landroid/content/Intent;
    const-string v2, "NaviMainActivity  PATH ="

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-boolean v2, Lcom/ts/main/common/MainSet;->bCheckNave:Z

    if-eqz v2, :cond_0

    .line 34
    sput-boolean v4, Lcom/ts/main/common/MainSet;->bCheckNave:Z

    .line 35
    invoke-static {}, Lcom/ts/main/common/MainSet;->isZh()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v2

    const-string v3, "com.android.vending"

    invoke-virtual {v2, v3}, Lcom/ts/main/common/MainSet;->IsHaveApk(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    const-string v2, "/mnt/sdcard/amapauto8"

    invoke-static {v2}, Lcom/ts/MainUI/TsFile;->fileIsExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    const-string v2, "\u53d1\u73b0\u5927\u5bb9\u91cf\u56fd\u5185\u5730\u56fe\u6570\u636e,\u662f\u5426\u5220\u9664"

    invoke-direct {p0, v2, v4}, Lcom/ts/main/navi/NaviMainActivity;->ShowOneMessage(Ljava/lang/String;I)V

    .line 57
    :goto_0
    return-void

    .line 48
    :cond_0
    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p0, v1}, Lcom/ts/main/navi/NaviMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 56
    :goto_1
    invoke-virtual {p0}, Lcom/ts/main/navi/NaviMainActivity;->finish()V

    goto :goto_0

    .line 54
    :cond_1
    const/16 v2, 0xb

    const/16 v3, 0x63

    invoke-static {v2, v3}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    return-void
.end method
