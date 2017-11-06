.class public Lcom/txznet/comm/T3/T/TP;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/T3/T/TP$T2;,
        Lcom/txznet/comm/T3/T/TP$T;,
        Lcom/txznet/comm/T3/T/TP$T3;
    }
.end annotation


# static fields
.field public static T:I

.field private static final T2:Lcom/txznet/comm/T3/T/TP$T;

.field static T3:Ljava/lang/Runnable;

.field private static final TN:Lcom/txznet/comm/T3/T/TP$T3;

.field private static Te:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/txznet/comm/T3/T/TP$T2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    sput-object v1, Lcom/txznet/comm/T3/T/TP;->T2:Lcom/txznet/comm/T3/T/TP$T;

    .line 22
    sget-object v0, Lcom/txznet/comm/T3/T/TP$T3;->T:Lcom/txznet/comm/T3/T/TP$T3;

    sput-object v0, Lcom/txznet/comm/T3/T/TP;->TN:Lcom/txznet/comm/T3/T/TP$T3;

    .line 24
    const/4 v0, 0x4

    sput v0, Lcom/txznet/comm/T3/T/TP;->T:I

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    .line 412
    sput-object v1, Lcom/txznet/comm/T3/T/TP;->T3:Ljava/lang/Runnable;

    return-void
.end method

