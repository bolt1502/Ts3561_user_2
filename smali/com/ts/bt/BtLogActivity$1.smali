.class Lcom/ts/bt/BtLogActivity$1;
.super Ljava/lang/Object;
.source "BtLogActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/bt/BtLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/bt/BtLogActivity;


# direct methods
.method constructor <init>(Lcom/ts/bt/BtLogActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/bt/BtLogActivity$1;->this$0:Lcom/ts/bt/BtLogActivity;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "V"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/ts/bt/BtLogActivity$1;->this$0:Lcom/ts/bt/BtLogActivity;

    invoke-virtual {v0, p3}, Lcom/ts/bt/BtLogActivity;->dial(I)V

    .line 226
    iget-object v0, p0, Lcom/ts/bt/BtLogActivity$1;->this$0:Lcom/ts/bt/BtLogActivity;

    iget-object v0, v0, Lcom/ts/bt/BtLogActivity;->mHistoryListAdapter:Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;

    invoke-virtual {v0, p3}, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;->setSelect(I)V

    .line 227
    iget-object v0, p0, Lcom/ts/bt/BtLogActivity$1;->this$0:Lcom/ts/bt/BtLogActivity;

    iget-object v0, v0, Lcom/ts/bt/BtLogActivity;->mHistoryListAdapter:Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;

    invoke-virtual {v0}, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;->notifyDataSetChanged()V

    .line 228
    return-void
.end method
