.class public abstract Lcom/txznet/comm/ui/T2/T3;
.super Landroid/app/Dialog;
.source "Proguard"


# static fields
.field public static T3:I


# instance fields
.field protected T:Landroid/view/View;

.field protected T2:Lcom/txznet/comm/TN/T3;

.field private TN:Z

.field private Te:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, -0x1

    sput v0, Lcom/txznet/comm/ui/T2/T3;->T3:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/txznet/comm/T/T;->T()Lcom/txznet/comm/T/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/T/T;->T2()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/T2/T3;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Lcom/txznet/comm/T/T;->T()Lcom/txznet/comm/T/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/T/T;->T2()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T3;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d7

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 39
    :cond_0
    sget v0, Lcom/txznet/comm/ui/T2/T3;->T3:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T3;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/txznet/comm/ui/T2/T3;->T3:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 42
    :cond_1
    return-void

    .line 34
    :cond_2
    invoke-static {}, Lcom/txznet/comm/T/T;->T()Lcom/txznet/comm/T/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/T/T;->T2()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 27
    sget v0, Lcom/txznet/txz/comm/R$style;->TXZ_Dialog_Style:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/comm/ui/T2/T3;->Te:Z

    .line 28
    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T3;->Tw()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/T2/T3;->T:Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T3;->T:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/txznet/comm/ui/T2/T3;->setContentView(Landroid/view/View;)V

    .line 30
    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T3;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 31
    return-void
.end method


# virtual methods
.method protected Tn()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method protected abstract Tw()Landroid/view/View;
.end method

.method protected Ty()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/comm/ui/T2/T3;->Te:Z

    .line 143
    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T3;->Ty()V

    .line 144
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 145
    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T3;->T2:Lcom/txznet/comm/TN/T3;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T3;->T2:Lcom/txznet/comm/TN/T3;

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T3;->T3()V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T3;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.txznet.txz.action.FLOAT_WIN_DISMISS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "newFocus"    # Z

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onWindowFocusChanged: from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/txznet/comm/ui/T2/T3;->Te:Z

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

    .line 161
    iget-boolean v0, p0, Lcom/txznet/comm/ui/T2/T3;->Te:Z

    if-eq v0, p1, :cond_0

    .line 162
    iput-boolean p1, p0, Lcom/txznet/comm/ui/T2/T3;->Te:Z

    .line 163
    iget-boolean v0, p0, Lcom/txznet/comm/ui/T2/T3;->Te:Z

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T3;->Tn()V

    .line 170
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 171
    return-void

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T3;->Ty()V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 132
    iget-boolean v0, p0, Lcom/txznet/comm/ui/T2/T3;->TN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T3;->T2:Lcom/txznet/comm/TN/T3;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T3;->T2:Lcom/txznet/comm/TN/T3;

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T3;->T()V

    .line 135
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/comm/ui/T2/T3;->Te:Z

    .line 136
    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T3;->Tn()V

    .line 137
    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T3;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.txznet.txz.action.FLOAT_WIN_SHOW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    return-void
.end method
