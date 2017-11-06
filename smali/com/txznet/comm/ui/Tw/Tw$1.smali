.class Lcom/txznet/comm/ui/Tw/Tw$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/ui/Tw/Tw;->Te()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/ui/Tw/Tw;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/Tw/Tw;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/txznet/comm/ui/Tw/Tw$1;->T:Lcom/txznet/comm/ui/Tw/Tw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.ui.event.button.back"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 61
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw$1;->T:Lcom/txznet/comm/ui/Tw/Tw;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/Tw;->dismiss()V

    .line 62
    return-void
.end method
