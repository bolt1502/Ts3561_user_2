.class public Lcom/T2/T/T/T/T/T/T3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T2/T/T/T/T;


# static fields
.field public static final T:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field protected final T2:Lcom/T2/T/T/T/T3/T;

.field protected T3:Lcom/T2/T/T/T/T/T/T;

.field protected TN:I

.field protected Te:Landroid/graphics/Bitmap$CompressFormat;

.field protected Tw:I

.field private Ty:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/T2/T/T/T/T/T/T3;->T:Landroid/graphics/Bitmap$CompressFormat;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/T2/T/T/T/T3/T;JI)V
    .locals 6
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "reserveCacheDir"    # Ljava/io/File;
    .param p3, "fileNameGenerator"    # Lcom/T2/T/T/T/T3/T;
    .param p4, "cacheMaxSize"    # J
    .param p6, "cacheMaxFileCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const v0, 0x8000

    iput v0, p0, Lcom/T2/T/T/T/T/T/T3;->TN:I

    .line 57
    sget-object v0, Lcom/T2/T/T/T/T/T/T3;->T:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/T2/T/T/T/T/T/T3;->Te:Landroid/graphics/Bitmap$CompressFormat;

    .line 58
    const/16 v0, 0x64

    iput v0, p0, Lcom/T2/T/T/T/T/T/T3;->Tw:I

    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheDir argument must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    cmp-long v0, p4, v1

    if-gez v0, :cond_1

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheMaxSize argument must be positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    if-gez p6, :cond_2

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheMaxFileCount argument must be positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    if-nez p3, :cond_3

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fileNameGenerator argument must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_3
    cmp-long v0, p4, v1

    if-nez v0, :cond_4

    .line 98
    const-wide p4, 0x7fffffffffffffffL

    .line 100
    :cond_4
    if-nez p6, :cond_5

    .line 101
    const p6, 0x7fffffff

    .line 104
    :cond_5
    iput-object p2, p0, Lcom/T2/T/T/T/T/T/T3;->Ty:Ljava/io/File;

    .line 105
    iput-object p3, p0, Lcom/T2/T/T/T/T/T/T3;->T2:Lcom/T2/T/T/T/T3/T;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move v5, p6

    .line 106
    invoke-direct/range {v0 .. v5}, Lcom/T2/T/T/T/T/T/T3;->T(Ljava/io/File;Ljava/io/File;JI)V

    .line 107
    return-void
.end method

.method private T(Ljava/io/File;Ljava/io/File;JI)V
    .locals 7
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "reserveCacheDir"    # Ljava/io/File;
    .param p3, "cacheMaxSize"    # J
    .param p5, "cacheMaxFileCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p1

    move-wide v3, p3

    move v5, p5

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/T2/T/T/T/T/T/T;->T(Ljava/io/File;IIJI)Lcom/T2/T/T/T/T/T/T;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T/T/T/T/T3;->T3:Lcom/T2/T/T/T/T/T/T;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    return-void

    .line 113
    :catch_0
    move-exception v6

    .line 114
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v6}, Lcom/T2/T/T2/T;->T(Ljava/lang/Throwable;)V

    .line 115
    if-eqz p2, :cond_1

    .line 116
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/T2/T/T/T/T/T/T3;->T(Ljava/io/File;Ljava/io/File;JI)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T3;->T3:Lcom/T2/T/T/T/T/T/T;

    if-nez v0, :cond_0

    .line 119
    throw v6
.end method


# virtual methods
.method public T()V
    .locals 7

    .prologue
    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T3;->T3:Lcom/T2/T/T/T/T/T/T;

    invoke-virtual {v0}, Lcom/T2/T/T/T/T/T/T;->TN()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T3;->T3:Lcom/T2/T/T/T/T/T/T;

    invoke-virtual {v0}, Lcom/T2/T/T/T/T/T/T;->T()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/T2/T/T/T/T/T/T3;->Ty:Ljava/io/File;

    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T3;->T3:Lcom/T2/T/T/T/T/T/T;

    invoke-virtual {v0}, Lcom/T2/T/T/T/T/T/T;->T3()J

    move-result-wide v3

    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T3;->T3:Lcom/T2/T/T/T/T/T/T;

    invoke-virtual {v0}, Lcom/T2/T/T/T/T/T/T;->T2()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/T2/T/T/T/T/T/T3;->T(Ljava/io/File;Ljava/io/File;JI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :goto_1
    return-void

    .line 213
    :catch_0
    move-exception v6

    .line 214
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v6}, Lcom/T2/T/T2/T;->T(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 218
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 219
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-static {v6}, Lcom/T2/T/T2/T;->T(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
