.class Lcom/ts/factoryset/FsVolActivity$FsVolAdapter$1;
.super Ljava/lang/Object;
.source "FsVolActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;


# direct methods
.method constructor <init>(Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter$1;->this$1:Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    move-object v0, p1

    check-cast v0, Lcom/ts/other/ParamButton;

    .line 190
    .local v0, "curBtn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0}, Lcom/ts/other/ParamButton;->getIntParam()I

    move-result v1

    .line 191
    .local v1, "id":I
    invoke-virtual {v0}, Lcom/ts/other/ParamButton;->getIntParam2()I

    move-result v2

    if-nez v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter$1;->this$1:Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;

    const/4 v3, 0x0

    # invokes: Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->changeData(IZ)V
    invoke-static {v2, v1, v3}, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->access$0(Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;IZ)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter$1;->this$1:Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;

    const/4 v3, 0x1

    # invokes: Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->changeData(IZ)V
    invoke-static {v2, v1, v3}, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->access$0(Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;IZ)V

    goto :goto_0
.end method
