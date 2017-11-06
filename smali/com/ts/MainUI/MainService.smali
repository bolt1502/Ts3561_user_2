.class public Lcom/ts/MainUI/MainService;
.super Landroid/app/Service;
.source "MainService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/MainUI/MainService$MainRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainService"


# instance fields
.field private mMainTask:Lcom/ts/MainUI/MainTask;

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 12
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/MainUI/MainService;->mMainTask:Lcom/ts/MainUI/MainTask;

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ts/MainUI/MainService;->mainHandler:Landroid/os/Handler;

    .line 10
    return-void
.end method

.method static synthetic access$0(Lcom/ts/MainUI/MainService;)Lcom/ts/MainUI/MainTask;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/ts/MainUI/MainService;->mMainTask:Lcom/ts/MainUI/MainTask;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ts/MainUI/MainService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ts/MainUI/MainService;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 41
    const-string v1, "MainService"

    const-string v2, "start service!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "startIntent":Landroid/content/Intent;
    const-string v1, "com.ts.MainUI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, v0}, Lcom/ts/MainUI/MainService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 45
    iget-object v1, p0, Lcom/ts/MainUI/MainService;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ts/MainUI/MainService$MainRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/ts/MainUI/MainService$MainRunnable;-><init>(Lcom/ts/MainUI/MainService;Lcom/ts/MainUI/MainService$MainRunnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 47
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "MainService"

    const-string v1, "######## Service Destroy !"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 54
    return-void
.end method
