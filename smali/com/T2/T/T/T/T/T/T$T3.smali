.class final Lcom/T2/T/T/T/T/T/T$T3;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/T2/T/T/T/T/T/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "T3"
.end annotation


# instance fields
.field final synthetic T:Lcom/T2/T/T/T/T/T/T;

.field private final T2:[J

.field private final T3:Ljava/lang/String;

.field private TN:Z

.field private Te:Lcom/T2/T/T/T/T/T/T$T;

.field private Tw:J


# direct methods
.method private constructor <init>(Lcom/T2/T/T/T/T/T/T;Ljava/lang/String;)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 934
    iput-object p1, p0, Lcom/T2/T/T/T/T/T/T$T3;->T:Lcom/T2/T/T/T/T/T/T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 935
    iput-object p2, p0, Lcom/T2/T/T/T/T/T/T$T3;->T3:Ljava/lang/String;

    .line 936
    invoke-static {p1}, Lcom/T2/T/T/T/T/T/T;->Tw(Lcom/T2/T/T/T/T/T/T;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/T2/T/T/T/T/T/T$T3;->T2:[J

    .line 937
    return-void
.end method

.method synthetic constructor <init>(Lcom/T2/T/T/T/T/T/T;Ljava/lang/String;Lcom/T2/T/T/T/T/T/T$T3;)V
    .locals 0

    .prologue
    .line 934
    invoke-direct {p0, p1, p2}, Lcom/T2/T/T/T/T/T/T$T3;-><init>(Lcom/T2/T/T/T/T/T/T;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic T(Lcom/T2/T/T/T/T/T/T$T3;J)V
    .locals 0

    .prologue
    .line 932
    iput-wide p1, p0, Lcom/T2/T/T/T/T/T/T$T3;->Tw:J

    return-void
.end method

.method static synthetic T(Lcom/T2/T/T/T/T/T/T$T3;Lcom/T2/T/T/T/T/T/T$T;)V
    .locals 0

    .prologue
    .line 929
    iput-object p1, p0, Lcom/T2/T/T/T/T/T/T$T3;->Te:Lcom/T2/T/T/T/T/T/T$T;

    return-void
.end method

.method static synthetic T(Lcom/T2/T/T/T/T/T/T$T3;Z)V
    .locals 0

    .prologue
    .line 926
    iput-boolean p1, p0, Lcom/T2/T/T/T/T/T/T$T3;->TN:Z

    return-void
.end method

.method static synthetic T(Lcom/T2/T/T/T/T/T/T$T3;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 948
    invoke-direct {p0, p1}, Lcom/T2/T/T/T/T/T/T$T3;->T([Ljava/lang/String;)V

    return-void
.end method

.method private T([Ljava/lang/String;)V
    .locals 5
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 949
    array-length v2, p1

    iget-object v3, p0, Lcom/T2/T/T/T/T/T/T$T3;->T:Lcom/T2/T/T/T/T/T/T;

    invoke-static {v3}, Lcom/T2/T/T/T/T/T/T;->Tw(Lcom/T2/T/T/T/T/T/T;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 950
    invoke-direct {p0, p1}, Lcom/T2/T/T/T/T/T/T$T3;->T3([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 954
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-lt v1, v2, :cond_1

    .line 960
    return-void

    .line 955
    :cond_1
    iget-object v2, p0, Lcom/T2/T/T/T/T/T/T$T3;->T2:[J

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 957
    :catch_0
    move-exception v0

    .line 958
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lcom/T2/T/T/T/T/T/T$T3;->T3([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method static synthetic T(Lcom/T2/T/T/T/T/T/T$T3;)Z
    .locals 1

    .prologue
    .line 926
    iget-boolean v0, p0, Lcom/T2/T/T/T/T/T/T$T3;->TN:Z

    return v0
.end method

.method static synthetic T2(Lcom/T2/T/T/T/T/T/T$T3;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T$T3;->T3:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic T3(Lcom/T2/T/T/T/T/T/T$T3;)Lcom/T2/T/T/T/T/T/T$T;
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T$T3;->Te:Lcom/T2/T/T/T/T/T/T$T;

    return-object v0
.end method

.method private T3([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 963
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic TN(Lcom/T2/T/T/T/T/T/T$T3;)[J
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T$T3;->T2:[J

    return-object v0
.end method


# virtual methods
.method public T(I)Ljava/io/File;
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 967
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/T2/T/T/T/T/T/T$T3;->T:Lcom/T2/T/T/T/T/T/T;

    invoke-static {v1}, Lcom/T2/T/T/T/T/T/T;->Ty(Lcom/T2/T/T/T/T/T/T;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/T2/T/T/T/T/T/T$T3;->T3:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public T()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 941
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/T2/T/T/T/T/T/T$T3;->T2:[J

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 944
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 941
    :cond_0
    aget-wide v1, v4, v3

    .line 942
    .local v1, "size":J
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 941
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public T3(I)Ljava/io/File;
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 971
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/T2/T/T/T/T/T/T$T3;->T:Lcom/T2/T/T/T/T/T/T;

    invoke-static {v1}, Lcom/T2/T/T/T/T/T/T;->Ty(Lcom/T2/T/T/T/T/T/T;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/T2/T/T/T/T/T/T$T3;->T3:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
