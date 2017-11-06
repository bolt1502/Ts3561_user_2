.class public Lcom/txznet/comm/ui/TR/T/T7;
.super Lcom/txznet/comm/ui/TR/T/TJ;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/ui/TR/T/T7$T;
    }
.end annotation


# instance fields
.field private T:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/txznet/comm/ui/TR/T/T7$T;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/TR/T/TJ;-><init>(I)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/TR/T/T7;->T:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public T(Lcom/txznet/comm/TN/T;)V
    .locals 6
    .param p1, "data"    # Lcom/txznet/comm/TN/T;

    .prologue
    .line 30
    iget-object v4, p0, Lcom/txznet/comm/ui/TR/T/T7;->T:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 31
    const-string v4, "data"

    const-class v5, Lorg/json/JSONArray;

    invoke-virtual {p1, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 32
    .local v1, "obJsonArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/txznet/comm/ui/TR/T/T7;->T2:I

    if-ge v0, v4, :cond_0

    .line 35
    :try_start_0
    new-instance v2, Lcom/txznet/comm/TN/T;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/txznet/comm/TN/T;-><init>(Lorg/json/JSONObject;)V

    .line 36
    .local v2, "objJson":Lcom/txznet/comm/TN/T;
    new-instance v3, Lcom/txznet/comm/ui/TR/T/T7$T;

    invoke-direct {v3}, Lcom/txznet/comm/ui/TR/T/T7$T;-><init>()V

    .line 37
    .local v3, "simBean":Lcom/txznet/comm/ui/TR/T/T7$T;
    const-string v4, "title"

    const-class v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/txznet/comm/ui/TR/T/T7$T;->T:Ljava/lang/String;

    .line 38
    const-string v4, "price"

    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v2, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/txznet/comm/ui/TR/T/T7$T;->T3:I

    .line 39
    const-string v4, "rawPrice"

    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v2, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/txznet/comm/ui/TR/T/T7$T;->T2:I

    .line 40
    iget-object v4, p0, Lcom/txznet/comm/ui/TR/T/T7;->T:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v2    # "objJson":Lcom/txznet/comm/TN/T;
    .end local v3    # "simBean":Lcom/txznet/comm/ui/TR/T/T7$T;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 41
    .restart local v0    # "i":I
    :catch_0
    move-exception v4

    goto :goto_1
.end method
