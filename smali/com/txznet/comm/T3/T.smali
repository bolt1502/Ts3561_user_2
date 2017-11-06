.class public Lcom/txznet/comm/T3/T;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static T:Landroid/content/Context;

.field private static T3:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/txznet/comm/T3/T;->T3:Z

    return-void
.end method

.method public static T(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/T3/T;->T:Landroid/content/Context;

    .line 18
    const-string v0, "com.txznet.txz"

    sget-object v1, Lcom/txznet/comm/T3/T;->T:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/txznet/comm/T3/T;->T3:Z

    .line 19
    return-void
.end method

.method public static T()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/txznet/comm/T3/T;->T3:Z

    return v0
.end method

.method public static T3()Landroid/content/Context;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/txznet/comm/T3/T;->T:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you have not yet initialized the sdk context !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    sget-object v0, Lcom/txznet/comm/T3/T;->T:Landroid/content/Context;

    return-object v0
.end method
