.class public Lcom/ts/MainUI/AutoBootUp;
.super Landroid/content/BroadcastReceiver;
.source "AutoBootUp.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoBootUp"

.field public static bBootComplete:Z


# instance fields
.field mEvc:Lcom/ts/MainUI/Evc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/MainUI/AutoBootUp;->bBootComplete:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/MainUI/AutoBootUp;->mEvc:Lcom/ts/MainUI/Evc;

    .line 13
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 24
    const-string v3, "AutoBootUp"

    const-string v4, "######## B+ On (0)!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sput-boolean v5, Lcom/ts/MainUI/AutoBootUp;->bBootComplete:Z

    .line 26
    if-eqz p1, :cond_0

    .line 27
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .local v2, "startIntent":Landroid/content/Intent;
    const-string v3, "com.ts.MainUI"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 49
    .end local v2    # "startIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const-string v3, "android.media.GIS_AUDIO_STATUS_ACTION"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    const-string v3, "AutoBootUp"

    const-string v4, "get GIS_AUDIO_STATUS_ACTION "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v3, "android.media.EXTRA_GIS_AUDIO_STATUS_TYPE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 53
    .local v0, "GISAudiostatus":Z
    if-eqz v0, :cond_4

    .line 56
    iget-object v3, p0, Lcom/ts/MainUI/AutoBootUp;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v3, v5}, Lcom/ts/MainUI/Evc;->evol_navi_set(I)V

    .line 62
    :goto_1
    const-string v3, "AutoBootUp"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get GIS_AUDIO_STATUS_ACTION "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v0    # "GISAudiostatus":Z
    :cond_1
    return-void

    .line 32
    :cond_2
    const-string v3, "autochips.intent.action.QB_POWERON"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 34
    sput v5, Lcom/ts/MainUI/Evc;->mSystemState:I

    .line 35
    const-string v3, "AutoBootUp"

    const-string v4, "######## Acc On (1)!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    if-eqz p1, :cond_0

    .line 37
    new-instance v2, Landroid/content/Intent;

    .line 38
    const-string v3, "android.intent.action.MAIN_SERVICE"

    .line 37
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .restart local v2    # "startIntent":Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 43
    .end local v2    # "startIntent":Landroid/content/Intent;
    :cond_3
    const-string v3, "autochips.intent.action.QB_POWEROFF"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    const-string v3, "AutoBootUp"

    const-string v4, "get QB_POWEROFF "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    .restart local v0    # "GISAudiostatus":Z
    :cond_4
    iget-object v3, p0, Lcom/ts/MainUI/AutoBootUp;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v3, v6}, Lcom/ts/MainUI/Evc;->evol_navi_set(I)V

    goto :goto_1
.end method
