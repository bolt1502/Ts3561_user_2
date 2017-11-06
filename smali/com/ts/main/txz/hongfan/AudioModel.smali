.class public Lcom/ts/main/txz/hongfan/AudioModel;
.super Ljava/lang/Object;
.source "AudioModel.java"


# instance fields
.field private album:Ljava/lang/String;

.field private artists:Lorg/json/JSONArray;

.field private keywords:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/ts/main/txz/hongfan/AudioModel;
    .locals 2
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "am":Lcom/ts/main/txz/hongfan/AudioModel;
    if-eqz p0, :cond_2

    .line 21
    new-instance v0, Lcom/ts/main/txz/hongfan/AudioModel;

    .end local v0    # "am":Lcom/ts/main/txz/hongfan/AudioModel;
    invoke-direct {v0}, Lcom/ts/main/txz/hongfan/AudioModel;-><init>()V

    .line 23
    .restart local v0    # "am":Lcom/ts/main/txz/hongfan/AudioModel;
    const-string v1, "album"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    const-string v1, "album"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/main/txz/hongfan/AudioModel;->setAlbum(Ljava/lang/String;)V

    .line 25
    :cond_0
    const-string v1, "artists"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    const-string v1, "artists"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/main/txz/hongfan/AudioModel;->setArtists(Lorg/json/JSONArray;)V

    .line 27
    :cond_1
    const-string v1, "keywords"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    const-string v1, "keywords"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/main/txz/hongfan/AudioModel;->setKeywords(Lorg/json/JSONArray;)V

    .line 31
    :cond_2
    return-object v0
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/AudioModel;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtists()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/AudioModel;->artists:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getKeywords()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/AudioModel;->keywords:Lorg/json/JSONArray;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/ts/main/txz/hongfan/AudioModel;->album:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setArtists(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "artists"    # Lorg/json/JSONArray;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/ts/main/txz/hongfan/AudioModel;->artists:Lorg/json/JSONArray;

    .line 52
    return-void
.end method

.method public setKeywords(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "keywords"    # Lorg/json/JSONArray;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ts/main/txz/hongfan/AudioModel;->keywords:Lorg/json/JSONArray;

    .line 62
    return-void
.end method
