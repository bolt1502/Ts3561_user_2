.class Lcom/txznet/sdk/TXZConfigManager$6;
.super Lcom/txznet/comm/T3/T2$T3;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZConfigManager;->getUserWakeupKeywords(Lcom/txznet/sdk/TXZConfigManager$UserKeywordsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZConfigManager$UserKeywordsCallback;

.field final synthetic T3:Lcom/txznet/sdk/TXZConfigManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZConfigManager;Lcom/txznet/sdk/TXZConfigManager$UserKeywordsCallback;)V
    .locals 0

    .prologue
    .line 2118
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$6;->T3:Lcom/txznet/sdk/TXZConfigManager;

    iput-object p2, p0, Lcom/txznet/sdk/TXZConfigManager$6;->T:Lcom/txznet/sdk/TXZConfigManager$UserKeywordsCallback;

    invoke-direct {p0}, Lcom/txznet/comm/T3/T2$T3;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/txznet/comm/T3/T2$T2;)V
    .locals 3
    .param p1, "data"    # Lcom/txznet/comm/T3/T2$T2;

    .prologue
    .line 2122
    invoke-virtual {p1}, Lcom/txznet/comm/T3/T2$T2;->T()Ljava/lang/String;

    move-result-object v0

    .line 2123
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leng keywords:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 2124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2125
    const-string v1, "leng userkeywords is empty!!!"

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    .line 2131
    :cond_0
    :goto_0
    return-void

    .line 2128
    :cond_1
    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager$6;->T:Lcom/txznet/sdk/TXZConfigManager$UserKeywordsCallback;

    if-eqz v1, :cond_0

    .line 2129
    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager$6;->T:Lcom/txznet/sdk/TXZConfigManager$UserKeywordsCallback;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/txznet/sdk/TXZConfigManager$UserKeywordsCallback;->result([Ljava/lang/String;)V

    goto :goto_0
.end method
