.class public Lcom/ts/can/CanGolfSDPActivity;
.super Lcom/ts/can/CanGolfBaseActivity;
.source "CanGolfSDPActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CanGolfSDPActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/ts/can/CanGolfBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/ts/can/CanGolfBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSDPActivity;->setContentView(I)V

    .line 17
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onPause()V

    .line 24
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onResume()V

    .line 31
    return-void
.end method
