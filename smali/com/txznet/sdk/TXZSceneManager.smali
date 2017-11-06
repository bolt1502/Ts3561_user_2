.class public Lcom/txznet/sdk/TXZSceneManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZSceneManager$3;,
        Lcom/txznet/sdk/TXZSceneManager$SceneTool;,
        Lcom/txznet/sdk/TXZSceneManager$SceneType;
    }
.end annotation


# static fields
.field private static T:Lcom/txznet/sdk/TXZSceneManager;


# instance fields
.field private T2:Lcom/txznet/sdk/TXZSceneManager$SceneTool;

.field private T3:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/txznet/sdk/TXZSceneManager$SceneType;",
            "Lcom/txznet/sdk/TXZSceneManager$SceneTool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/txznet/sdk/TXZSceneManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZSceneManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZSceneManager;->T:Lcom/txznet/sdk/TXZSceneManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZSceneManager;->T3:Ljava/util/Map;

    .line 166
    new-instance v0, Lcom/txznet/sdk/TXZSceneManager$1;

    invoke-direct {v0, p0}, Lcom/txznet/sdk/TXZSceneManager$1;-><init>(Lcom/txznet/sdk/TXZSceneManager;)V

    iput-object v0, p0, Lcom/txznet/sdk/TXZSceneManager;->T2:Lcom/txznet/sdk/TXZSceneManager$SceneTool;

    .line 21
    return-void
.end method

