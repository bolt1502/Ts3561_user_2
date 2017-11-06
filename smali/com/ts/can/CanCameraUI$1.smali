.class Lcom/ts/can/CanCameraUI$1;
.super Ljava/lang/Object;
.source "CanCameraUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/CanCameraUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/CanCameraUI;


# direct methods
.method constructor <init>(Lcom/ts/can/CanCameraUI;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/CanCameraUI$1;->this$0:Lcom/ts/can/CanCameraUI;

    .line 1102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1109
    .local v0, "id":I
    sget v3, Lcom/ts/MainUI/R$id;->can_eps_show_rtradar:I

    if-ne v0, v3, :cond_2

    .line 1110
    iget-object v3, p0, Lcom/ts/can/CanCameraUI$1;->this$0:Lcom/ts/can/CanCameraUI;

    iget-object v4, p0, Lcom/ts/can/CanCameraUI$1;->this$0:Lcom/ts/can/CanCameraUI;

    # getter for: Lcom/ts/can/CanCameraUI;->mfgFullScr:Z
    invoke-static {v4}, Lcom/ts/can/CanCameraUI;->access$0(Lcom/ts/can/CanCameraUI;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v3, v1}, Lcom/ts/can/CanCameraUI;->access$1(Lcom/ts/can/CanCameraUI;Z)V

    .line 1111
    iget-object v1, p0, Lcom/ts/can/CanCameraUI$1;->this$0:Lcom/ts/can/CanCameraUI;

    # getter for: Lcom/ts/can/CanCameraUI;->mfgFullScr:Z
    invoke-static {v1}, Lcom/ts/can/CanCameraUI;->access$0(Lcom/ts/can/CanCameraUI;)Z

    move-result v1

    invoke-static {v1}, Lcom/ts/can/CanFunc;->b2i(Z)I

    move-result v1

    invoke-static {v1}, Lcom/yyw/ts70xhw/FtSet;->SetRadarDis(I)I

    .line 1112
    iget-object v1, p0, Lcom/ts/can/CanCameraUI$1;->this$0:Lcom/ts/can/CanCameraUI;

    invoke-virtual {v1}, Lcom/ts/can/CanCameraUI;->updateEps()V

    .line 1136
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 1110
    goto :goto_0

    .line 1114
    :cond_2
    sget v3, Lcom/ts/MainUI/R$id;->can_eps_show_line:I

    if-ne v0, v3, :cond_5

    .line 1115
    iget-object v3, p0, Lcom/ts/can/CanCameraUI$1;->this$0:Lcom/ts/can/CanCameraUI;

    iget-object v4, p0, Lcom/ts/can/CanCameraUI$1;->this$0:Lcom/ts/can/CanCameraUI;

    # getter for: Lcom/ts/can/CanCameraUI;->mBtnShowLine:Landroid/widget/Button;
    invoke-static {v4}, Lcom/ts/can/CanCameraUI;->access$2(Lcom/ts/can/CanCameraUI;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Button;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v1

    :cond_3
    invoke-static {v3, v2}, Lcom/ts/can/CanCameraUI;->access$3(Lcom/ts/can/CanCameraUI;Z)V

    .line 1117
    iget-object v2, p0, Lcom/ts/can/CanCameraUI$1;->this$0:Lcom/ts/can/CanCameraUI;

    # getter for: Lcom/ts/can/CanCameraUI;->mfgShowLine:Z
    invoke-static {v2}, Lcom/ts/can/CanCameraUI;->access$4(Lcom/ts/can/CanCameraUI;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1119
    iget-object v2, p0, Lcom/ts/can/CanCameraUI$1;->this$0:Lcom/ts/can/CanCameraUI;

    invoke-static {v2, v1}, Lcom/ts/can/CanCameraUI;->access$5(Lcom/ts/can/CanCameraUI;Z)V

    .line 1121
    :cond_4
    iget-object v1, p0, Lcom/ts/can/CanCameraUI$1;->this$0:Lcom/ts/can/CanCameraUI;

    # getter for: Lcom/ts/can/CanCameraUI;->mBtnShowLine:Landroid/widget/Button;
    invoke-static {v1}, Lcom/ts/can/CanCameraUI;->access$2(Lcom/ts/can/CanCameraUI;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/ts/can/CanCameraUI$1;->this$0:Lcom/ts/can/CanCameraUI;

    # getter for: Lcom/ts/can/CanCameraUI;->mfgShowLine:Z
    invoke-static {v2}, Lcom/ts/can/CanCameraUI;->access$4(Lcom/ts/can/CanCameraUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 1122
    iget-object v1, p0, Lcom/ts/can/CanCameraUI$1;->this$0:Lcom/ts/can/CanCameraUI;

    # getter for: Lcom/ts/can/CanCameraUI;->mBtnShowTrack:Landroid/widget/Button;
    invoke-static {v1}, Lcom/ts/can/CanCameraUI;->access$6(Lcom/ts/can/CanCameraUI;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/ts/can/CanCameraUI$1;->this$0:Lcom/ts/can/CanCameraUI;

    # getter for: Lcom/ts/can/CanCameraUI;->mfgShowTrack:Z
    invoke-static {v2}, Lcom/ts/can/CanCameraUI;->access$7(Lcom/ts/can/CanCameraUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 1123
    iget-object v1, p0, Lcom/ts/can/CanCameraUI$1;->this$0:Lcom/ts/can/CanCameraUI;

    invoke-virtual {v1}, Lcom/ts/can/CanCameraUI;->updateEps()V

    goto :goto_1

    .line 1125
    :cond_5
    sget v3, Lcom/ts/MainUI/R$id;->can_eps_show_track:I

    if-ne v0, v3, :cond_0

    .line 1126
    iget-object v3, p0, Lcom/ts/can/CanCameraUI$1;->this$0:Lcom/ts/can/CanCameraUI;

    iget-object v4, p0, Lcom/ts/can/CanCameraUI$1;->this$0:Lcom/ts/can/CanCameraUI;

    # getter for: Lcom/ts/can/CanCameraUI;->mBtnShowTrack:Landroid/widget/Button;
    invoke-static {v4}, Lcom/ts/can/CanCameraUI;->access$6(Lcom/ts/can/CanCameraUI;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Button;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_6

    move v2, v1

    :cond_6
    invoke-static {v3, v2}, Lcom/ts/can/CanCameraUI;->access$5(Lcom/ts/can/CanCameraUI;Z)V

    .line 1128
    iget-object v2, p0, Lcom/ts/can/CanCameraUI$1;->this$0:Lcom/ts/can/CanCameraUI;

    # getter for: Lcom/ts/can/CanCameraUI;->mfgShowTrack:Z
    invoke-static {v2}, Lcom/ts/can/CanCameraUI;->access$7(Lcom/ts/can/CanCameraUI;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1130
    iget-object v2, p0, Lcom/ts/can/CanCameraUI$1;->this$0:Lcom/ts/can/CanCameraUI;

    invoke-static {v2, v1}, Lcom/ts/can/CanCameraUI;->access$3(Lcom/ts/can/CanCameraUI;Z)V

    .line 1132
    :cond_7
    iget-object v1, p0, Lcom/ts/can/CanCameraUI$1;->this$0:Lcom/ts/can/CanCameraUI;

    # getter for: Lcom/ts/can/CanCameraUI;->mBtnShowLine:Landroid/widget/Button;
    invoke-static {v1}, Lcom/ts/can/CanCameraUI;->access$2(Lcom/ts/can/CanCameraUI;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/ts/can/CanCameraUI$1;->this$0:Lcom/ts/can/CanCameraUI;

    # getter for: Lcom/ts/can/CanCameraUI;->mfgShowLine:Z
    invoke-static {v2}, Lcom/ts/can/CanCameraUI;->access$4(Lcom/ts/can/CanCameraUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 1133
    iget-object v1, p0, Lcom/ts/can/CanCameraUI$1;->this$0:Lcom/ts/can/CanCameraUI;

    # getter for: Lcom/ts/can/CanCameraUI;->mBtnShowTrack:Landroid/widget/Button;
    invoke-static {v1}, Lcom/ts/can/CanCameraUI;->access$6(Lcom/ts/can/CanCameraUI;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/ts/can/CanCameraUI$1;->this$0:Lcom/ts/can/CanCameraUI;

    # getter for: Lcom/ts/can/CanCameraUI;->mfgShowTrack:Z
    invoke-static {v2}, Lcom/ts/can/CanCameraUI;->access$7(Lcom/ts/can/CanCameraUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 1134
    iget-object v1, p0, Lcom/ts/can/CanCameraUI$1;->this$0:Lcom/ts/can/CanCameraUI;

    invoke-virtual {v1}, Lcom/ts/can/CanCameraUI;->updateEps()V

    goto/16 :goto_1
.end method
