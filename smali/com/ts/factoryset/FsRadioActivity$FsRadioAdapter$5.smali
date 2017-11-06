.class Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter$5;
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
    iput-object p1, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter$5;->this$1:Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 332
    move-object v0, p1

    check-cast v0, Lcom/ts/other/ParamButton;

    .line 333
    .local v0, "curBtn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0}, Lcom/ts/other/ParamButton;->getIntParam()I

    move-result v1

    .line 334
    .local v1, "id":I
    invoke-virtual {v0}, Lcom/ts/other/ParamButton;->getIntParam2()I

    move-result v2

    .line 335
    .local v2, "val":I
    packed-switch v1, :pswitch_data_0

    .line 358
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter$5;->this$1:Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;

    # invokes: Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->updateItem(I)V
    invoke-static {v3, v1}, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->access$1(Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;I)V

    .line 359
    return-void

    .line 338
    :pswitch_1
    invoke-static {v2}, Lcom/yyw/ts70xhw/FtSet;->SetFMnum(I)I

    goto :goto_0

    .line 342
    :pswitch_2
    invoke-static {v2}, Lcom/yyw/ts70xhw/FtSet;->SetMWnum(I)I

    goto :goto_0

    .line 346
    :pswitch_3
    invoke-static {v2}, Lcom/yyw/ts70xhw/FtSet;->SetOTnum(I)I

    goto :goto_0

    .line 350
    :pswitch_4
    invoke-static {v2}, Lcom/yyw/ts70xhw/FtSet;->SetRDSen(I)I

    goto :goto_0

    .line 354
    :pswitch_5
    invoke-static {v2}, Lcom/yyw/ts70xhw/FtSet;->SetFmSort(I)I

    goto :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
