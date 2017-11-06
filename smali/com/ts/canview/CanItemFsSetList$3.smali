.class Lcom/ts/canview/CanItemFsSetList$3;
.super Ljava/lang/Object;
.source "CanItemFsSetList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    iput-object p1, p0, Lcom/ts/canview/CanItemFsSetList$3;->this$0:Lcom/ts/canview/CanItemFsSetList;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/ts/canview/CanItemFsSetList$3;->this$0:Lcom/ts/canview/CanItemFsSetList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemFsSetList;->GetView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 170
    return-void
.end method
