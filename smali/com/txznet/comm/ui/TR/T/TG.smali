.class public Lcom/txznet/comm/ui/TR/T/TG;
.super Lcom/txznet/comm/ui/TR/T/TJ;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/ui/TR/T/TG$T;
    }
.end annotation


# instance fields
.field private T:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/txznet/comm/ui/TR/T/TG$T;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/TR/T/TJ;-><init>(I)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/TR/T/TG;->T:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public T(Lcom/txznet/comm/TN/T;)V
    .locals 7
    .param p1, "data"    # Lcom/txznet/comm/TN/T;

    .prologue
    .line 30
    iget-object v5, p0, Lcom/txznet/comm/ui/TR/T/TG;->T:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 31
    const-string v5, "cines"

    const-class v6, Lorg/json/JSONArray;

    invoke-virtual {p1, v5, v6}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONArray;

    .line 33
    .local v4, "obJsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v5, p0, Lcom/txznet/comm/ui/TR/T/TG;->T2:I

    if-ge v3, v5, :cond_0

    .line 35
    :try_start_0
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/txznet/comm/TN/T;-><init>(Lorg/json/JSONObject;)V

    .line 36
    .local v0, "cBuilder":Lcom/txznet/comm/TN/T;
    new-instance v1, Lcom/txznet/comm/ui/TR/T/TG$T;

    invoke-direct {v1}, Lcom/txznet/comm/ui/TR/T/TG$T;-><init>()V

    .line 37
    .local v1, "cinemaBean":Lcom/txznet/comm/ui/TR/T/TG$T;
    const-string v5, "name"

    const-class v6, Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lcom/txznet/comm/ui/TR/T/TG$T;->T:Ljava/lang/String;

    .line 38
    const-string v5, "post"

    const-class v6, Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lcom/txznet/comm/ui/TR/T/TG$T;->T3:Ljava/lang/String;

    .line 39
    const-string v5, "score"

    const-class v6, Ljava/lang/Double;

    invoke-virtual {v0, v5, v6}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iput-wide v5, v1, Lcom/txznet/comm/ui/TR/T/TG$T;->T2:D

    .line 40
    iget-object v5, p0, Lcom/txznet/comm/ui/TR/T/TG;->T:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v0    # "cBuilder":Lcom/txznet/comm/TN/T;
    .end local v1    # "cinemaBean":Lcom/txznet/comm/ui/TR/T/TG$T;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 41
    :catch_0
    move-exception v2

    .line 42
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 45
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    return-void
.end method
