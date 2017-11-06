.class Lcom/txznet/sdk/TXZConfigManager$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZConfigManager;->initialize(Landroid/content/Context;Lcom/txznet/sdk/TXZConfigManager$InitParam;Lcom/txznet/sdk/TXZConfigManager$InitListener;Lcom/txznet/sdk/TXZConfigManager$ActiveListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZConfigManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZConfigManager;)V
    .locals 0

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$2;->T:Lcom/txznet/sdk/TXZConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$2;->T:Lcom/txznet/sdk/TXZConfigManager;

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZConfigManager;->T3()V

    .line 1172
    return-void
.end method
