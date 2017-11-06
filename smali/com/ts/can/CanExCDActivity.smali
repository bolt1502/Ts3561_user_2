.class public Lcom/ts/can/CanExCDActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanExCDActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CanExCDActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanExCDActivity;->setContentView(I)V

    .line 18
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 25
    const-string v0, "CanExCDActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method
