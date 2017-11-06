.class Lcom/ts/bt/BtPhoneBookActivity$2;
.super Ljava/lang/Object;
.source "BtPhoneBookActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/bt/BtPhoneBookActivity;->dial(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/bt/BtPhoneBookActivity;


# direct methods
.method constructor <init>(Lcom/ts/bt/BtPhoneBookActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/bt/BtPhoneBookActivity$2;->this$0:Lcom/ts/bt/BtPhoneBookActivity;

    .line 192
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

    .line 196
    sget v0, Lcom/ts/bt/BtExe;->mCallSta:I

    if-le v0, v1, :cond_1

    .line 197
    invoke-static {}, Lcom/ts/bt/BtCallMsgbox;->GetInstance()Lcom/ts/bt/BtCallMsgbox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ts/bt/BtCallMsgbox;->Show(I)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity$2;->this$0:Lcom/ts/bt/BtPhoneBookActivity;

    # getter for: Lcom/ts/bt/BtPhoneBookActivity;->mDialNum:Ljava/lang/String;
    invoke-static {v0}, Lcom/ts/bt/BtPhoneBookActivity;->access$3(Lcom/ts/bt/BtPhoneBookActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity$2;->this$0:Lcom/ts/bt/BtPhoneBookActivity;

    # getter for: Lcom/ts/bt/BtPhoneBookActivity;->mDialNum:Ljava/lang/String;
    invoke-static {v0}, Lcom/ts/bt/BtPhoneBookActivity;->access$3(Lcom/ts/bt/BtPhoneBookActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity$2;->this$0:Lcom/ts/bt/BtPhoneBookActivity;

    # getter for: Lcom/ts/bt/BtPhoneBookActivity;->bt:Lcom/ts/bt/BtExe;
    invoke-static {v0}, Lcom/ts/bt/BtPhoneBookActivity;->access$2(Lcom/ts/bt/BtPhoneBookActivity;)Lcom/ts/bt/BtExe;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/bt/BtPhoneBookActivity$2;->this$0:Lcom/ts/bt/BtPhoneBookActivity;

    # getter for: Lcom/ts/bt/BtPhoneBookActivity;->mDialNum:Ljava/lang/String;
    invoke-static {v1}, Lcom/ts/bt/BtPhoneBookActivity;->access$3(Lcom/ts/bt/BtPhoneBookActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/bt/BtExe;->dial(Ljava/lang/String;)V

    goto :goto_0
.end method
