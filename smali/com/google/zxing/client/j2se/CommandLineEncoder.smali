.class public final Lcom/google/zxing/client/j2se/CommandLineEncoder;
.super Ljava/lang/Object;
.source "CommandLineEncoder.java"


# static fields
.field private static final DEFAULT_BARCODE_FORMAT:Lcom/google/zxing/BarcodeFormat;

.field private static final DEFAULT_HEIGHT:I = 0x12c

.field private static final DEFAULT_IMAGE_FORMAT:Ljava/lang/String; = "PNG"

.field private static final DEFAULT_OUTPUT_FILE:Ljava/lang/String; = "out"

.field private static final DEFAULT_WIDTH:I = 0x12c


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    sput-object v0, Lcom/google/zxing/client/j2se/CommandLineEncoder;->DEFAULT_BARCODE_FORMAT:Lcom/google/zxing/BarcodeFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 15
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    array-length v12, p0

    if-nez v12, :cond_0

    .line 44
    invoke-static {}, Lcom/google/zxing/client/j2se/CommandLineEncoder;->printUsage()V

    .line 95
    :goto_0
    return-void

    .line 48
    :cond_0
    sget-object v3, Lcom/google/zxing/client/j2se/CommandLineEncoder;->DEFAULT_BARCODE_FORMAT:Lcom/google/zxing/BarcodeFormat;

    .line 49
    .local v3, "barcodeFormat":Lcom/google/zxing/BarcodeFormat;
    const-string v7, "PNG"

    .line 50
    .local v7, "imageFormat":Ljava/lang/String;
    const-string v10, "out"

    .line 51
    .local v10, "outFileString":Ljava/lang/String;
    const/16 v11, 0x12c

    .line 52
    .local v11, "width":I
    const/16 v5, 0x12c

    .line 53
    .local v5, "height":I
    const/4 v4, 0x0

    .line 55
    .local v4, "contents":Ljava/lang/String;
    move-object v2, p0

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v0, v2, v6

    .line 56
    .local v0, "arg":Ljava/lang/String;
    const-string v12, "="

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "argValue":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v13, v1, v12

    const/4 v12, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    :cond_1
    :goto_2
    packed-switch v12, :pswitch_data_0

    .line 74
    const-string v12, "-"

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 75
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown command line option "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/google/zxing/client/j2se/CommandLineEncoder;->printUsage()V

    goto :goto_0

    .line 57
    :sswitch_0
    const-string v14, "--barcode_format"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v12, 0x0

    goto :goto_2

    :sswitch_1
    const-string v14, "--image_format"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :sswitch_2
    const-string v14, "--output"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v12, 0x2

    goto :goto_2

    :sswitch_3
    const-string v14, "--width"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v12, 0x3

    goto :goto_2

    :sswitch_4
    const-string v14, "--height"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v12, 0x4

    goto :goto_2

    .line 59
    :pswitch_0
    const/4 v12, 0x1

    aget-object v12, v1, v12

    invoke-static {v12}, Lcom/google/zxing/BarcodeFormat;->valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;

    move-result-object v3

    .line 55
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 62
    :pswitch_1
    const/4 v12, 0x1

    aget-object v7, v1, v12

    .line 63
    goto :goto_3

    .line 65
    :pswitch_2
    const/4 v12, 0x1

    aget-object v10, v1, v12

    .line 66
    goto :goto_3

    .line 68
    :pswitch_3
    const/4 v12, 0x1

    aget-object v12, v1, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 69
    goto :goto_3

    .line 71
    :pswitch_4
    const/4 v12, 0x1

    aget-object v12, v1, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 72
    goto :goto_3

    .line 79
    :cond_2
    move-object v4, v0

    goto :goto_3

    .line 84
    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "argValue":[Ljava/lang/String;
    :cond_3
    if-nez v4, :cond_4

    .line 85
    invoke-static {}, Lcom/google/zxing/client/j2se/CommandLineEncoder;->printUsage()V

    goto/16 :goto_0

    .line 89
    :cond_4
    const-string v12, "out"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 90
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 93
    :cond_5
    new-instance v12, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v12}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    invoke-virtual {v12, v4, v3, v11, v5}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v9

    .line 94
    .local v9, "matrix":Lcom/google/zxing/common/BitMatrix;
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    invoke-static {v10, v12}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v12

    invoke-static {v9, v7, v12}, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->writeToPath(Lcom/google/zxing/common/BitMatrix;Ljava/lang/String;Ljava/nio/file/Path;)V

    goto/16 :goto_0

    .line 57
    :sswitch_data_0
    .sparse-switch
        -0x5fff53da -> :sswitch_3
        -0x48bb4b05 -> :sswitch_1
        0x4645dec7 -> :sswitch_4
        0x531e66a1 -> :sswitch_2
        0x72892a36 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static printUsage()V
    .locals 2

    .prologue
    .line 98
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Encodes barcode images using the ZXing library\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: CommandLineEncoder [ options ] content_to_encode"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  --barcode_format=format: Format to encode, from BarcodeFormat class. Not all formats are supported. Defaults to QR_CODE."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  --image_format=format: image output format, such as PNG, JPG, GIF. Defaults to PNG"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  --output=filename: File to write to. Defaults to out.png"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  --width=pixels: Image width. Defaults to 300"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  --height=pixels: Image height. Defaults to 300"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    return-void
.end method
