.class public Lcom/txznet/comm/T3/T/TJ;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/T3/T/TJ$T;,
        Lcom/txznet/comm/T3/T/TJ$T3;
    }
.end annotation


# static fields
.field static T:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/txznet/comm/T3/T/TJ$T3;",
            ">;"
        }
    .end annotation
.end field

.field private static T2:Z

.field private static T3:Z

.field private static TN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 17
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    new-instance v2, Lcom/txznet/comm/T3/T/TJ$1;

    invoke-direct {v2}, Lcom/txznet/comm/T3/T/TJ$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 48
    sput-boolean v3, Lcom/txznet/comm/T3/T/TJ;->T3:Z

    .line 49
    sput-boolean v3, Lcom/txznet/comm/T3/T/TJ;->T2:Z

    .line 50
    sput-boolean v3, Lcom/txznet/comm/T3/T/TJ;->TN:Z

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/txznet/comm/T3/T/TJ;->T:Ljava/util/Set;

    .line 227
    new-instance v0, Lcom/txznet/comm/T3/T/TJ$5;

    invoke-direct {v0}, Lcom/txznet/comm/T3/T/TJ$5;-><init>()V

    invoke-static {v0}, Lcom/txznet/comm/T3/T/TJ;->T(Lcom/txznet/comm/T3/T/TJ$T;)V

    .line 235
    return-void
.end method

