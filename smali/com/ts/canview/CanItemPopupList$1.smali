.class Lcom/ts/canview/CanItemPopupList$1;
.super Ljava/lang/Object;
.source "CanItemPopupList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/canview/CanItemPopupList;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/canview/CanItemPopupList;


# direct methods
.method constructor <init>(Lcom/ts/canview/CanItemPopupList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/canview/CanItemPopupList$1;->this$0:Lcom/ts/canview/CanItemPopupList;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/ts/canview/CanItemPopupList$1;->this$0:Lcom/ts/canview/CanItemPopupList;

    # getter for: Lcom/ts/canview/CanItemPopupList;->mBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/ts/canview/CanItemPopupList;->access$0(Lcom/ts/canview/CanItemPopupList;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 248
    return-void
.end method
