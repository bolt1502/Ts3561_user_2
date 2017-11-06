.class public abstract Lcom/txznet/comm/ui/Tw/TG;
.super Landroid/app/Dialog;
.source "Proguard"


# instance fields
.field protected T:Landroid/view/View;

.field protected T2:Z

.field protected T3:Z

.field protected TN:Lcom/txznet/comm/TN/T3;

.field private Te:Z

.field private Tw:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lcom/txznet/comm/T/T;->T()Lcom/txznet/comm/T/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/T/T;->T2()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/Tw/TG;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Lcom/txznet/comm/T/T;->T()Lcom/txznet/comm/T/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/T/T;->T2()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TG;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 38
    :cond_0
    return-void

    .line 33
    :cond_1
    invoke-static {}, Lcom/txznet/comm/T/T;->T()Lcom/txznet/comm/T/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/T/T;->T2()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/txznet/comm/ui/Tw/TG;-><init>(Landroid/content/Context;Z)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fullScreen"    # Z

    .prologue
    const/4 v3, 0x0

    .line 41
    if-eqz p2, :cond_1

    sget v2, Lcom/txznet/txz/comm/R$style;->TXZ_Dialog_Style_Full:I

    :goto_0
    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 26
    iput-boolean v3, p0, Lcom/txznet/comm/ui/Tw/TG;->T2:Z

    .line 169
    iput-boolean v3, p0, Lcom/txznet/comm/ui/Tw/TG;->Tw:Z

    .line 42
    iput-boolean p2, p0, Lcom/txznet/comm/ui/Tw/TG;->T3:Z

    .line 43
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/txznet/comm/ui/Tw/TG;->requestWindowFeature(I)Z

    .line 44
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/txznet/comm/ui/Tw/TG;->T([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/txznet/comm/ui/Tw/TG;->T:Landroid/view/View;

    .line 45
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TG;->T:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 46
    .local v0, "viewParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 47
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 48
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "viewParent":Landroid/view/ViewParent;
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TG;->T:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 51
    :cond_0
    if-eqz p2, :cond_2

    .line 52
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TG;->T:Landroid/view/View;

    const/16 v3, 0x504

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 55
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TG;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 56
    .local v1, "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 60
    .end local v1    # "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    :goto_1
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TG;->T:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/txznet/comm/ui/Tw/TG;->setContentView(Landroid/view/View;)V

    .line 61
    return-void

    .line 41
    :cond_1
    sget v2, Lcom/txznet/txz/comm/R$style;->TXZ_Dialog_Style:I

    goto :goto_0

    .line 58
    :cond_2
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TG;->T:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1
.end method

.method public varargs constructor <init>(Landroid/content/Context;Z[Ljava/lang/Object;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fullScreen"    # Z
    .param p3, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 64
    if-eqz p2, :cond_1

    sget v2, Lcom/txznet/txz/comm/R$style;->TXZ_Dialog_Style_Full:I

    :goto_0
    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 26
    iput-boolean v3, p0, Lcom/txznet/comm/ui/Tw/TG;->T2:Z

    .line 169
    iput-boolean v3, p0, Lcom/txznet/comm/ui/Tw/TG;->Tw:Z

    .line 65
    iput-boolean p2, p0, Lcom/txznet/comm/ui/Tw/TG;->T3:Z

    .line 66
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/txznet/comm/ui/Tw/TG;->requestWindowFeature(I)Z

    .line 67
    invoke-virtual {p0, p3}, Lcom/txznet/comm/ui/Tw/TG;->T([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/txznet/comm/ui/Tw/TG;->T:Landroid/view/View;

    .line 68
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TG;->T:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 69
    .local v0, "viewParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 70
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 71
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "viewParent":Landroid/view/ViewParent;
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TG;->T:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 74
    :cond_0
    if-eqz p2, :cond_2

    .line 75
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TG;->T:Landroid/view/View;

    const/16 v3, 0x504

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 78
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TG;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 79
    .local v1, "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 83
    .end local v1    # "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    :goto_1
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TG;->T:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/txznet/comm/ui/Tw/TG;->setContentView(Landroid/view/View;)V

    .line 84
    return-void

    .line 64
    :cond_1
    sget v2, Lcom/txznet/txz/comm/R$style;->TXZ_Dialog_Style:I

    goto :goto_0

    .line 81
    :cond_2
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TG;->T:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1
.end method

.method public constructor <init>(ZZ)V
    .locals 2
    .param p1, "isSystem"    # Z
    .param p2, "isFullScreen"    # Z

    .prologue
    .line 105
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/txznet/comm/ui/Tw/TG;-><init>(Landroid/content/Context;Z)V

    .line 106
    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TG;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 109
    :cond_0
    return-void

    .line 105
    :cond_1
    invoke-static {}, Lcom/txznet/comm/T/T;->T()Lcom/txznet/comm/T/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/T/T;->T2()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs constructor <init>(ZZ[Ljava/lang/Object;)V
    .locals 2
    .param p1, "isSystem"    # Z
    .param p2, "isFullScreen"    # Z
    .param p3, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 112
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p2, p3}, Lcom/txznet/comm/ui/Tw/TG;-><init>(Landroid/content/Context;Z[Ljava/lang/Object;)V

    .line 113
    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TG;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 116
    :cond_0
    return-void

    .line 112
    :cond_1
    invoke-static {}, Lcom/txznet/comm/T/T;->T()Lcom/txznet/comm/T/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/T/T;->T2()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected varargs abstract T([Ljava/lang/Object;)Landroid/view/View;
.end method

.method public T(Z)V
    .locals 2
    .param p1, "isFullScreen"    # Z

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsFullScreenDialog:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 89
    iput-boolean p1, p0, Lcom/txznet/comm/ui/Tw/TG;->T3:Z

    .line 90
    return-void
.end method

.method protected T2()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method protected TN()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/comm/ui/Tw/TG;->Tw:Z

    .line 161
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TG;->T2()V

    .line 162
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 163
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/TG;->TN:Lcom/txznet/comm/TN/T3;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/TG;->TN:Lcom/txznet/comm/TN/T3;

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T3;->T3()V

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TG;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.txznet.txz.action.FLOAT_WIN_DISMISS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 167
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "newFocus"    # Z

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onWindowFocusChanged: from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/txznet/comm/ui/Tw/TG;->Tw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 179
    iget-boolean v0, p0, Lcom/txznet/comm/ui/Tw/TG;->Tw:Z

    if-eq v0, p1, :cond_0

    .line 180
    iput-boolean p1, p0, Lcom/txznet/comm/ui/Tw/TG;->Tw:Z

    .line 181
    iget-boolean v0, p0, Lcom/txznet/comm/ui/Tw/TG;->Tw:Z

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TG;->TN()V

    .line 188
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 189
    return-void

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TG;->T2()V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 150
    iget-boolean v0, p0, Lcom/txznet/comm/ui/Tw/TG;->Te:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/TG;->TN:Lcom/txznet/comm/TN/T3;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/TG;->TN:Lcom/txznet/comm/TN/T3;

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T3;->T()V

    .line 153
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/comm/ui/Tw/TG;->Tw:Z

    .line 154
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TG;->TN()V

    .line 155
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TG;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.txznet.txz.action.FLOAT_WIN_SHOW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    return-void
.end method
