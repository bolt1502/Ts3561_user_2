.class Lcom/txznet/comm/ui/Tw/Te$6;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/ui/Tw/Te;->T(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/TN/T;

.field final synthetic T3:Lcom/txznet/comm/ui/Tw/Te;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/Tw/Te;Lcom/txznet/comm/TN/T;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/txznet/comm/ui/Tw/Te$6;->T3:Lcom/txznet/comm/ui/Tw/Te;

    iput-object p2, p0, Lcom/txznet/comm/ui/Tw/Te$6;->T:Lcom/txznet/comm/TN/T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 99
    invoke-static {}, Lcom/txznet/comm/ui/Tw/T3;->T()Lcom/txznet/comm/ui/Tw/T3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/T3;->T2()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Te$6;->T3:Lcom/txznet/comm/ui/Tw/Te;

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/Te$6;->T:Lcom/txznet/comm/TN/T;

    const-string v2, "value"

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/txznet/comm/ui/Tw/Te;->T2(Lcom/txznet/comm/ui/Tw/Te;I)V

    goto :goto_0
.end method
