.class final Lcom/google/zxing/client/j2se/DecodeWorker;
.super Ljava/lang/Object;
.source "DecodeWorker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final BLACK:I = -0x1000000

.field private static final RED:I = -0x10000

.field private static final WHITE:I = -0x1


# instance fields
.field private final config:Lcom/google/zxing/client/j2se/Config;

.field private final inputs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/zxing/client/j2se/Config;Ljava/util/Queue;)V
    .locals 0
    .param p1, "config"    # Lcom/google/zxing/client/j2se/Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/j2se/Config;",
            "Ljava/util/Queue",
            "<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "inputs":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/nio/file/Path;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    .line 66
    iput-object p2, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->inputs:Ljava/util/Queue;

    .line 67
    return-void
.end method

.method private decode(Ljava/net/URI;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 13
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-static {p1}, Lcom/google/zxing/client/j2se/ImageReader;->readImage(Ljava/net/URI;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    .line 129
    .local v1, "image":Ljava/awt/image/BufferedImage;
    :try_start_0
    iget-object v2, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v2}, Lcom/google/zxing/client/j2se/Config;->getCrop()[I

    move-result-object v2

    if-nez v2, :cond_2

    .line 130
    new-instance v0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;

    invoke-direct {v0, v1}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;-><init>(Ljava/awt/image/BufferedImage;)V

    .line 135
    .local v0, "source":Lcom/google/zxing/LuminanceSource;
    :goto_0
    new-instance v6, Lcom/google/zxing/BinaryBitmap;

    new-instance v2, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v2, v0}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v6, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 136
    .local v6, "bitmap":Lcom/google/zxing/BinaryBitmap;
    iget-object v2, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v2}, Lcom/google/zxing/client/j2se/Config;->isDumpBlackPoint()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-static {p1, v1, v6}, Lcom/google/zxing/client/j2se/DecodeWorker;->dumpBlackPoint(Ljava/net/URI;Ljava/awt/image/BufferedImage;Lcom/google/zxing/BinaryBitmap;)V

    .line 139
    :cond_0
    new-instance v2, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v2}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    invoke-virtual {v2, v6, p2}, Lcom/google/zxing/MultiFormatReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v11

    .line 140
    .local v11, "result":Lcom/google/zxing/Result;
    iget-object v2, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v2}, Lcom/google/zxing/client/j2se/Config;->isBrief()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 141
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    .end local v0    # "source":Lcom/google/zxing/LuminanceSource;
    .end local v6    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .end local v11    # "result":Lcom/google/zxing/Result;
    :cond_1
    :goto_1
    return-object v11

    .line 132
    :cond_2
    iget-object v2, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v2}, Lcom/google/zxing/client/j2se/Config;->getCrop()[I

    move-result-object v7

    .line 133
    .local v7, "crop":[I
    new-instance v0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;

    const/4 v2, 0x0

    aget v2, v7, v2

    const/4 v3, 0x1

    aget v3, v7, v3

    const/4 v4, 0x2

    aget v4, v7, v4

    const/4 v5, 0x3

    aget v5, v7, v5

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;-><init>(Ljava/awt/image/BufferedImage;IIII)V

    .restart local v0    # "source":Lcom/google/zxing/LuminanceSource;
    goto :goto_0

    .line 143
    .end local v7    # "crop":[I
    .restart local v6    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .restart local v11    # "result":Lcom/google/zxing/Result;
    :cond_3
    invoke-static {v11}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v10

    .line 144
    .local v10, "parsedResult":Lcom/google/zxing/client/result/ParsedResult;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):\nRaw result:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nParsed result:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result points."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-virtual {v11}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    array-length v2, v2

    if-ge v8, v2, :cond_1

    .line 150
    invoke-virtual {v11}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    aget-object v12, v2, v8

    .line 151
    .local v12, "rp":Lcom/google/zxing/ResultPoint;
    if-eqz v12, :cond_4

    .line 152
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Point "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 158
    .end local v0    # "source":Lcom/google/zxing/LuminanceSource;
    .end local v6    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .end local v8    # "i":I
    .end local v10    # "parsedResult":Lcom/google/zxing/client/result/ParsedResult;
    .end local v11    # "result":Lcom/google/zxing/Result;
    .end local v12    # "rp":Lcom/google/zxing/ResultPoint;
    :catch_0
    move-exception v9

    .line 159
    .local v9, "ignored":Lcom/google/zxing/NotFoundException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": No barcode found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    const/4 v11, 0x0

    goto/16 :goto_1
.end method

.method private decodeMulti(Ljava/net/URI;Ljava/util/Map;)[Lcom/google/zxing/Result;
    .locals 21
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/j2se/ImageReader;->readImage(Ljava/net/URI;)Ljava/awt/image/BufferedImage;

    move-result-object v3

    .line 168
    .local v3, "image":Ljava/awt/image/BufferedImage;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v4}, Lcom/google/zxing/client/j2se/Config;->getCrop()[I

    move-result-object v4

    if-nez v4, :cond_2

    .line 169
    new-instance v2, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;

    invoke-direct {v2, v3}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;-><init>(Ljava/awt/image/BufferedImage;)V

    .line 174
    .local v2, "source":Lcom/google/zxing/LuminanceSource;
    :goto_0
    new-instance v9, Lcom/google/zxing/BinaryBitmap;

    new-instance v4, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v4, v2}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v9, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 175
    .local v9, "bitmap":Lcom/google/zxing/BinaryBitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v4}, Lcom/google/zxing/client/j2se/Config;->isDumpBlackPoint()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    move-object/from16 v0, p1

    invoke-static {v0, v3, v9}, Lcom/google/zxing/client/j2se/DecodeWorker;->dumpBlackPoint(Ljava/net/URI;Ljava/awt/image/BufferedImage;Lcom/google/zxing/BinaryBitmap;)V

    .line 179
    :cond_0
    new-instance v15, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v15}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 180
    .local v15, "multiFormatReader":Lcom/google/zxing/MultiFormatReader;
    new-instance v17, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;-><init>(Lcom/google/zxing/Reader;)V

    .line 181
    .local v17, "reader":Lcom/google/zxing/multi/MultipleBarcodeReader;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v9, v1}, Lcom/google/zxing/multi/MultipleBarcodeReader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object v19

    .line 183
    .local v19, "results":[Lcom/google/zxing/Result;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v4}, Lcom/google/zxing/client/j2se/Config;->isBrief()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 184
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Success"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    .end local v2    # "source":Lcom/google/zxing/LuminanceSource;
    .end local v9    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .end local v15    # "multiFormatReader":Lcom/google/zxing/MultiFormatReader;
    .end local v17    # "reader":Lcom/google/zxing/multi/MultipleBarcodeReader;
    .end local v19    # "results":[Lcom/google/zxing/Result;
    :cond_1
    :goto_1
    return-object v19

    .line 171
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v4}, Lcom/google/zxing/client/j2se/Config;->getCrop()[I

    move-result-object v10

    .line 172
    .local v10, "crop":[I
    new-instance v2, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;

    const/4 v4, 0x0

    aget v4, v10, v4

    const/4 v5, 0x1

    aget v5, v10, v5

    const/4 v6, 0x2

    aget v6, v10, v6

    const/4 v7, 0x3

    aget v7, v10, v7

    invoke-direct/range {v2 .. v7}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;-><init>(Ljava/awt/image/BufferedImage;IIII)V

    .restart local v2    # "source":Lcom/google/zxing/LuminanceSource;
    goto :goto_0

    .line 186
    .end local v10    # "crop":[I
    .restart local v9    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .restart local v15    # "multiFormatReader":Lcom/google/zxing/MultiFormatReader;
    .restart local v17    # "reader":Lcom/google/zxing/multi/MultipleBarcodeReader;
    .restart local v19    # "results":[Lcom/google/zxing/Result;
    :cond_3
    move-object/from16 v8, v19

    .local v8, "arr$":[Lcom/google/zxing/Result;
    array-length v14, v8

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_2
    if-ge v12, v14, :cond_1

    aget-object v18, v8, v12

    .line 187
    .local v18, "result":Lcom/google/zxing/Result;
    invoke-static/range {v18 .. v18}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v16

    .line 188
    .local v16, "parsedResult":Lcom/google/zxing/client/result/ParsedResult;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "):\nRaw result:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nParsed result:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " result points."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4

    array-length v4, v4

    if-ge v11, v4, :cond_4

    .line 195
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4

    aget-object v20, v4, v11

    .line 196
    .local v20, "rp":Lcom/google/zxing/ResultPoint;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Point "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 186
    .end local v20    # "rp":Lcom/google/zxing/ResultPoint;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 201
    .end local v2    # "source":Lcom/google/zxing/LuminanceSource;
    .end local v8    # "arr$":[Lcom/google/zxing/Result;
    .end local v9    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .end local v11    # "i":I
    .end local v12    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "multiFormatReader":Lcom/google/zxing/MultiFormatReader;
    .end local v16    # "parsedResult":Lcom/google/zxing/client/result/ParsedResult;
    .end local v17    # "reader":Lcom/google/zxing/multi/MultipleBarcodeReader;
    .end local v18    # "result":Lcom/google/zxing/Result;
    .end local v19    # "results":[Lcom/google/zxing/Result;
    :catch_0
    move-exception v13

    .line 202
    .local v13, "ignored":Lcom/google/zxing/NotFoundException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": No barcode found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    const/16 v19, 0x0

    goto/16 :goto_1
.end method

.method private static dumpBlackPoint(Ljava/net/URI;Ljava/awt/image/BufferedImage;Lcom/google/zxing/BinaryBitmap;)V
    .locals 17
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "image"    # Ljava/awt/image/BufferedImage;
    .param p2, "bitmap"    # Lcom/google/zxing/BinaryBitmap;

    .prologue
    .line 213
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mono.png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v4

    .line 218
    .local v4, "width":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v9

    .line 219
    .local v9, "height":I
    mul-int/lit8 v15, v4, 0x3

    .line 220
    .local v15, "stride":I
    mul-int v1, v15, v9

    new-array v13, v1, [I

    .line 223
    .local v13, "pixels":[I
    new-array v6, v4, [I

    .line 224
    .local v6, "argb":[I
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_1
    if-ge v3, v9, :cond_1

    .line 225
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move v8, v4

    invoke-virtual/range {v1 .. v8}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    .line 226
    const/4 v1, 0x0

    mul-int v2, v3, v15

    invoke-static {v6, v1, v13, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 230
    :cond_1
    new-instance v14, Lcom/google/zxing/common/BitArray;

    invoke-direct {v14, v4}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 231
    .local v14, "row":Lcom/google/zxing/common/BitArray;
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v9, :cond_4

    .line 233
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v14}, Lcom/google/zxing/BinaryBitmap;->getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 241
    mul-int v1, v3, v15

    add-int v12, v1, v4

    .line 242
    .local v12, "offset":I
    const/16 v16, 0x0

    .local v16, "x":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v4, :cond_2

    .line 243
    add-int v2, v12, v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, -0x1000000

    :goto_4
    aput v1, v13, v2

    .line 242
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 234
    .end local v12    # "offset":I
    .end local v16    # "x":I
    :catch_0
    move-exception v11

    .line 236
    .local v11, "nfe":Lcom/google/zxing/NotFoundException;
    mul-int v1, v3, v15

    add-int v12, v1, v4

    .line 237
    .restart local v12    # "offset":I
    add-int v1, v12, v4

    const/high16 v2, -0x10000

    invoke-static {v13, v12, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 231
    .end local v11    # "nfe":Lcom/google/zxing/NotFoundException;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 243
    .restart local v16    # "x":I
    :cond_3
    const/4 v1, -0x1

    goto :goto_4

    .line 249
    .end local v12    # "offset":I
    .end local v16    # "x":I
    :cond_4
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v9, :cond_7

    .line 250
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v10

    .line 251
    .local v10, "matrix":Lcom/google/zxing/common/BitMatrix;
    mul-int v1, v3, v15

    mul-int/lit8 v2, v4, 0x2

    add-int v12, v1, v2

    .line 252
    .restart local v12    # "offset":I
    const/16 v16, 0x0

    .restart local v16    # "x":I
    :goto_6
    move/from16 v0, v16

    if-ge v0, v4, :cond_6

    .line 253
    add-int v2, v12, v16

    move/from16 v0, v16

    invoke-virtual {v10, v0, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-eqz v1, :cond_5

    const/high16 v1, -0x1000000

    :goto_7
    aput v1, v13, v2
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 253
    :cond_5
    const/4 v1, -0x1

    goto :goto_7

    .line 249
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 256
    .end local v10    # "matrix":Lcom/google/zxing/common/BitMatrix;
    .end local v12    # "offset":I
    .end local v16    # "x":I
    :catch_1
    move-exception v1

    .line 260
    :cond_7
    const-string v1, ".mono.png"

    move-object/from16 v0, p0

    invoke-static {v15, v9, v13, v0, v1}, Lcom/google/zxing/client/j2se/DecodeWorker;->writeResultImage(II[ILjava/net/URI;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static dumpResult(Ljava/nio/file/Path;Lcom/google/zxing/Result;)V
    .locals 6
    .param p0, "input"    # Ljava/nio/file/Path;
    .param p1, "result"    # Lcom/google/zxing/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 102
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "name":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 104
    .local v2, "pos":I
    if-lez v2, :cond_0

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    :cond_0
    invoke-interface {p0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 108
    .local v0, "dumpFile":Ljava/nio/file/Path;
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    new-array v5, v5, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v3, v4, v5}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;Ljava/lang/Iterable;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    .line 109
    return-void
.end method

.method private static dumpResultMulti(Ljava/nio/file/Path;[Lcom/google/zxing/Result;)V
    .locals 11
    .param p0, "input"    # Ljava/nio/file/Path;
    .param p1, "results"    # [Lcom/google/zxing/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 112
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "name":Ljava/lang/String;
    const/16 v8, 0x2e

    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 114
    .local v5, "pos":I
    if-lez v5, :cond_0

    .line 115
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 117
    :cond_0
    invoke-interface {p0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 118
    .local v1, "dumpFile":Ljava/nio/file/Path;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v7, "resultTexts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, "arr$":[Lcom/google/zxing/Result;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 120
    .local v6, "result":Lcom/google/zxing/Result;
    invoke-virtual {v6}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .end local v6    # "result":Lcom/google/zxing/Result;
    :cond_1
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    new-array v9, v10, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v7, v8, v9}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;Ljava/lang/Iterable;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    .line 123
    return-void
.end method

.method private static writeResultImage(II[ILjava/net/URI;Ljava/lang/String;)V
    .locals 11
    .param p0, "stride"    # I
    .param p1, "height"    # I
    .param p2, "pixels"    # [I
    .param p3, "uri"    # Ljava/net/URI;
    .param p4, "suffix"    # Ljava/lang/String;

    .prologue
    .line 268
    new-instance v0, Ljava/awt/image/BufferedImage;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 269
    .local v0, "result":Ljava/awt/image/BufferedImage;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v3, p0

    move v4, p1

    move-object v5, p2

    move v7, p0

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/BufferedImage;->setRGB(IIII[III)V

    .line 272
    invoke-virtual {p3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 273
    .local v10, "resultName":Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {p3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    const/16 v1, 0x2f

    invoke-virtual {v10, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 275
    .local v9, "pos":I
    if-lez v9, :cond_0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 279
    .end local v9    # "pos":I
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {v10, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 280
    .restart local v9    # "pos":I
    if-lez v9, :cond_1

    .line 281
    const/4 v1, 0x0

    invoke-virtual {v10, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 283
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 285
    :try_start_0
    const-string v1, "png"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v10, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 286
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not encode an image to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_2
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v8

    .line 289
    .local v8, "ignored":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not write to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v3, 0x0

    .line 73
    .local v3, "successful":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->inputs:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    .local v0, "input":Ljava/nio/file/Path;
    if-eqz v0, :cond_3

    .line 74
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 75
    iget-object v4, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v4}, Lcom/google/zxing/client/j2se/Config;->isMulti()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    invoke-interface {v0}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v4

    iget-object v5, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v5}, Lcom/google/zxing/client/j2se/Config;->getHints()Ljava/util/Map;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/google/zxing/client/j2se/DecodeWorker;->decodeMulti(Ljava/net/URI;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object v2

    .line 77
    .local v2, "results":[Lcom/google/zxing/Result;
    if-eqz v2, :cond_0

    .line 78
    add-int/lit8 v3, v3, 0x1

    .line 79
    iget-object v4, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v4}, Lcom/google/zxing/client/j2se/Config;->isDumpResults()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    invoke-static {v0, v2}, Lcom/google/zxing/client/j2se/DecodeWorker;->dumpResultMulti(Ljava/nio/file/Path;[Lcom/google/zxing/Result;)V

    goto :goto_0

    .line 84
    .end local v2    # "results":[Lcom/google/zxing/Result;
    :cond_1
    invoke-interface {v0}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v4

    iget-object v5, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v5}, Lcom/google/zxing/client/j2se/Config;->getHints()Ljava/util/Map;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/google/zxing/client/j2se/DecodeWorker;->decode(Ljava/net/URI;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v1

    .line 85
    .local v1, "result":Lcom/google/zxing/Result;
    if-eqz v1, :cond_0

    .line 86
    add-int/lit8 v3, v3, 0x1

    .line 87
    iget-object v4, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v4}, Lcom/google/zxing/client/j2se/Config;->isDumpResults()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    invoke-static {v0, v1}, Lcom/google/zxing/client/j2se/DecodeWorker;->dumpResult(Ljava/nio/file/Path;Lcom/google/zxing/Result;)V

    goto :goto_0

    .line 93
    .end local v1    # "result":Lcom/google/zxing/Result;
    :cond_2
    invoke-interface {v0}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v4

    iget-object v5, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v5}, Lcom/google/zxing/client/j2se/Config;->getHints()Ljava/util/Map;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/google/zxing/client/j2se/DecodeWorker;->decode(Ljava/net/URI;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/zxing/client/j2se/DecodeWorker;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
