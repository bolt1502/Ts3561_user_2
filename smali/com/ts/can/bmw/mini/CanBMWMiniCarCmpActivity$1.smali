.class Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity$1;
.super Ljava/lang/Object;
.source "CanBMWMiniCarCmpActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->showResetNotice(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity$1;->this$0:Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOK(I)V
    .locals 2
    .param p1, "param"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity$1;->this$0:Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;

    const/16 v1, 0x81

    invoke-virtual {v0, v1, p1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->CarSet(II)V

    .line 109
    return-void
.end method