.method public static T(ILjava/lang/String;JLcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I
    .locals 7
    .param p0, "iStream"    # I
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "delay"    # J
    .param p4, "bPreempt"    # Lcom/txznet/comm/T3/T/TP$T3;
    .param p5, "oRun"    # Lcom/txznet/comm/T3/T/TP$T;

    .prologue
    .line 216
    const/4 v2, 0x0

    move v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/txznet/comm/T3/T/TP;->T(ILjava/lang/String;[Ljava/lang/String;JLcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I

    move-result v0

    return v0
.end method

.method public static T(ILjava/lang/String;Lcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I
    .locals 1
    .param p0, "iStream"    # I
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "bPreempt"    # Lcom/txznet/comm/T3/T/TP$T3;
    .param p3, "oRun"    # Lcom/txznet/comm/T3/T/TP$T;

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/txznet/comm/T3/T/TP;->T(ILjava/lang/String;[Ljava/lang/String;Lcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I

    move-result v0

    return v0
.end method

.method public static T(ILjava/lang/String;[Ljava/lang/String;JLcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I
    .locals 9
    .param p0, "iStream"    # I
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "voiceUrls"    # [Ljava/lang/String;
    .param p3, "delay"    # J
    .param p5, "bPreempt"    # Lcom/txznet/comm/T3/T/TP$T3;
    .param p6, "oRun"    # Lcom/txznet/comm/T3/T/TP$T;

    .prologue
    .line 290
    const-string v1, ""

    const/4 v2, 0x0

    move v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lcom/txznet/comm/T3/T/TP;->T(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;JLcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I

    move-result v0

    return v0
.end method

.method public static T(ILjava/lang/String;[Ljava/lang/String;Lcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I
    .locals 9
    .param p0, "iStream"    # I
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "voiceUrls"    # [Ljava/lang/String;
    .param p3, "bPreempt"    # Lcom/txznet/comm/T3/T/TP$T3;
    .param p4, "oRun"    # Lcom/txznet/comm/T3/T/TP$T;

    .prologue
    .line 286
    const-string v1, ""

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Lcom/txznet/comm/T3/T/TP;->T(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;JLcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I

    move-result v0

    return v0
.end method

.method public static T(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I
    .locals 7
    .param p0, "iStream"    # I
    .param p1, "resId"    # Ljava/lang/String;
    .param p2, "resArgs"    # [Ljava/lang/String;
    .param p3, "defaultText"    # Ljava/lang/String;
    .param p4, "bPreempt"    # Lcom/txznet/comm/T3/T/TP$T3;
    .param p5, "oRun"    # Lcom/txznet/comm/T3/T/TP$T;

    .prologue
    .line 242
    const/4 v4, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/txznet/comm/T3/T/TP;->T(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I

    move-result v0

    return v0
.end method

.method public static T(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;JLcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I
    .locals 12
    .param p0, "iStream"    # I
    .param p1, "resId"    # Ljava/lang/String;
    .param p2, "resArgs"    # [Ljava/lang/String;
    .param p3, "sText"    # Ljava/lang/String;
    .param p4, "voiceUrls"    # [Ljava/lang/String;
    .param p5, "delay"    # J
    .param p7, "bPreempt"    # Lcom/txznet/comm/T3/T/TP$T3;
    .param p8, "oRun"    # Lcom/txznet/comm/T3/T/TP$T;

    .prologue
    .line 298
    move v1, p0

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p7

    move-object v5, p1

    move-object v6, p2

    move-wide/from16 v7, p5

    invoke-static/range {v1 .. v8}, Lcom/txznet/comm/T3/T/TP;->T(ILjava/lang/String;[Ljava/lang/String;Lcom/txznet/comm/T3/T/TP$T3;Ljava/lang/String;[Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v9

    .line 299
    .local v9, "data":Ljava/lang/String;
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "comm.tts.speak"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    new-instance v5, Lcom/txznet/comm/T3/T/TP$2;

    move-object/from16 v0, p8

    invoke-direct {v5, v0}, Lcom/txznet/comm/T3/T/TP$2;-><init>(Lcom/txznet/comm/T3/T/TP$T;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    move-result v10

    .line 327
    .local v10, "localTtsId":I
    sget-object v2, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    monitor-enter v2

    .line 328
    :try_start_0
    sget-object v1, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/T3/T/TP$T2;

    move-object v11, v1

    .line 329
    .local v11, "remoteTtsTask":Lcom/txznet/comm/T3/T/TP$T2;
    :goto_0
    move-object/from16 v0, p8

    iput-object v0, v11, Lcom/txznet/comm/T3/T/TP$T2;->T2:Lcom/txznet/comm/T3/T/TP$T;

    .line 330
    sget-object v1, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    monitor-exit v2

    .line 332
    return v10

    .line 328
    .end local v11    # "remoteTtsTask":Lcom/txznet/comm/T3/T/TP$T2;
    :cond_0
    new-instance v11, Lcom/txznet/comm/T3/T/TP$T2;

    const/4 v1, 0x0

    invoke-direct {v11, v1}, Lcom/txznet/comm/T3/T/TP$T2;-><init>(Lcom/txznet/comm/T3/T/TP$1;)V

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static T(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I
    .locals 9
    .param p0, "iStream"    # I
    .param p1, "resId"    # Ljava/lang/String;
    .param p2, "resArgs"    # [Ljava/lang/String;
    .param p3, "defaultText"    # Ljava/lang/String;
    .param p4, "voiceUrls"    # [Ljava/lang/String;
    .param p5, "preempt"    # Lcom/txznet/comm/T3/T/TP$T3;
    .param p6, "oRun"    # Lcom/txznet/comm/T3/T/TP$T;

    .prologue
    .line 246
    const-wide/16 v5, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lcom/txznet/comm/T3/T/TP;->T(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;JLcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I

    move-result v0

    return v0
.end method

.method public static T(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/txznet/comm/T3/T/TP$T;)I
    .locals 7
    .param p0, "resId"    # Ljava/lang/String;
    .param p1, "resArgs"    # [Ljava/lang/String;
    .param p2, "defaultText"    # Ljava/lang/String;
    .param p3, "oRun"    # Lcom/txznet/comm/T3/T/TP$T;

    .prologue
    .line 234
    const/4 v0, -0x1

    const/4 v4, 0x0

    sget-object v5, Lcom/txznet/comm/T3/T/TP;->TN:Lcom/txznet/comm/T3/T/TP$T3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/txznet/comm/T3/T/TP;->T(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I

    move-result v0

    return v0
.end method

.method private static T(ILjava/lang/String;[Ljava/lang/String;Lcom/txznet/comm/T3/T/TP$T3;Ljava/lang/String;[Ljava/lang/String;J)Ljava/lang/String;
    .locals 4
    .param p0, "iStream"    # I
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "voiceUrls"    # [Ljava/lang/String;
    .param p3, "bPreempt"    # Lcom/txznet/comm/T3/T/TP$T3;
    .param p4, "resId"    # Ljava/lang/String;
    .param p5, "resArgs"    # [Ljava/lang/String;
    .param p6, "delay"    # J

    .prologue
    .line 486
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 487
    :cond_0
    new-instance v1, Lcom/txznet/comm/TN/T;

    invoke-direct {v1}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v2, "iStream"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    move-result-object v1

    const-string v2, "sText"

    invoke-virtual {v1, v2, p1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    move-result-object v1

    const-string v2, "voiceUrls"

    invoke-virtual {v1, v2, p2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    move-result-object v1

    const-string v2, "bPreempt"

    invoke-virtual {p3}, Lcom/txznet/comm/T3/T/TP$T3;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    move-result-object v1

    const-string v2, "delay"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v1

    .line 499
    :goto_0
    return-object v1

    .line 489
    :cond_1
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 490
    .local v0, "builder":Lcom/txznet/comm/TN/T;
    const-string v1, "iStream"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 491
    const-string v1, "sText"

    invoke-virtual {v0, v1, p1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 492
    const-string v1, "voiceUrls"

    invoke-virtual {v0, v1, p2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 493
    const-string v1, "bPreempt"

    invoke-virtual {p3}, Lcom/txznet/comm/T3/T/TP$T3;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 494
    const-string v1, "resId"

    invoke-virtual {v0, v1, p4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 495
    const-string v1, "delay"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 496
    if-eqz p5, :cond_2

    .line 497
    const-string v1, "resArgs"

    invoke-virtual {v0, v1, p5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 499
    :cond_2
    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static T()V
    .locals 2

    .prologue
    .line 139
    const-string v0, "comm.tts."

    new-instance v1, Lcom/txznet/comm/T3/T/TP$1;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/TP$1;-><init>()V

    invoke-static {v0, v1}, Lcom/txznet/txz/T/TN;->T(Ljava/lang/String;Lcom/txznet/txz/T/TN$T;)V

    .line 181
    return-void
.end method

.method public static T(I)V
    .locals 7
    .param p0, "iTaskId"    # I

    .prologue
    .line 336
    sget-object v2, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    monitor-enter v2

    .line 337
    :try_start_0
    sget-object v1, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txznet/comm/T3/T/TP$T2;

    .line 338
    .local v0, "task":Lcom/txznet/comm/T3/T/TP$T2;
    if-eqz v0, :cond_1

    .line 340
    iget-object v1, v0, Lcom/txznet/comm/T3/T/TP$T2;->T2:Lcom/txznet/comm/T3/T/TP$T;

    if-eqz v1, :cond_0

    .line 341
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    new-instance v3, Lcom/txznet/comm/T3/T/TP$3;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/txznet/comm/T3/T/TP$3;-><init>(Lcom/txznet/comm/T3/T/TP$T2;Ljava/lang/Integer;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    .line 351
    :cond_0
    iget v1, v0, Lcom/txznet/comm/T3/T/TP$T2;->T:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 352
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/txznet/comm/T3/T/TP$T2;->T3:Z

    .line 360
    :cond_1
    :goto_0
    monitor-exit v2

    .line 361
    return-void

    .line 354
    :cond_2
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v3, "com.txznet.txz"

    const-string v4, "comm.tts.cancel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/txznet/comm/T3/T/TP$T2;->T:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 355
    iget-object v1, v0, Lcom/txznet/comm/T3/T/TP$T2;->T2:Lcom/txznet/comm/T3/T/TP$T;

    if-nez v1, :cond_1

    .line 356
    sget-object v1, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 360
    .end local v0    # "task":Lcom/txznet/comm/T3/T/TP$T2;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static T(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 7
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "remoteTtsId"    # I
    .param p2, "iError"    # Ljava/lang/Integer;

    .prologue
    .line 364
    sget-object v4, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    monitor-enter v4

    .line 365
    :try_start_0
    sget-object v3, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 366
    .local v1, "key":Ljava/lang/Integer;
    sget-object v3, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txznet/comm/T3/T/TP$T2;

    .line 367
    .local v2, "task":Lcom/txznet/comm/T3/T/TP$T2;
    iget v3, v2, Lcom/txznet/comm/T3/T/TP$T2;->T:I

    if-ne v3, p1, :cond_0

    .line 368
    iget-object v3, v2, Lcom/txznet/comm/T3/T/TP$T2;->T2:Lcom/txznet/comm/T3/T/TP$T;

    if-eqz v3, :cond_1

    .line 369
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v3

    new-instance v5, Lcom/txznet/comm/T3/T/TP$4;

    invoke-direct {v5, p0, v2, p2}, Lcom/txznet/comm/T3/T/TP$4;-><init>(Ljava/lang/String;Lcom/txznet/comm/T3/T/TP$T2;Ljava/lang/Integer;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    .line 385
    :cond_1
    sget-object v3, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    monitor-exit v4

    .line 390
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v2    # "task":Lcom/txznet/comm/T3/T/TP$T2;
    :goto_0
    return-void

    .line 389
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    const/4 v5, 0x0

    .line 393
    const-string v3, "speakTextOnRecordWin.end"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 394
    sget-object v3, Lcom/txznet/comm/T3/T/TP;->T3:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 395
    sget-object v3, Lcom/txznet/comm/T3/T/TP;->T3:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 409
    :cond_0
    :goto_0
    return-object v5

    .line 399
    :cond_1
    new-instance v1, Lcom/txznet/comm/TN/T;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v3}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    .line 400
    .local v1, "jsonDoc":Lcom/txznet/comm/TN/T;
    const-string v3, "ttsId"

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 401
    .local v2, "ttsId":I
    const-string v3, "success"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 402
    const-string v3, "success"

    invoke-static {v3, v2, v5}, Lcom/txznet/comm/T3/T/TP;->T(Ljava/lang/String;ILjava/lang/Integer;)V

    goto :goto_0

    .line 403
    :cond_2
    const-string v3, "cancel"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 404
    const-string v3, "cancel"

    invoke-static {v3, v2, v5}, Lcom/txznet/comm/T3/T/TP;->T(Ljava/lang/String;ILjava/lang/Integer;)V

    goto :goto_0

    .line 405
    :cond_3
    const-string v3, "error"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    const-string v3, "error"

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 407
    .local v0, "error":I
    const-string v3, "success"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/txznet/comm/T3/T/TP;->T(Ljava/lang/String;ILjava/lang/Integer;)V

    goto :goto_0
.end method

.method static synthetic T3()Ljava/util/Map;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    return-object v0
.end method
