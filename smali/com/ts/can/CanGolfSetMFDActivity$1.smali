.class Lcom/ts/can/CanGolfSetMFDActivity$1;
.super Ljava/lang/Object;
.source "CanGolfSetMFDActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/can/CanGolfSetMFDActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/CanGolfSetMFDActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/CanGolfSetMFDActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/CanGolfSetMFDActivity$1;->this$0:Lcom/ts/can/CanGolfSetMFDActivity;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity$1;->this$0:Lcom/ts/can/CanGolfSetMFDActivity;

    # getter for: Lcom/ts/can/CanGolfSetMFDActivity;->mCurItem:Landroid/view/View;
    invoke-static {v0}, Lcom/ts/can/CanGolfSetMFDActivity;->access$0(Lcom/ts/can/CanGolfSetMFDActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity$1;->this$0:Lcom/ts/can/CanGolfSetMFDActivity;

    # getter for: Lcom/ts/can/CanGolfSetMFDActivity;->mCurItem:Landroid/view/View;
    invoke-static {v0}, Lcom/ts/can/CanGolfSetMFDActivity;->access$0(Lcom/ts/can/CanGolfSetMFDActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 362
    :cond_0
    return-void
.end method
