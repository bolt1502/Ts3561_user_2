.class Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter$1;
.super Ljava/lang/Object;
.source "FsIconActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;


# direct methods
.method constructor <init>(Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter$1;->this$1:Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 284
    move-object v0, p1

    check-cast v0, Lcom/ts/other/ParamButton;

    .line 285
    .local v0, "curBtn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0}, Lcom/ts/other/ParamButton;->getIntParam2()I

    move-result v1

    .line 286
    .local v1, "id":I
    iget-object v2, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter$1;->this$1:Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;

    invoke-virtual {v2, v1}, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->onRightClick(I)V

    .line 287
    return-void
.end method
