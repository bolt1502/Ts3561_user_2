.class public Lcom/txznet/comm/T/TN;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/T/TN$T3;,
        Lcom/txznet/comm/T/TN$T;
    }
.end annotation


# static fields
.field private static T:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static T2:Ljava/lang/String;

.field private static T3:Landroid/content/Context;

.field private static TN:Lcom/txznet/comm/T/TN$T;

.field private static Te:Lcom/txznet/comm/T/TN$T3;

.field private static Tw:Lcom/txznet/comm/T/TN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/T/TN;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 77
    new-instance v0, Lcom/txznet/comm/T/TN;

    invoke-direct {v0}, Lcom/txznet/comm/T/TN;-><init>()V

    sput-object v0, Lcom/txznet/comm/T/TN;->Tw:Lcom/txznet/comm/T/TN;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static T()Lcom/txznet/comm/T/TN;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/txznet/comm/T/TN;->Tw:Lcom/txznet/comm/T/TN;

    return-object v0
.end method

.method public static T(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "strDir"    # Ljava/lang/String;
    .param p2, "thread"    # Ljava/lang/Thread;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 122
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 125
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 126
    .local v0, "current":J
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy_MM_dd_HH_mm_ss"

    sget-object v10, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "time":Ljava/lang/String;
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    sget-object v10, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, "timestr":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "crash"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".trace"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v4, "file":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/PrintWriter;

    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/FileWriter;

    invoke-direct {v9, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v5, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 139
    .local v5, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    invoke-static {v5}, Lcom/txznet/comm/T/TN;->T(Ljava/io/PrintWriter;)V

    .line 145
    if-eqz p2, :cond_2

    sget-object v8, Lcom/txznet/comm/T/TN;->TN:Lcom/txznet/comm/T/TN$T;

    if-eqz v8, :cond_2

    .line 146
    sget-object v8, Lcom/txznet/comm/T/TN;->TN:Lcom/txznet/comm/T/TN$T;

    invoke-virtual {v8, p2, p3, v5}, Lcom/txznet/comm/T/TN$T;->T(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    .line 149
    :cond_2
    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    .line 151
    invoke-virtual {p3, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 153
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 154
    .end local v5    # "pw":Ljava/io/PrintWriter;
    :catch_0
    move-exception v3

    .line 155
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "CrashCommonHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dump crash info failed, cause: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static T(Ljava/io/PrintWriter;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 161
    const-string v0, "App Name: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    const-string v0, "App Version: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/txznet/comm/Te/T;->T3:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 165
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 166
    sget v0, Lcom/txznet/comm/Te/T;->T:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Compile Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/txznet/T/T;->T2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    const-string v0, "OS Version: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 178
    const-string v0, "Vendor: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    const-string v0, "Model: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    const-string v0, "CPU ABI: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 187
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    const-string v0, "ProcessName: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/txznet/T/T;->Tw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public static T(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 113
    sget-object v0, Lcom/txznet/comm/T/TN;->T3:Landroid/content/Context;

    sget-object v1, Lcom/txznet/comm/T/TN;->T2:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/txznet/comm/T/TN;->T(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 114
    return-void
.end method

.method static synthetic T2()Lcom/txznet/comm/T/TN$T3;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/txznet/comm/T/TN;->Te:Lcom/txznet/comm/T/TN$T3;

    return-object v0
.end method


# virtual methods
.method public T3()V
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/txznet/comm/T/TN;->Tw:Lcom/txznet/comm/T/TN;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 196
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-static {p1, p2}, Lcom/txznet/comm/T/TN;->T(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 93
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 95
    .local v2, "writer":Ljava/io/Writer;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 96
    .local v0, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 97
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "s":Ljava/lang/String;
    const-string v3, "CrashCommonHandler"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v3, Lcom/txznet/comm/T/TN;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v3, :cond_0

    .line 104
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 105
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 108
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method
