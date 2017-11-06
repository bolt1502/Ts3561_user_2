.class Lcom/txznet/comm/ui/Tw/Te$7;
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
    .line 106
    iput-object p1, p0, Lcom/txznet/comm/ui/Tw/Te$7;->T3:Lcom/txznet/comm/ui/Tw/Te;

    iput-object p2, p0, Lcom/txznet/comm/ui/Tw/Te$7;->T:Lcom/txznet/comm/TN/T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 109
    invoke-static {}, Lcom/txznet/comm/ui/Tw/T3;->T()Lcom/txznet/comm/ui/Tw/T3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txznet/comm/ui/Tw/T3;->T2()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Te$7;->T:Lcom/txznet/comm/TN/T;

    const-string v2, "next"

    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 113
    .local v0, "next":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Te$7;->T3:Lcom/txznet/comm/ui/Tw/Te;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/txznet/comm/ui/Tw/Te;->T(Lcom/txznet/comm/ui/Tw/Te;Z)V

    goto :goto_0
.end method
