.class Lcom/ts/MainUI/Evc$2;
.super Ljava/lang/Thread;
.source "Evc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/MainUI/Evc;


# direct methods
.method constructor <init>(Lcom/ts/MainUI/Evc;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/MainUI/Evc$2;->this$0:Lcom/ts/MainUI/Evc;

    .line 305
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 309
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->DiscStop()I

    .line 316
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
