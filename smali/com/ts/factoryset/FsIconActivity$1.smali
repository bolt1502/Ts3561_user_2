.class Lcom/ts/factoryset/FsIconActivity$1;
.super Ljava/lang/Object;
.source "FsIconActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/factoryset/FsIconActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/ts/factoryset/FsIconActivity;


# direct methods
.method constructor <init>(Lcom/ts/factoryset/FsIconActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/factoryset/FsIconActivity$1;->this$0:Lcom/ts/factoryset/FsIconActivity;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ts/factoryset/FsIconActivity$1;->this$0:Lcom/ts/factoryset/FsIconActivity;

    # getter for: Lcom/ts/factoryset/FsIconActivity;->mListAdapater:Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;
    invoke-static {v0}, Lcom/ts/factoryset/FsIconActivity;->access$0(Lcom/ts/factoryset/FsIconActivity;)Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->onLeftClick(I)V

    .line 77
    return-void
.end method
