.class public abstract Lcom/T2/T/T/T/T/T;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T2/T/T/T/T;


# static fields
.field public static final T:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field protected final T2:Ljava/io/File;

.field protected final T3:Ljava/io/File;

.field protected final TN:Lcom/T2/T/T/T/T3/T;

.field protected Te:I

.field protected Tw:Landroid/graphics/Bitmap$CompressFormat;

.field protected Ty:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/T2/T/T/T/T/T;->T:Landroid/graphics/Bitmap$CompressFormat;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/T2/T/T/T/T3/T;)V
    .locals 2
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "reserveCacheDir"    # Ljava/io/File;
    .param p3, "fileNameGenerator"    # Lcom/T2/T/T/T/T3/T;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const v0, 0x8000

    iput v0, p0, Lcom/T2/T/T/T/T/T;->Te:I

    .line 56
    sget-object v0, Lcom/T2/T/T/T/T/T;->T:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/T2/T/T/T/T/T;->Tw:Landroid/graphics/Bitmap$CompressFormat;

    .line 57
    const/16 v0, 0x64

    iput v0, p0, Lcom/T2/T/T/T/T/T;->Ty:I

    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheDir argument must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    if-nez p3, :cond_1

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fileNameGenerator argument must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    iput-object p1, p0, Lcom/T2/T/T/T/T/T;->T3:Ljava/io/File;

    .line 87
    iput-object p2, p0, Lcom/T2/T/T/T/T/T;->T2:Ljava/io/File;

    .line 88
    iput-object p3, p0, Lcom/T2/T/T/T/T/T;->TN:Lcom/T2/T/T/T/T3/T;

    .line 89
    return-void
.end method


# virtual methods
.method public T()V
    .locals 4

    .prologue
    .line 157
    iget-object v2, p0, Lcom/T2/T/T/T/T/T;->T3:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 158
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 159
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 163
    :cond_0
    return-void

    .line 159
    :cond_1
    aget-object v0, v1, v2

    .line 160
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
