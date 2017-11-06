.class public Lcom/txznet/comm/TN/TN;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static T(Landroid/widget/TextView;F)V
    .locals 1
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "size"    # F

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 15
    return-void
.end method
