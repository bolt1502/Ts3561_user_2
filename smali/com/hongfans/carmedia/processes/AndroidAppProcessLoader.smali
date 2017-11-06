.class public Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;
.super Landroid/os/AsyncTask;
.source "AndroidAppProcessLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final listener:Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$Listener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$Listener;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;->listener:Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$Listener;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {}, Lcom/hongfans/carmedia/processes/AndroidProcesses;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 43
    .local v0, "processes":Ljava/util/List;, "Ljava/util/List<Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;>;"
    new-instance v1, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$1;

    invoke-direct {v1, p0}, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$1;-><init>(Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 50
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "androidAppProcesses":Ljava/util/List;, "Ljava/util/List<Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;>;"
    iget-object v0, p0, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;->listener:Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$Listener;

    invoke-interface {v0, p1}, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$Listener;->onComplete(Ljava/util/List;)V

    .line 55
    return-void
.end method
