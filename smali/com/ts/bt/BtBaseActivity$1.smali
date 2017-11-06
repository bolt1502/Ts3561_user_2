.class Lcom/ts/bt/BtBaseActivity$1;
.super Ljava/lang/Object;
.source "BtBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/bt/BtBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/bt/BtBaseActivity;


# direct methods
.method constructor <init>(Lcom/ts/bt/BtBaseActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/bt/BtBaseActivity$1;->this$0:Lcom/ts/bt/BtBaseActivity;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 215
    .local v0, "id":I
    sget v1, Lcom/ts/MainUI/R$id;->btBtnSubConnect:I

    if-ne v0, v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/ts/bt/BtBaseActivity$1;->this$0:Lcom/ts/bt/BtBaseActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ts/bt/BtBaseActivity;->showActivity(I)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    sget v1, Lcom/ts/MainUI/R$id;->btBtnSubDial:I

    if-ne v0, v1, :cond_2

    .line 233
    iget-object v1, p0, Lcom/ts/bt/BtBaseActivity$1;->this$0:Lcom/ts/bt/BtBaseActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/ts/bt/BtBaseActivity;->showActivity(I)V

    goto :goto_0

    .line 235
    :cond_2
    sget v1, Lcom/ts/MainUI/R$id;->btBtnSubPb:I

    if-ne v0, v1, :cond_3

    .line 236
    iget-object v1, p0, Lcom/ts/bt/BtBaseActivity$1;->this$0:Lcom/ts/bt/BtBaseActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/ts/bt/BtBaseActivity;->showActivity(I)V

    goto :goto_0

    .line 237
    :cond_3
    sget v1, Lcom/ts/MainUI/R$id;->btBtnSubLog:I

    if-ne v0, v1, :cond_4

    .line 238
    iget-object v1, p0, Lcom/ts/bt/BtBaseActivity$1;->this$0:Lcom/ts/bt/BtBaseActivity;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/ts/bt/BtBaseActivity;->showActivity(I)V

    goto :goto_0

    .line 239
    :cond_4
    sget v1, Lcom/ts/MainUI/R$id;->btBtnSubMusic:I

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/ts/bt/BtBaseActivity$1;->this$0:Lcom/ts/bt/BtBaseActivity;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/ts/bt/BtBaseActivity;->showActivity(I)V

    goto :goto_0
.end method
