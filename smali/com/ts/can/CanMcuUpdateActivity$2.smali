.class Lcom/ts/can/CanMcuUpdateActivity$2;
.super Ljava/lang/Object;
.source "CanMcuUpdateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/CanMcuUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/CanMcuUpdateActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/CanMcuUpdateActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/CanMcuUpdateActivity$2;->this$0:Lcom/ts/can/CanMcuUpdateActivity;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 143
    .local v0, "id":I
    sget v1, Lcom/ts/MainUI/R$id;->mcu_update_start:I

    if-ne v0, v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/ts/can/CanMcuUpdateActivity$2;->this$0:Lcom/ts/can/CanMcuUpdateActivity;

    # getter for: Lcom/ts/can/CanMcuUpdateActivity;->mUpdater:Lcom/ts/can/McuUpdater;
    invoke-static {v1}, Lcom/ts/can/CanMcuUpdateActivity;->access$2(Lcom/ts/can/CanMcuUpdateActivity;)Lcom/ts/can/McuUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/can/McuUpdater;->startUpdate()I

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    sget v1, Lcom/ts/MainUI/R$id;->mcu_update_reset:I

    if-ne v0, v1, :cond_0

    .line 146
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/ts/can/CanMcuUpdateActivity$2;->this$0:Lcom/ts/can/CanMcuUpdateActivity;

    # getter for: Lcom/ts/can/CanMcuUpdateActivity;->mUpdater:Lcom/ts/can/McuUpdater;
    invoke-static {v2}, Lcom/ts/can/CanMcuUpdateActivity;->access$2(Lcom/ts/can/CanMcuUpdateActivity;)Lcom/ts/can/McuUpdater;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/can/McuUpdater;->getSta()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 148
    iget-object v1, p0, Lcom/ts/can/CanMcuUpdateActivity$2;->this$0:Lcom/ts/can/CanMcuUpdateActivity;

    # getter for: Lcom/ts/can/CanMcuUpdateActivity;->mUpdater:Lcom/ts/can/McuUpdater;
    invoke-static {v1}, Lcom/ts/can/CanMcuUpdateActivity;->access$2(Lcom/ts/can/CanMcuUpdateActivity;)Lcom/ts/can/McuUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/can/McuUpdater;->sendReset()V

    goto :goto_0
.end method
