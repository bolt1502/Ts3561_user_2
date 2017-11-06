.class public Lcom/ts/MainUI/GetID;
.super Ljava/lang/Object;
.source "GetID.java"


# static fields
.field private static mGetid:Lcom/ts/MainUI/GetID;


# instance fields
.field public mDevice:Ljava/lang/String;

.field public mLicense:Ljava/lang/String;

.field public mNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/ts/MainUI/GetID;

    invoke-direct {v0}, Lcom/ts/MainUI/GetID;-><init>()V

    sput-object v0, Lcom/ts/MainUI/GetID;->mGetid:Lcom/ts/MainUI/GetID;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/MainUI/GetID;->mDevice:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/MainUI/GetID;->mNum:I

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/ts/MainUI/GetID;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/ts/MainUI/GetID;->mGetid:Lcom/ts/MainUI/GetID;

    return-object v0
.end method

.method private getString(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "formparams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    const/4 v8, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    .local v7, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 36
    .local v1, "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v9, "GB2312"

    invoke-direct {v2, p2, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .local v2, "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    move-object v1, v2

    .line 41
    .end local v2    # "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v1    # "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :goto_0
    if-nez v1, :cond_1

    .line 72
    :cond_0
    :goto_1
    return-object v8

    .line 37
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 43
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 44
    .local v5, "httppost":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v5, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 46
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 47
    .local v3, "httpclient":Lorg/apache/http/client/HttpClient;
    const/4 v6, 0x0

    .line 49
    .local v6, "response":Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-interface {v3, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    .line 57
    :goto_2
    if-eqz v6, :cond_0

    .line 59
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 60
    .local v4, "httpentity":Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_2

    .line 62
    :try_start_2
    const-string v8, "GB2312"

    invoke-static {v4, v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v7

    :cond_2
    :goto_3
    move-object v8, v7

    .line 72
    goto :goto_1

    .line 50
    .end local v4    # "httpentity":Lorg/apache/http/HttpEntity;
    :catch_1
    move-exception v0

    .line 52
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_2

    .line 53
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 63
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "httpentity":Lorg/apache/http/HttpEntity;
    :catch_3
    move-exception v0

    .line 65
    .local v0, "e":Lorg/apache/http/ParseException;
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_3

    .line 66
    .end local v0    # "e":Lorg/apache/http/ParseException;
    :catch_4
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public getID(Ljava/lang/String;)I
    .locals 11
    .param p1, "sLicense"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v10, 0x0

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v2, "formparams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "LICENSE"

    invoke-direct {v8, v9, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    const-string v8, "http://ljj.forfan.com.cn/forfan/getid.php"

    invoke-direct {p0, v8, v2}, Lcom/ts/MainUI/GetID;->getString(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "s":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v7

    .line 83
    :cond_1
    const-string v8, "invalid"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "error"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    .line 84
    :cond_2
    const/4 v7, 0x3

    goto :goto_0

    .line 88
    :cond_3
    invoke-static {v4, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 90
    .local v0, "b":[B
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v8, "GB2312"

    invoke-direct {v5, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "s":Ljava/lang/String;
    .local v5, "s":Ljava/lang/String;
    move-object v4, v5

    .line 95
    .end local v5    # "s":Ljava/lang/String;
    .restart local v4    # "s":Ljava/lang/String;
    :goto_1
    const-string v8, "##*"

    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 96
    .local v3, "n":I
    add-int/lit8 v8, v3, 0x3

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "sNum":Ljava/lang/String;
    invoke-virtual {v4, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 99
    :try_start_1
    new-instance v8, Ljava/lang/String;

    const-string v9, "GB2312"

    invoke-direct {v8, v0, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, p0, Lcom/ts/MainUI/GetID;->mDevice:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    :goto_2
    const-string v8, "##*"

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v3, v8, 0x3

    .line 105
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/ts/MainUI/GetID;->mNum:I

    .line 106
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/ts/MainUI/GetID;->mNum:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/ts/MainUI/GetID;->mLicense:Ljava/lang/String;

    .line 107
    iget-object v8, p0, Lcom/ts/MainUI/GetID;->mDevice:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ts/MainUI/GetID;->mLicense:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 111
    const/4 v7, 0x1

    goto :goto_0

    .line 91
    .end local v3    # "n":I
    .end local v6    # "sNum":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 100
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "n":I
    .restart local v6    # "sNum":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 102
    .restart local v1    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2
.end method

.method public getIDok([B)Ljava/lang/String;
    .locals 6
    .param p1, "bDevice"    # [B

    .prologue
    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v1, "formparams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "LICENSE"

    iget-object v4, p0, Lcom/ts/MainUI/GetID;->mLicense:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    .line 121
    :try_start_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "DEVICE"

    new-instance v4, Ljava/lang/String;

    const-string v5, "GB2312"

    invoke-direct {v4, p1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    const-string v2, "http://ljj.forfan.com.cn/forfan/getidok.php"

    invoke-direct {p0, v2, v1}, Lcom/ts/MainUI/GetID;->getString(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public update([BII)Ljava/lang/String;
    .locals 6
    .param p1, "bDevice"    # [B
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v1, "formparams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    .line 141
    :try_start_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "DEVICE"

    new-instance v4, Ljava/lang/String;

    const-string v5, "GB2312"

    invoke-direct {v4, p1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "GPSX"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "GPSY"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    const-string v2, "http://ljj.forfan.com.cn/forfan/update.php"

    invoke-direct {p0, v2, v1}, Lcom/ts/MainUI/GetID;->getString(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 142
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateErrInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v0, "formparams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "ERRINFO"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    const-string v1, "http://ljj.forfan.com.cn/forfan/report.php"

    invoke-direct {p0, v1, v0}, Lcom/ts/MainUI/GetID;->getString(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
