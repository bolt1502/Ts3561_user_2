.class Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity$2;
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
    iput-object p1, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity$2;->this$0:Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOK(I)V
    .locals 3
    .param p1, "param"    # I

    .prologue
    const/16 v2, 0xff

    .line 124
    const/16 v0, 0xaa

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v2}, Lcom/lgb/canmodule/CanJni;->RwRx5CarSet(IIII)V

    .line 125
    return-void
.end method
