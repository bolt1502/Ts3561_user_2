.class public Lcom/txznet/comm/ui/T3/T;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static TN:Lcom/txznet/comm/ui/T3/T;

.field private static final Te:Ljava/lang/String;


# instance fields
.field T:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public T2:I

.field public T3:I

.field private Tw:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "txz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "theme.config.prior"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/ui/T3/T;->Te:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/txznet/comm/ui/T3/T;->T:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/T3/T;->Tw:Ljava/lang/Object;

    .line 206
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/txznet/comm/ui/T3/T;->T3:I

    .line 207
    const/4 v0, 0x1

    iput v0, p0, Lcom/txznet/comm/ui/T3/T;->T2:I

    .line 49
    return-void
.end method

.method private T2()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/txznet/comm/ui/T3/T;->T:Ljava/util/HashMap;

    sget-object v1, Lcom/txznet/comm/ui/T3/T;->Te:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/txznet/comm/ui/TG/T;->T(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/T3/T;->T:Ljava/util/HashMap;

    .line 110
    return-void
.end method

.method public static T3()Lcom/txznet/comm/ui/T3/T;
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/txznet/comm/ui/T3/T;->TN:Lcom/txznet/comm/ui/T3/T;

    if-nez v0, :cond_1

    .line 66
    const-class v1, Lcom/txznet/comm/ui/T3/T;

    monitor-enter v1

    .line 67
    :try_start_0
    sget-object v0, Lcom/txznet/comm/ui/T3/T;->TN:Lcom/txznet/comm/ui/T3/T;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/txznet/comm/ui/T3/T;

    invoke-direct {v0}, Lcom/txznet/comm/ui/T3/T;-><init>()V

    sput-object v0, Lcom/txznet/comm/ui/T3/T;->TN:Lcom/txznet/comm/ui/T3/T;

    .line 70
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_1
    sget-object v0, Lcom/txznet/comm/ui/T3/T;->TN:Lcom/txznet/comm/ui/T3/T;

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private TN()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/txznet/comm/ui/T3/T;->T:Ljava/util/HashMap;

    const-string v1, "/etc/txz/theme/theme.config"

    invoke-static {v0, v1}, Lcom/txznet/comm/ui/TG/T;->T(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/T3/T;->T:Ljava/util/HashMap;

    .line 114
    return-void
.end method

.method private Te()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 117
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->Te()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "mThemeConfigPrefix":Ljava/lang/String;
    const/4 v0, 0x0

    .line 120
    .local v0, "classConfig":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 146
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/txznet/comm/ui/T3/T;->T:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/txznet/comm/ui/T3/T;->T:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 147
    :cond_1
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T()I

    move-result v4

    if-ne v4, v9, :cond_8

    .line 148
    invoke-static {}, Lcom/txznet/comm/ui/Tn/T/T2;->T()Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/txznet/comm/ui/T3/T;->T:Ljava/util/HashMap;

    .line 158
    :cond_2
    :goto_1
    return-void

    .line 124
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T()I

    move-result v4

    if-ne v4, v9, :cond_5

    .line 125
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ThemeConfigLarge"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/txznet/comm/ui/Ty/T;->TN(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 133
    :cond_4
    :goto_2
    if-eqz v0, :cond_0

    .line 137
    :try_start_1
    const-string v4, "getConfig"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 138
    .local v2, "getConfig":Ljava/lang/reflect/Method;
    const-string v4, "getConfig"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    iput-object v4, p0, Lcom/txznet/comm/ui/T3/T;->T:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 139
    .end local v2    # "getConfig":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 142
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 143
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 126
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_3
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T()I

    move-result v4

    if-ne v4, v7, :cond_6

    .line 127
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ThemeConfigSmall"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/txznet/comm/ui/Ty/T;->TN(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 128
    :cond_6
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T()I

    move-result v4

    if-ne v4, v10, :cond_7

    .line 129
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ThemeConfigCar"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/txznet/comm/ui/Ty/T;->TN(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 130
    :cond_7
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T()I

    move-result v4

    if-ne v4, v8, :cond_4

    .line 131
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ThemeConfig"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/txznet/comm/ui/Ty/T;->TN(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto/16 :goto_2

    .line 149
    :cond_8
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T()I

    move-result v4

    if-ne v4, v7, :cond_9

    .line 150
    invoke-static {}, Lcom/txznet/comm/ui/Tn/T/TN;->T()Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/txznet/comm/ui/T3/T;->T:Ljava/util/HashMap;

    goto/16 :goto_1

    .line 151
    :cond_9
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T()I

    move-result v4

    if-ne v4, v10, :cond_a

    .line 152
    invoke-static {}, Lcom/txznet/comm/ui/Tn/T/T3;->T()Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/txznet/comm/ui/T3/T;->T:Ljava/util/HashMap;

    goto/16 :goto_1

    .line 153
    :cond_a
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T()I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 154
    invoke-static {}, Lcom/txznet/comm/ui/Tn/T/T;->T()Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/txznet/comm/ui/T3/T;->T:Ljava/util/HashMap;

    goto/16 :goto_1
.end method


# virtual methods
.method public T()V
    .locals 2

    .prologue
    .line 54
    iget-object v1, p0, Lcom/txznet/comm/ui/T3/T;->Tw:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/T3/T;->T:Ljava/util/HashMap;

    .line 56
    invoke-direct {p0}, Lcom/txznet/comm/ui/T3/T;->Te()V

    .line 57
    invoke-static {}, Lcom/txznet/comm/ui/Tw/Te;->T3()Lcom/txznet/comm/ui/Tw/Te;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/Te;->TN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/txznet/comm/ui/T3/T;->TN()V

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/txznet/comm/ui/T3/T;->T2()V

    .line 61
    monitor-exit v1

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
