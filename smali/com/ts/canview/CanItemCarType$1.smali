.class Lcom/ts/canview/CanItemCarType$1;
.super Ljava/lang/Object;
.source "CanItemCarType.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/canview/CanItemCarType;->onItem(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/canview/CanItemCarType;


# direct methods
.method constructor <init>(Lcom/ts/canview/CanItemCarType;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/canview/CanItemCarType$1;->this$0:Lcom/ts/canview/CanItemCarType;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ts/canview/CanItemCarType$1;->this$0:Lcom/ts/canview/CanItemCarType;

    # getter for: Lcom/ts/canview/CanItemCarType;->mCallBack:Lcom/ts/canview/CanItemPopupList$onPopItemClick;
    invoke-static {v0}, Lcom/ts/canview/CanItemCarType;->access$0(Lcom/ts/canview/CanItemCarType;)Lcom/ts/canview/CanItemPopupList$onPopItemClick;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/ts/canview/CanItemCarType$1;->this$0:Lcom/ts/canview/CanItemCarType;

    # getter for: Lcom/ts/canview/CanItemCarType;->mCallBack:Lcom/ts/canview/CanItemPopupList$onPopItemClick;
    invoke-static {v0}, Lcom/ts/canview/CanItemCarType;->access$0(Lcom/ts/canview/CanItemCarType;)Lcom/ts/canview/CanItemPopupList$onPopItemClick;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/canview/CanItemCarType$1;->this$0:Lcom/ts/canview/CanItemCarType;

    # getter for: Lcom/ts/canview/CanItemCarType;->mItemPopup:Lcom/ts/canview/CanItemPopupList;
    invoke-static {v1}, Lcom/ts/canview/CanItemCarType;->access$1(Lcom/ts/canview/CanItemCarType;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetId()I

    move-result v1

    iget-object v2, p0, Lcom/ts/canview/CanItemCarType$1;->this$0:Lcom/ts/canview/CanItemCarType;

    # getter for: Lcom/ts/canview/CanItemCarType;->para:I
    invoke-static {v2}, Lcom/ts/canview/CanItemCarType;->access$2(Lcom/ts/canview/CanItemCarType;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/ts/canview/CanItemPopupList$onPopItemClick;->onItem(II)V

    .line 72
    :cond_0
    return-void
.end method