.method public static T(Lcom/txznet/comm/T3/T/TJ$T3;)V
    .locals 3
    .param p0, "listener"    # Lcom/txznet/comm/T3/T/TJ$T3;

    .prologue
    .line 146
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/T3/T/TJ$13;

    invoke-direct {v1, p0}, Lcom/txznet/comm/T3/T/TJ$13;-><init>(Lcom/txznet/comm/T3/T/TJ$T3;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    .line 153
    return-void
.end method

.method public static T(Lcom/txznet/comm/T3/T/TJ$T;)V
    .locals 6
    .param p0, "cb"    # Lcom/txznet/comm/T3/T/TJ$T;

    .prologue
    .line 249
    if-nez p0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 251
    :cond_0
    new-instance v1, Lcom/txznet/comm/T3/T/TJ$6;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/TJ$6;-><init>()V

    .line 279
    .local v1, "res":Lcom/txznet/comm/T3/T2$T3;
    invoke-virtual {v1, p0}, Lcom/txznet/comm/T3/T2$T3;->T(Ljava/lang/Object;)Lcom/txznet/comm/T3/T2$T3;

    .line 280
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 282
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    iget-object v2, p0, Lcom/txznet/comm/T3/T/TJ$T;->T:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 283
    const-string v2, "asr"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 284
    :cond_1
    iget-object v2, p0, Lcom/txznet/comm/T3/T/TJ$T;->T3:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 285
    const-string v2, "tts"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 286
    :cond_2
    iget-object v2, p0, Lcom/txznet/comm/T3/T/TJ$T;->T2:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 287
    const-string v2, "call"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :cond_3
    :goto_1
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const-string v3, "com.txznet.txz"

    const-string v4, "comm.status.get"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    .line 288
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static T()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/txznet/comm/T3/T/TJ;->T3:Z

    return v0
.end method

.method static synthetic T(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 14
    sput-boolean p0, Lcom/txznet/comm/T3/T/TJ;->T3:Z

    return p0
.end method

.method public static T(Ljava/lang/String;)[B
    .locals 4
    .param p0, "status"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 166
    const-string v0, "onBeginMusic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/T3/T/TJ$2;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/TJ$2;-><init>()V

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    .line 223
    :cond_0
    :goto_0
    return-object v2

    .line 176
    :cond_1
    const-string v0, "onEndMusic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/T3/T/TJ$3;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/TJ$3;-><init>()V

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 186
    :cond_2
    const-string v0, "onBeginAsr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    invoke-static {v1}, Lcom/txznet/comm/T3/T/TJ;->Ty(Z)Z

    goto :goto_0

    .line 190
    :cond_3
    const-string v0, "onBeepEnd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    sget-boolean v0, Lcom/txznet/comm/T3/T/TJ;->T3:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/T3/T/TJ$4;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/TJ$4;-><init>()V

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 202
    :cond_4
    const-string v0, "onEndAsr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 203
    invoke-static {v3}, Lcom/txznet/comm/T3/T/TJ;->Ty(Z)Z

    goto :goto_0

    .line 206
    :cond_5
    const-string v0, "onBeginTts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 207
    invoke-static {v1}, Lcom/txznet/comm/T3/T/TJ;->Tn(Z)Z

    goto :goto_0

    .line 210
    :cond_6
    const-string v0, "onEndTts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 211
    invoke-static {v3}, Lcom/txznet/comm/T3/T/TJ;->Tn(Z)Z

    goto :goto_0

    .line 214
    :cond_7
    const-string v0, "onBeginCall"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 215
    invoke-static {v1}, Lcom/txznet/comm/T3/T/TJ;->TG(Z)Z

    goto :goto_0

    .line 218
    :cond_8
    const-string v0, "onEndCall"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {v3}, Lcom/txznet/comm/T3/T/TJ;->TG(Z)Z

    goto :goto_0
.end method

.method public static T2()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/txznet/comm/T3/T/TJ;->TN:Z

    return v0
.end method

.method static synthetic T2(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 14
    sput-boolean p0, Lcom/txznet/comm/T3/T/TJ;->TN:Z

    return p0
.end method

.method public static T3(Lcom/txznet/comm/T3/T/TJ$T3;)V
    .locals 3
    .param p0, "listener"    # Lcom/txznet/comm/T3/T/TJ$T3;

    .prologue
    .line 156
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/T3/T/TJ$14;

    invoke-direct {v1, p0}, Lcom/txznet/comm/T3/T/TJ$14;-><init>(Lcom/txznet/comm/T3/T/TJ$T3;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    .line 163
    return-void
.end method

.method public static T3()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/txznet/comm/T3/T/TJ;->T2:Z

    return v0
.end method

.method static synthetic T3(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 14
    sput-boolean p0, Lcom/txznet/comm/T3/T/TJ;->T2:Z

    return p0
.end method

.method private static TG(Z)Z
    .locals 3
    .param p0, "b"    # Z

    .prologue
    const/4 v2, 0x0

    .line 117
    sget-boolean v0, Lcom/txznet/comm/T3/T/TJ;->TN:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 118
    sput-boolean p0, Lcom/txznet/comm/T3/T/TJ;->TN:Z

    .line 119
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/T3/T/TJ$11;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/TJ$11;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    .line 139
    :cond_0
    :goto_0
    return p0

    .line 128
    :cond_1
    sget-boolean v0, Lcom/txznet/comm/T3/T/TJ;->TN:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p0, :cond_0

    .line 129
    sput-boolean p0, Lcom/txznet/comm/T3/T/TJ;->TN:Z

    .line 130
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/T3/T/TJ$12;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/TJ$12;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method static synthetic TN(Z)Z
    .locals 1
    .param p0, "x0"    # Z

    .prologue
    .line 14
    invoke-static {p0}, Lcom/txznet/comm/T3/T/TJ;->Ty(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic Te(Z)Z
    .locals 1
    .param p0, "x0"    # Z

    .prologue
    .line 14
    invoke-static {p0}, Lcom/txznet/comm/T3/T/TJ;->Tn(Z)Z

    move-result v0

    return v0
.end method

.method private static Tn(Z)Z
    .locals 3
    .param p0, "b"    # Z

    .prologue
    const/4 v2, 0x0

    .line 91
    sget-boolean v0, Lcom/txznet/comm/T3/T/TJ;->T2:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 92
    sput-boolean p0, Lcom/txznet/comm/T3/T/TJ;->T2:Z

    .line 93
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/T3/T/TJ$9;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/TJ$9;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    .line 113
    :cond_0
    :goto_0
    return p0

    .line 102
    :cond_1
    sget-boolean v0, Lcom/txznet/comm/T3/T/TJ;->T2:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p0, :cond_0

    .line 103
    sput-boolean p0, Lcom/txznet/comm/T3/T/TJ;->T2:Z

    .line 104
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/T3/T/TJ$10;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/TJ$10;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method static synthetic Tw(Z)Z
    .locals 1
    .param p0, "x0"    # Z

    .prologue
    .line 14
    invoke-static {p0}, Lcom/txznet/comm/T3/T/TJ;->TG(Z)Z

    move-result v0

    return v0
.end method

.method private static Ty(Z)Z
    .locals 3
    .param p0, "b"    # Z

    .prologue
    const/4 v2, 0x0

    .line 65
    sget-boolean v0, Lcom/txznet/comm/T3/T/TJ;->T3:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 66
    sput-boolean p0, Lcom/txznet/comm/T3/T/TJ;->T3:Z

    .line 67
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/T3/T/TJ$7;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/TJ$7;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    .line 87
    :cond_0
    :goto_0
    return p0

    .line 76
    :cond_1
    sget-boolean v0, Lcom/txznet/comm/T3/T/TJ;->T3:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p0, :cond_0

    .line 77
    sput-boolean p0, Lcom/txznet/comm/T3/T/TJ;->T3:Z

    .line 78
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/T3/T/TJ$8;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/TJ$8;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method
