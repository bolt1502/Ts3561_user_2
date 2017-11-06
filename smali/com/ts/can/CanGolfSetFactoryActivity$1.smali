.class Lcom/ts/can/CanGolfSetFactoryActivity$1;
.super Ljava/lang/Object;
.source "CanGolfSetFactoryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/can/CanGolfSetFactoryActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/CanGolfSetFactoryActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/CanGolfSetFactoryActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/CanGolfSetFactoryActivity$1;->this$0:Lcom/ts/can/CanGolfSetFactoryActivity;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ts/can/CanGolfSetFactoryActivity$1;->this$0:Lcom/ts/can/CanGolfSetFactoryActivity;

    iget-object v0, v0, Lcom/ts/can/CanGolfSetFactoryActivity;->mCurItem:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/ts/can/CanGolfSetFactoryActivity$1;->this$0:Lcom/ts/can/CanGolfSetFactoryActivity;

    iget-object v0, v0, Lcom/ts/can/CanGolfSetFactoryActivity;->mCurItem:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 108
    :cond_0
    return-void
.end method
