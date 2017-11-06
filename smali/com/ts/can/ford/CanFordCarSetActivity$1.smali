.class Lcom/ts/can/ford/CanFordCarSetActivity$1;
.super Ljava/lang/Object;
.source "CanFordCarSetActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/can/ford/CanFordCarSetActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/ford/CanFordCarSetActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/ford/CanFordCarSetActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/ford/CanFordCarSetActivity$1;->this$0:Lcom/ts/can/ford/CanFordCarSetActivity;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOK(I)V
    .locals 2
    .param p1, "param"    # I

    .prologue
    .line 347
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 349
    const/16 v0, 0xa3

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->FordCarSet(II)V

    .line 356
    :goto_0
    return-void

    .line 353
    :cond_0
    const/16 v0, 0xa9

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->FordCarSet(II)V

    goto :goto_0
.end method
