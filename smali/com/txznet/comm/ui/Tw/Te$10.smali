.class Lcom/txznet/comm/ui/Tw/Te$10;
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
.field final synthetic T:Ljava/lang/Integer;

.field final synthetic T3:Lcom/txznet/comm/ui/Tw/Te;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/Tw/Te;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/txznet/comm/ui/Tw/Te$10;->T3:Lcom/txznet/comm/ui/Tw/Te;

    iput-object p2, p0, Lcom/txznet/comm/ui/Tw/Te$10;->T:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Lcom/txznet/comm/ui/Tw/T3;->T()Lcom/txznet/comm/ui/Tw/T3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/T3;->T2()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/Te$10;->T3:Lcom/txznet/comm/ui/Tw/Te;

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Te$10;->T:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/txznet/comm/ui/Tw/Te;->Te(Lcom/txznet/comm/ui/Tw/Te;I)V

    goto :goto_0
.end method
