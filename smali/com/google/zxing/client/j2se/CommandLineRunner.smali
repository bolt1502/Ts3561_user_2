.class public final Lcom/google/zxing/client/j2se/CommandLineRunner;
.super Ljava/lang/Object;
.source "CommandLineRunner.java"


# static fields
.field private static final COMMA:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/j2se/CommandLineRunner;->COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method private static addArgumentToInputs(Ljava/nio/file/Path;Lcom/google/zxing/client/j2se/Config;Ljava/util/Queue;)V
    .locals 9
    .param p0, "inputFile"    # Ljava/nio/file/Path;
    .param p1, "config"    # Lcom/google/zxing/client/j2se/Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Lcom/google/zxing/client/j2se/Config;",
            "Ljava/util/Queue",
            "<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "inputs":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/nio/file/Path;>;"
    const/4 v5, 0x0

    .line 139
    new-array v5, v5, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v5}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 140
    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v2

    .local v2, "paths":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    const/4 v6, 0x0

    .line 141
    :try_start_0
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/Path;

    .line 142
    .local v3, "singleFile":Ljava/nio/file/Path;
    invoke-interface {v3}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v5}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "filename":Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 148
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v5}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 149
    invoke-virtual {p1}, Lcom/google/zxing/client/j2se/Config;->isRecursive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 150
    invoke-static {v3, p1, p2}, Lcom/google/zxing/client/j2se/CommandLineRunner;->addArgumentToInputs(Ljava/nio/file/Path;Lcom/google/zxing/client/j2se/Config;Ljava/util/Queue;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 140
    .end local v0    # "filename":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "singleFile":Ljava/nio/file/Path;
    :catch_0
    move-exception v5

    :try_start_1
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :catchall_0
    move-exception v6

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    :goto_1
    if-eqz v2, :cond_1

    if-eqz v6, :cond_6

    :try_start_2
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_2
    throw v5

    .line 155
    .restart local v0    # "filename":Ljava/lang/String;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "singleFile":Ljava/nio/file/Path;
    :cond_2
    :try_start_3
    const-string v5, ".txt"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ".mono.png"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 158
    invoke-interface {p2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 160
    .end local v0    # "filename":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "singleFile":Ljava/nio/file/Path;
    :catchall_1
    move-exception v5

    goto :goto_1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v6, :cond_5

    :try_start_4
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 164
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "paths":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_4
    :goto_3
    return-void

    .line 160
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "paths":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catch_1
    move-exception v4

    .local v4, "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V

    goto :goto_3

    .end local v1    # "i$":Ljava/util/Iterator;
    :catch_2
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V

    goto :goto_2

    .line 162
    .end local v2    # "paths":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_7
    invoke-interface {p2, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private static buildHints(Lcom/google/zxing/client/j2se/Config;)Ljava/util/Map;
    .locals 9
    .param p0, "config"    # Lcom/google/zxing/client/j2se/Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/j2se/Config;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 168
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v5, "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    invoke-virtual {p0}, Lcom/google/zxing/client/j2se/Config;->getPossibleFormats()[Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, "possibleFormatsNames":[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v7, v6

    if-lez v7, :cond_0

    .line 171
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 172
    .local v1, "format":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/zxing/BarcodeFormat;->valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "format":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {p0}, Lcom/google/zxing/client/j2se/Config;->isProductsOnly()Z

    move-result v7

    if-nez v7, :cond_1

    .line 182
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_1
    new-instance v2, Ljava/util/EnumMap;

    const-class v7, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v2, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 195
    .local v2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    sget-object v7, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-virtual {p0}, Lcom/google/zxing/client/j2se/Config;->isTryHarder()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 197
    sget-object v7, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/client/j2se/Config;->isPureBarcode()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 200
    sget-object v7, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_3
    return-object v2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 22
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 56
    invoke-static {}, Lcom/google/zxing/client/j2se/CommandLineRunner;->printUsage()V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    new-instance v5, Lcom/google/zxing/client/j2se/Config;

    invoke-direct {v5}, Lcom/google/zxing/client/j2se/Config;-><init>()V

    .line 61
    .local v5, "config":Lcom/google/zxing/client/j2se/Config;
    new-instance v12, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v12}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 63
    .local v12, "inputs":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/nio/file/Path;>;"
    move-object/from16 v4, p0

    .local v4, "arr$":[Ljava/lang/String;
    array-length v13, v4

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v13, :cond_5

    aget-object v2, v4, v11

    .line 64
    .local v2, "arg":Ljava/lang/String;
    const-string v19, "="

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "argValue":[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v20, v3, v19

    const/16 v19, -0x1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->hashCode()I

    move-result v21

    sparse-switch v21, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v19, :pswitch_data_0

    .line 102
    const-string v19, "-"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 103
    sget-object v19, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unknown command line option "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/google/zxing/client/j2se/CommandLineRunner;->printUsage()V

    goto :goto_0

    .line 65
    :sswitch_0
    const-string v21, "--try_harder"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/16 v19, 0x0

    goto :goto_2

    :sswitch_1
    const-string v21, "--pure_barcode"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/16 v19, 0x1

    goto :goto_2

    :sswitch_2
    const-string v21, "--products_only"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/16 v19, 0x2

    goto :goto_2

    :sswitch_3
    const-string v21, "--dump_results"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/16 v19, 0x3

    goto :goto_2

    :sswitch_4
    const-string v21, "--dump_black_point"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/16 v19, 0x4

    goto :goto_2

    :sswitch_5
    const-string v21, "--multi"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/16 v19, 0x5

    goto :goto_2

    :sswitch_6
    const-string v21, "--brief"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/16 v19, 0x6

    goto :goto_2

    :sswitch_7
    const-string v21, "--recursive"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/16 v19, 0x7

    goto/16 :goto_2

    :sswitch_8
    const-string v21, "--crop"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/16 v19, 0x8

    goto/16 :goto_2

    :sswitch_9
    const-string v21, "--possibleFormats"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/16 v19, 0x9

    goto/16 :goto_2

    .line 67
    :pswitch_0
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/google/zxing/client/j2se/Config;->setTryHarder(Z)V

    .line 63
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 70
    :pswitch_1
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/google/zxing/client/j2se/Config;->setPureBarcode(Z)V

    goto :goto_3

    .line 73
    :pswitch_2
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/google/zxing/client/j2se/Config;->setProductsOnly(Z)V

    goto :goto_3

    .line 76
    :pswitch_3
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/google/zxing/client/j2se/Config;->setDumpResults(Z)V

    goto :goto_3

    .line 79
    :pswitch_4
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/google/zxing/client/j2se/Config;->setDumpBlackPoint(Z)V

    goto :goto_3

    .line 82
    :pswitch_5
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/google/zxing/client/j2se/Config;->setMulti(Z)V

    goto :goto_3

    .line 85
    :pswitch_6
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/google/zxing/client/j2se/Config;->setBrief(Z)V

    goto :goto_3

    .line 88
    :pswitch_7
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/google/zxing/client/j2se/Config;->setRecursive(Z)V

    goto :goto_3

    .line 91
    :pswitch_8
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v6, v0, [I

    .line 92
    .local v6, "crop":[I
    sget-object v19, Lcom/google/zxing/client/j2se/CommandLineRunner;->COMMA:Ljava/util/regex/Pattern;

    const/16 v20, 0x1

    aget-object v20, v3, v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v16

    .line 93
    .local v16, "tokens":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_3

    .line 94
    aget-object v19, v16, v10

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    aput v19, v6, v10

    .line 93
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 96
    :cond_3
    invoke-virtual {v5, v6}, Lcom/google/zxing/client/j2se/Config;->setCrop([I)V

    goto :goto_3

    .line 99
    .end local v6    # "crop":[I
    .end local v10    # "i":I
    .end local v16    # "tokens":[Ljava/lang/String;
    :pswitch_9
    sget-object v19, Lcom/google/zxing/client/j2se/CommandLineRunner;->COMMA:Ljava/util/regex/Pattern;

    const/16 v20, 0x1

    aget-object v20, v3, v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/google/zxing/client/j2se/Config;->setPossibleFormats([Ljava/lang/String;)V

    goto :goto_3

    .line 107
    :cond_4
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v5, v12}, Lcom/google/zxing/client/j2se/CommandLineRunner;->addArgumentToInputs(Ljava/nio/file/Path;Lcom/google/zxing/client/j2se/Config;Ljava/util/Queue;)V

    goto/16 :goto_3

    .line 111
    .end local v2    # "arg":Ljava/lang/String;
    .end local v3    # "argValue":[Ljava/lang/String;
    :cond_5
    invoke-static {v5}, Lcom/google/zxing/client/j2se/CommandLineRunner;->buildHints(Lcom/google/zxing/client/j2se/Config;)Ljava/util/Map;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/google/zxing/client/j2se/Config;->setHints(Ljava/util/Map;)V

    .line 113
    invoke-interface {v12}, Ljava/util/Queue;->size()I

    move-result v19

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 114
    .local v14, "numThreads":I
    const/4 v15, 0x0

    .line 115
    .local v15, "successful":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v14, v0, :cond_7

    .line 116
    invoke-static {v14}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    .line 117
    .local v7, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    .local v9, "futures":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/Future<Ljava/lang/Integer;>;>;"
    const/16 v18, 0x0

    .local v18, "x":I
    :goto_5
    move/from16 v0, v18

    if-ge v0, v14, :cond_6

    .line 119
    new-instance v19, Lcom/google/zxing/client/j2se/DecodeWorker;

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v12}, Lcom/google/zxing/client/j2se/DecodeWorker;-><init>(Lcom/google/zxing/client/j2se/Config;Ljava/util/Queue;)V

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 121
    :cond_6
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 122
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/Future;

    .line 123
    .local v8, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    add-int v15, v15, v19

    .line 124
    goto :goto_6

    .line 126
    .end local v7    # "executor":Ljava/util/concurrent/ExecutorService;
    .end local v8    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    .end local v9    # "futures":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/Future<Ljava/lang/Integer;>;>;"
    .end local v18    # "x":I
    .local v11, "i$":I
    :cond_7
    new-instance v19, Lcom/google/zxing/client/j2se/DecodeWorker;

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v12}, Lcom/google/zxing/client/j2se/DecodeWorker;-><init>(Lcom/google/zxing/client/j2se/Config;Ljava/util/Queue;)V

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/client/j2se/DecodeWorker;->call()Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    add-int v15, v15, v19

    .line 129
    .end local v11    # "i$":I
    :cond_8
    invoke-interface {v12}, Ljava/util/Queue;->size()I

    move-result v17

    .line 130
    .local v17, "total":I
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 131
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\nDecoded "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " files out of "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " successfully ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    mul-int/lit8 v21, v15, 0x64

    div-int v21, v21, v17

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%)\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 65
    :sswitch_data_0
    .sparse-switch
        -0x61231926 -> :sswitch_6
        -0x6086ac67 -> :sswitch_5
        -0x4fef6084 -> :sswitch_0
        -0x345ba427 -> :sswitch_1
        -0xccf9bf9 -> :sswitch_2
        0x6c9eb0b -> :sswitch_9
        0x4f72f030 -> :sswitch_8
        0x5e1f7e4b -> :sswitch_3
        0x6298b292 -> :sswitch_7
        0x76b11d25 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private static printUsage()V
    .locals 7

    .prologue
    .line 206
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Decode barcode images using the ZXing library"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 207
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/io/PrintStream;->println()V

    .line 208
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "usage: CommandLineRunner { file | dir | url } [ options ]"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "  --try_harder: Use the TRY_HARDER hint, default is normal (mobile) mode"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "  --pure_barcode: Input image is a pure monochrome barcode image, not a photo"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "  --products_only: Only decode the UPC and EAN families of barcodes"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 212
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "  --dump_results: Write the decoded contents to input.txt"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "  --dump_black_point: Compare black point algorithms as input.mono.png"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 214
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "  --multi: Scans image for multiple barcodes"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "  --brief: Only output one line per file, omitting the contents"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "  --recursive: Descend into subdirectories"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "  --crop=left,top,width,height: Only examine cropped region of input image(s)"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v5, "  --possibleFormats=barcodeFormat[,barcodeFormat2...] where barcodeFormat is any of: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-static {}, Lcom/google/zxing/BarcodeFormat;->values()[Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    .local v0, "arr$":[Lcom/google/zxing/BarcodeFormat;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 221
    .local v2, "format":Lcom/google/zxing/BarcodeFormat;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    .end local v2    # "format":Lcom/google/zxing/BarcodeFormat;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 224
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 225
    return-void
.end method
