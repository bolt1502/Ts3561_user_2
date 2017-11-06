.class Lcom/ts/factoryset/FsDisplayActivity$3;
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
    iput-object p1, p0, Lcom/ts/factoryset/FsDisplayActivity$3;->this$0:Lcom/ts/factoryset/FsDisplayActivity;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
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
    iget-object v2, p0, Lcom/ts/factoryset/FsDisplayActivity$3;->this$0:Lcom/ts/factoryset/FsDisplayActivity;

    # getter for: Lcom/ts/factoryset/FsDisplayActivity;->mTconVal:[I
    invoke-static {v2}, Lcom/ts/factoryset/FsDisplayActivity;->access$0(Lcom/ts/factoryset/FsDisplayActivity;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/ts/factoryset/FsDisplayActivity$3;->this$0:Lcom/ts/factoryset/FsDisplayActivity;

    # getter for: Lcom/ts/factoryset/FsDisplayActivity;->mCurItem:I
    invoke-static {v3}, Lcom/ts/factoryset/FsDisplayActivity;->access$1(Lcom/ts/factoryset/FsDisplayActivity;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v3, v1

    aget v2, v2, v3

    if-lez v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/ts/factoryset/FsDisplayActivity$3;->this$0:Lcom/ts/factoryset/FsDisplayActivity;

    # getter for: Lcom/ts/factoryset/FsDisplayActivity;->mTconVal:[I
    invoke-static {v2}, Lcom/ts/factoryset/FsDisplayActivity;->access$0(Lcom/ts/factoryset/FsDisplayActivity;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/ts/factoryset/FsDisplayActivity$3;->this$0:Lcom/ts/factoryset/FsDisplayActivity;

    # getter for: Lcom/ts/factoryset/FsDisplayActivity;->mCurItem:I
    invoke-static {v3}, Lcom/ts/factoryset/FsDisplayActivity;->access$1(Lcom/ts/factoryset/FsDisplayActivity;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v3, v1

    aget v4, v2, v3

    add-int/lit8 v4, v4, -0x1

    aput v4, v2, v3

    .line 194
    iget-object v2, p0, Lcom/ts/factoryset/FsDisplayActivity$3;->this$0:Lcom/ts/factoryset/FsDisplayActivity;

    # getter for: Lcom/ts/factoryset/FsDisplayActivity;->mTconVal:[I
    invoke-static {v2}, Lcom/ts/factoryset/FsDisplayActivity;->access$0(Lcom/ts/factoryset/FsDisplayActivity;)[I

    move-result-object v2

    invoke-static {v2}, Lcom/yyw/ts70xhw/FtSet;->SetTconVal([I)I

    .line 195
    iget-object v2, p0, Lcom/ts/factoryset/FsDisplayActivity$3;->this$0:Lcom/ts/factoryset/FsDisplayActivity;

    iget-object v3, p0, Lcom/ts/factoryset/FsDisplayActivity$3;->this$0:Lcom/ts/factoryset/FsDisplayActivity;

    # getter for: Lcom/ts/factoryset/FsDisplayActivity;->mCurItem:I
    invoke-static {v3}, Lcom/ts/factoryset/FsDisplayActivity;->access$1(Lcom/ts/factoryset/FsDisplayActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/FsDisplayActivity;->updateItem(I)V

    .line 197
    :cond_0
    return-void
.end method
