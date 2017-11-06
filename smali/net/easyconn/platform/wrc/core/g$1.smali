.class Lnet/easyconn/platform/wrc/core/g$1;
.super Ljava/lang/Object;
.source "WrcCheckManager.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/platform/wrc/core/g;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/easyconn/platform/wrc/core/g;


# direct methods
.method constructor <init>(Lnet/easyconn/platform/wrc/core/g;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/g$1;->a:Lnet/easyconn/platform/wrc/core/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "check"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
