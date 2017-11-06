.class Lcom/ts/canview/CanTimerMsgBox$2;
.super Ljava/util/TimerTask;
.source "CanTimerMsgBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/canview/CanTimerMsgBox;->StartTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/canview/CanTimerMsgBox;


# direct methods
.method constructor <init>(Lcom/ts/canview/CanTimerMsgBox;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/canview/CanTimerMsgBox$2;->this$0:Lcom/ts/canview/CanTimerMsgBox;

    .line 48
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ts/canview/CanTimerMsgBox$2;->this$0:Lcom/ts/canview/CanTimerMsgBox;

    # invokes: Lcom/ts/canview/CanTimerMsgBox;->StopTimer()V
    invoke-static {v0}, Lcom/ts/canview/CanTimerMsgBox;->access$0(Lcom/ts/canview/CanTimerMsgBox;)V

    .line 55
    return-void
.end method
