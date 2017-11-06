.class Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter$4;
.super Ljava/lang/Object;
.source "FsRadioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;


# direct methods
.method constructor <init>(Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter$4;->this$1:Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 324
    :goto_0
    return-void

    .line 314
    :pswitch_0
    iget-object v0, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter$4;->this$1:Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;

    # getter for: Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->this$0:Lcom/ts/factoryset/FsRadioActivity;
    invoke-static {v0}, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->access$4(Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;)Lcom/ts/factoryset/FsRadioActivity;

    move-result-object v0

    # getter for: Lcom/ts/factoryset/FsRadioActivity;->mDlg:Lcom/ts/factoryset/FsInputDlg;
    invoke-static {v0}, Lcom/ts/factoryset/FsRadioActivity;->access$0(Lcom/ts/factoryset/FsRadioActivity;)Lcom/ts/factoryset/FsInputDlg;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter$4;->this$1:Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;

    # getter for: Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->onFmOK:Lcom/ts/factoryset/FsInputDlg$onInputOK;
    invoke-static {v2}, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->access$2(Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;)Lcom/ts/factoryset/FsInputDlg$onInputOK;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/factoryset/FsInputDlg;->createDlg(Landroid/content/Context;Lcom/ts/factoryset/FsInputDlg$onInputOK;Z)V

    goto :goto_0

    .line 318
    :pswitch_1
    iget-object v0, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter$4;->this$1:Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;

    # getter for: Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->this$0:Lcom/ts/factoryset/FsRadioActivity;
    invoke-static {v0}, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->access$4(Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;)Lcom/ts/factoryset/FsRadioActivity;

    move-result-object v0

    # getter for: Lcom/ts/factoryset/FsRadioActivity;->mDlg:Lcom/ts/factoryset/FsInputDlg;
    invoke-static {v0}, Lcom/ts/factoryset/FsRadioActivity;->access$0(Lcom/ts/factoryset/FsRadioActivity;)Lcom/ts/factoryset/FsInputDlg;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter$4;->this$1:Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;

    # getter for: Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->onAmOK:Lcom/ts/factoryset/FsInputDlg$onInputOK;
    invoke-static {v2}, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->access$3(Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;)Lcom/ts/factoryset/FsInputDlg$onInputOK;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/factoryset/FsInputDlg;->createDlg(Landroid/content/Context;Lcom/ts/factoryset/FsInputDlg$onInputOK;Z)V

    goto :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
