.class public Lcom/txznet/comm/ui/Te;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static T:Lcom/txznet/comm/ui/Te;


# instance fields
.field private T2:I

.field private T3:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/txznet/comm/ui/Te;

    invoke-direct {v0}, Lcom/txznet/comm/ui/Te;-><init>()V

    sput-object v0, Lcom/txznet/comm/ui/Te;->T:Lcom/txznet/comm/ui/Te;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/txznet/comm/ui/Te;->T3:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/txznet/comm/ui/Te;->T2:I

    .line 22
    return-void
.end method

.method public static T()Lcom/txznet/comm/ui/Te;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/txznet/comm/ui/Te;->T:Lcom/txznet/comm/ui/Te;

    return-object v0
.end method


# virtual methods
.method public T(Ljava/lang/String;)I
    .locals 7
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 48
    const/16 v4, 0x9

    .line 62
    :cond_0
    return v4

    .line 50
    :cond_1
    const-string v6, "\\."

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "subStrings":[Ljava/lang/String;
    const/4 v5, 0x1

    .line 52
    .local v5, "weight":I
    const/4 v4, 0x0

    .line 53
    .local v4, "versionCode":I
    array-length v6, v3

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 55
    :try_start_0
    aget-object v6, v3, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 56
    .local v2, "num":I
    mul-int v6, v2, v5

    add-int/2addr v4, v6

    .line 60
    .end local v2    # "num":I
    :goto_1
    mul-int/lit8 v5, v5, 0x64

    .line 53
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method public T3()V
    .locals 2

    .prologue
    .line 29
    const-string v0, "UIVersionManager init"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 31
    :try_start_0
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/Ty/T;->Tn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/Te;->T3:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIVersionManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/ui/Te;->T3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Te;->T3:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "0.9"

    iput-object v0, p0, Lcom/txznet/comm/ui/Te;->T3:Ljava/lang/String;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Te;->T3:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/txznet/comm/ui/Te;->T(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/txznet/comm/ui/Te;->T2:I

    .line 39
    return-void

    .line 33
    :catch_0
    move-exception v0

    goto :goto_0
.end method
