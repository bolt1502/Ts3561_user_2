.class public Lcom/txznet/sdk/TXZResourceManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZResourceManager$5;,
        Lcom/txznet/sdk/TXZResourceManager$AsrSence;,
        Lcom/txznet/sdk/TXZResourceManager$HelpWin;,
        Lcom/txznet/sdk/TXZResourceManager$RecordWin;
    }
.end annotation


# static fields
.field public static final STYLE_DEFAULT:Ljava/lang/String; = ""

.field public static final STYLE_KING:Ljava/lang/String; = "KING"

.field private static T2:Lcom/txznet/sdk/TXZResourceManager;


# instance fields
.field T:Ljava/lang/String;

.field T3:Z

.field private TN:Z

.field private Te:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

.field private Tn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private Tw:Z

.field private Ty:Lcom/txznet/sdk/TXZResourceManager$HelpWin;

.field public mAllResourceData:Ljava/lang/String;

.field public mAllResourceFile:Ljava/lang/String;

.field public mUpdateResourceData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/txznet/sdk/TXZResourceManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZResourceManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZResourceManager;->T2:Lcom/txznet/sdk/TXZResourceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->T:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->mAllResourceFile:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->mAllResourceData:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->mUpdateResourceData:Ljava/lang/String;

    .line 509
    iput-boolean v1, p0, Lcom/txznet/sdk/TXZResourceManager;->TN:Z

    .line 510
    iput-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->Te:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    .line 881
    iput-boolean v1, p0, Lcom/txznet/sdk/TXZResourceManager;->Tw:Z

    .line 996
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->Tn:Ljava/util/Map;

    .line 41
    return-void
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZResourceManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/sdk/TXZResourceManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->Tn:Ljava/util/Map;

    return-object v0
.end method

