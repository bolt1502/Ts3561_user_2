.class Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity$1;
.super Ljava/lang/Object;
.source "CanChrOthSetBrakeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity$1;->this$0:Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity$1;->this$0:Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;

    const/16 v1, 0xc0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->CarSet(II)V

    .line 180
    return-void
.end method