.method private T(Lcom/txznet/sdk/TXZSceneManager$SceneType;Lcom/txznet/sdk/TXZSceneManager$SceneTool;)V
    .locals 6
    .param p1, "type"    # Lcom/txznet/sdk/TXZSceneManager$SceneType;
    .param p2, "tool"    # Lcom/txznet/sdk/TXZSceneManager$SceneTool;

    .prologue
    const/4 v5, 0x0

    .line 191
    sget-object v2, Lcom/txznet/sdk/TXZSceneManager$3;->T:[I

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZSceneManager$SceneType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 277
    :goto_0
    return-void

    .line 193
    :pswitch_0
    const-string v1, "all"

    .line 262
    .local v1, "scene":Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/txznet/sdk/TXZSceneManager;->T2:Lcom/txznet/sdk/TXZSceneManager$SceneTool;

    if-ne v2, p2, :cond_1

    .line 263
    :cond_0
    const-string v0, "txz.sence.clear."

    .line 266
    .local v0, "cmd":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const-string v3, "com.txznet.txz"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tool.sence."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/txznet/sdk/TXZSceneManager$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/txznet/sdk/TXZSceneManager$2;-><init>(Lcom/txznet/sdk/TXZSceneManager;Lcom/txznet/sdk/TXZSceneManager$SceneTool;Lcom/txznet/sdk/TXZSceneManager$SceneType;)V

    invoke-static {v2, v3}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    goto :goto_0

    .line 196
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "scene":Ljava/lang/String;
    :pswitch_1
    const-string v1, "wakeup"

    .line 197
    .restart local v1    # "scene":Ljava/lang/String;
    goto :goto_1

    .line 199
    .end local v1    # "scene":Ljava/lang/String;
    :pswitch_2
    const-string v1, "call"

    .line 200
    .restart local v1    # "scene":Ljava/lang/String;
    goto :goto_1

    .line 202
    .end local v1    # "scene":Ljava/lang/String;
    :pswitch_3
    const-string v1, "music"

    .line 203
    .restart local v1    # "scene":Ljava/lang/String;
    goto :goto_1

    .line 205
    .end local v1    # "scene":Ljava/lang/String;
    :pswitch_4
    const-string v1, "nav"

    .line 206
    .restart local v1    # "scene":Ljava/lang/String;
    goto :goto_1

    .line 208
    .end local v1    # "scene":Ljava/lang/String;
    :pswitch_5
    const-string v1, "empty"

    .line 209
    .restart local v1    # "scene":Ljava/lang/String;
    goto :goto_1

    .line 211
    .end local v1    # "scene":Ljava/lang/String;
    :pswitch_6
    const-string v1, "unknow"

    .line 212
    .restart local v1    # "scene":Ljava/lang/String;
    goto :goto_1

    .line 214
    .end local v1    # "scene":Ljava/lang/String;
    :pswitch_7
    const-string v1, "unsupport"

    .line 215
    .restart local v1    # "scene":Ljava/lang/String;
    goto :goto_1

    .line 217
    .end local v1    # "scene":Ljava/lang/String;
    :pswitch_8
    const-string v1, "app"

    .line 218
    .restart local v1    # "scene":Ljava/lang/String;
    goto :goto_1

    .line 220
    .end local v1    # "scene":Ljava/lang/String;
    :pswitch_9
    const-string v1, "command"

    .line 221
    .restart local v1    # "scene":Ljava/lang/String;
    goto :goto_1

    .line 223
    .end local v1    # "scene":Ljava/lang/String;
    :pswitch_a
    const-string v1, "limit_number"

    .line 224
    .restart local v1    # "scene":Ljava/lang/String;
    goto :goto_1

    .line 226
    .end local v1    # "scene":Ljava/lang/String;
    :pswitch_b
    const-string v1, "location"

    .line 227
    .restart local v1    # "scene":Ljava/lang/String;
    goto :goto_1

    .line 229
    .end local v1    # "scene":Ljava/lang/String;
    :pswitch_c
    const-string v1, "poi_choice"

    .line 230
    .restart local v1    # "scene":Ljava/lang/String;
    goto :goto_1

    .line 232
    .end local v1    # "scene":Ljava/lang/String;
    :pswitch_d
    const-string v1, "set_user_wakeup_keywords"

    .line 233
    .restart local v1    # "scene":Ljava/lang/String;
    goto :goto_1

    .line 235
    .end local v1    # "scene":Ljava/lang/String;
    :pswitch_e
    const-string v1, "stock"

    .line 236
    .restart local v1    # "scene":Ljava/lang/String;
    goto :goto_1

    .line 238
    .end local v1    # "scene":Ljava/lang/String;
    :pswitch_f
    const-string v1, "traffic"

    .line 239
    .restart local v1    # "scene":Ljava/lang/String;
    goto :goto_1

    .line 241
    .end local v1    # "scene":Ljava/lang/String;
    :pswitch_10
    const-string v1, "weather"

    .line 242
    .restart local v1    # "scene":Ljava/lang/String;
    goto :goto_1

    .line 244
    .end local v1    # "scene":Ljava/lang/String;
    :pswitch_11
    const-string v1, "help"

    .line 245
    .restart local v1    # "scene":Ljava/lang/String;
    goto :goto_1

    .line 247
    .end local v1    # "scene":Ljava/lang/String;
    :pswitch_12
    const-string v1, "audio"

    .line 248
    .restart local v1    # "scene":Ljava/lang/String;
    goto :goto_1

    .line 250
    .end local v1    # "scene":Ljava/lang/String;
    :pswitch_13
    const-string v1, "selector"

    .line 251
    .restart local v1    # "scene":Ljava/lang/String;
    goto :goto_1

    .line 253
    .end local v1    # "scene":Ljava/lang/String;
    :pswitch_14
    const-string v1, "movie"

    .line 254
    .restart local v1    # "scene":Ljava/lang/String;
    goto :goto_1

    .line 256
    .end local v1    # "scene":Ljava/lang/String;
    :pswitch_15
    const-string v1, "wechat"

    .line 257
    .restart local v1    # "scene":Ljava/lang/String;
    goto :goto_1

    .line 265
    :cond_1
    const-string v0, "txz.sence.set."

    .restart local v0    # "cmd":Ljava/lang/String;
    goto :goto_2

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZSceneManager;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/txznet/sdk/TXZSceneManager;->T:Lcom/txznet/sdk/TXZSceneManager;

    return-object v0
.end method


# virtual methods
.method T()V
    .locals 4

    .prologue
    .line 36
    iget-object v2, p0, Lcom/txznet/sdk/TXZSceneManager;->T3:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 37
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/txznet/sdk/TXZSceneManager$SceneType;Lcom/txznet/sdk/TXZSceneManager$SceneTool;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txznet/sdk/TXZSceneManager$SceneTool;

    invoke-direct {p0, v2, v3}, Lcom/txznet/sdk/TXZSceneManager;->T(Lcom/txznet/sdk/TXZSceneManager$SceneType;Lcom/txznet/sdk/TXZSceneManager$SceneTool;)V

    goto :goto_0

    .line 39
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/txznet/sdk/TXZSceneManager$SceneType;Lcom/txznet/sdk/TXZSceneManager$SceneTool;>;"
    :cond_0
    return-void
.end method

.method public setSceneTool(Lcom/txznet/sdk/TXZSceneManager$SceneType;Lcom/txznet/sdk/TXZSceneManager$SceneTool;)V
    .locals 2
    .param p1, "type"    # Lcom/txznet/sdk/TXZSceneManager$SceneType;
    .param p2, "tool"    # Lcom/txznet/sdk/TXZSceneManager$SceneTool;

    .prologue
    .line 182
    if-nez p2, :cond_0

    .line 183
    iget-object v0, p0, Lcom/txznet/sdk/TXZSceneManager;->T3:Ljava/util/Map;

    iget-object v1, p0, Lcom/txznet/sdk/TXZSceneManager;->T2:Lcom/txznet/sdk/TXZSceneManager$SceneTool;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/txznet/sdk/TXZSceneManager;->T(Lcom/txznet/sdk/TXZSceneManager$SceneType;Lcom/txznet/sdk/TXZSceneManager$SceneTool;)V

    .line 187
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/txznet/sdk/TXZSceneManager;->T3:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public triggerScene(Lcom/txznet/sdk/TXZSceneManager$SceneType;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lcom/txznet/sdk/TXZSceneManager$SceneType;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 289
    return-void
.end method
