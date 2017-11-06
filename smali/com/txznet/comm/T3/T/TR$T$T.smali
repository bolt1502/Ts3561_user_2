.class public final Lcom/txznet/comm/T3/T/TR$T$T;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/comm/T3/T/TR$T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "T"
.end annotation


# instance fields
.field private T:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/T3/T/TR$T$T;->T:Lorg/json/JSONObject;

    .line 82
    return-void
.end method

.method static synthetic T(Lcom/txznet/comm/T3/T/TR$T$T;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/comm/T3/T/TR$T$T;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/txznet/comm/T3/T/TR$T$T;->T:Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public T(Ljava/lang/String;)Lcom/txznet/comm/T3/T/TR$T$T;
    .locals 3
    .param p1, "taskID"    # Ljava/lang/String;

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/txznet/comm/T3/T/TR$T$T;->T:Lorg/json/JSONObject;

    const-string v2, "taskID"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-object p0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/T3/T/TR$T$T;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/txznet/comm/T3/T/TR$T$T;->T:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-object p0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public T()Lcom/txznet/comm/T3/T/TR$T;
    .locals 4

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/txznet/comm/T3/T/TR$T$T;->T:Lorg/json/JSONObject;

    const-string v2, "scene"

    const-string v3, "wakeup"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    invoke-virtual {p0}, Lcom/txznet/comm/T3/T/TR$T$T;->T3()Lcom/txznet/comm/T3/T/TR$T;

    move-result-object v1

    return-object v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public T2(Ljava/lang/String;)Lcom/txznet/comm/T3/T/TR$T$T;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/txznet/comm/T3/T/TR$T$T;->T:Lorg/json/JSONObject;

    const-string v2, "action"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-object p0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public T3(Ljava/lang/String;)Lcom/txznet/comm/T3/T/TR$T$T;
    .locals 3
    .param p1, "kw"    # Ljava/lang/String;

    .prologue
    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/txznet/comm/T3/T/TR$T$T;->T:Lorg/json/JSONObject;

    const-string v2, "keywords"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-object p0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public T3()Lcom/txznet/comm/T3/T/TR$T;
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/txznet/comm/T3/T/TR$T$T$1;

    invoke-direct {v0, p0}, Lcom/txznet/comm/T3/T/TR$T$T$1;-><init>(Lcom/txznet/comm/T3/T/TR$T$T;)V

    return-object v0
.end method

.method public TN(Ljava/lang/String;)Lcom/txznet/comm/T3/T/TR$T$T;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/txznet/comm/T3/T/TR$T$T;->T:Lorg/json/JSONObject;

    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-object p0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
