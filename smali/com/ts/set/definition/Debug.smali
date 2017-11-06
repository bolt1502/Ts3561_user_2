.class public Lcom/ts/set/definition/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static final DEBUG_MEDIA:Z = true

.field public static MEDIAVERSION:Ljava/lang/String;

.field public static OUTPUT_DEBUG:Z

.field public static OUTPUT_ERROR:Z

.field public static OUTPUT_WARNING:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6
    const-string v0, "v1.0.0_1506290915"

    sput-object v0, Lcom/ts/set/definition/Debug;->MEDIAVERSION:Ljava/lang/String;

    .line 8
    sput-boolean v1, Lcom/ts/set/definition/Debug;->OUTPUT_DEBUG:Z

    .line 9
    sput-boolean v1, Lcom/ts/set/definition/Debug;->OUTPUT_ERROR:Z

    .line 10
    sput-boolean v1, Lcom/ts/set/definition/Debug;->OUTPUT_WARNING:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "strTag"    # Ljava/lang/String;
    .param p1, "strMsg"    # Ljava/lang/String;

    .prologue
    .line 13
    sget-boolean v0, Lcom/ts/set/definition/Debug;->OUTPUT_DEBUG:Z

    if-eqz v0, :cond_0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[wcb]:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "strTag"    # Ljava/lang/String;
    .param p1, "strMsg"    # Ljava/lang/String;

    .prologue
    .line 25
    sget-boolean v0, Lcom/ts/set/definition/Debug;->OUTPUT_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/ts/set/definition/Debug;->OUTPUT_ERROR:Z

    if-eqz v0, :cond_1

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[wcb]:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "strTag"    # Ljava/lang/String;
    .param p1, "strMsg"    # Ljava/lang/String;

    .prologue
    .line 19
    sget-boolean v0, Lcom/ts/set/definition/Debug;->OUTPUT_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/ts/set/definition/Debug;->OUTPUT_WARNING:Z

    if-eqz v0, :cond_1

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[wcb]:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_1
    return-void
.end method
