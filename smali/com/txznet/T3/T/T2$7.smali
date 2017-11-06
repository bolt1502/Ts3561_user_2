.class Lcom/txznet/T3/T/T2$7;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/T3/T/T2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/T3/T/T2;


# direct methods
.method constructor <init>(Lcom/txznet/T3/T/T2;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/txznet/T3/T/T2$7;->T:Lcom/txznet/T3/T/T2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    const-string v0, " wakeConfigListener"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T3(Ljava/lang/String;)I

    .line 129
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v1

    iget-object v0, p0, Lcom/txznet/T3/T/T2$7;->T:Lcom/txznet/T3/T/T2;

    invoke-static {v0}, Lcom/txznet/T3/T/T2;->T2(Lcom/txznet/T3/T/T2;)Lcom/txznet/comm/ui/view/CheckedImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/view/CheckedImageView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/txznet/sdk/TXZConfigManager;->enableWakeup(Z)V

    .line 130
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
