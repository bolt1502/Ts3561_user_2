.class Lcom/T/T/T2/T3G;
.super Lcom/T/T/T2/TZ;
.source "Proguard"


# direct methods
.method public constructor <init>(Lcom/T/T/TN/T2;)V
    .locals 0
    .param p1, "fieldInfo"    # Lcom/T/T/TN/T2;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/T/T/T2/TZ;-><init>(Lcom/T/T/TN/T2;)V

    .line 28
    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;)V
    .locals 3
    .param p1, "serializer"    # Lcom/T/T/T2/TS;
    .param p2, "propertyValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v0

    .line 34
    .local v0, "out":Lcom/T/T/T2/T30;
    invoke-virtual {p0, p1}, Lcom/T/T/T2/T3G;->T(Lcom/T/T/T2/TS;)V

    .line 36
    move-object v1, p2

    .line 38
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 39
    sget-object v2, Lcom/T/T/T2/T3c;->Tn:Lcom/T/T/T2/T3c;

    invoke-virtual {v0, v2}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Lcom/T/T/T2/T30;->T(C)V

    .line 48
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {v0}, Lcom/T/T/T2/T30;->T()V

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/T/T/T2/T30;->T(Ljava/lang/CharSequence;)Lcom/T/T/T2/T30;

    goto :goto_0
.end method
