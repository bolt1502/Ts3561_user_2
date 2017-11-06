.class Lcom/ts/canview/CanItemFsSetList$2;
.super Ljava/lang/Object;
.source "CanItemFsSetList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/canview/CanItemFsSetList;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/canview/CanItemFsSetList;


# direct methods
.method constructor <init>(Lcom/ts/canview/CanItemFsSetList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/canview/CanItemFsSetList$2;->this$0:Lcom/ts/canview/CanItemFsSetList;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/ts/canview/CanItemFsSetList$2;->this$0:Lcom/ts/canview/CanItemFsSetList;

    iget-object v0, v0, Lcom/ts/canview/CanItemFsSetList;->mCb:Lcom/ts/canview/CanItemFsSetList$onFsSetClick;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/ts/canview/CanItemFsSetList$2;->this$0:Lcom/ts/canview/CanItemFsSetList;

    iget-object v0, v0, Lcom/ts/canview/CanItemFsSetList;->mCb:Lcom/ts/canview/CanItemFsSetList$onFsSetClick;

    iget-object v1, p0, Lcom/ts/canview/CanItemFsSetList$2;->this$0:Lcom/ts/canview/CanItemFsSetList;

    iget v1, v1, Lcom/ts/canview/CanItemFsSetList;->mId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/ts/canview/CanItemFsSetList$onFsSetClick;->onFsItem(IZ)V

    .line 160
    :cond_0
    return-void
.end method
