.class Lcom/ts/main/common/CrashHandler$1;
.super Ljava/lang/Thread;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/common/CrashHandler;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/common/CrashHandler;

.field private final synthetic val$crashReport:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ts/main/common/CrashHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/common/CrashHandler$1;->this$0:Lcom/ts/main/common/CrashHandler;

    iput-object p2, p0, Lcom/ts/main/common/CrashHandler$1;->val$crashReport:Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ts/main/common/CrashHandler$1;->this$0:Lcom/ts/main/common/CrashHandler;

    iget-object v1, p0, Lcom/ts/main/common/CrashHandler$1;->this$0:Lcom/ts/main/common/CrashHandler;

    # getter for: Lcom/ts/main/common/CrashHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/common/CrashHandler;->access$0(Lcom/ts/main/common/CrashHandler;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ts/main/common/CrashHandler$1;->val$crashReport:Ljava/lang/String;

    # invokes: Lcom/ts/main/common/CrashHandler;->sendAppCrashReport(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/ts/main/common/CrashHandler;->access$1(Lcom/ts/main/common/CrashHandler;Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    return-void
.end method
