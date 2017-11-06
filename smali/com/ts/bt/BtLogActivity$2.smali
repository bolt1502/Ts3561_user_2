.class Lcom/ts/bt/BtLogActivity$2;
.super Ljava/lang/Object;
.source "BtLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/bt/BtLogActivity;->dial(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/bt/BtLogActivity;


# direct methods
.method constructor <init>(Lcom/ts/bt/BtLogActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/bt/BtLogActivity$2;->this$0:Lcom/ts/bt/BtLogActivity;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 162
    sget v0, Lcom/ts/bt/BtExe;->mCallSta:I

    if-le v0, v1, :cond_1

    .line 166
    invoke-static {}, Lcom/ts/bt/BtCallMsgbox;->GetInstance()Lcom/ts/bt/BtCallMsgbox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ts/bt/BtCallMsgbox;->Show(I)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/ts/bt/BtLogActivity$2;->this$0:Lcom/ts/bt/BtLogActivity;

    # getter for: Lcom/ts/bt/BtLogActivity;->mDialNum:Ljava/lang/String;
    invoke-static {v0}, Lcom/ts/bt/BtLogActivity;->access$1(Lcom/ts/bt/BtLogActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ts/bt/BtLogActivity$2;->this$0:Lcom/ts/bt/BtLogActivity;

    # getter for: Lcom/ts/bt/BtLogActivity;->mDialNum:Ljava/lang/String;
    invoke-static {v0}, Lcom/ts/bt/BtLogActivity;->access$1(Lcom/ts/bt/BtLogActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/ts/bt/BtLogActivity$2;->this$0:Lcom/ts/bt/BtLogActivity;

    # getter for: Lcom/ts/bt/BtLogActivity;->bt:Lcom/ts/bt/BtExe;
    invoke-static {v0}, Lcom/ts/bt/BtLogActivity;->access$0(Lcom/ts/bt/BtLogActivity;)Lcom/ts/bt/BtExe;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/bt/BtLogActivity$2;->this$0:Lcom/ts/bt/BtLogActivity;

    # getter for: Lcom/ts/bt/BtLogActivity;->mDialNum:Ljava/lang/String;
    invoke-static {v1}, Lcom/ts/bt/BtLogActivity;->access$1(Lcom/ts/bt/BtLogActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/bt/BtExe;->dial(Ljava/lang/String;)V

    goto :goto_0
.end method
