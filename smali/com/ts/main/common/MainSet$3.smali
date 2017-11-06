.class Lcom/ts/main/common/MainSet$3;
.super Ljava/lang/Thread;
.source "MainSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/common/MainSet;->DealFactorySec(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/common/MainSet;


# direct methods
.method constructor <init>(Lcom/ts/main/common/MainSet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/common/MainSet$3;->this$0:Lcom/ts/main/common/MainSet;

    .line 1072
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1077
    :try_start_0
    iget-object v1, p0, Lcom/ts/main/common/MainSet$3;->this$0:Lcom/ts/main/common/MainSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ts/main/common/MainSet;->CopyandInstallAPK(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    :goto_0
    return-void

    .line 1079
    :catch_0
    move-exception v0

    .line 1081
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception when sendPointerSync"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
