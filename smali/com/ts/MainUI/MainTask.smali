.class public Lcom/ts/MainUI/MainTask;
.super Ljava/lang/Object;
.source "MainTask.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mMainTask:Lcom/ts/MainUI/MainTask;


# instance fields
.field protected mTaskCallBack:Lcom/ts/MainUI/TaskCallBack;

.field protected mUserCallBack:Lcom/ts/MainUI/UserCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "MainTask"

    sput-object v0, Lcom/ts/MainUI/MainTask;->TAG:Ljava/lang/String;

    .line 7
    new-instance v0, Lcom/ts/MainUI/MainTask;

    invoke-direct {v0}, Lcom/ts/MainUI/MainTask;-><init>()V

    sput-object v0, Lcom/ts/MainUI/MainTask;->mMainTask:Lcom/ts/MainUI/MainTask;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetInstance()Lcom/ts/MainUI/MainTask;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/ts/MainUI/MainTask;->mMainTask:Lcom/ts/MainUI/MainTask;

    return-object v0
.end method


# virtual methods
.method public SetTaskCallBack(Lcom/ts/MainUI/TaskCallBack;)V
    .locals 0
    .param p1, "cb"    # Lcom/ts/MainUI/TaskCallBack;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/ts/MainUI/MainTask;->mTaskCallBack:Lcom/ts/MainUI/TaskCallBack;

    .line 21
    return-void
.end method

.method public SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V
    .locals 3
    .param p1, "cb"    # Lcom/ts/MainUI/UserCallBack;

    .prologue
    .line 14
    sget-object v0, Lcom/ts/MainUI/MainTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cb=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iput-object p1, p0, Lcom/ts/MainUI/MainTask;->mUserCallBack:Lcom/ts/MainUI/UserCallBack;

    .line 16
    return-void
.end method
