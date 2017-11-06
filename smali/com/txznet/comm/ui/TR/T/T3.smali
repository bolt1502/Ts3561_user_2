.class public Lcom/txznet/comm/ui/TR/T/T3;
.super Lcom/txznet/comm/ui/TR/T/TJ;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/ui/TR/T/T3$T;
    }
.end annotation


# instance fields
.field public T:Z

.field private Ty:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/txznet/comm/ui/TR/T/T3$T;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/TR/T/TJ;-><init>(I)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/TR/T/T3;->Ty:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public T(Lcom/txznet/comm/TN/T;)V
    .locals 6
    .param p1, "data"    # Lcom/txznet/comm/TN/T;

    .prologue
    .line 34
    iget-object v4, p0, Lcom/txznet/comm/ui/TR/T/T3;->Ty:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 35
    const-string v4, "isMultiName"

    const-class v5, Ljava/lang/Boolean;

    invoke-virtual {p1, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/txznet/comm/ui/TR/T/T3;->T:Z

    .line 36
    const-string v4, "contacts"

    const-class v5, Lorg/json/JSONArray;

    invoke-virtual {p1, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 37
    .local v2, "obJsonArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    .line 38
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    iput v4, p0, Lcom/txznet/comm/ui/TR/T/T3;->T2:I

    .line 39
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/txznet/comm/ui/TR/T/T3;->T2:I

    if-ge v1, v4, :cond_0

    .line 41
    :try_start_0
    new-instance v3, Lcom/txznet/comm/TN/T;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/txznet/comm/TN/T;-><init>(Lorg/json/JSONObject;)V

    .line 43
    .local v3, "objJson":Lcom/txznet/comm/TN/T;
    new-instance v0, Lcom/txznet/comm/ui/TR/T/T3$T;

    invoke-direct {v0}, Lcom/txznet/comm/ui/TR/T/T3$T;-><init>()V

    .line 44
    .local v0, "callBean":Lcom/txznet/comm/ui/TR/T/T3$T;
    const-string v4, "name"

    const-class v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/txznet/comm/ui/TR/T/T3$T;->T3:Ljava/lang/String;

    .line 45
    const-string v4, "number"

    const-class v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/txznet/comm/ui/TR/T/T3$T;->T:Ljava/lang/String;

    .line 46
    const-string v4, "province"

    const-class v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/txznet/comm/ui/TR/T/T3$T;->T2:Ljava/lang/String;

    .line 48
    const-string v4, "city"

    const-class v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/txznet/comm/ui/TR/T/T3$T;->TN:Ljava/lang/String;

    .line 49
    const-string v4, "isp"

    const-class v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/txznet/comm/ui/TR/T/T3$T;->Te:Ljava/lang/String;

    .line 51
    iget-object v4, p0, Lcom/txznet/comm/ui/TR/T/T3;->Ty:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v0    # "callBean":Lcom/txznet/comm/ui/TR/T/T3$T;
    .end local v3    # "objJson":Lcom/txznet/comm/TN/T;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 52
    .restart local v1    # "i":I
    :catch_0
    move-exception v4

    goto :goto_1
.end method
