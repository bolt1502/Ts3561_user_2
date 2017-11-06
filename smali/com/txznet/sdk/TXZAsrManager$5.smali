.class Lcom/txznet/sdk/TXZAsrManager$5;
.super Lcom/txznet/txz/util/T/T;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZAsrManager;->addCommandListener(Lcom/txznet/sdk/TXZAsrManager$CommandListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txznet/txz/util/T/T",
        "<",
        "Lcom/txznet/sdk/TXZAsrManager$CommandListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZAsrManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZAsrManager;Lcom/txznet/sdk/TXZAsrManager$CommandListener;)V
    .locals 0
    .param p2, "x0"    # Lcom/txznet/sdk/TXZAsrManager$CommandListener;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/txznet/sdk/TXZAsrManager$5;->T:Lcom/txznet/sdk/TXZAsrManager;

    invoke-direct {p0, p2}, Lcom/txznet/txz/util/T/T;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$5;->T:Lcom/txznet/sdk/TXZAsrManager;

    invoke-static {v0}, Lcom/txznet/sdk/TXZAsrManager;->T(Lcom/txznet/sdk/TXZAsrManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/TXZAsrManager$5;->T3:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 552
    return-void
.end method
