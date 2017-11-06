.class public abstract Lcom/ts/can/CanCommonActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanCommonActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract GetContentLayoutId()I
.end method

.method protected abstract InitUI()V
.end method

.method protected abstract QueryData()V
.end method

.method protected abstract ResetData(Z)V
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCommonActivity;->ResetData(Z)V

    .line 36
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p0}, Lcom/ts/can/CanCommonActivity;->GetContentLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCommonActivity;->setContentView(I)V

    .line 16
    invoke-virtual {p0}, Lcom/ts/can/CanCommonActivity;->InitUI()V

    .line 17
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 30
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 31
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 22
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCommonActivity;->ResetData(Z)V

    .line 24
    invoke-virtual {p0}, Lcom/ts/can/CanCommonActivity;->QueryData()V

    .line 25
    return-void
.end method

.method public setViewSelected(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "selected"    # I

    .prologue
    .line 61
    invoke-static {p2}, Lcom/ts/can/CanCommonActivity;->i2b(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 62
    return-void
.end method

.method public setViewSelected(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "selected"    # Z

    .prologue
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 58
    return-void
.end method

.method public showGoneView(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "show"    # I

    .prologue
    .line 43
    invoke-static {p2}, Lcom/ts/can/CanCommonActivity;->i2b(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ts/can/CanCommonActivity;->showGoneView(Landroid/view/View;Z)V

    .line 44
    return-void
.end method

.method public showGoneView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "show"    # Z

    .prologue
    .line 52
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 53
    .local v0, "visible":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 54
    return-void

    .line 52
    .end local v0    # "visible":I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showHideView(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "show"    # I

    .prologue
    .line 39
    invoke-static {p2}, Lcom/ts/can/CanCommonActivity;->i2b(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ts/can/CanCommonActivity;->showHideView(Landroid/view/View;Z)V

    .line 40
    return-void
.end method

.method public showHideView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "show"    # Z

    .prologue
    .line 47
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 48
    .local v0, "visible":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 49
    return-void

    .line 47
    .end local v0    # "visible":I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
