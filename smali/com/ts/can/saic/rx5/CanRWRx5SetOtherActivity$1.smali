.class Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity$1;
.super Ljava/lang/Object;
.source "CanRWRx5SetOtherActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity$1;->this$0:Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOK(I)V
    .locals 4
    .param p1, "param"    # I

    .prologue
    const/16 v3, 0xff

    .line 114
    const/16 v0, 0xa9

    iget-object v1, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity$1;->this$0:Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;

    iget-object v2, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity$1;->this$0:Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;

    # getter for: Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;
    invoke-static {v2}, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->access$0(Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;)Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    move-result-object v2

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;->Tyfw:I

    invoke-virtual {v1, v2}, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->Neg(I)I

    move-result v1

    invoke-static {v0, v1, v3, v3}, Lcom/lgb/canmodule/CanJni;->RwRx5CarSet(IIII)V

    .line 115
    return-void
.end method
