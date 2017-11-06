.class public Lcom/txznet/sdk/TXZMusicManager$MusicModel;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicModel"
.end annotation


# instance fields
.field protected T:Ljava/lang/String;

.field protected T2:[Ljava/lang/String;

.field protected T3:Ljava/lang/String;

.field protected TN:[Ljava/lang/String;

.field protected Te:Ljava/lang/String;

.field protected Tn:Ljava/lang/String;

.field protected Tw:I

.field protected Ty:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collecionFromString(Ljava/lang/String;)Ljava/util/Collection;
    .locals 5
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/txznet/sdk/TXZMusicManager$MusicModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 218
    .local v2, "json":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    .local v3, "musics":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/txznet/sdk/TXZMusicManager$MusicModel;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 221
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->fromString(Ljava/lang/String;)Lcom/txznet/sdk/TXZMusicManager$MusicModel;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "i":I
    .end local v2    # "json":Lorg/json/JSONArray;
    .end local v3    # "musics":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/txznet/sdk/TXZMusicManager$MusicModel;>;"
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Lorg/json/JSONException;
    const/4 v3, 0x0

    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v3
.end method

.method public static collecionToString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/txznet/sdk/TXZMusicManager$MusicModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "musics":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/txznet/sdk/TXZMusicManager$MusicModel;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 209
    .local v1, "json":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txznet/sdk/TXZMusicManager$MusicModel;

    .line 210
    .local v2, "m":Lcom/txznet/sdk/TXZMusicManager$MusicModel;
    invoke-virtual {v2}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 212
    .end local v2    # "m":Lcom/txznet/sdk/TXZMusicManager$MusicModel;
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static fromString(Ljava/lang/String;)Lcom/txznet/sdk/TXZMusicManager$MusicModel;
    .locals 5
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 231
    :try_start_0
    new-instance v2, Lcom/txznet/sdk/TXZMusicManager$MusicModel;

    invoke-direct {v2}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;-><init>()V

    .line 232
    .local v2, "model":Lcom/txznet/sdk/TXZMusicManager$MusicModel;
    new-instance v1, Lcom/txznet/comm/TN/T;

    invoke-direct {v1, p0}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    .line 233
    .local v1, "jsonBuilder":Lcom/txznet/comm/TN/T;
    const-string v3, "title"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T:Ljava/lang/String;

    .line 234
    const-string v3, "album"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T3:Ljava/lang/String;

    .line 235
    const-string v3, "path"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Te:Ljava/lang/String;

    .line 236
    const-string v3, "artist"

    const-class v4, [Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v2, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T2:[Ljava/lang/String;

    .line 237
    const-string v3, "keywords"

    const-class v4, [Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v2, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->TN:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v1    # "jsonBuilder":Lcom/txznet/comm/TN/T;
    .end local v2    # "model":Lcom/txznet/sdk/TXZMusicManager$MusicModel;
    :goto_0
    return-object v2

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MusicModel from json error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    .line 241
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T3:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T2:[Ljava/lang/String;

    return-object v0
.end method

.method public getField()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Tw:I

    return v0
.end method

.method public getKeywords()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->TN:[Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Te:Ljava/lang/String;

    return-object v0
.end method

.method public getSubCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Tn:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Ty:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T3:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setArtist([Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # [Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T2:[Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setField(I)V
    .locals 0
    .param p1, "field"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Tw:I

    .line 135
    return-void
.end method

.method public setKeywords([Ljava/lang/String;)V
    .locals 0
    .param p1, "keywords"    # [Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->TN:[Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Te:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setSubCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "subCategory"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Tn:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Ty:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 180
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 181
    .local v2, "json":Lorg/json/JSONObject;
    const-string v5, "title"

    iget-object v6, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string v5, "album"

    iget-object v6, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T3:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 184
    .local v3, "jsonArtists":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T2:[Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 185
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T2:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 186
    iget-object v5, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T2:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "i":I
    :cond_0
    const-string v5, "artist"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 191
    .local v4, "jsonKeywords":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->TN:[Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 192
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->TN:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 193
    iget-object v5, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->TN:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 196
    .end local v1    # "i":I
    :cond_1
    const-string v5, "keywords"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v5, "field"

    iget v6, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Tw:I

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 198
    const-string v5, "path"

    iget-object v6, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Te:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v5, "text"

    iget-object v6, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Ty:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v5, "subcategory"

    iget-object v6, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Tn:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 203
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "jsonArtists":Lorg/json/JSONArray;
    .end local v4    # "jsonKeywords":Lorg/json/JSONArray;
    :goto_2
    return-object v5

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_2
.end method
