.class Lcom/ts/factoryset/FsCanActivity$3;
.super Ljava/lang/Object;
.source "FsCanActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/factoryset/FsCanActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/ts/factoryset/FsCanActivity;


# direct methods
.method constructor <init>(Lcom/ts/factoryset/FsCanActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/factoryset/FsCanActivity$3;->this$0:Lcom/ts/factoryset/FsCanActivity;

    .line 79
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
    .line 83
    iget-object v0, p0, Lcom/ts/factoryset/FsCanActivity$3;->this$0:Lcom/ts/factoryset/FsCanActivity;

    # getter for: Lcom/ts/factoryset/FsCanActivity;->mAdapater:Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;
    invoke-static {v0}, Lcom/ts/factoryset/FsCanActivity;->access$1(Lcom/ts/factoryset/FsCanActivity;)Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->setSel(I)V

    .line 85
    return-void
.end method
