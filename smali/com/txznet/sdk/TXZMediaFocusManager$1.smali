.class Lcom/txznet/sdk/TXZMediaFocusManager$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZMediaFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZMediaFocusManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZMediaFocusManager;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/txznet/sdk/TXZMediaFocusManager$1;->T:Lcom/txznet/sdk/TXZMediaFocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/txznet/sdk/TXZMediaFocusManager$1;->T:Lcom/txznet/sdk/TXZMediaFocusManager;

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZMediaFocusManager;->isFocusGained()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/txznet/sdk/TXZMediaFocusManager$1;->T:Lcom/txznet/sdk/TXZMediaFocusManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZMediaFocusManager;->T(Lcom/txznet/sdk/TXZMediaFocusManager;Z)Z

    .line 79
    iget-object v0, p0, Lcom/txznet/sdk/TXZMediaFocusManager$1;->T:Lcom/txznet/sdk/TXZMediaFocusManager;

    invoke-static {v0}, Lcom/txznet/sdk/TXZMediaFocusManager;->T(Lcom/txznet/sdk/TXZMediaFocusManager;)V

    .line 81
    :cond_0
    return-void
.end method
