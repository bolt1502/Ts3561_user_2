.class Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity$1;
.super Ljava/lang/Object;
.source "CanBMWMiniServiceDetailActivity.java"

# interfaces
.implements Lcom/ts/canview/CanNumInuptDlg$onInputOK;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity$1;->this$0:Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOK(Ljava/lang/String;II)V
    .locals 2
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "num"    # I
    .param p3, "id"    # I

    .prologue
    .line 299
    const/16 v0, 0x7d1

    if-lt p2, v0, :cond_0

    const/16 v0, 0x833

    if-gt p2, v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity$1;->this$0:Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;

    const/4 v1, -0x1

    # invokes: Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->setDate(II)V
    invoke-static {v0, p2, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->access$0(Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;II)V

    .line 302
    :cond_0
    return-void
.end method
