.class public Lnet/easyconn/platform/wrc/core/a;
.super Ljava/lang/Object;
.source "Base64Encoder.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/16 v0, 0x41

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lnet/easyconn/platform/wrc/core/a;->b:[C

    return-void

    :array_0
    .array-data 2
        0x34s
        0x57s
        0x54s
        0x36s
        0x4as
        0x30s
        0x3ds
        0x75s
        0x47s
        0x4fs
        0x48s
        0x37s
        0x72s
        0x32s
        0x65s
        0x74s
        0x77s
        0x39s
        0x46s
        0x6cs
        0x5as
        0x35s
        0x2fs
        0x55s
        0x51s
        0x58s
        0x71s
        0x6as
        0x66s
        0x50s
        0x53s
        0x68s
        0x52s
        0x6fs
        0x4es
        0x69s
        0x42s
        0x6es
        0x59s
        0x79s
        0x61s
        0x63s
        0x62s
        0x44s
        0x4bs
        0x43s
        0x38s
        0x31s
        0x45s
        0x33s
        0x6bs
        0x64s
        0x6ds
        0x76s
        0x4ds
        0x7as
        0x70s
        0x2bs
        0x73s
        0x49s
        0x56s
        0x78s
        0x41s
        0x67s
        0x4cs
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x40

    const/4 v2, 0x0

    .line 32
    invoke-static {}, Lnet/easyconn/platform/wrc/core/a;->a()V

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move v1, v2

    .line 37
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 38
    sget-object v0, Lnet/easyconn/platform/wrc/core/a;->a:Ljava/util/Map;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    .line 39
    sget-object v0, Lnet/easyconn/platform/wrc/core/a;->a:Ljava/util/Map;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    .line 40
    sget-object v0, Lnet/easyconn/platform/wrc/core/a;->a:Ljava/util/Map;

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    .line 41
    sget-object v0, Lnet/easyconn/platform/wrc/core/a;->a:Ljava/util/Map;

    add-int/lit8 v7, v1, 0x3

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 42
    shl-int/lit8 v4, v4, 0x2

    shr-int/lit8 v7, v5, 0x4

    or-int/2addr v4, v7

    xor-int/lit8 v4, v4, 0x66

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 44
    if-eq v6, v8, :cond_0

    .line 45
    and-int/lit8 v4, v5, 0xf

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v5, v6, 0x2

    or-int/2addr v4, v5

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 46
    if-eq v0, v8, :cond_0

    .line 47
    and-int/lit8 v4, v6, 0x3

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v0, v4

    int-to-byte v0, v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 37
    :cond_0
    add-int/lit8 v0, v1, 0x4

    move v1, v0

    goto/16 :goto_0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    const-string v4, "UTF-8"

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized a()V
    .locals 5

    .prologue
    .line 21
    const-class v1, Lnet/easyconn/platform/wrc/core/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/easyconn/platform/wrc/core/a;->a:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 26
    :cond_0
    monitor-exit v1

    return-void

    .line 22
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    sget-object v2, Lnet/easyconn/platform/wrc/core/a;->b:[C

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lnet/easyconn/platform/wrc/core/a;->a:Ljava/util/Map;

    .line 23
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lnet/easyconn/platform/wrc/core/a;->b:[C

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 24
    sget-object v2, Lnet/easyconn/platform/wrc/core/a;->a:Ljava/util/Map;

    sget-object v3, Lnet/easyconn/platform/wrc/core/a;->b:[C

    aget-char v3, v3, v0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
