.class public Lcom/hongfans/carmedia/processes/models/AndroidProcess;
.super Ljava/lang/Object;
.source "AndroidProcess.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/hongfans/carmedia/processes/models/AndroidProcess;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final name:Ljava/lang/String;

.field public final pid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/hongfans/carmedia/processes/models/AndroidProcess$1;

    invoke-direct {v0}, Lcom/hongfans/carmedia/processes/models/AndroidProcess$1;-><init>()V

    sput-object v0, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->pid:I

    .line 56
    invoke-static {p1}, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->getProcessName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->name:Ljava/lang/String;

    .line 57
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->name:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->pid:I

    .line 62
    return-void
.end method

.method static getProcessName(I)Ljava/lang/String;
    .locals 5
    .param p0, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, "cmdline":Ljava/lang/String;
    :try_start_0
    const-string v1, "/proc/%d/cmdline"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hongfans/carmedia/processes/models/ProcFile;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-static {p0}, Lcom/hongfans/carmedia/processes/models/Stat;->get(I)Lcom/hongfans/carmedia/processes/models/Stat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hongfans/carmedia/processes/models/Stat;->getComm()Ljava/lang/String;

    move-result-object v0

    .line 80
    .end local v0    # "cmdline":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 75
    .restart local v0    # "cmdline":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public attr_current()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    const-string v0, "attr/current"

    invoke-virtual {p0, v0}, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cgroup()Lcom/hongfans/carmedia/processes/models/Cgroup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    iget v0, p0, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->pid:I

    invoke-static {v0}, Lcom/hongfans/carmedia/processes/models/Cgroup;->get(I)Lcom/hongfans/carmedia/processes/models/Cgroup;

    move-result-object v0

    return-object v0
.end method

.method public cmdline()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    const-string v0, "cmdline"

    invoke-virtual {p0, v0}, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 616
    const/4 v0, 0x0

    return v0
.end method

.method public oom_adj()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    const-string v0, "oom_adj"

    invoke-virtual {p0, v0}, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public oom_score()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    const-string v0, "oom_score"

    invoke-virtual {p0, v0}, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public oom_score_adj()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    const-string v0, "oom_score_adj"

    invoke-virtual {p0, v0}, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public read(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const-string v0, "/proc/%d/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hongfans/carmedia/processes/models/ProcFile;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stat()Lcom/hongfans/carmedia/processes/models/Stat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    iget v0, p0, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->pid:I

    invoke-static {v0}, Lcom/hongfans/carmedia/processes/models/Stat;->get(I)Lcom/hongfans/carmedia/processes/models/Stat;

    move-result-object v0

    return-object v0
.end method

.method public statm()Lcom/hongfans/carmedia/processes/models/Statm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    iget v0, p0, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->pid:I

    invoke-static {v0}, Lcom/hongfans/carmedia/processes/models/Statm;->get(I)Lcom/hongfans/carmedia/processes/models/Statm;

    move-result-object v0

    return-object v0
.end method

.method public status()Lcom/hongfans/carmedia/processes/models/Status;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    iget v0, p0, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->pid:I

    invoke-static {v0}, Lcom/hongfans/carmedia/processes/models/Status;->get(I)Lcom/hongfans/carmedia/processes/models/Status;

    move-result-object v0

    return-object v0
.end method

.method public wchan()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 612
    const-string v0, "wchan"

    invoke-virtual {p0, v0}, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 620
    iget-object v0, p0, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 621
    iget v0, p0, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    return-void
.end method
