.class public Lcom/ts/main/auth/factory_test;
.super Ljava/lang/Object;
.source "factory_test.java"


# static fields
.field static Err:Ljava/lang/String; = null

.field static TotaArmlTime:J = 0x0L

.field static TotalTime:J = 0x0L

.field private static final filepath:Ljava/lang/String; = "/mnt/sdcard/factoryreport.ini"

.field static nNUM:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput v0, Lcom/ts/main/auth/factory_test;->nNUM:I

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static AddToSort(Ljava/lang/String;)V
    .locals 2
    .param p0, "Str"    # Ljava/lang/String;

    .prologue
    .line 28
    sget v0, Lcom/ts/main/auth/factory_test;->nNUM:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ts/main/auth/factory_test;->nNUM:I

    .line 29
    sget-object v0, Lcom/ts/main/auth/factory_test;->Err:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/ts/main/auth/factory_test;->nNUM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ts/main/auth/factory_test;->Err:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/ts/main/auth/factory_test;->Err:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ts/main/auth/factory_test;->Err:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/ts/main/auth/factory_test;->Err:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ts/main/auth/factory_test;->Err:Ljava/lang/String;

    .line 32
    return-void
.end method

.method static Clear()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput v0, Lcom/ts/main/auth/factory_test;->nNUM:I

    .line 23
    const-string v0, " "

    sput-object v0, Lcom/ts/main/auth/factory_test;->Err:Ljava/lang/String;

    .line 24
    return-void
.end method

.method static ReadReport()V
    .locals 2

    .prologue
    .line 38
    :try_start_0
    const-string v1, "/mnt/sdcard/factoryreport.ini"

    invoke-static {v1}, Lcom/ts/MainUI/TsFile;->readFileSdcardFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ts/main/auth/factory_test;->Err:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 39
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 42
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static WriteReport()V
    .locals 3

    .prologue
    .line 49
    :try_start_0
    const-string v1, "/mnt/sdcard/factoryreport.ini"

    sget-object v2, Lcom/ts/main/auth/factory_test;->Err:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ts/MainUI/TsFile;->writeFileSdcardFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 50
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 53
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getTickCount()J
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
