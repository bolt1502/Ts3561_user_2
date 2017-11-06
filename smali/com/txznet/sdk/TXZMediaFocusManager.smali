.class public Lcom/txznet/sdk/TXZMediaFocusManager;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final INTENT_FOCUS_GAINED:Ljava/lang/String; = "com.txz.media.focus.gained"

.field public static final INTENT_FOCUS_RELEASED:Ljava/lang/String; = "com.txz.media.focus.released"

.field private static T3:Lcom/txznet/sdk/TXZMediaFocusManager;


# instance fields
.field T:Ljava/lang/Runnable;

.field private T2:Z

.field private TN:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/txznet/sdk/TXZMediaFocusManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZMediaFocusManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZMediaFocusManager;->T3:Lcom/txznet/sdk/TXZMediaFocusManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZMediaFocusManager;->T2:Z

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/txznet/sdk/TXZMediaFocusManager;->TN:J

    .line 72
    new-instance v0, Lcom/txznet/sdk/TXZMediaFocusManager$1;

    invoke-direct {v0, p0}, Lcom/txznet/sdk/TXZMediaFocusManager$1;-><init>(Lcom/txznet/sdk/TXZMediaFocusManager;)V

    iput-object v0, p0, Lcom/txznet/sdk/TXZMediaFocusManager;->T:Ljava/lang/Runnable;

    .line 27
    return-void
.end method

.method private T()V
    .locals 4

    .prologue
    .line 85
    const-string v2, "asd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "media focus changed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/txznet/sdk/TXZMediaFocusManager;->isFocusGained()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "true"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/txznet/sdk/TXZMediaFocusManager;->isFocusGained()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.txz.media.focus.gained"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    :goto_1
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
    return-void

    .line 85
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v1, "false"

    goto :goto_0

    .line 92
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.txz.media.focus.released"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZMediaFocusManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/txznet/sdk/TXZMediaFocusManager;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/txznet/sdk/TXZMediaFocusManager;->T()V

    return-void
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZMediaFocusManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/txznet/sdk/TXZMediaFocusManager;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/txznet/sdk/TXZMediaFocusManager;->T2:Z

    return p1
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZMediaFocusManager;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/txznet/sdk/TXZMediaFocusManager;->T3:Lcom/txznet/sdk/TXZMediaFocusManager;

    return-object v0
.end method


# virtual methods
.method public isFocusGained()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZMediaFocusManager;->T2:Z

    return v0
.end method

.method public releaseFocus()V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/txznet/sdk/TXZMediaFocusManager;->isFocusGained()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZMediaFocusManager;->T2:Z

    .line 58
    invoke-direct {p0}, Lcom/txznet/sdk/TXZMediaFocusManager;->T()V

    .line 60
    iget-object v0, p0, Lcom/txznet/sdk/TXZMediaFocusManager;->T:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/txznet/T/T;->T(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public requestFocus()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 37
    invoke-virtual {p0}, Lcom/txznet/sdk/TXZMediaFocusManager;->isFocusGained()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 39
    .local v0, "needNotify":Z
    :goto_0
    iput-boolean v1, p0, Lcom/txznet/sdk/TXZMediaFocusManager;->T2:Z

    .line 41
    if-eqz v0, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/txznet/sdk/TXZMediaFocusManager;->T()V

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/txznet/sdk/TXZMediaFocusManager;->T:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/txznet/T/T;->T(Ljava/lang/Runnable;)V

    .line 46
    iget-object v1, p0, Lcom/txznet/sdk/TXZMediaFocusManager;->T:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-static {v1, v2, v3}, Lcom/txznet/T/T;->T(Ljava/lang/Runnable;J)V

    .line 47
    return-void

    .line 37
    .end local v0    # "needNotify":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
