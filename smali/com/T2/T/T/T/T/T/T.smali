.class final Lcom/T2/T/T/T/T/T/T;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/T2/T/T/T/T/T/T$T;,
        Lcom/T2/T/T/T/T/T/T$T3;
    }
.end annotation


# static fields
.field static final T:Ljava/util/regex/Pattern;

.field private static final To:Ljava/io/OutputStream;


# instance fields
.field private final T2:Ljava/io/File;

.field final T3:Ljava/util/concurrent/ThreadPoolExecutor;

.field private T7:J

.field private TB:Ljava/io/Writer;

.field private TG:I

.field private TJ:I

.field private final TN:Ljava/io/File;

.field private final TO:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final TP:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/T2/T/T/T/T/T/T$T3;",
            ">;"
        }
    .end annotation
.end field

.field private final TR:I

.field private TW:J

.field private final Te:Ljava/io/File;

.field private Tn:J

.field private Tr:I

.field private final Tw:Ljava/io/File;

.field private final Ty:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "[a-z0-9_-]{1,64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/T2/T/T/T/T/T/T;->T:Ljava/util/regex/Pattern;

    .line 757
    new-instance v0, Lcom/T2/T/T/T/T/T/T$2;

    invoke-direct {v0}, Lcom/T2/T/T/T/T/T/T$2;-><init>()V

    sput-object v0, Lcom/T2/T/T/T/T/T/T;->To:Ljava/io/OutputStream;

    .line 762
    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJI)V
    .locals 7
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J
    .param p6, "maxFileCount"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-wide v4, p0, Lcom/T2/T/T/T/T/T/T;->TW:J

    .line 149
    iput v1, p0, Lcom/T2/T/T/T/T/T/T;->TJ:I

    .line 152
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    .line 160
    iput-wide v4, p0, Lcom/T2/T/T/T/T/T/T;->T7:J

    .line 164
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/T2/T/T/T/T/T/T;->T3:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 165
    new-instance v0, Lcom/T2/T/T/T/T/T/T$1;

    invoke-direct {v0, p0}, Lcom/T2/T/T/T/T/T/T$1;-><init>(Lcom/T2/T/T/T/T/T/T;)V

    iput-object v0, p0, Lcom/T2/T/T/T/T/T/T;->TO:Ljava/util/concurrent/Callable;

    .line 183
    iput-object p1, p0, Lcom/T2/T/T/T/T/T/T;->T2:Ljava/io/File;

    .line 184
    iput p2, p0, Lcom/T2/T/T/T/T/T/T;->Ty:I

    .line 185
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/T2/T/T/T/T/T/T;->TN:Ljava/io/File;

    .line 186
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/T2/T/T/T/T/T/T;->Te:Ljava/io/File;

    .line 187
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/T2/T/T/T/T/T/T;->Tw:Ljava/io/File;

    .line 188
    iput p3, p0, Lcom/T2/T/T/T/T/T/T;->TR:I

    .line 189
    iput-wide p4, p0, Lcom/T2/T/T/T/T/T/T;->Tn:J

    .line 190
    iput p6, p0, Lcom/T2/T/T/T/T/T/T;->TG:I

    .line 191
    return-void
.end method

