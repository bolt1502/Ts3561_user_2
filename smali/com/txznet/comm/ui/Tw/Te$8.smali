.class Lcom/txznet/comm/ui/Tw/Te$8;
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

.field final synthetic T2:Lcom/txznet/comm/ui/Tw/Te;

.field final synthetic T3:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/Tw/Te;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/txznet/comm/ui/Tw/Te$8;->T2:Lcom/txznet/comm/ui/Tw/Te;

    iput-object p2, p0, Lcom/txznet/comm/ui/Tw/Te$8;->T:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/txznet/comm/ui/Tw/Te$8;->T3:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 123
    invoke-static {}, Lcom/txznet/comm/ui/Tw/T3;->T()Lcom/txznet/comm/ui/Tw/T3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/T3;->T2()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/Te$8;->T2:Lcom/txznet/comm/ui/Tw/Te;

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Te$8;->T:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Te$8;->T3:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/txznet/comm/ui/Tw/Te;->T(Lcom/txznet/comm/ui/Tw/Te;II)V

    goto :goto_0
.end method
