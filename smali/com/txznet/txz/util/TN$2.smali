.class final Lcom/txznet/txz/util/TN$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/txz/util/TN;->T(Ljava/lang/String;[Lcom/txznet/txz/util/TN$T3;J)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic T:Ljava/util/zip/ZipFile;

.field final synthetic T2:Landroid/os/HandlerThread;

.field final synthetic T3:Lcom/txznet/txz/util/TN$T;


# direct methods
.method constructor <init>(Ljava/util/zip/ZipFile;Lcom/txznet/txz/util/TN$T;Landroid/os/HandlerThread;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/txznet/txz/util/TN$2;->T:Ljava/util/zip/ZipFile;

    iput-object p2, p0, Lcom/txznet/txz/util/TN$2;->T3:Lcom/txznet/txz/util/TN$T;

    iput-object p3, p0, Lcom/txznet/txz/util/TN$2;->T2:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/txznet/txz/util/TN$2;->T:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :goto_0
    iget-object v0, p0, Lcom/txznet/txz/util/TN$2;->T3:Lcom/txznet/txz/util/TN$T;

    iget-boolean v0, v0, Lcom/txznet/txz/util/TN$T;->T:Z

    if-eqz v0, :cond_0

    .line 623
    const-string v0, "check unzip file failed, restarting..."

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    .line 624
    invoke-static {}, Lcom/txznet/T/T;->Tn()V

    .line 628
    :goto_1
    iget-object v0, p0, Lcom/txznet/txz/util/TN$2;->T2:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 629
    return-void

    .line 626
    :cond_0
    const-string v0, "check unzip file end"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T3(Ljava/lang/String;)I

    goto :goto_1

    .line 620
    :catch_0
    move-exception v0

    goto :goto_0
.end method
