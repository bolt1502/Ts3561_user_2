.class Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity$2;
.super Ljava/lang/Object;
.source "CanCadillacXt5UpdateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity$2;->this$0:Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 251
    .local v0, "id":I
    sget v1, Lcom/ts/MainUI/R$id;->xt5_update_start:I

    if-ne v0, v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity$2;->this$0:Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;

    # getter for: Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mUpdater:Lcom/ts/can/gm/xt5/McuUpdater;
    invoke-static {v1}, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->access$2(Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;)Lcom/ts/can/gm/xt5/McuUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/can/gm/xt5/McuUpdater;->startUpdate()I

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    sget v1, Lcom/ts/MainUI/R$id;->xt5_update_reset:I

    if-ne v0, v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity$2;->this$0:Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;

    # getter for: Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->m_IapSta:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapSta;
    invoke-static {v1}, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->access$3(Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;)Lcom/lgb/canmodule/CanDataInfo$GmSb_IapSta;

    move-result-object v1

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_IapSta;->Sta:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 259
    const/16 v1, 0x13

    invoke-static {v1}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    goto :goto_0
.end method
