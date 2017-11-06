.class public Lcom/txznet/comm/ui/TR/T/TL;
.super Lcom/txznet/comm/ui/TR/T/TJ;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/ui/TR/T/TL$T;
    }
.end annotation


# instance fields
.field private T:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/txznet/comm/ui/TR/T/TL$T;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/TR/T/TJ;-><init>(I)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/TR/T/TL;->T:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public T(Lcom/txznet/comm/TN/T;)V
    .locals 6
    .param p1, "data"    # Lcom/txznet/comm/TN/T;

    .prologue
    .line 29
    iget-object v4, p0, Lcom/txznet/comm/ui/TR/T/TL;->T:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 30
    const-string v4, "contacts"

    const-class v5, Lorg/json/JSONArray;

    invoke-virtual {p1, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 31
    .local v1, "obJsonArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 32
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/txznet/comm/ui/TR/T/TL;->T2:I

    if-ge v0, v4, :cond_0

    .line 34
    :try_start_0
    new-instance v2, Lcom/txznet/comm/TN/T;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/txznet/comm/TN/T;-><init>(Lorg/json/JSONObject;)V

    .line 35
    .local v2, "objJson":Lcom/txznet/comm/TN/T;
    new-instance v3, Lcom/txznet/comm/ui/TR/T/TL$T;

    invoke-direct {v3}, Lcom/txznet/comm/ui/TR/T/TL$T;-><init>()V

    .line 36
    .local v3, "weChatBean":Lcom/txznet/comm/ui/TR/T/TL$T;
    const-string v4, "name"

    const-class v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/txznet/comm/ui/TR/T/TL$T;->T3:Ljava/lang/String;

    .line 37
    const-string v4, "id"

    const-class v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/txznet/comm/ui/TR/T/TL$T;->T:Ljava/lang/String;

    .line 38
    iget-object v4, p0, Lcom/txznet/comm/ui/TR/T/TL;->T:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v2    # "objJson":Lcom/txznet/comm/TN/T;
    .end local v3    # "weChatBean":Lcom/txznet/comm/ui/TR/T/TL$T;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 39
    .restart local v0    # "i":I
    :catch_0
    move-exception v4

    goto :goto_1
.end method
