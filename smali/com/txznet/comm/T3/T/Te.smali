.class public Lcom/txznet/comm/T3/T/Te;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/T3/T/Te$1;,
        Lcom/txznet/comm/T3/T/Te$T;
    }
.end annotation


# static fields
.field static T:Ljava/lang/StackTraceElement;

.field static T2:I

.field static T3:Z

.field static TN:I

.field private static Te:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static Tw:Ljava/lang/reflect/Method;

.field private static Ty:Lcom/txznet/comm/T3/T/Te$T;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 26
    sput-object v2, Lcom/txznet/comm/T3/T/Te;->T:Ljava/lang/StackTraceElement;

    .line 27
    const-class v0, Lcom/txznet/comm/T3/T/Te;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.txznet.comm.remote.util.LogUtil"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/txznet/comm/T3/T/Te;->T3:Z

    .line 55
    sput-object v2, Lcom/txznet/comm/T3/T/Te;->Te:Ljava/lang/Class;

    .line 56
    sput-object v2, Lcom/txznet/comm/T3/T/Te;->Tw:Ljava/lang/reflect/Method;

    .line 91
    sput v3, Lcom/txznet/comm/T3/T/Te;->T2:I

    .line 92
    sput v3, Lcom/txznet/comm/T3/T/Te;->TN:I

    .line 171
    new-instance v0, Lcom/txznet/comm/T3/T/Te$T;

    invoke-direct {v0, v2}, Lcom/txznet/comm/T3/T/Te$T;-><init>(Lcom/txznet/comm/T3/T/Te$1;)V

    sput-object v0, Lcom/txznet/comm/T3/T/Te;->Ty:Lcom/txznet/comm/T3/T/Te$T;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method static T(ILjava/lang/String;)I
    .locals 6
    .param p0, "level"    # I
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 31
    const-string v2, "TXZ"

    .line 33
    .local v2, "tag":Ljava/lang/String;
    :try_start_0
    sget-boolean v3, Lcom/txznet/comm/T3/T/Te;->T3:Z

    if-eqz v3, :cond_1

    .line 34
    sget-object v3, Lcom/txznet/comm/T3/T/Te;->T:Ljava/lang/StackTraceElement;

    if-nez v3, :cond_0

    .line 35
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/txznet/comm/T3/T/Te;->T2(I)V

    .line 37
    :cond_0
    sget-object v3, Lcom/txznet/comm/T3/T/Te;->T:Ljava/lang/StackTraceElement;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/txznet/comm/T3/T/Te;->T:Ljava/lang/StackTraceElement;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "prefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/txznet/comm/T3/T/Te;->T:Ljava/lang/StackTraceElement;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/txznet/comm/T3/T/Te;->T:Ljava/lang/StackTraceElement;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "suffix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "suffix":Ljava/lang/String;
    :cond_1
    invoke-static {p0, v2, p1}, Lcom/txznet/comm/T3/T/Te;->T(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    sput-object v5, Lcom/txznet/comm/T3/T/Te;->T:Ljava/lang/StackTraceElement;

    .line 52
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 48
    :catch_0
    move-exception v3

    .line 50
    sput-object v5, Lcom/txznet/comm/T3/T/Te;->T:Ljava/lang/StackTraceElement;

    goto :goto_0

    :catchall_0
    move-exception v3

    sput-object v5, Lcom/txznet/comm/T3/T/Te;->T:Ljava/lang/StackTraceElement;

    throw v3
.end method

.method public static T(Ljava/lang/String;)I
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 125
    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/txznet/comm/T3/T/Te;->T(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static T(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 142
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 143
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 144
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 145
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 149
    .end local v0    # "pw":Ljava/io/PrintWriter;
    .end local v1    # "sw":Ljava/io/StringWriter;
    :cond_0
    const/4 v2, 0x6

    invoke-static {v2, p0}, Lcom/txznet/comm/T3/T/Te;->T(ILjava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static T()V
    .locals 2

    .prologue
    .line 169
    const-string v0, "comm.log."

    sget-object v1, Lcom/txznet/comm/T3/T/Te;->Ty:Lcom/txznet/comm/T3/T/Te$T;

    invoke-static {v0, v1}, Lcom/txznet/txz/T/TN;->T(Ljava/lang/String;Lcom/txznet/txz/T/TN$T;)V

    .line 170
    return-void
.end method

.method public static T(I)V
    .locals 6
    .param p0, "level"    # I

    .prologue
    .line 95
    invoke-static {}, Lcom/txznet/comm/T3/T;->T()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    :try_start_0
    const-string v2, "com.txznet.txz.jni.JNIHelper"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 98
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "setConsoleLogLevel"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 99
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 103
    :cond_0
    sput p0, Lcom/txznet/comm/T3/T/Te;->T2:I

    goto :goto_0

    .line 100
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static T(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-static {}, Lcom/txznet/comm/T3/T;->T()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/txznet/T/T;->Ty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    :try_start_0
    sget-object v2, Lcom/txznet/comm/T3/T/Te;->Tw:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/txznet/comm/T3/T/Te;->Te:Ljava/lang/Class;

    if-nez v2, :cond_1

    .line 62
    :cond_0
    const-string v2, "com.txznet.txz.jni.JNIHelper"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/txznet/comm/T3/T/Te;->Te:Ljava/lang/Class;

    .line 63
    sget-object v2, Lcom/txznet/comm/T3/T/Te;->Te:Ljava/lang/Class;

    const-string v3, "_logRaw"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/txznet/comm/T3/T/Te;->Tw:Ljava/lang/reflect/Method;

    .line 66
    :cond_1
    sget-object v2, Lcom/txznet/comm/T3/T/Te;->Tw:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/txznet/comm/T3/T/Te;->Te:Ljava/lang/Class;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    :cond_2
    :goto_0
    return-void

    .line 70
    :cond_3
    sget v2, Lcom/txznet/comm/T3/T/Te;->T2:I

    if-lt p0, v2, :cond_4

    .line 71
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_4
    sget v2, Lcom/txznet/comm/T3/T/Te;->TN:I

    if-lt p0, v2, :cond_2

    .line 76
    :try_start_1
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x384

    if-le v2, v3, :cond_5

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x12c

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n............too many logs...........\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit16 v3, v3, -0x12c

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 83
    :cond_5
    new-instance v2, Lcom/txznet/comm/TN/T;

    invoke-direct {v2}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v3, "level"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    move-result-object v2

    const-string v3, "tag"

    invoke-virtual {v2, v3, p1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v2, v3, p2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "data":Ljava/lang/String;
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const-string v3, "com.txznet.txz"

    const-string v4, "comm.log"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    .line 77
    .end local v0    # "data":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/IllegalStateException;
    goto :goto_0

    .line 67
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static T2(Ljava/lang/String;)I
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 133
    const/4 v0, 0x5

    invoke-static {v0, p0}, Lcom/txznet/comm/T3/T/Te;->T(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static T2(I)V
    .locals 2
    .param p0, "depth"    # I

    .prologue
    .line 163
    sget-boolean v0, Lcom/txznet/comm/T3/T/Te;->T3:Z

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    add-int/lit8 v1, p0, 0x1

    aget-object v0, v0, v1

    sput-object v0, Lcom/txznet/comm/T3/T/Te;->T:Ljava/lang/StackTraceElement;

    .line 166
    :cond_0
    return-void
.end method

.method public static T3(Ljava/lang/String;)I
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/txznet/comm/T3/T/Te;->T(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static T3(I)V
    .locals 6
    .param p0, "level"    # I

    .prologue
    .line 108
    invoke-static {}, Lcom/txznet/comm/T3/T;->T()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    :try_start_0
    const-string v2, "com.txznet.txz.jni.JNIHelper"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 111
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "setFileLogLevel"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 112
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 116
    :cond_0
    sput p0, Lcom/txznet/comm/T3/T/Te;->TN:I

    goto :goto_0

    .line 113
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static TN(Ljava/lang/String;)I
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 137
    const/4 v0, 0x6

    invoke-static {v0, p0}, Lcom/txznet/comm/T3/T/Te;->T(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