.method public static T(Ljava/io/File;IIJI)Lcom/T2/T/T/T/T/T/T;
    .locals 11
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J
    .param p5, "maxFileCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gtz v1, :cond_0

    .line 206
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_0
    if-gtz p5, :cond_1

    .line 209
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxFileCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_1
    if-gtz p2, :cond_2

    .line 212
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_2
    new-instance v7, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v7, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    .local v7, "backupFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    new-instance v9, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v9, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    .local v9, "journalFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 221
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 228
    .end local v9    # "journalFile":Ljava/io/File;
    :cond_3
    :goto_0
    new-instance v0, Lcom/T2/T/T/T/T/T/T;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/T2/T/T/T/T/T/T;-><init>(Ljava/io/File;IIJI)V

    .line 229
    .local v0, "cache":Lcom/T2/T/T/T/T/T/T;
    iget-object v1, v0, Lcom/T2/T/T/T/T/T/T;->TN:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 231
    :try_start_0
    invoke-direct {v0}, Lcom/T2/T/T/T/T/T/T;->Te()V

    .line 232
    invoke-direct {v0}, Lcom/T2/T/T/T/T/T/T;->Tw()V

    .line 233
    new-instance v1, Ljava/io/BufferedWriter;

    .line 234
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/T2/T/T/T/T/T/T;->TN:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/T2/T/T/T/T/T/TN;->T:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 233
    iput-object v1, v0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v0

    .line 251
    .end local v0    # "cache":Lcom/T2/T/T/T/T/T/T;
    .local v8, "cache":Ljava/lang/Object;
    :goto_1
    return-object v8

    .line 223
    .end local v8    # "cache":Ljava/lang/Object;
    .restart local v9    # "journalFile":Ljava/io/File;
    :cond_4
    const/4 v1, 0x0

    invoke-static {v7, v9, v1}, Lcom/T2/T/T/T/T/T/T;->T(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    .line 236
    .end local v9    # "journalFile":Ljava/io/File;
    .restart local v0    # "cache":Lcom/T2/T/T/T/T/T/T;
    :catch_0
    move-exception v10

    .line 237
    .local v10, "journalIsCorrupt":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DiskLruCache "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 240
    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 241
    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 242
    const-string v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 238
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Lcom/T2/T/T/T/T/T/T;->TN()V

    .line 248
    .end local v10    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 249
    new-instance v0, Lcom/T2/T/T/T/T/T/T;

    .end local v0    # "cache":Lcom/T2/T/T/T/T/T/T;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/T2/T/T/T/T/T/T;-><init>(Ljava/io/File;IIJI)V

    .line 250
    .restart local v0    # "cache":Lcom/T2/T/T/T/T/T/T;
    invoke-direct {v0}, Lcom/T2/T/T/T/T/T/T;->Ty()V

    move-object v8, v0

    .line 251
    .restart local v8    # "cache":Ljava/lang/Object;
    goto :goto_1
.end method

.method static synthetic T(Lcom/T2/T/T/T/T/T/T;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;

    return-object v0
.end method

.method private declared-synchronized T(Lcom/T2/T/T/T/T/T/T$T;Z)V
    .locals 12
    .param p1, "editor"    # Lcom/T2/T/T/T/T/T/T$T;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/T2/T/T/T/T/T/T$T;->T(Lcom/T2/T/T/T/T/T/T$T;)Lcom/T2/T/T/T/T/T/T$T3;

    move-result-object v2

    .line 536
    .local v2, "entry":Lcom/T2/T/T/T/T/T/T$T3;
    invoke-static {v2}, Lcom/T2/T/T/T/T/T/T$T3;->T3(Lcom/T2/T/T/T/T/T/T$T3;)Lcom/T2/T/T/T/T/T/T$T;

    move-result-object v8

    if-eq v8, p1, :cond_0

    .line 537
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    .end local v2    # "entry":Lcom/T2/T/T/T/T/T/T$T3;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 541
    .restart local v2    # "entry":Lcom/T2/T/T/T/T/T/T$T3;
    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    invoke-static {v2}, Lcom/T2/T/T/T/T/T/T$T3;->T(Lcom/T2/T/T/T/T/T/T$T3;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 542
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v8, p0, Lcom/T2/T/T/T/T/T/T;->TR:I

    if-lt v3, v8, :cond_5

    .line 554
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget v8, p0, Lcom/T2/T/T/T/T/T/T;->TR:I

    if-lt v3, v8, :cond_8

    .line 571
    iget v8, p0, Lcom/T2/T/T/T/T/T/T;->Tr:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/T2/T/T/T/T/T/T;->Tr:I

    .line 572
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/T2/T/T/T/T/T/T$T3;->T(Lcom/T2/T/T/T/T/T/T$T3;Lcom/T2/T/T/T/T/T/T$T;)V

    .line 573
    invoke-static {v2}, Lcom/T2/T/T/T/T/T/T$T3;->T(Lcom/T2/T/T/T/T/T/T$T3;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_b

    .line 574
    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/T2/T/T/T/T/T/T$T3;->T(Lcom/T2/T/T/T/T/T/T$T3;Z)V

    .line 575
    iget-object v8, p0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CLEAN "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/T2/T/T/T/T/T/T$T3;->T2(Lcom/T2/T/T/T/T/T/T$T3;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/T2/T/T/T/T/T/T$T3;->T()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 576
    if-eqz p2, :cond_2

    .line 577
    iget-wide v8, p0, Lcom/T2/T/T/T/T/T/T;->T7:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/T2/T/T/T/T/T/T;->T7:J

    invoke-static {v2, v8, v9}, Lcom/T2/T/T/T/T/T/T$T3;->T(Lcom/T2/T/T/T/T/T/T$T3;J)V

    .line 583
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;

    invoke-virtual {v8}, Ljava/io/Writer;->flush()V

    .line 585
    iget-wide v8, p0, Lcom/T2/T/T/T/T/T/T;->TW:J

    iget-wide v10, p0, Lcom/T2/T/T/T/T/T/T;->Tn:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_3

    iget v8, p0, Lcom/T2/T/T/T/T/T/T;->TJ:I

    iget v9, p0, Lcom/T2/T/T/T/T/T/T;->TG:I

    if-gt v8, v9, :cond_3

    invoke-direct {p0}, Lcom/T2/T/T/T/T/T/T;->Tn()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 586
    :cond_3
    iget-object v8, p0, Lcom/T2/T/T/T/T/T/T;->T3:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v9, p0, Lcom/T2/T/T/T/T/T/T;->TO:Ljava/util/concurrent/Callable;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 588
    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    .line 543
    :cond_5
    :try_start_2
    invoke-static {p1}, Lcom/T2/T/T/T/T/T/T$T;->T3(Lcom/T2/T/T/T/T/T/T$T;)[Z

    move-result-object v8

    aget-boolean v8, v8, v3

    if-nez v8, :cond_6

    .line 544
    invoke-virtual {p1}, Lcom/T2/T/T/T/T/T/T$T;->T()V

    .line 545
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Newly created entry didn\'t create value for index "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 547
    :cond_6
    invoke-virtual {v2, v3}, Lcom/T2/T/T/T/T/T/T$T3;->T3(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_7

    .line 548
    invoke-virtual {p1}, Lcom/T2/T/T/T/T/T/T$T;->T()V

    goto :goto_3

    .line 542
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 555
    :cond_8
    invoke-virtual {v2, v3}, Lcom/T2/T/T/T/T/T/T$T3;->T3(I)Ljava/io/File;

    move-result-object v1

    .line 556
    .local v1, "dirty":Ljava/io/File;
    if-eqz p2, :cond_a

    .line 557
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 558
    invoke-virtual {v2, v3}, Lcom/T2/T/T/T/T/T/T$T3;->T(I)Ljava/io/File;

    move-result-object v0

    .line 559
    .local v0, "clean":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 560
    invoke-static {v2}, Lcom/T2/T/T/T/T/T/T$T3;->TN(Lcom/T2/T/T/T/T/T/T$T3;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 561
    .local v6, "oldLength":J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 562
    .local v4, "newLength":J
    invoke-static {v2}, Lcom/T2/T/T/T/T/T/T$T3;->TN(Lcom/T2/T/T/T/T/T/T$T3;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 563
    iget-wide v8, p0, Lcom/T2/T/T/T/T/T/T;->TW:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/T2/T/T/T/T/T/T;->TW:J

    .line 564
    iget v8, p0, Lcom/T2/T/T/T/T/T/T;->TJ:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/T2/T/T/T/T/T/T;->TJ:I

    .line 554
    .end local v0    # "clean":Ljava/io/File;
    .end local v4    # "newLength":J
    .end local v6    # "oldLength":J
    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 567
    :cond_a
    invoke-static {v1}, Lcom/T2/T/T/T/T/T/T;->T(Ljava/io/File;)V

    goto :goto_4

    .line 580
    .end local v1    # "dirty":Ljava/io/File;
    :cond_b
    iget-object v8, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/T2/T/T/T/T/T/T$T3;->T2(Lcom/T2/T/T/T/T/T/T$T3;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    iget-object v8, p0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "REMOVE "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/T2/T/T/T/T/T/T$T3;->T2(Lcom/T2/T/T/T/T/T/T$T3;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method static synthetic T(Lcom/T2/T/T/T/T/T/T;I)V
    .locals 0

    .prologue
    .line 153
    iput p1, p0, Lcom/T2/T/T/T/T/T/T;->Tr:I

    return-void
.end method

.method static synthetic T(Lcom/T2/T/T/T/T/T/T;Lcom/T2/T/T/T/T/T/T$T;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    invoke-direct {p0, p1, p2}, Lcom/T2/T/T/T/T/T/T;->T(Lcom/T2/T/T/T/T/T/T$T;Z)V

    return-void
.end method

.method private static T(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 396
    :cond_0
    return-void
.end method

.method private static T(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .param p2, "deleteDestination"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    if-eqz p2, :cond_0

    .line 400
    invoke-static {p1}, Lcom/T2/T/T/T/T/T/T;->T(Ljava/io/File;)V

    .line 402
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 403
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 405
    :cond_1
    return-void
.end method

.method static synthetic T2(Lcom/T2/T/T/T/T/T/T;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    invoke-direct {p0}, Lcom/T2/T/T/T/T/T/T;->TW()V

    return-void
.end method

.method private T2(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 695
    sget-object v1, Lcom/T2/T/T/T/T/T/T;->T:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 696
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 697
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "keys must match regex [a-z0-9_-]{1,64}: \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 699
    :cond_0
    return-void
.end method

.method static synthetic T3(Lcom/T2/T/T/T/T/T/T;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/T2/T/T/T/T/T/T;->TR()V

    return-void
.end method

.method private T3(Ljava/lang/String;)V
    .locals 9
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x20

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 287
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 288
    .local v1, "firstSpace":I
    if-ne v1, v7, :cond_0

    .line 289
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unexpected journal line: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 292
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 293
    .local v3, "keyBegin":I
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 295
    .local v5, "secondSpace":I
    if-ne v5, v7, :cond_2

    .line 296
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "key":Ljava/lang/String;
    const-string v6, "REMOVE"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_3

    const-string v6, "REMOVE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 298
    iget-object v6, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_1
    :goto_0
    return-void

    .line 302
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 305
    .restart local v2    # "key":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/T2/T/T/T/T/T/T$T3;

    .line 306
    .local v0, "entry":Lcom/T2/T/T/T/T/T/T$T3;
    if-nez v0, :cond_4

    .line 307
    new-instance v0, Lcom/T2/T/T/T/T/T/T$T3;

    .end local v0    # "entry":Lcom/T2/T/T/T/T/T/T$T3;
    invoke-direct {v0, p0, v2, v8}, Lcom/T2/T/T/T/T/T/T$T3;-><init>(Lcom/T2/T/T/T/T/T/T;Ljava/lang/String;Lcom/T2/T/T/T/T/T/T$T3;)V

    .line 308
    .restart local v0    # "entry":Lcom/T2/T/T/T/T/T/T$T3;
    iget-object v6, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_4
    if-eq v5, v7, :cond_5

    const-string v6, "CLEAN"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_5

    const-string v6, "CLEAN"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 312
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 313
    .local v4, "parts":[Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v0, v6}, Lcom/T2/T/T/T/T/T/T$T3;->T(Lcom/T2/T/T/T/T/T/T$T3;Z)V

    .line 314
    invoke-static {v0, v8}, Lcom/T2/T/T/T/T/T/T$T3;->T(Lcom/T2/T/T/T/T/T/T$T3;Lcom/T2/T/T/T/T/T/T$T;)V

    .line 315
    invoke-static {v0, v4}, Lcom/T2/T/T/T/T/T/T$T3;->T(Lcom/T2/T/T/T/T/T/T$T3;[Ljava/lang/String;)V

    goto :goto_0

    .line 316
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_5
    if-ne v5, v7, :cond_6

    const-string v6, "DIRTY"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_6

    const-string v6, "DIRTY"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 317
    new-instance v6, Lcom/T2/T/T/T/T/T/T$T;

    invoke-direct {v6, p0, v0, v8}, Lcom/T2/T/T/T/T/T/T$T;-><init>(Lcom/T2/T/T/T/T/T/T;Lcom/T2/T/T/T/T/T/T$T3;Lcom/T2/T/T/T/T/T/T$T;)V

    invoke-static {v0, v6}, Lcom/T2/T/T/T/T/T/T$T3;->T(Lcom/T2/T/T/T/T/T/T$T3;Lcom/T2/T/T/T/T/T/T$T;)V

    goto :goto_0

    .line 318
    :cond_6
    if-ne v5, v7, :cond_7

    const-string v6, "READ"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_7

    const-string v6, "READ"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 321
    :cond_7
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unexpected journal line: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private TG()V
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 642
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_0
    return-void
.end method

.method static synthetic TN(Lcom/T2/T/T/T/T/T/T;)Z
    .locals 1

    .prologue
    .line 594
    invoke-direct {p0}, Lcom/T2/T/T/T/T/T/T;->Tn()Z

    move-result v0

    return v0
.end method

.method private TR()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 671
    :goto_0
    iget-wide v1, p0, Lcom/T2/T/T/T/T/T/T;->TW:J

    iget-wide v3, p0, Lcom/T2/T/T/T/T/T/T;->Tn:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 675
    return-void

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 673
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/T2/T/T/T/T/T/T$T3;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/T2/T/T/T/T/T/T;->T(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private TW()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 678
    :goto_0
    iget v1, p0, Lcom/T2/T/T/T/T/T/T;->TJ:I

    iget v2, p0, Lcom/T2/T/T/T/T/T/T;->TG:I

    if-gt v1, v2, :cond_0

    .line 682
    return-void

    .line 679
    :cond_0
    iget-object v1, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 680
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/T2/T/T/T/T/T/T$T3;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/T2/T/T/T/T/T/T;->T(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private Te()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    new-instance v4, Lcom/T2/T/T/T/T/T/T2;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/T2/T/T/T/T/T/T;->TN:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v8, Lcom/T2/T/T/T/T/T/TN;->T:Ljava/nio/charset/Charset;

    invoke-direct {v4, v7, v8}, Lcom/T2/T/T/T/T/T/T2;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 257
    .local v4, "reader":Lcom/T2/T/T/T/T/T/T2;
    :try_start_0
    invoke-virtual {v4}, Lcom/T2/T/T/T/T/T/T2;->T()Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "magic":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/T2/T/T/T/T/T/T2;->T()Ljava/lang/String;

    move-result-object v6

    .line 259
    .local v6, "version":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/T2/T/T/T/T/T/T2;->T()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/T2/T/T/T/T/T/T2;->T()Ljava/lang/String;

    move-result-object v5

    .line 261
    .local v5, "valueCountString":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/T2/T/T/T/T/T/T2;->T()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "blank":Ljava/lang/String;
    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 263
    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 264
    iget v7, p0, Lcom/T2/T/T/T/T/T/T;->Ty:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 265
    iget v7, p0, Lcom/T2/T/T/T/T/T/T;->TR:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 266
    const-string v7, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 267
    :cond_0
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "unexpected journal header: ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 268
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 267
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v3    # "magic":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v7

    .line 282
    invoke-static {v4}, Lcom/T2/T/T/T/T/T/TN;->T(Ljava/io/Closeable;)V

    .line 283
    throw v7

    .line 271
    .restart local v0    # "appVersionString":Ljava/lang/String;
    .restart local v1    # "blank":Ljava/lang/String;
    .restart local v3    # "magic":Ljava/lang/String;
    .restart local v5    # "valueCountString":Ljava/lang/String;
    .restart local v6    # "version":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 274
    .local v2, "lineCount":I
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lcom/T2/T/T/T/T/T/T2;->T()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/T2/T/T/T/T/T/T;->T3(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    :catch_0
    move-exception v7

    .line 280
    :try_start_2
    iget-object v7, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    sub-int v7, v2, v7

    iput v7, p0, Lcom/T2/T/T/T/T/T/T;->Tr:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    invoke-static {v4}, Lcom/T2/T/T/T/T/T/TN;->T(Ljava/io/Closeable;)V

    .line 284
    return-void
.end method

.method static synthetic Te(Lcom/T2/T/T/T/T/T/T;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/T2/T/T/T/T/T/T;->Ty()V

    return-void
.end method

.method private Tn()Z
    .locals 3

    .prologue
    .line 595
    const/16 v0, 0x7d0

    .line 596
    .local v0, "redundantOpCompactThreshold":I
    iget v1, p0, Lcom/T2/T/T/T/T/T/T;->Tr:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    .line 597
    iget v1, p0, Lcom/T2/T/T/T/T/T/T;->Tr:I

    iget-object v2, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    .line 596
    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic Tw(Lcom/T2/T/T/T/T/T/T;)I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/T2/T/T/T/T/T/T;->TR:I

    return v0
.end method

.method private Tw()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    iget-object v3, p0, Lcom/T2/T/T/T/T/T/T;->Te:Ljava/io/File;

    invoke-static {v3}, Lcom/T2/T/T/T/T/T/T;->T(Ljava/io/File;)V

    .line 331
    iget-object v3, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/T2/T/T/T/T/T/T$T3;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 347
    return-void

    .line 332
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/T2/T/T/T/T/T/T$T3;

    .line 333
    .local v0, "entry":Lcom/T2/T/T/T/T/T/T$T3;
    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T$T3;->T3(Lcom/T2/T/T/T/T/T/T$T3;)Lcom/T2/T/T/T/T/T/T$T;

    move-result-object v3

    if-nez v3, :cond_2

    .line 334
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, p0, Lcom/T2/T/T/T/T/T/T;->TR:I

    if-ge v2, v3, :cond_0

    .line 335
    iget-wide v3, p0, Lcom/T2/T/T/T/T/T/T;->TW:J

    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T$T3;->TN(Lcom/T2/T/T/T/T/T/T$T3;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/T2/T/T/T/T/T/T;->TW:J

    .line 336
    iget v3, p0, Lcom/T2/T/T/T/T/T/T;->TJ:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/T2/T/T/T/T/T/T;->TJ:I

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 339
    .end local v2    # "t":I
    :cond_2
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/T2/T/T/T/T/T/T$T3;->T(Lcom/T2/T/T/T/T/T/T$T3;Lcom/T2/T/T/T/T/T/T$T;)V

    .line 340
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lcom/T2/T/T/T/T/T/T;->TR:I

    if-lt v2, v3, :cond_3

    .line 344
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 341
    :cond_3
    invoke-virtual {v0, v2}, Lcom/T2/T/T/T/T/T/T$T3;->T(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/T2/T/T/T/T/T/T;->T(Ljava/io/File;)V

    .line 342
    invoke-virtual {v0, v2}, Lcom/T2/T/T/T/T/T/T$T3;->T3(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/T2/T/T/T/T/T/T;->T(Ljava/io/File;)V

    .line 340
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method static synthetic Ty(Lcom/T2/T/T/T/T/T/T;)Ljava/io/File;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T;->T2:Ljava/io/File;

    return-object v0
.end method

.method private declared-synchronized Ty()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;

    if-eqz v2, :cond_0

    .line 355
    iget-object v2, p0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 358
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    .line 359
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/T2/T/T/T/T/T/T;->Te:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v4, Lcom/T2/T/T/T/T/T/TN;->T:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 358
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 361
    .local v1, "writer":Ljava/io/Writer;
    :try_start_1
    const-string v2, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 362
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 363
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 364
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 365
    iget v2, p0, Lcom/T2/T/T/T/T/T/T;->Ty:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 366
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 367
    iget v2, p0, Lcom/T2/T/T/T/T/T/T;->TR:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 368
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 369
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 371
    iget-object v2, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 379
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 382
    iget-object v2, p0, Lcom/T2/T/T/T/T/T/T;->TN:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    iget-object v2, p0, Lcom/T2/T/T/T/T/T/T;->TN:Ljava/io/File;

    iget-object v3, p0, Lcom/T2/T/T/T/T/T/T;->Tw:Ljava/io/File;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/T2/T/T/T/T/T/T;->T(Ljava/io/File;Ljava/io/File;Z)V

    .line 385
    :cond_1
    iget-object v2, p0, Lcom/T2/T/T/T/T/T/T;->Te:Ljava/io/File;

    iget-object v3, p0, Lcom/T2/T/T/T/T/T/T;->TN:Ljava/io/File;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/T2/T/T/T/T/T/T;->T(Ljava/io/File;Ljava/io/File;Z)V

    .line 386
    iget-object v2, p0, Lcom/T2/T/T/T/T/T/T;->Tw:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 388
    new-instance v2, Ljava/io/BufferedWriter;

    .line 389
    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/T2/T/T/T/T/T/T;->TN:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v5, Lcom/T2/T/T/T/T/T/TN;->T:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 388
    iput-object v2, p0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 390
    monitor-exit p0

    return-void

    .line 371
    :cond_2
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/T2/T/T/T/T/T/T$T3;

    .line 372
    .local v0, "entry":Lcom/T2/T/T/T/T/T/T$T3;
    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T$T3;->T3(Lcom/T2/T/T/T/T/T/T$T3;)Lcom/T2/T/T/T/T/T/T$T;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T$T3;->T2(Lcom/T2/T/T/T/T/T/T$T3;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 378
    .end local v0    # "entry":Lcom/T2/T/T/T/T/T/T$T3;
    :catchall_0
    move-exception v2

    .line 379
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 380
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 354
    .end local v1    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 375
    .restart local v0    # "entry":Lcom/T2/T/T/T/T/T/T$T3;
    .restart local v1    # "writer":Ljava/io/Writer;
    :cond_3
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CLEAN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T$T3;->T2(Lcom/T2/T/T/T/T/T/T$T3;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/T2/T/T/T/T/T/T$T3;->T()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public T()Ljava/io/File;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T;->T2:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized T(Ljava/lang/String;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/T2/T/T/T/T/T/T;->TG()V

    .line 608
    invoke-direct {p0, p1}, Lcom/T2/T/T/T/T/T/T;->T2(Ljava/lang/String;)V

    .line 609
    iget-object v3, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/T2/T/T/T/T/T/T$T3;

    .line 610
    .local v0, "entry":Lcom/T2/T/T/T/T/T/T$T3;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T$T3;->T3(Lcom/T2/T/T/T/T/T/T$T3;)Lcom/T2/T/T/T/T/T/T$T;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    .line 611
    :cond_0
    const/4 v3, 0x0

    .line 632
    :goto_0
    monitor-exit p0

    return v3

    .line 614
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/T2/T/T/T/T/T/T;->TR:I

    if-lt v2, v3, :cond_3

    .line 624
    iget v3, p0, Lcom/T2/T/T/T/T/T/T;->Tr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/T2/T/T/T/T/T/T;->Tr:I

    .line 625
    iget-object v3, p0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "REMOVE "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 626
    iget-object v3, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    invoke-direct {p0}, Lcom/T2/T/T/T/T/T/T;->Tn()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 629
    iget-object v3, p0, Lcom/T2/T/T/T/T/T/T;->T3:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v4, p0, Lcom/T2/T/T/T/T/T/T;->TO:Ljava/util/concurrent/Callable;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 632
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 615
    :cond_3
    invoke-virtual {v0, v2}, Lcom/T2/T/T/T/T/T/T$T3;->T(I)Ljava/io/File;

    move-result-object v1

    .line 616
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_4

    .line 617
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "failed to delete "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 607
    .end local v0    # "entry":Lcom/T2/T/T/T/T/T/T$T3;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 619
    .restart local v0    # "entry":Lcom/T2/T/T/T/T/T/T$T3;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    :cond_4
    :try_start_2
    iget-wide v3, p0, Lcom/T2/T/T/T/T/T/T;->TW:J

    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T$T3;->TN(Lcom/T2/T/T/T/T/T/T$T3;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/T2/T/T/T/T/T/T;->TW:J

    .line 620
    iget v3, p0, Lcom/T2/T/T/T/T/T/T;->TJ:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/T2/T/T/T/T/T/T;->TJ:I

    .line 621
    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T$T3;->TN(Lcom/T2/T/T/T/T/T/T$T3;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 614
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public declared-synchronized T2()I
    .locals 1

    .prologue
    .line 504
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/T2/T/T/T/T/T/T;->TG:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized T3()J
    .locals 2

    .prologue
    .line 499
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/T2/T/T/T/T/T/T;->Tn:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public TN()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/T2/T/T/T/T/T/T;->close()V

    .line 691
    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T;->T2:Ljava/io/File;

    invoke-static {v0}, Lcom/T2/T/T/T/T/T/TN;->T(Ljava/io/File;)V

    .line 692
    return-void
.end method

.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 656
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 668
    :goto_0
    monitor-exit p0

    return-void

    .line 659
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 664
    invoke-direct {p0}, Lcom/T2/T/T/T/T/T/T;->TR()V

    .line 665
    invoke-direct {p0}, Lcom/T2/T/T/T/T/T/T;->TW()V

    .line 666
    iget-object v1, p0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 667
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 656
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 659
    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/T2/T/T/T/T/T/T$T3;

    .line 660
    .local v0, "entry":Lcom/T2/T/T/T/T/T/T$T3;
    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T$T3;->T3(Lcom/T2/T/T/T/T/T/T$T3;)Lcom/T2/T/T/T/T/T/T$T;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 661
    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T$T3;->T3(Lcom/T2/T/T/T/T/T/T$T3;)Lcom/T2/T/T/T/T/T/T$T;

    move-result-object v2

    invoke-virtual {v2}, Lcom/T2/T/T/T/T/T/T$T;->T()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
