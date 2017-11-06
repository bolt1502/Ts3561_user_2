.class public final Lcom/google/zxing/StringsResourceTranslator;
.super Ljava/lang/Object;
.source "StringsResourceTranslator.java"


# static fields
.field private static final APACHE_2_LICENSE:Ljava/lang/String; = "<!--\n Copyright (C) 2014 ZXing authors\n\n Licensed under the Apache License, Version 2.0 (the \"License\");\n you may not use this file except in compliance with the License.\n You may obtain a copy of the License at\n\n      http://www.apache.org/licenses/LICENSE-2.0\n\n Unless required by applicable law or agreed to in writing, software\n distributed under the License is distributed on an \"AS IS\" BASIS,\n WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n See the License for the specific language governing permissions and\n limitations under the License.\n -->\n"

.field private static final API_KEY:Ljava/lang/String;

.field private static final ENTRY_PATTERN:Ljava/util/regex/Pattern;

.field private static final LANGUAGE_CODE_MASSAGINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STRINGS_FILE_NAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final TRANSLATE_RESPONSE_PATTERN:Ljava/util/regex/Pattern;

.field private static final VALUES_DIR_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const-string v0, "translateAPI.key"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/StringsResourceTranslator;->API_KEY:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/google/zxing/StringsResourceTranslator;->API_KEY:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "translateAPI.key is not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    const-string v0, "<string name=\"([^\"]+)\".*>([^<]+)</string>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/StringsResourceTranslator;->ENTRY_PATTERN:Ljava/util/regex/Pattern;

    .line 63
    const-string v0, "values-(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/StringsResourceTranslator;->STRINGS_FILE_NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 64
    const-string v0, "translatedText\":\\s*\"([^\"]+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/StringsResourceTranslator;->TRANSLATE_RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    .line 65
    const-string v0, "values-[a-z]{2}(-[a-zA-Z]{2,3})?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/StringsResourceTranslator;->VALUES_DIR_PATTERN:Ljava/util/regex/Pattern;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/google/zxing/StringsResourceTranslator;->LANGUAGE_CODE_MASSAGINGS:Ljava/util/Map;

    .line 86
    sget-object v0, Lcom/google/zxing/StringsResourceTranslator;->LANGUAGE_CODE_MASSAGINGS:Ljava/util/Map;

    const-string v1, "zh-rCN"

    const-string v2, "zh-cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/google/zxing/StringsResourceTranslator;->LANGUAGE_CODE_MASSAGINGS:Ljava/util/Map;

    const-string v1, "zh-rTW"

    const-string v2, "zh-tw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/zxing/StringsResourceTranslator;->VALUES_DIR_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static fetch(Ljava/net/URI;)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "translateURI"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 207
    .local v2, "connection":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0xc8

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 209
    .local v4, "translateResult":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v3, "in":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 210
    const/16 v6, 0x2000

    :try_start_0
    new-array v0, v6, [C

    .line 212
    .local v0, "buffer":[C
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    .local v1, "charsRead":I
    if-lez v1, :cond_1

    .line 213
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 209
    .end local v0    # "buffer":[C
    .end local v1    # "charsRead":I
    :catch_0
    move-exception v6

    :try_start_1
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :catchall_0
    move-exception v7

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    :goto_1
    if-eqz v3, :cond_0

    if-eqz v7, :cond_4

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    throw v6

    .restart local v0    # "buffer":[C
    .restart local v1    # "charsRead":I
    :cond_1
    if-eqz v3, :cond_2

    if-eqz v7, :cond_3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 216
    :cond_2
    :goto_3
    return-object v4

    .line 215
    :catch_1
    move-exception v5

    .local v5, "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_3

    .end local v0    # "buffer":[C
    .end local v1    # "charsRead":I
    :catch_2
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_2

    :catchall_1
    move-exception v6

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 93
    aget-object v9, p0, v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    .line 94
    .local v5, "resDir":Ljava/nio/file/Path;
    const-string v9, "values"

    invoke-interface {v5, v9}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    .line 95
    .local v7, "valueDir":Ljava/nio/file/Path;
    const-string v9, "strings.xml"

    invoke-interface {v7, v9}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    .line 96
    .local v6, "stringsFile":Ljava/nio/file/Path;
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    array-length v11, p0

    invoke-interface {v9, v10, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 98
    .local v3, "forceRetranslation":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Lcom/google/zxing/StringsResourceTranslator$1;

    invoke-direct {v2}, Lcom/google/zxing/StringsResourceTranslator$1;-><init>()V

    .line 105
    .local v2, "filter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<Ljava/nio/file/Path;>;"
    invoke-static {v5, v2}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object v1

    .local v1, "dirs":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    const/4 v10, 0x0

    .line 106
    :try_start_0
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    .line 107
    .local v0, "dir":Ljava/nio/file/Path;
    const-string v9, "strings.xml"

    invoke-interface {v0, v9}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v9

    invoke-static {v6, v9, v3}, Lcom/google/zxing/StringsResourceTranslator;->translate(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 105
    .end local v0    # "dir":Ljava/nio/file/Path;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v9

    :try_start_1
    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :catchall_0
    move-exception v10

    move-object v12, v10

    move-object v10, v9

    move-object v9, v12

    :goto_1
    if-eqz v1, :cond_0

    if-eqz v10, :cond_4

    :try_start_2
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    throw v9

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v10, :cond_3

    :try_start_3
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 110
    :cond_2
    :goto_3
    return-void

    .line 109
    :catch_1
    move-exception v8

    .local v8, "x2":Ljava/lang/Throwable;
    invoke-virtual {v10, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v8    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V

    goto :goto_3

    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_2
    move-exception v8

    .restart local v8    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v10, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v8    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v9

    goto :goto_1
.end method

.method private static readLines(Ljava/nio/file/Path;)Ljava/util/Map;
    .locals 6
    .param p0, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
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
    .line 220
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 221
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 222
    .local v0, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v4}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 223
    .local v2, "line":Ljava/lang/String;
    sget-object v4, Lcom/google/zxing/StringsResourceTranslator;->ENTRY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 224
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 230
    .end local v0    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static translate(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/util/Collection;)V
    .locals 21
    .param p0, "englishFile"    # Ljava/nio/file/Path;
    .param p1, "translatedFile"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
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
    .line 116
    .local p2, "forceRetranslation":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/google/zxing/StringsResourceTranslator;->readLines(Ljava/nio/file/Path;)Ljava/util/Map;

    move-result-object v3

    .line 117
    .local v3, "english":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/StringsResourceTranslator;->readLines(Ljava/nio/file/Path;)Ljava/util/Map;

    move-result-object v13

    .line 118
    .local v13, "translated":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v10

    .line 120
    .local v10, "parentName":Ljava/lang/String;
    sget-object v17, Lcom/google/zxing/StringsResourceTranslator;->STRINGS_FILE_NAME_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 121
    .local v12, "stringsFileNameMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    .line 122
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 123
    .local v7, "language":Ljava/lang/String;
    sget-object v17, Lcom/google/zxing/StringsResourceTranslator;->LANGUAGE_CODE_MASSAGINGS:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 124
    .local v8, "massagedLanguage":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 125
    move-object v7, v8

    .line 128
    :cond_0
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Translating "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/nio/file/attribute/FileAttribute;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Ljava/nio/file/Files;->createTempFile(Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v11

    .line 132
    .local v11, "resultTempFile":Ljava/nio/file/Path;
    const/4 v2, 0x0

    .line 133
    .local v2, "anyChange":Z
    sget-object v17, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v11, v0, v1}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v9

    .local v9, "out":Ljava/io/Writer;
    const/16 v18, 0x0

    .line 134
    :try_start_0
    const-string v17, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 135
    const-string v17, "<!--\n Copyright (C) 2014 ZXing authors\n\n Licensed under the Apache License, Version 2.0 (the \"License\");\n you may not use this file except in compliance with the License.\n You may obtain a copy of the License at\n\n      http://www.apache.org/licenses/LICENSE-2.0\n\n Unless required by applicable law or agreed to in writing, software\n distributed under the License is distributed on an \"AS IS\" BASIS,\n WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n See the License for the specific language governing permissions and\n limitations under the License.\n -->\n"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 136
    const-string v17, "<resources>\n"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 138
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 139
    .local v4, "englishEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 140
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 141
    .local v15, "value":Ljava/lang/String;
    const-string v17, "  <string name=\""

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v9, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 143
    const/16 v17, 0x22

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(I)V

    .line 144
    const-string v17, "%s"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "%f"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 146
    :cond_1
    const-string v17, " formatted=\"false\""

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 148
    :cond_2
    const/16 v17, 0x3e

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(I)V

    .line 150
    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 151
    .local v14, "translatedString":Ljava/lang/String;
    if-eqz v14, :cond_3

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 152
    :cond_3
    const/4 v2, 0x1

    .line 153
    invoke-static {v15, v7}, Lcom/google/zxing/StringsResourceTranslator;->translateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 155
    :cond_4
    invoke-virtual {v9, v14}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 157
    const-string v17, "</string>\n"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 133
    .end local v4    # "englishEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "key":Ljava/lang/String;
    .end local v14    # "translatedString":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    :catch_0
    move-exception v17

    :try_start_1
    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :catchall_0
    move-exception v18

    move-object/from16 v20, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v20

    :goto_1
    if-eqz v9, :cond_5

    if-eqz v18, :cond_9

    :try_start_2
    invoke-virtual {v9}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    :goto_2
    throw v17

    .line 160
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_6
    :try_start_3
    const-string v17, "</resources>\n"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v9}, Ljava/io/Writer;->flush()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 162
    if-eqz v9, :cond_7

    if-eqz v18, :cond_8

    :try_start_4
    invoke-virtual {v9}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 164
    :cond_7
    :goto_3
    if-eqz v2, :cond_a

    .line 165
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v18, "  Writing translations"

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/nio/file/CopyOption;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    sget-object v19, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v19, v17, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v11, v0, v1}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 170
    :goto_4
    return-void

    .line 162
    :catch_1
    move-exception v16

    .local v16, "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v16    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v9}, Ljava/io/Writer;->close()V

    goto :goto_3

    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_2
    move-exception v16

    .restart local v16    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v16    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-virtual {v9}, Ljava/io/Writer;->close()V

    goto :goto_2

    .line 168
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-static {v11}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    goto :goto_4

    .line 162
    .end local v5    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v17

    goto :goto_1
.end method

.method static translateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "english"    # Ljava/lang/String;
    .param p1, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    const-string v5, "en"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 202
    .end local p0    # "english":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 176
    .restart local p0    # "english":Ljava/lang/String;
    :cond_0
    sget-object v5, Lcom/google/zxing/StringsResourceTranslator;->LANGUAGE_CODE_MASSAGINGS:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    .local v1, "massagedLanguage":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 178
    move-object p1, v1

    .line 180
    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Need translation for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://www.googleapis.com/language/translate/v2?key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/google/zxing/StringsResourceTranslator;->API_KEY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&q="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {p0, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&source=en&target="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    .line 186
    .local v3, "translateURI":Ljava/net/URI;
    invoke-static {v3}, Lcom/google/zxing/StringsResourceTranslator;->fetch(Ljava/net/URI;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 187
    .local v2, "translateResult":Ljava/lang/CharSequence;
    sget-object v5, Lcom/google/zxing/StringsResourceTranslator;->TRANSLATE_RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 188
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_2

    .line 189
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "No translate result"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 193
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, "translation":Ljava/lang/String;
    const-string v5, "&quot;"

    const-string v6, "\""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 197
    const-string v5, "&#39;"

    const-string v6, "\'"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 198
    const-string v5, "&amp;quot;"

    const-string v6, "\""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 199
    const-string v5, "&amp;#39;"

    const-string v6, "\'"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 201
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Got translation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object p0, v4

    .line 202
    goto/16 :goto_0
.end method
