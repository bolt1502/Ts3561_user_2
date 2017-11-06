.class Lcom/txznet/sdk/TXZAsrManager$6;
.super Lcom/txznet/txz/util/T/T;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZAsrManager;->removeCommandListener(Lcom/txznet/sdk/TXZAsrManager$CommandListener;)V
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
    .line 564
    iput-object p1, p0, Lcom/txznet/sdk/TXZAsrManager$6;->T:Lcom/txznet/sdk/TXZAsrManager;

    invoke-direct {p0, p2}, Lcom/txznet/txz/util/T/T;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$6;->T:Lcom/txznet/sdk/TXZAsrManager;

    invoke-static {v0}, Lcom/txznet/sdk/TXZAsrManager;->T(Lcom/txznet/sdk/TXZAsrManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/TXZAsrManager$6;->T3:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 568
    return-void
.end method
