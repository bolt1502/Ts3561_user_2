.class public Lcom/ts/main/view360/View360MainActivity;
.super Landroid/app/Activity;
.source "View360MainActivity.java"


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
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const/16 v0, 0xfb

    const/4 v1, 0x4

    invoke-static {v0, v1, v2, v2}, Lcom/yyw/ts70xhw/Mcu;->SendxyTouch(IIII)I

    .line 14
    invoke-virtual {p0}, Lcom/ts/main/view360/View360MainActivity;->finish()V

    .line 15
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 23
    return-void
.end method
