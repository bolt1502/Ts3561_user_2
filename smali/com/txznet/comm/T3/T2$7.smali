.class Lcom/txznet/comm/T3/T2$7;
.super Landroid/content/BroadcastReceiver;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Ljava/lang/String;

.field final synthetic T2:Lcom/txznet/comm/T3/T2;

.field final synthetic T3:Lcom/txznet/comm/T3/T2$T3;


# direct methods
.method constructor <init>(Lcom/txznet/comm/T3/T2;Ljava/lang/String;Lcom/txznet/comm/T3/T2$T3;)V
    .locals 0

    .prologue
    .line 771
    iput-object p1, p0, Lcom/txznet/comm/T3/T2$7;->T2:Lcom/txznet/comm/T3/T2;

    iput-object p2, p0, Lcom/txznet/comm/T3/T2$7;->T:Ljava/lang/String;

    iput-object p3, p0, Lcom/txznet/comm/T3/T2$7;->T3:Lcom/txznet/comm/T3/T2$T3;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 774
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/T3/T2$7;->T:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/txznet/comm/T3/T2$7;->T3:Lcom/txznet/comm/T3/T2$T3;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 775
    return-void
.end method
