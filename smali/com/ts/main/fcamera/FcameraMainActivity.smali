.class public Lcom/ts/main/fcamera/FcameraMainActivity;
.super Landroid/app/Activity;
.source "FcameraMainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    sget v0, Lcom/ts/MainUI/R$layout;->activity_fcamera_main:I

    invoke-virtual {p0, v0}, Lcom/ts/main/fcamera/FcameraMainActivity;->setContentView(I)V

    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    return-void
.end method
