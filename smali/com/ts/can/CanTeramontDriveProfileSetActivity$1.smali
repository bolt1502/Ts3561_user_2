.class Lcom/ts/can/CanTeramontDriveProfileSetActivity$1;
.super Ljava/lang/Object;
.source "CanTeramontDriveProfileSetActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/can/CanTeramontDriveProfileSetActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/CanTeramontDriveProfileSetActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/CanTeramontDriveProfileSetActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity$1;->this$0:Lcom/ts/can/CanTeramontDriveProfileSetActivity;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOK(I)V
    .locals 2
    .param p1, "param"    # I

    .prologue
    .line 301
    const/16 v0, 0xe8

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    .line 302
    return-void
.end method
