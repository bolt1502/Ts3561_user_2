.class public Lcom/ts/can/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field public static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/ts/can/MyApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getProcessName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "pid"    # I

    .prologue
    const/4 v3, 0x0

    .line 63
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 64
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 65
    .local v2, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v2, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-object v3

    .line 70
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 72
    .local v1, "procInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_2

    .line 74
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0
.end method

.method private printContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const-string v0, "MyApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "printContext = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .prologue
    .line 31
    invoke-direct {p0, p0}, Lcom/ts/can/MyApplication;->printContext(Landroid/content/Context;)V

    .line 32
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {p0, v2}, Lcom/ts/can/MyApplication;->getProcessName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "strProcess":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 35
    const-string v2, "MyApplication"

    const-string v3, "getProcessName = null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 59
    return-void

    .line 39
    :cond_1
    const-string v2, "MyApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getProcessName = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string v2, ":remote"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.ts.MainUI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v0}, Lcom/ts/can/MyApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 48
    sput-object p0, Lcom/ts/can/MyApplication;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {}, Lcom/ts/main/common/CrashHandler;->getInstance()Lcom/ts/main/common/CrashHandler;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/ts/main/common/CrashHandler;->init(Landroid/content/Context;)V

    .line 50
    sput-object p0, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    .line 51
    sput-object p0, Lcom/ts/main/common/WinShow;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {p0}, Lcom/ts/bt/BtExe;->setContext(Landroid/content/Context;)V

    .line 53
    invoke-static {}, Lcom/ts/can/CanFunc;->getInstance()Lcom/ts/can/CanFunc;

    move-result-object v2

    invoke-static {v2}, Lcom/ts/main/common/MainUI;->SetCanCallBack(Lcom/ts/main/common/CanInterface;)V

    .line 54
    invoke-static {}, Lcom/ts/can/CanFunc;->getInstance()Lcom/ts/can/CanFunc;

    move-result-object v2

    invoke-static {v2}, Lcom/ts/can/CanIF;->SetCanTypeCb(Lcom/ts/can/CanTypeStrCallBack;)V

    goto :goto_0
.end method