.method private T(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "tar"    # Lorg/json/JSONObject;
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 165
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 166
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 192
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 168
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 169
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    .local v1, "k":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 171
    .local v5, "v":Ljava/lang/Object;
    instance-of v6, v5, Lorg/json/JSONObject;

    if-eqz v6, :cond_4

    .line 173
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 174
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 175
    .local v3, "old":Ljava/lang/Object;
    instance-of v6, v3, Lorg/json/JSONObject;

    if-nez v6, :cond_2

    .line 176
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 177
    .local v4, "t":Lorg/json/JSONObject;
    const-string v6, ""

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    .end local v4    # "t":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 184
    .end local v3    # "old":Ljava/lang/Object;
    .local v2, "n":Lorg/json/JSONObject;
    :goto_2
    check-cast v5, Lorg/json/JSONObject;

    .end local v5    # "v":Ljava/lang/Object;
    invoke-direct {p0, v2, v5}, Lcom/txznet/sdk/TXZResourceManager;->T(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 185
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 190
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "n":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 182
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v1    # "k":Ljava/lang/String;
    .restart local v5    # "v":Ljava/lang/Object;
    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .restart local v2    # "n":Lorg/json/JSONObject;
    goto :goto_2

    .line 188
    .end local v2    # "n":Lorg/json/JSONObject;
    :cond_4
    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZResourceManager;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/txznet/sdk/TXZResourceManager;->T2:Lcom/txznet/sdk/TXZResourceManager;

    return-object v0
.end method


# virtual methods
.method T()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 56
    iget-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->T:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->T:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZResourceManager;->setVoiceStyle(Ljava/lang/String;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->mAllResourceFile:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 59
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.resource.replaceResourceFile"

    iget-object v3, p0, Lcom/txznet/sdk/TXZResourceManager;->mAllResourceFile:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->mAllResourceData:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 64
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.resource.replaceResource"

    iget-object v3, p0, Lcom/txznet/sdk/TXZResourceManager;->mAllResourceData:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->mUpdateResourceData:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 69
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.resource.updateResource"

    iget-object v3, p0, Lcom/txznet/sdk/TXZResourceManager;->mUpdateResourceData:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 73
    :cond_3
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZResourceManager;->TN:Z

    if-eqz v0, :cond_4

    .line 74
    iget-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->Te:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    if-nez v0, :cond_6

    .line 75
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.win.clear"

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 92
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZResourceManager;->Tw:Z

    if-eqz v0, :cond_5

    .line 93
    iget-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->Ty:Lcom/txznet/sdk/TXZResourceManager$HelpWin;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZResourceManager;->setHelpWin(Lcom/txznet/sdk/TXZResourceManager$HelpWin;)V

    .line 95
    :cond_5
    return-void

    .line 78
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHasSetHudRecordWin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/txznet/sdk/TXZResourceManager;->T3:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 79
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZResourceManager;->T3:Z

    if-eqz v0, :cond_7

    .line 80
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.win.prepare.hud"

    const-string v3, "true"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 88
    :goto_1
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.win.prepare"

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    .line 84
    :cond_7
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.win.prepare.hud"

    const-string v3, "false"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_1
.end method

.method public cancelCloseRecordWin()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 913
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.win.cancelClose"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 915
    return-void
.end method

.method public dismissHelpWin()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 967
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.win.closeHelpWin"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 969
    return-void
.end method

.method public dissmissRecordWin()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 959
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.win.dissmiss"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 961
    return-void
.end method

.method public enterSpecifyAsrSence(Lcom/txznet/sdk/TXZResourceManager$AsrSence;)V
    .locals 6
    .param p1, "asrSence"    # Lcom/txznet/sdk/TXZResourceManager$AsrSence;

    .prologue
    .line 926
    const/4 v0, 0x0

    .line 927
    .local v0, "sence":I
    sget-object v1, Lcom/txznet/sdk/TXZResourceManager$5;->T3:[I

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZResourceManager$AsrSence;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 937
    :goto_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.record.win.enterSpecifyAsrSence"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 939
    return-void

    .line 929
    :pswitch_0
    const/4 v0, 0x1

    .line 930
    goto :goto_0

    .line 932
    :pswitch_1
    const/4 v0, 0x2

    .line 933
    goto :goto_0

    .line 927
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadResourceData(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "all"    # Z

    .prologue
    const/4 v6, 0x0

    .line 203
    if-eqz p2, :cond_0

    .line 204
    iput-object v6, p0, Lcom/txznet/sdk/TXZResourceManager;->mAllResourceFile:Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lcom/txznet/sdk/TXZResourceManager;->mAllResourceData:Ljava/lang/String;

    .line 206
    iput-object v6, p0, Lcom/txznet/sdk/TXZResourceManager;->mUpdateResourceData:Ljava/lang/String;

    .line 207
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const-string v3, "com.txznet.txz"

    const-string v4, "txz.resource.replaceResource"

    iget-object v5, p0, Lcom/txznet/sdk/TXZResourceManager;->mAllResourceData:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 219
    :goto_0
    return-void

    .line 212
    :cond_0
    new-instance v1, Lcom/txznet/comm/TN/T;

    iget-object v2, p0, Lcom/txznet/sdk/TXZResourceManager;->mUpdateResourceData:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    .line 213
    .local v1, "jsonOld":Lcom/txznet/comm/TN/T;
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0, p1}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, "jsonNew":Lcom/txznet/comm/TN/T;
    invoke-virtual {v1}, Lcom/txznet/comm/TN/T;->T()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/txznet/sdk/TXZResourceManager;->T(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 215
    invoke-virtual {v1}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/txznet/sdk/TXZResourceManager;->mUpdateResourceData:Ljava/lang/String;

    .line 216
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const-string v3, "com.txznet.txz"

    const-string v4, "txz.resource.updateResource"

    iget-object v5, p0, Lcom/txznet/sdk/TXZResourceManager;->mUpdateResourceData:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public loadResourceData(Lorg/json/JSONObject;Z)V
    .locals 1
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "all"    # Z

    .prologue
    .line 154
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/txznet/sdk/TXZResourceManager;->loadResourceData(Ljava/lang/String;Z)V

    .line 155
    return-void
.end method

.method public loadResourceFile(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "all"    # Z

    .prologue
    const/4 v8, 0x0

    .line 124
    if-eqz p2, :cond_0

    .line 125
    iput-object p1, p0, Lcom/txznet/sdk/TXZResourceManager;->mAllResourceFile:Ljava/lang/String;

    .line 126
    iput-object v8, p0, Lcom/txznet/sdk/TXZResourceManager;->mAllResourceData:Ljava/lang/String;

    .line 127
    iput-object v8, p0, Lcom/txznet/sdk/TXZResourceManager;->mUpdateResourceData:Ljava/lang/String;

    .line 128
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v4

    const-string v5, "com.txznet.txz"

    const-string v6, "txz.resource.replaceResourceFile"

    iget-object v7, p0, Lcom/txznet/sdk/TXZResourceManager;->mAllResourceFile:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 143
    :goto_0
    return-void

    .line 134
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v2, "f":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 136
    .local v3, "in":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v0, v4, [B

    .line 137
    .local v0, "bs":[B
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 138
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 139
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v4, p2}, Lcom/txznet/sdk/TXZResourceManager;->loadResourceData(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    .end local v0    # "bs":[B
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "in":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPageInfoClick(II)V
    .locals 6
    .param p1, "eventType"    # I
    .param p2, "clickType"    # I

    .prologue
    .line 947
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 948
    .local v0, "jb":Lcom/txznet/comm/TN/T;
    const-string v1, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 949
    const-string v1, "clicktype"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 950
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.record.ui.event.display.page"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 952
    return-void
.end method

.method public setHelpWin(Lcom/txznet/sdk/TXZResourceManager$HelpWin;)V
    .locals 4
    .param p1, "helpWin"    # Lcom/txznet/sdk/TXZResourceManager$HelpWin;

    .prologue
    const/4 v3, 0x0

    .line 889
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZResourceManager;->Tw:Z

    .line 890
    iput-object p1, p0, Lcom/txznet/sdk/TXZResourceManager;->Ty:Lcom/txznet/sdk/TXZResourceManager$HelpWin;

    .line 891
    iget-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->Ty:Lcom/txznet/sdk/TXZResourceManager$HelpWin;

    if-nez v0, :cond_0

    .line 892
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.help.win.clear"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 907
    :goto_0
    return-void

    .line 895
    :cond_0
    const-string v0, "help.win."

    new-instance v1, Lcom/txznet/sdk/TXZResourceManager$3;

    invoke-direct {v1, p0, p1}, Lcom/txznet/sdk/TXZResourceManager$3;-><init>(Lcom/txznet/sdk/TXZResourceManager;Lcom/txznet/sdk/TXZResourceManager$HelpWin;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    .line 906
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.help.win.set"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setHudRecordWin(Lcom/txznet/sdk/TXZResourceManager$RecordWin;)V
    .locals 5
    .param p1, "recordWin"    # Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    .prologue
    const/4 v0, 0x1

    .line 866
    iput-boolean v0, p0, Lcom/txznet/sdk/TXZResourceManager;->TN:Z

    .line 867
    iput-object p1, p0, Lcom/txznet/sdk/TXZResourceManager;->Te:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    .line 868
    invoke-virtual {p0, p1}, Lcom/txznet/sdk/TXZResourceManager;->setRecordWin(Lcom/txznet/sdk/TXZResourceManager$RecordWin;)V

    .line 869
    iput-boolean v0, p0, Lcom/txznet/sdk/TXZResourceManager;->T3:Z

    .line 870
    const-string v0, "txz.record.win.prepare.hud.true"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 871
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.win.prepare.hud"

    const-string v3, "true"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 873
    return-void
.end method

.method public setRecordWin(Lcom/txznet/sdk/TXZResourceManager$RecordWin;)V
    .locals 1
    .param p1, "win"    # Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    .prologue
    .line 518
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/txznet/sdk/TXZResourceManager;->setRecordWin(Lcom/txznet/sdk/TXZResourceManager$RecordWin;Z)V

    .line 519
    return-void
.end method

.method public setRecordWin(Lcom/txznet/sdk/TXZResourceManager$RecordWin;Z)V
    .locals 6
    .param p1, "win"    # Lcom/txznet/sdk/TXZResourceManager$RecordWin;
    .param p2, "reserveInner"    # Z

    .prologue
    const/4 v5, 0x0

    .line 529
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/txznet/sdk/TXZResourceManager;->TN:Z

    .line 530
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/txznet/sdk/TXZResourceManager;->T3:Z

    .line 531
    iput-object p1, p0, Lcom/txznet/sdk/TXZResourceManager;->Te:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    .line 532
    iget-object v1, p0, Lcom/txznet/sdk/TXZResourceManager;->Te:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    if-nez v1, :cond_0

    .line 533
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.record.win.clear"

    invoke-virtual {v1, v2, v3, v5, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 861
    :goto_0
    return-void

    .line 538
    :cond_0
    new-instance v1, Lcom/txznet/sdk/TXZResourceManager$1;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZResourceManager$1;-><init>(Lcom/txznet/sdk/TXZResourceManager;)V

    invoke-interface {p1, v1}, Lcom/txznet/sdk/TXZResourceManager$RecordWin;->setOperateListener(Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener;)V

    .line 669
    const-string v1, "win.record."

    new-instance v2, Lcom/txznet/sdk/TXZResourceManager$2;

    invoke-direct {v2, p0, p1}, Lcom/txznet/sdk/TXZResourceManager$2;-><init>(Lcom/txznet/sdk/TXZResourceManager;Lcom/txznet/sdk/TXZResourceManager$RecordWin;)V

    invoke-static {v1, v2}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    .line 854
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 855
    .local v0, "cfg":Lcom/txznet/comm/TN/T;
    const-string v1, "reserveInner"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 856
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.record.win.prepare"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 858
    const-string v1, "txz.record.win.prepare.hud.false"

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 859
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.record.win.prepare.hud"

    const-string v4, "false"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setTextResourceString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "resId"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 275
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 276
    .local v0, "json":Lcom/txznet/comm/TN/T;
    invoke-virtual {v0, p1, p2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 277
    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/txznet/sdk/TXZResourceManager;->loadResourceData(Ljava/lang/String;Z)V

    .line 278
    return-void
.end method

.method public setTextResourceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "resId"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 233
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 234
    .local v1, "json":Lorg/json/JSONObject;
    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 236
    .local v0, "j":Lorg/json/JSONObject;
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/txznet/sdk/TXZResourceManager;->loadResourceData(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v0    # "j":Lorg/json/JSONObject;
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setTextResourceString(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "resId"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;
    .param p3, "data"    # [Ljava/lang/String;

    .prologue
    .line 255
    :try_start_0
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 256
    .local v0, "array":Lcom/txznet/comm/TN/T;
    invoke-virtual {v0, p2, p3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 257
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 258
    .local v2, "json":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 259
    .local v1, "j":Lorg/json/JSONObject;
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/txznet/sdk/TXZResourceManager;->loadResourceData(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v0    # "array":Lcom/txznet/comm/TN/T;
    .end local v1    # "j":Lorg/json/JSONObject;
    .end local v2    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setTextResourceString(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "resId"    # Ljava/lang/String;
    .param p2, "data"    # [Ljava/lang/String;

    .prologue
    .line 289
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 290
    .local v0, "json":Lcom/txznet/comm/TN/T;
    invoke-virtual {v0, p1, p2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 291
    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/txznet/sdk/TXZResourceManager;->loadResourceData(Ljava/lang/String;Z)V

    .line 292
    return-void
.end method

.method public setVoiceStyle(Ljava/lang/String;)V
    .locals 5
    .param p1, "style"    # Ljava/lang/String;

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    const-string p1, ""

    .line 107
    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.resource.setStyle"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 109
    return-void
.end method

.method public showSysText(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 977
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.win.showSysText"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 979
    return-void
.end method

.method public speakTextOnRecordWin(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 8
    .param p1, "resId"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "close"    # Z
    .param p4, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 998
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 999
    .local v1, "taskId":J
    iget-object v3, p0, Lcom/txznet/sdk/TXZResourceManager;->Tn:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    const-string v3, "sdk.record.win.speakTextOnRecordWin.end"

    new-instance v4, Lcom/txznet/sdk/TXZResourceManager$4;

    invoke-direct {v4, p0, p4}, Lcom/txznet/sdk/TXZResourceManager$4;-><init>(Lcom/txznet/sdk/TXZResourceManager;Ljava/lang/Runnable;)V

    invoke-static {v3, v4}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    .line 1019
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 1020
    .local v0, "json":Lcom/txznet/comm/TN/T;
    const-string v3, "text"

    invoke-virtual {v0, v3, p2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 1021
    const-string v3, "close"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 1022
    const-string v3, "resId"

    invoke-virtual {v0, v3, p1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 1023
    const-string v3, "taskId"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 1024
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v3

    const-string v4, "com.txznet.txz"

    const-string v5, "txz.record.win.speakTextOnRecordWin"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1026
    return-void
.end method

.method public speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "close"    # Z
    .param p3, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 993
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 994
    return-void
.end method
