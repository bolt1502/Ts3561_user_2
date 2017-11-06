.class public final Lcom/google/zxing/client/j2se/MatrixToImageWriter;
.super Ljava/lang/Object;
.source "MatrixToImageWriter.java"


# static fields
.field private static final DEFAULT_CONFIG:Lcom/google/zxing/client/j2se/MatrixToImageConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/google/zxing/client/j2se/MatrixToImageConfig;

    invoke-direct {v0}, Lcom/google/zxing/client/j2se/MatrixToImageConfig;-><init>()V

    sput-object v0, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->DEFAULT_CONFIG:Lcom/google/zxing/client/j2se/MatrixToImageConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toBufferedImage(Lcom/google/zxing/common/BitMatrix;)Ljava/awt/image/BufferedImage;
    .locals 1
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 49
    sget-object v0, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->DEFAULT_CONFIG:Lcom/google/zxing/client/j2se/MatrixToImageConfig;

    invoke-static {p0, v0}, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->toBufferedImage(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/client/j2se/MatrixToImageConfig;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public static toBufferedImage(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/client/j2se/MatrixToImageConfig;)Ljava/awt/image/BufferedImage;
    .locals 8
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "config"    # Lcom/google/zxing/client/j2se/MatrixToImageConfig;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    .line 61
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 62
    .local v0, "height":I
    new-instance v1, Ljava/awt/image/BufferedImage;

    invoke-virtual {p1}, Lcom/google/zxing/client/j2se/MatrixToImageConfig;->getBufferedImageColorModel()I

    move-result v7

    invoke-direct {v1, v4, v0, v7}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 63
    .local v1, "image":Ljava/awt/image/BufferedImage;
    invoke-virtual {p1}, Lcom/google/zxing/client/j2se/MatrixToImageConfig;->getPixelOnColor()I

    move-result v3

    .line 64
    .local v3, "onColor":I
    invoke-virtual {p1}, Lcom/google/zxing/client/j2se/MatrixToImageConfig;->getPixelOffColor()I

    move-result v2

    .line 65
    .local v2, "offColor":I
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 66
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_1
    if-ge v6, v0, :cond_1

    .line 67
    invoke-virtual {p0, v5, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v3

    :goto_2
    invoke-virtual {v1, v5, v6, v7}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    .line 66
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move v7, v2

    .line 67
    goto :goto_2

    .line 65
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 70
    .end local v6    # "y":I
    :cond_2
    return-object v1
.end method

.method public static writeToFile(Lcom/google/zxing/common/BitMatrix;Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->writeToPath(Lcom/google/zxing/common/BitMatrix;Ljava/lang/String;Ljava/nio/file/Path;)V

    .line 83
    return-void
.end method

.method public static writeToFile(Lcom/google/zxing/common/BitMatrix;Ljava/lang/String;Ljava/io/File;Lcom/google/zxing/client/j2se/MatrixToImageConfig;)V
    .locals 1
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "config"    # Lcom/google/zxing/client/j2se/MatrixToImageConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->writeToPath(Lcom/google/zxing/common/BitMatrix;Ljava/lang/String;Ljava/nio/file/Path;Lcom/google/zxing/client/j2se/MatrixToImageConfig;)V

    .line 110
    return-void
.end method

.method public static writeToPath(Lcom/google/zxing/common/BitMatrix;Ljava/lang/String;Ljava/nio/file/Path;)V
    .locals 1
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    sget-object v0, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->DEFAULT_CONFIG:Lcom/google/zxing/client/j2se/MatrixToImageConfig;

    invoke-static {p0, p1, p2, v0}, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->writeToPath(Lcom/google/zxing/common/BitMatrix;Ljava/lang/String;Ljava/nio/file/Path;Lcom/google/zxing/client/j2se/MatrixToImageConfig;)V

    .line 96
    return-void
.end method

.method public static writeToPath(Lcom/google/zxing/common/BitMatrix;Ljava/lang/String;Ljava/nio/file/Path;Lcom/google/zxing/client/j2se/MatrixToImageConfig;)V
    .locals 4
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/nio/file/Path;
    .param p3, "config"    # Lcom/google/zxing/client/j2se/MatrixToImageConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {p0, p3}, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->toBufferedImage(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/client/j2se/MatrixToImageConfig;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 124
    .local v0, "image":Ljava/awt/image/BufferedImage;
    invoke-interface {p2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not write an image of format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_0
    return-void
.end method

.method public static writeToStream(Lcom/google/zxing/common/BitMatrix;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    sget-object v0, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->DEFAULT_CONFIG:Lcom/google/zxing/client/j2se/MatrixToImageConfig;

    invoke-static {p0, p1, p2, v0}, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->writeToStream(Lcom/google/zxing/common/BitMatrix;Ljava/lang/String;Ljava/io/OutputStream;Lcom/google/zxing/client/j2se/MatrixToImageConfig;)V

    .line 140
    return-void
.end method

.method public static writeToStream(Lcom/google/zxing/common/BitMatrix;Ljava/lang/String;Ljava/io/OutputStream;Lcom/google/zxing/client/j2se/MatrixToImageConfig;)V
    .locals 4
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/OutputStream;
    .param p3, "config"    # Lcom/google/zxing/client/j2se/MatrixToImageConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {p0, p3}, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->toBufferedImage(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/client/j2se/MatrixToImageConfig;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 154
    .local v0, "image":Ljava/awt/image/BufferedImage;
    invoke-static {v0, p1, p2}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not write an image of format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_0
    return-void
.end method
