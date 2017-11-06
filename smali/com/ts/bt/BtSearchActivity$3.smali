.class Lcom/ts/bt/BtSearchActivity$3;
.super Ljava/lang/Object;
.source "BtSearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/bt/BtSearchActivity;->dail(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/bt/BtSearchActivity;


# direct methods
.method constructor <init>(Lcom/ts/bt/BtSearchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/bt/BtSearchActivity$3;->this$0:Lcom/ts/bt/BtSearchActivity;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/ts/bt/BtSearchActivity$3;->this$0:Lcom/ts/bt/BtSearchActivity;

    # getter for: Lcom/ts/bt/BtSearchActivity;->mDialNum:Ljava/lang/String;
    invoke-static {v0}, Lcom/ts/bt/BtSearchActivity;->access$1(Lcom/ts/bt/BtSearchActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/ts/bt/BtSearchActivity$3;->this$0:Lcom/ts/bt/BtSearchActivity;

    # getter for: Lcom/ts/bt/BtSearchActivity;->bt:Lcom/ts/bt/BtExe;
    invoke-static {v0}, Lcom/ts/bt/BtSearchActivity;->access$2(Lcom/ts/bt/BtSearchActivity;)Lcom/ts/bt/BtExe;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/bt/BtSearchActivity$3;->this$0:Lcom/ts/bt/BtSearchActivity;

    # getter for: Lcom/ts/bt/BtSearchActivity;->mDialNum:Ljava/lang/String;
    invoke-static {v1}, Lcom/ts/bt/BtSearchActivity;->access$1(Lcom/ts/bt/BtSearchActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/bt/BtExe;->dial(Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method
