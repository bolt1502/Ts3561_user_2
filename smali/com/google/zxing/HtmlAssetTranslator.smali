.class public final Lcom/google/zxing/HtmlAssetTranslator;
.super Ljava/lang/Object;
.source "HtmlAssetTranslator.java"


# static fields
.field private static final COMMA:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/HtmlAssetTranslator;->COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 72
    array-length v6, p0

    const/4 v7, 0x3

    if-ge v6, v7, :cond_1

    .line 73
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Usage: HtmlAssetTranslator android/assets/ (all|lang1[,lang2 ...]) (all|file1.html[ file2.html ...])"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void

    .line 77
    :cond_1
    aget-object v6, p0, v8

    new-array v7, v8, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 78
    .local v0, "assetsDir":Ljava/nio/file/Path;
    const/4 v6, 0x1

    aget-object v6, p0, v6

    invoke-static {v0, v6}, Lcom/google/zxing/HtmlAssetTranslator;->parseLanguagesToTranslate(Ljava/nio/file/Path;Ljava/lang/CharSequence;)Ljava/util/Collection;

    move-result-object v4

    .line 79
    .local v4, "languagesToTranslate":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x2

    array-length v8, p0

    invoke-interface {v6, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 80
    .local v5, "restOfArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v5}, Lcom/google/zxing/HtmlAssetTranslator;->parseFileNamesToTranslate(Ljava/nio/file/Path;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v1

    .line 81
    .local v1, "fileNamesToTranslate":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 82
    .local v3, "language":Ljava/lang/String;
    invoke-static {v0, v3, v1}, Lcom/google/zxing/HtmlAssetTranslator;->translateOneLanguage(Ljava/nio/file/Path;Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private static parseFileNamesToTranslate(Ljava/nio/file/Path;Ljava/util/List;)Ljava/util/Collection;
    .locals 9
    .param p0, "assetsDir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "restOfArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "all"

    const/4 v7, 0x0

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v1, "fileNamesToTranslate":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v6, "html-en"

    invoke-interface {p0, v6}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    .line 114
    .local v3, "htmlEnAssetDir":Ljava/nio/file/Path;
    const-string v6, "*.html"

    invoke-static {v3, v6}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/DirectoryStream;

    move-result-object v2

    .local v2, "files":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    const/4 v7, 0x0

    .line 115
    :try_start_0
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    .line 116
    .local v0, "file":Ljava/nio/file/Path;
    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 114
    .end local v0    # "file":Ljava/nio/file/Path;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v6

    :try_start_1
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :catchall_0
    move-exception v7

    move-object v8, v7

    move-object v7, v6

    move-object v6, v8

    :goto_1
    if-eqz v2, :cond_0

    if-eqz v7, :cond_4

    :try_start_2
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    throw v6

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v7, :cond_3

    :try_start_3
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 121
    .end local v1    # "fileNamesToTranslate":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v2    # "files":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .end local v3    # "htmlEnAssetDir":Ljava/nio/file/Path;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_3
    return-object v1

    .line 118
    .restart local v1    # "fileNamesToTranslate":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v2    # "files":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v3    # "htmlEnAssetDir":Ljava/nio/file/Path;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v5

    .local v5, "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V

    goto :goto_3

    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_2
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V

    goto :goto_2

    .end local v1    # "fileNamesToTranslate":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v2    # "files":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .end local v3    # "htmlEnAssetDir":Ljava/nio/file/Path;
    :cond_5
    move-object v1, p1

    .line 121
    goto :goto_3

    .line 118
    .restart local v1    # "fileNamesToTranslate":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v2    # "files":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v3    # "htmlEnAssetDir":Ljava/nio/file/Path;
    :catchall_1
    move-exception v6

    goto :goto_1
.end method

.method private static parseLanguagesToTranslate(Ljava/nio/file/Path;Ljava/lang/CharSequence;)Ljava/util/Collection;
    .locals 10
    .param p0, "assetsDir"    # Ljava/nio/file/Path;
    .param p1, "languageArg"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    const-string v6, "all"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 89
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v4, "languages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v1, Lcom/google/zxing/HtmlAssetTranslator$1;

    invoke-direct {v1}, Lcom/google/zxing/HtmlAssetTranslator$1;-><init>()V

    .line 98
    .local v1, "fileFilter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<Ljava/nio/file/Path;>;"
    invoke-static {p0, v1}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    .local v0, "dirs":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    const/4 v7, 0x0

    .line 99
    :try_start_0
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/Path;

    .line 100
    .local v3, "languageDir":Ljava/nio/file/Path;
    invoke-interface {v3}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 98
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "languageDir":Ljava/nio/file/Path;
    :catch_0
    move-exception v6

    :try_start_1
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :catchall_0
    move-exception v7

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    :goto_1
    if-eqz v0, :cond_0

    if-eqz v7, :cond_4

    :try_start_2
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    throw v6

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v7, :cond_3

    :try_start_3
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 105
    .end local v0    # "dirs":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .end local v1    # "fileFilter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<Ljava/nio/file/Path;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "languages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2
    :goto_3
    return-object v4

    .line 102
    .restart local v0    # "dirs":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v1    # "fileFilter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<Ljava/nio/file/Path;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "languages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catch_1
    move-exception v5

    .local v5, "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V

    goto :goto_3

    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_2
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V

    goto :goto_2

    .line 105
    .end local v0    # "dirs":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .end local v1    # "fileFilter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<Ljava/nio/file/Path;>;"
    .end local v4    # "languages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_5
    sget-object v6, Lcom/google/zxing/HtmlAssetTranslator;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_3

    .line 102
    .restart local v0    # "dirs":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v1    # "fileFilter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<Ljava/nio/file/Path;>;"
    .restart local v4    # "languages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catchall_1
    move-exception v6

    goto :goto_1
.end method

.method private static shouldTranslate(Lorg/w3c/dom/Node;)Z
    .locals 7
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v5, 0x0

    .line 213
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 214
    .local v0, "attributes":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v0, :cond_1

    .line 215
    const-string v6, "class"

    invoke-interface {v0, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 216
    .local v1, "classAttribute":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_1

    .line 217
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "textContent":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v6, "notranslate"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 236
    .end local v1    # "classAttribute":Lorg/w3c/dom/Node;
    .end local v4    # "textContent":Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 223
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "nodeName":Ljava/lang/String;
    const-string v6, "script"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 228
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    .line 229
    .restart local v4    # "textContent":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 230
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 231
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 232
    const/4 v5, 0x1

    goto :goto_0

    .line 230
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static translateOneFile(Ljava/lang/String;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/String;)V
    .locals 26
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "targetHtmlDir"    # Ljava/nio/file/Path;
    .param p2, "sourceFile"    # Ljava/nio/file/Path;
    .param p3, "translationTextTranslated"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-interface/range {p2 .. p2}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v6

    .line 156
    .local v6, "destFile":Ljava/nio/file/Path;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v9

    .line 159
    .local v9, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 160
    .local v4, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-interface/range {p2 .. p2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 167
    .local v7, "document":Lorg/w3c/dom/Document;
    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v18

    .line 168
    .local v18, "rootElement":Lorg/w3c/dom/Element;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Element;->normalize()V

    .line 170
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 171
    .local v14, "nodes":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/w3c/dom/Node;>;"
    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Queue;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_2

    .line 174
    invoke-interface {v14}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Node;

    .line 175
    .local v13, "node":Lorg/w3c/dom/Node;
    invoke-static {v13}, Lcom/google/zxing/HtmlAssetTranslator;->shouldTranslate(Lorg/w3c/dom/Node;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 176
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 177
    .local v5, "children":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v23

    move/from16 v0, v23

    if-ge v11, v0, :cond_1

    .line 178
    invoke-interface {v5, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v14, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 161
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "children":Lorg/w3c/dom/NodeList;
    .end local v7    # "document":Lorg/w3c/dom/Document;
    .end local v11    # "i":I
    .end local v13    # "node":Lorg/w3c/dom/Node;
    .end local v14    # "nodes":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/w3c/dom/Node;>;"
    .end local v18    # "rootElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v16

    .line 162
    .local v16, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v23, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    .line 163
    .end local v16    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v19

    .line 164
    .local v19, "sae":Lorg/xml/sax/SAXException;
    new-instance v23, Ljava/io/IOException;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    .line 181
    .end local v19    # "sae":Lorg/xml/sax/SAXException;
    .restart local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "document":Lorg/w3c/dom/Document;
    .restart local v13    # "node":Lorg/w3c/dom/Node;
    .restart local v14    # "nodes":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/w3c/dom/Node;>;"
    .restart local v18    # "rootElement":Lorg/w3c/dom/Element;
    :cond_1
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 182
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v20

    .line 183
    .local v20, "text":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_0

    .line 184
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/google/zxing/StringsResourceTranslator;->translateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 185
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x20

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x20

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v13, v0}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    .end local v13    # "node":Lorg/w3c/dom/Node;
    .end local v20    # "text":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v21

    .line 191
    .local v21, "translateText":Lorg/w3c/dom/Node;
    const-string v23, "p"

    move-object/from16 v0, v23

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    .line 192
    .local v15, "paragraph":Lorg/w3c/dom/Node;
    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 193
    const-string v23, "body"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 194
    .local v3, "body":Lorg/w3c/dom/Node;
    invoke-interface {v3, v15}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 198
    :try_start_1
    invoke-static {}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->newInstance()Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v17

    .line 203
    .local v17, "registry":Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;
    const-string v23, "LS"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->getDOMImplementation(Ljava/lang/String;)Lorg/w3c/dom/DOMImplementation;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/ls/DOMImplementationLS;

    .line 204
    .local v12, "impl":Lorg/w3c/dom/ls/DOMImplementationLS;
    invoke-interface {v12}, Lorg/w3c/dom/ls/DOMImplementationLS;->createLSSerializer()Lorg/w3c/dom/ls/LSSerializer;

    move-result-object v22

    .line 205
    .local v22, "writer":Lorg/w3c/dom/ls/LSSerializer;
    move-object/from16 v0, v22

    invoke-interface {v0, v7}, Lorg/w3c/dom/ls/LSSerializer;->writeToString(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    .line 207
    .local v10, "fileAsString":Ljava/lang/String;
    const-string v23, "<\\?xml[^>]+>"

    const-string v24, "<!DOCTYPE HTML>"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 208
    invoke-static {v10}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v23

    sget-object v24, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v6, v0, v1, v2}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;Ljava/lang/Iterable;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    .line 209
    return-void

    .line 199
    .end local v10    # "fileAsString":Ljava/lang/String;
    .end local v12    # "impl":Lorg/w3c/dom/ls/DOMImplementationLS;
    .end local v17    # "registry":Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;
    .end local v22    # "writer":Lorg/w3c/dom/ls/LSSerializer;
    :catch_2
    move-exception v8

    .line 200
    .local v8, "e":Ljava/lang/ReflectiveOperationException;
    :goto_2
    new-instance v23, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v23

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    .line 199
    .end local v8    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_3
    move-exception v8

    goto :goto_2

    :catch_4
    move-exception v8

    goto :goto_2
.end method

.method private static translateOneLanguage(Ljava/nio/file/Path;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 11
    .param p0, "assetsDir"    # Ljava/nio/file/Path;
    .param p1, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    .local p2, "filesToTranslate":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "html-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v8}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    .line 129
    .local v5, "targetHtmlDir":Ljava/nio/file/Path;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v5, v8}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 130
    const-string v8, "html-en"

    invoke-interface {p0, v8}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 132
    .local v0, "englishHtmlDir":Ljava/nio/file/Path;
    const-string v8, "Translated by Google Translate."

    invoke-static {v8, p1}, Lcom/google/zxing/StringsResourceTranslator;->translateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "translationTextTranslated":Ljava/lang/String;
    new-instance v2, Lcom/google/zxing/HtmlAssetTranslator$2;

    invoke-direct {v2, p2}, Lcom/google/zxing/HtmlAssetTranslator$2;-><init>(Ljava/util/Collection;)V

    .line 142
    .local v2, "filter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<Ljava/nio/file/Path;>;"
    invoke-static {v0, v2}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object v1

    .local v1, "files":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    const/4 v9, 0x0

    .line 143
    :try_start_0
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    .line 144
    .local v4, "sourceFile":Ljava/nio/file/Path;
    invoke-static {p1, v5, v4, v6}, Lcom/google/zxing/HtmlAssetTranslator;->translateOneFile(Ljava/lang/String;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 142
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "sourceFile":Ljava/nio/file/Path;
    :catch_0
    move-exception v8

    :try_start_1
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :catchall_0
    move-exception v9

    move-object v10, v9

    move-object v9, v8

    move-object v8, v10

    :goto_1
    if-eqz v1, :cond_0

    if-eqz v9, :cond_4

    :try_start_2
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    throw v8

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v9, :cond_3

    :try_start_3
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 147
    :cond_2
    :goto_3
    return-void

    .line 146
    :catch_1
    move-exception v7

    .local v7, "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V

    goto :goto_3

    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_2
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v8

    goto :goto_1
.end method
