.class public Lcom/ts/bt/ContactInfo;
.super Ljava/lang/Object;
.source "ContactInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/bt/ContactInfo$PhoneInfo;
    }
.end annotation


# static fields
.field public static final COMBINATION_SEPERATOR:Ljava/lang/String; = ","


# instance fields
.field private contactId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private nameNorm:[Ljava/lang/String;

.field private namePinyin:[Ljava/lang/String;

.field private final phoneInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ts/bt/ContactInfo$PhoneInfo;",
            ">;"
        }
    .end annotation
.end field

.field private photoThumbUri:Ljava/lang/String;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ts/bt/ContactInfo;->phoneInfos:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public addPhoneInfo(Lcom/ts/bt/ContactInfo$PhoneInfo;)V
    .locals 1
    .param p1, "phoneInfo"    # Lcom/ts/bt/ContactInfo$PhoneInfo;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ts/bt/ContactInfo;->phoneInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public getContactId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ts/bt/ContactInfo;->contactId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/ts/bt/ContactInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameNorm()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ts/bt/ContactInfo;->nameNorm:[Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ts/bt/ContactInfo$PhoneInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ts/bt/ContactInfo;->phoneInfos:Ljava/util/List;

    return-object v0
.end method

.method public getPhotoThumbUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ts/bt/ContactInfo;->photoThumbUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyin()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/ts/bt/ContactInfo;->namePinyin:[Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ts/bt/ContactInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTopPhoneInfo()Lcom/ts/bt/ContactInfo$PhoneInfo;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ts/bt/ContactInfo;->phoneInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ts/bt/ContactInfo;->phoneInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/ts/bt/ContactInfo;->phoneInfos:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ts/bt/ContactInfo$PhoneInfo;

    .line 91
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContactId(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactId"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/ts/bt/ContactInfo;->contactId:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/ts/bt/ContactInfo;->name:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setNameNorm([Ljava/lang/String;)V
    .locals 0
    .param p1, "nameNorm"    # [Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/ts/bt/ContactInfo;->nameNorm:[Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setPhotoThumbUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "photoThumbUri"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ts/bt/ContactInfo;->photoThumbUri:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setPinyin([Ljava/lang/String;)V
    .locals 0
    .param p1, "fullPinyin"    # [Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/ts/bt/ContactInfo;->namePinyin:[Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/ts/bt/ContactInfo;->tag:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 125
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 126
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v10, "name"

    invoke-virtual {p0}, Lcom/ts/bt/ContactInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 128
    .local v7, "pinyinArray":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/ts/bt/ContactInfo;->getPinyin()[Ljava/lang/String;

    move-result-object v8

    .line 129
    .local v8, "pinyins":[Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 130
    array-length v11, v8

    move v10, v9

    :goto_0
    if-lt v10, v11, :cond_2

    .line 134
    :cond_0
    const-string v10, "pinyin"

    invoke-virtual {v1, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 136
    .local v5, "phoneInfoArray":Lorg/json/JSONArray;
    iget-object v10, p0, Lcom/ts/bt/ContactInfo;->phoneInfos:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 139
    const-string v10, "phone_info"

    invoke-virtual {v1, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 141
    .local v3, "nameNormArray":Lorg/json/JSONArray;
    iget-object v10, p0, Lcom/ts/bt/ContactInfo;->nameNorm:[Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 142
    iget-object v10, p0, Lcom/ts/bt/ContactInfo;->nameNorm:[Ljava/lang/String;

    array-length v11, v10

    :goto_2
    if-lt v9, v11, :cond_4

    .line 146
    :cond_1
    const-string v9, "name_norm"

    invoke-virtual {v1, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .end local v3    # "nameNormArray":Lorg/json/JSONArray;
    .end local v5    # "phoneInfoArray":Lorg/json/JSONArray;
    .end local v7    # "pinyinArray":Lorg/json/JSONArray;
    .end local v8    # "pinyins":[Ljava/lang/String;
    :goto_3
    return-object v1

    .line 130
    .restart local v1    # "jsonObj":Lorg/json/JSONObject;
    .restart local v7    # "pinyinArray":Lorg/json/JSONArray;
    .restart local v8    # "pinyins":[Ljava/lang/String;
    :cond_2
    aget-object v6, v8, v10

    .line 131
    .local v6, "pinyin":Ljava/lang/String;
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 130
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 136
    .end local v6    # "pinyin":Ljava/lang/String;
    .restart local v5    # "phoneInfoArray":Lorg/json/JSONArray;
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ts/bt/ContactInfo$PhoneInfo;

    .line 137
    .local v4, "phoneInfo":Lcom/ts/bt/ContactInfo$PhoneInfo;
    invoke-virtual {v4}, Lcom/ts/bt/ContactInfo$PhoneInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 148
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .end local v4    # "phoneInfo":Lcom/ts/bt/ContactInfo$PhoneInfo;
    .end local v5    # "phoneInfoArray":Lorg/json/JSONArray;
    .end local v7    # "pinyinArray":Lorg/json/JSONArray;
    .end local v8    # "pinyins":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    const/4 v1, 0x0

    goto :goto_3

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "jsonObj":Lorg/json/JSONObject;
    .restart local v3    # "nameNormArray":Lorg/json/JSONArray;
    .restart local v5    # "phoneInfoArray":Lorg/json/JSONArray;
    .restart local v7    # "pinyinArray":Lorg/json/JSONArray;
    .restart local v8    # "pinyins":[Ljava/lang/String;
    :cond_4
    :try_start_1
    aget-object v2, v10, v9

    .line 143
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    add-int/lit8 v9, v9, 0x1

    goto :goto_2
.end method

.method public toJson2()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 162
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 163
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v4, "name"

    invoke-virtual {p0}, Lcom/ts/bt/ContactInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 173
    .local v3, "phoneInfoArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/ts/bt/ContactInfo;->phoneInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 176
    const-string v4, "phone_info"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .end local v3    # "phoneInfoArray":Lorg/json/JSONArray;
    :goto_1
    return-object v1

    .line 173
    .restart local v1    # "jsonObj":Lorg/json/JSONObject;
    .restart local v3    # "phoneInfoArray":Lorg/json/JSONArray;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ts/bt/ContactInfo$PhoneInfo;

    .line 174
    .local v2, "phoneInfo":Lcom/ts/bt/ContactInfo$PhoneInfo;
    invoke-virtual {v2}, Lcom/ts/bt/ContactInfo$PhoneInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .end local v2    # "phoneInfo":Lcom/ts/bt/ContactInfo$PhoneInfo;
    .end local v3    # "phoneInfoArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/ts/bt/ContactInfo;->toJson2()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
