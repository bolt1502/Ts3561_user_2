.class Lcom/ts/factoryset/FsDisplayActivity$1;
.super Ljava/lang/Object;
.source "FsDisplayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/factoryset/FsDisplayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/factoryset/FsDisplayActivity;


# direct methods
.method constructor <init>(Lcom/ts/factoryset/FsDisplayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/factoryset/FsDisplayActivity$1;->this$0:Lcom/ts/factoryset/FsDisplayActivity;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 166
    move-object v0, p1

    check-cast v0, Lcom/ts/other/ParamButton;

    .line 167
    .local v0, "curBtn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0}, Lcom/ts/other/ParamButton;->getIntParam()I

    move-result v1

    invoke-static {v1}, Lcom/yyw/ts70xhw/FtSet;->SetTconAdj(I)I

    .line 168
    iget-object v1, p0, Lcom/ts/factoryset/FsDisplayActivity$1;->this$0:Lcom/ts/factoryset/FsDisplayActivity;

    invoke-virtual {v1}, Lcom/ts/factoryset/FsDisplayActivity;->updateSW()V

    .line 169
    return-void
.end method
