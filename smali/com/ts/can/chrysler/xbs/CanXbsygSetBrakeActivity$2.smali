.class Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity$2;
.super Ljava/lang/Object;
.source "CanXbsygSetBrakeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity$2;->this$0:Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity$2;->this$0:Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->CarSet(II)V

    .line 216
    return-void
.end method
