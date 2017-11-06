.class Lcom/ts/canview/CanTimerMsgBox$1;
.super Ljava/lang/Object;
.source "CanTimerMsgBox.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/canview/CanTimerMsgBox;-><init>(Landroid/content/Context;JI)V
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
    iput-object p1, p0, Lcom/ts/canview/CanTimerMsgBox$1;->this$0:Lcom/ts/canview/CanTimerMsgBox;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ts/canview/CanTimerMsgBox$1;->this$0:Lcom/ts/canview/CanTimerMsgBox;

    # invokes: Lcom/ts/canview/CanTimerMsgBox;->StopTimer()V
    invoke-static {v0}, Lcom/ts/canview/CanTimerMsgBox;->access$0(Lcom/ts/canview/CanTimerMsgBox;)V

    .line 32
    return-void
.end method
