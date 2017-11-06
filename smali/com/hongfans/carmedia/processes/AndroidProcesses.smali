.class public Lcom/hongfans/carmedia/processes/AndroidProcesses;
.super Ljava/lang/Object;
.source "AndroidProcesses.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hongfans/carmedia/processes/AndroidProcesses$ProcessComparator;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AndroidProcesses"

.field private static loggingEnabled:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "no instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static getRunningAppProcessInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_0

    .line 271
    invoke-static {}, Lcom/hongfans/carmedia/processes/AndroidProcesses;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 272
    .local v4, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v1, "appProcessInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;

    .line 274
    .local v3, "process":Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;
    new-instance v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v6, v3, Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;->name:Ljava/lang/String;

    iget v7, v3, Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;->pid:I

    const/4 v8, 0x0

    invoke-direct {v2, v6, v7, v8}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 275
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v3, Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;->uid:I

    iput v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 277
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    .end local v1    # "appProcessInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "process":Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;
    .end local v4    # "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;>;"
    :cond_0
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 282
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_1
    return-object v1
.end method

.method public static getRunningAppProcesses()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 171
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v5, "processes":Ljava/util/List;, "Ljava/util/List<Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;>;"
    new-instance v6, Ljava/io/File;

    const-string v8, "/proc"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 173
    .local v2, "files":[Ljava/io/File;
    array-length v8, v2

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v1, v2, v6

    .line 174
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 177
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 182
    .local v4, "pid":I
    :try_start_1
    new-instance v9, Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;

    invoke-direct {v9, v4}, Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;-><init>(I)V

    iget-object v3, v9, Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;->name:Ljava/lang/String;

    .line 183
    .local v3, "name":Ljava/lang/String;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "==##getRunningAppProcesses:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 184
    const-string v9, "com.hongfans.rearview"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 185
    new-instance v9, Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;

    invoke-direct {v9, v4}, Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;-><init>(I)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/hongfans/carmedia/processes/models/AndroidAppProcess$NotAndroidAppProcessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "pid":I
    :cond_0
    return-object v5

    .line 178
    .restart local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 173
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 189
    .restart local v4    # "pid":I
    :catch_1
    move-exception v0

    .line 190
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "Error reading from /proc/%d."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v0, v9, v10}, Lcom/hongfans/carmedia/processes/AndroidProcesses;->log(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 188
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    goto :goto_1
.end method

.method public static getRunningForegroundApps(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 206
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v6, "processes":Ljava/util/List;, "Ljava/util/List<Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;>;"
    new-instance v7, Ljava/io/File;

    const-string v9, "/proc"

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 208
    .local v2, "files":[Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 209
    .local v4, "pm":Landroid/content/pm/PackageManager;
    array-length v9, v2

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v1, v2, v7

    .line 210
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 213
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 218
    .local v3, "pid":I
    :try_start_1
    new-instance v5, Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;

    invoke-direct {v5, v3}, Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;-><init>(I)V

    .line 219
    .local v5, "process":Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;
    iget-boolean v10, v5, Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;->foreground:Z

    if-eqz v10, :cond_1

    iget v10, v5, Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;->uid:I

    const/16 v11, 0x3e8

    if-lt v10, v11, :cond_0

    iget v10, v5, Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;->uid:I

    const/16 v11, 0x270f

    if-le v10, v11, :cond_1

    :cond_0
    iget-object v10, v5, Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;->name:Ljava/lang/String;

    const-string v11, ":"

    .line 223
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 225
    invoke-virtual {v5}, Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 226
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/hongfans/carmedia/processes/models/AndroidAppProcess$NotAndroidAppProcessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    .end local v3    # "pid":I
    .end local v5    # "process":Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 229
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "pid":I
    :catch_1
    move-exception v0

    .line 230
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "Error reading from /proc/%d."

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v0, v10, v11}, Lcom/hongfans/carmedia/processes/AndroidProcesses;->log(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 236
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "pid":I
    :cond_2
    return-object v6

    .line 228
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "pid":I
    :catch_2
    move-exception v10

    goto :goto_1
.end method

.method public static getRunningProcesses()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hongfans/carmedia/processes/models/AndroidProcess;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 145
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v4, "processes":Ljava/util/List;, "Ljava/util/List<Lcom/hongfans/carmedia/processes/models/AndroidProcess;>;"
    new-instance v5, Ljava/io/File;

    const-string v7, "/proc"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 147
    .local v2, "files":[Ljava/io/File;
    array-length v7, v2

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v1, v2, v5

    .line 148
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 151
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 156
    .local v3, "pid":I
    :try_start_1
    new-instance v8, Lcom/hongfans/carmedia/processes/models/AndroidProcess;

    invoke-direct {v8, v3}, Lcom/hongfans/carmedia/processes/models/AndroidProcess;-><init>(I)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    .end local v3    # "pid":I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 157
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "pid":I
    :catch_1
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "Error reading from /proc/%d."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v0, v8, v9}, Lcom/hongfans/carmedia/processes/AndroidProcesses;->log(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 164
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "pid":I
    :cond_1
    return-object v4
.end method

.method public static isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 101
    sget-boolean v0, Lcom/hongfans/carmedia/processes/AndroidProcesses;->loggingEnabled:Z

    return v0
.end method

.method public static isMyProcessInTheForeground()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 244
    :try_start_0
    new-instance v2, Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;-><init>(I)V

    iget-boolean v1, v2, Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;->foreground:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 246
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "Error finding our own process"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/hongfans/carmedia/processes/AndroidProcesses;->log(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 123
    sget-boolean v0, Lcom/hongfans/carmedia/processes/AndroidProcesses;->loggingEnabled:Z

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "AndroidProcesses"

    array-length v1, p1

    if-nez v1, :cond_1

    .end local p0    # "message":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    return-void

    .line 124
    .restart local p0    # "message":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs log(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "error"    # Ljava/lang/Throwable;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 136
    sget-boolean v0, Lcom/hongfans/carmedia/processes/AndroidProcesses;->loggingEnabled:Z

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "AndroidProcesses"

    array-length v1, p2

    if-nez v1, :cond_1

    .end local p1    # "message":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    :cond_0
    return-void

    .line 137
    .restart local p1    # "message":Ljava/lang/String;
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static setLoggingEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 113
    sput-boolean p0, Lcom/hongfans/carmedia/processes/AndroidProcesses;->loggingEnabled:Z

    .line 114
    return-void
.end method
