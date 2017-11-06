.class Lcom/ts/bt/BtPhoneBookActivity$1;
.super Ljava/lang/Object;
.source "BtPhoneBookActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/bt/BtPhoneBookActivity;
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
.field final synthetic this$0:Lcom/ts/bt/BtPhoneBookActivity;


# direct methods
.method constructor <init>(Lcom/ts/bt/BtPhoneBookActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/bt/BtPhoneBookActivity$1;->this$0:Lcom/ts/bt/BtPhoneBookActivity;

    .line 170
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
    .line 174
    .local p1, "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity$1;->this$0:Lcom/ts/bt/BtPhoneBookActivity;

    invoke-virtual {v0, p3}, Lcom/ts/bt/BtPhoneBookActivity;->dial(I)V

    .line 175
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity$1;->this$0:Lcom/ts/bt/BtPhoneBookActivity;

    # getter for: Lcom/ts/bt/BtPhoneBookActivity;->mPBListAdapter:Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;
    invoke-static {v0}, Lcom/ts/bt/BtPhoneBookActivity;->access$0(Lcom/ts/bt/BtPhoneBookActivity;)Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;->setSelect(I)V

    .line 176
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity$1;->this$0:Lcom/ts/bt/BtPhoneBookActivity;

    # getter for: Lcom/ts/bt/BtPhoneBookActivity;->mPBListAdapter:Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;
    invoke-static {v0}, Lcom/ts/bt/BtPhoneBookActivity;->access$0(Lcom/ts/bt/BtPhoneBookActivity;)Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;->notifyDataSetChanged()V

    .line 178
    return-void
.end method
