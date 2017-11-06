.class public Lcom/txznet/comm/ui/TR/T/TN;
.super Lcom/txznet/comm/ui/TR/T/TQ;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/ui/TR/T/TN$T;
    }
.end annotation


# instance fields
.field public T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/txznet/comm/ui/TR/T/TN$T;",
            ">;"
        }
    .end annotation
.end field

.field public T2:Ljava/lang/Double;

.field public T3:Ljava/lang/Double;

.field public TN:Ljava/lang/Double;

.field public Te:Ljava/lang/Double;

.field public Tw:Ljava/lang/Double;

.field public Ty:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/TR/T/TQ;-><init>(I)V

    .line 31
    return-void
.end method

.method private T([Ljava/lang/Double;)V
    .locals 6
    .param p1, "gps"    # [Ljava/lang/Double;

    .prologue
    .line 94
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 95
    .local v0, "lat":D
    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 96
    .local v2, "lng":D
    iget-object v4, p0, Lcom/txznet/comm/ui/TR/T/TN;->T3:Ljava/lang/Double;

    if-nez v4, :cond_1

    .line 97
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/txznet/comm/ui/TR/T/TN;->T3:Ljava/lang/Double;

    .line 98
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/txznet/comm/ui/TR/T/TN;->TN:Ljava/lang/Double;

    .line 99
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/txznet/comm/ui/TR/T/TN;->T2:Ljava/lang/Double;

    .line 100
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/txznet/comm/ui/TR/T/TN;->Te:Ljava/lang/Double;

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v4, p0, Lcom/txznet/comm/ui/TR/T/TN;->TN:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v4, v0, v4

    if-lez v4, :cond_2

    .line 103
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/txznet/comm/ui/TR/T/TN;->TN:Ljava/lang/Double;

    .line 105
    :cond_2
    iget-object v4, p0, Lcom/txznet/comm/ui/TR/T/TN;->T3:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v4, v0, v4

    if-gez v4, :cond_3

    .line 106
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/txznet/comm/ui/TR/T/TN;->T3:Ljava/lang/Double;

    .line 108
    :cond_3
    iget-object v4, p0, Lcom/txznet/comm/ui/TR/T/TN;->Te:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v4, v2, v4

    if-lez v4, :cond_4

    .line 109
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/txznet/comm/ui/TR/T/TN;->Te:Ljava/lang/Double;

    .line 111
    :cond_4
    iget-object v4, p0, Lcom/txznet/comm/ui/TR/T/TN;->T2:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v4, v2, v4

    if-gez v4, :cond_0

    .line 112
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/txznet/comm/ui/TR/T/TN;->T2:Ljava/lang/Double;

    goto :goto_0
.end method

.method private T3(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 74
    const/4 v5, 0x0

    .line 90
    :cond_0
    :goto_0
    return-object v5

    .line 75
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Double;>;"
    const-string v8, ";"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "split":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 78
    .local v4, "point":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 79
    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 80
    .local v7, "split2":[Ljava/lang/String;
    const/4 v8, 0x2

    new-array v1, v8, [Ljava/lang/Double;

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v1, v8

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v1, v8

    .line 81
    .local v1, "gps":[Ljava/lang/Double;
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v1, v8

    .line 82
    const/4 v8, 0x1

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v1, v8

    .line 83
    invoke-direct {p0, v1}, Lcom/txznet/comm/ui/TR/T/TN;->T([Ljava/lang/Double;)V

    .line 84
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .end local v1    # "gps":[Ljava/lang/Double;
    .end local v7    # "split2":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 87
    .end local v4    # "point":Ljava/lang/String;
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_0

    .line 90
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public T(Ljava/lang/String;)V
    .locals 10
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/txznet/comm/ui/TR/T/TN;->T:Ljava/util/List;

    .line 41
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    .local v2, "js":Lorg/json/JSONObject;
    const-string v7, "local"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 43
    const-string v7, "local"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "myLocal":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 45
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iput-object v7, p0, Lcom/txznet/comm/ui/TR/T/TN;->Tw:Ljava/lang/Double;

    .line 46
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iput-object v7, p0, Lcom/txznet/comm/ui/TR/T/TN;->Ty:Ljava/lang/Double;

    .line 47
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Double;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/txznet/comm/ui/TR/T/TN;->Tw:Ljava/lang/Double;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/txznet/comm/ui/TR/T/TN;->Ty:Ljava/lang/Double;

    aput-object v9, v7, v8

    invoke-direct {p0, v7}, Lcom/txznet/comm/ui/TR/T/TN;->T([Ljava/lang/Double;)V

    .line 50
    .end local v4    # "myLocal":Ljava/lang/String;
    :cond_2
    const-string v7, "polyLine"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 51
    const-string v7, "polyLine"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "polyLine":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 53
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 54
    .local v6, "trafficArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 55
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 56
    new-instance v1, Lcom/txznet/comm/ui/TR/T/TN$T;

    invoke-direct {v1}, Lcom/txznet/comm/ui/TR/T/TN$T;-><init>()V

    .line 57
    .local v1, "info":Lcom/txznet/comm/ui/TR/T/TN$T;
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 58
    .local v3, "json":Lorg/json/JSONObject;
    const-string v7, "status"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/txznet/comm/ui/TR/T/TN$T;->T3:I

    .line 59
    const-string v7, "line"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/txznet/comm/ui/TR/T/TN;->T3(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v1, Lcom/txznet/comm/ui/TR/T/TN$T;->T:Ljava/util/List;

    .line 60
    iget-object v7, p0, Lcom/txznet/comm/ui/TR/T/TN;->T:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v1    # "info":Lcom/txznet/comm/ui/TR/T/TN$T;
    .end local v3    # "json":Lorg/json/JSONObject;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    .end local v0    # "i":I
    .end local v2    # "js":Lorg/json/JSONObject;
    .end local v5    # "polyLine":Ljava/lang/String;
    .end local v6    # "trafficArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v7

    .line 67
    :cond_4
    iget-object v7, p0, Lcom/txznet/comm/ui/TR/T/TN;->T:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_0

    .line 68
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/txznet/comm/ui/TR/T/TN;->T:Ljava/util/List;

    goto/16 :goto_0
.end method
