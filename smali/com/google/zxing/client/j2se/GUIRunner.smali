.class public final Lcom/google/zxing/client/j2se/GUIRunner;
.super Ljavax/swing/JFrame;
.source "GUIRunner.java"


# instance fields
.field private final imageLabel:Ljavax/swing/JLabel;

.field private final textArea:Ljavax/swing/text/JTextComponent;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x190

    .line 55
    invoke-direct {p0}, Ljavax/swing/JFrame;-><init>()V

    .line 56
    new-instance v1, Ljavax/swing/JLabel;

    invoke-direct {v1}, Ljavax/swing/JLabel;-><init>()V

    iput-object v1, p0, Lcom/google/zxing/client/j2se/GUIRunner;->imageLabel:Ljavax/swing/JLabel;

    .line 57
    new-instance v1, Ljavax/swing/JTextArea;

    invoke-direct {v1}, Ljavax/swing/JTextArea;-><init>()V

    iput-object v1, p0, Lcom/google/zxing/client/j2se/GUIRunner;->textArea:Ljavax/swing/text/JTextComponent;

    .line 58
    iget-object v1, p0, Lcom/google/zxing/client/j2se/GUIRunner;->textArea:Ljavax/swing/text/JTextComponent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/swing/text/JTextComponent;->setEditable(Z)V

    .line 59
    iget-object v1, p0, Lcom/google/zxing/client/j2se/GUIRunner;->textArea:Ljavax/swing/text/JTextComponent;

    new-instance v2, Ljava/awt/Dimension;

    const/16 v3, 0xc8

    invoke-direct {v2, v4, v3}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/text/JTextComponent;->setMaximumSize(Ljava/awt/Dimension;)V

    .line 60
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    .line 61
    .local v0, "panel":Ljava/awt/Container;
    new-instance v1, Ljava/awt/FlowLayout;

    invoke-direct {v1}, Ljava/awt/FlowLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 62
    iget-object v1, p0, Lcom/google/zxing/client/j2se/GUIRunner;->imageLabel:Ljavax/swing/JLabel;

    invoke-virtual {v0, v1}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 63
    iget-object v1, p0, Lcom/google/zxing/client/j2se/GUIRunner;->textArea:Ljavax/swing/text/JTextComponent;

    invoke-virtual {v0, v1}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 64
    const-string v1, "ZXing"

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/j2se/GUIRunner;->setTitle(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, v4, v4}, Lcom/google/zxing/client/j2se/GUIRunner;->setSize(II)V

    .line 66
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/j2se/GUIRunner;->setDefaultCloseOperation(I)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/j2se/GUIRunner;->setContentPane(Ljava/awt/Container;)V

    .line 68
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/j2se/GUIRunner;->setLocationRelativeTo(Ljava/awt/Component;)V

    .line 69
    return-void
.end method

.method private chooseImage()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v2, Ljavax/swing/JFileChooser;

    invoke-direct {v2}, Ljavax/swing/JFileChooser;-><init>()V

    .line 79
    .local v2, "fileChooser":Ljavax/swing/JFileChooser;
    invoke-virtual {v2, p0}, Ljavax/swing/JFileChooser;->showOpenDialog(Ljava/awt/Component;)I

    .line 80
    invoke-virtual {v2}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 81
    .local v1, "file":Ljava/nio/file/Path;
    new-instance v3, Ljavax/swing/ImageIcon;

    invoke-interface {v1}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/swing/ImageIcon;-><init>(Ljava/net/URL;)V

    .line 82
    .local v3, "imageIcon":Ljavax/swing/Icon;
    invoke-interface {v3}, Ljavax/swing/Icon;->getIconWidth()I

    move-result v4

    invoke-interface {v3}, Ljavax/swing/Icon;->getIconHeight()I

    move-result v5

    add-int/lit8 v5, v5, 0x64

    invoke-virtual {p0, v4, v5}, Lcom/google/zxing/client/j2se/GUIRunner;->setSize(II)V

    .line 83
    iget-object v4, p0, Lcom/google/zxing/client/j2se/GUIRunner;->imageLabel:Ljavax/swing/JLabel;

    invoke-virtual {v4, v3}, Ljavax/swing/JLabel;->setIcon(Ljavax/swing/Icon;)V

    .line 84
    invoke-static {v1}, Lcom/google/zxing/client/j2se/GUIRunner;->getDecodeText(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "decodeText":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/zxing/client/j2se/GUIRunner;->textArea:Ljavax/swing/text/JTextComponent;

    invoke-virtual {v4, v0}, Ljavax/swing/text/JTextComponent;->setText(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method private static getDecodeText(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 7
    .param p0, "file"    # Ljava/nio/file/Path;

    .prologue
    .line 91
    :try_start_0
    invoke-interface {p0}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v6

    invoke-static {v6}, Lcom/google/zxing/client/j2se/ImageReader;->readImage(Ljava/net/URI;)Ljava/awt/image/BufferedImage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 95
    .local v1, "image":Ljava/awt/image/BufferedImage;
    new-instance v5, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;

    invoke-direct {v5, v1}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;-><init>(Ljava/awt/image/BufferedImage;)V

    .line 96
    .local v5, "source":Lcom/google/zxing/LuminanceSource;
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v6, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v6, v5}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v6}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 99
    .local v0, "bitmap":Lcom/google/zxing/BinaryBitmap;
    :try_start_1
    new-instance v6, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v6}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    invoke-virtual {v6, v0}, Lcom/google/zxing/MultiFormatReader;->decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 103
    .local v4, "result":Lcom/google/zxing/Result;
    invoke-virtual {v4}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .end local v0    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .end local v1    # "image":Ljava/awt/image/BufferedImage;
    .end local v4    # "result":Lcom/google/zxing/Result;
    .end local v5    # "source":Lcom/google/zxing/LuminanceSource;
    :goto_0
    return-object v6

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 100
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v0    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .restart local v1    # "image":Ljava/awt/image/BufferedImage;
    .restart local v5    # "source":Lcom/google/zxing/LuminanceSource;
    :catch_1
    move-exception v3

    .line 101
    .local v3, "re":Lcom/google/zxing/ReaderException;
    invoke-virtual {v3}, Lcom/google/zxing/ReaderException;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/google/zxing/client/j2se/GUIRunner;

    invoke-direct {v0}, Lcom/google/zxing/client/j2se/GUIRunner;-><init>()V

    .line 73
    .local v0, "runner":Lcom/google/zxing/client/j2se/GUIRunner;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/j2se/GUIRunner;->setVisible(Z)V

    .line 74
    invoke-direct {v0}, Lcom/google/zxing/client/j2se/GUIRunner;->chooseImage()V

    .line 75
    return-void
.end method
