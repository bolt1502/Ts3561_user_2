.class public Lcom/txznet/comm/TN/T/T;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/TN/T/T$T;
    }
.end annotation


# static fields
.field public static T:Lcom/T2/T/T3/T3$T;

.field public static T2:Lcom/T2/T/T3/TN;

.field public static T3:Lcom/T2/T/T3/T3;

.field public static TN:Lcom/T2/T/T/T3/T;


# direct methods
.method public static T(Landroid/content/Context;)V
    .locals 4
    .param p0, "application"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-static {}, Lcom/txznet/comm/TN/T/T$T;->Te()Lcom/txznet/comm/TN/T/T$T;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txznet/comm/TN/T/T$T;->T3()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/T2/T/T3/T2;->T()Lcom/T2/T/T3/T2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/T2/T/T3/T2;->T3()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 36
    :cond_0
    new-instance v1, Lcom/T2/T/T3/T3$T;

    invoke-direct {v1}, Lcom/T2/T/T3/T3$T;-><init>()V

    sput-object v1, Lcom/txznet/comm/TN/T/T;->T:Lcom/T2/T/T3/T3$T;

    .line 37
    sget-object v1, Lcom/txznet/comm/TN/T/T;->T:Lcom/T2/T/T3/T3$T;

    invoke-virtual {v1, v3}, Lcom/T2/T/T3/T3$T;->T(Z)Lcom/T2/T/T3/T3$T;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Lcom/T2/T/T3/T3$T;->T(Landroid/graphics/Bitmap$Config;)Lcom/T2/T/T3/T3$T;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/T2/T/T3/T3$T;->T3(Z)Lcom/T2/T/T3/T3$T;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/T2/T/T3/T3$T;->T2(Z)Lcom/T2/T/T3/T3$T;

    move-result-object v1

    invoke-virtual {v1}, Lcom/T2/T/T3/T3$T;->T()Lcom/T2/T/T3/T3;

    move-result-object v1

    sput-object v1, Lcom/txznet/comm/TN/T/T;->T3:Lcom/T2/T/T3/T3;

    .line 40
    new-instance v1, Lcom/T2/T/T3/TN$T;

    invoke-direct {v1, p0}, Lcom/T2/T/T3/TN$T;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/txznet/comm/TN/T/T;->T3:Lcom/T2/T/T3/T3;

    invoke-virtual {v1, v2}, Lcom/T2/T/T3/TN$T;->T(Lcom/T2/T/T3/T3;)Lcom/T2/T/T3/TN$T;

    move-result-object v1

    new-instance v2, Lcom/txznet/comm/TN/T/T$1;

    invoke-direct {v2, p0}, Lcom/txznet/comm/TN/T/T$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/T2/T/T3/TN$T;->T(Lcom/T2/T/T3/TN/T3;)Lcom/T2/T/T3/TN$T;

    move-result-object v1

    sget-object v2, Lcom/txznet/comm/TN/T/T;->TN:Lcom/T2/T/T/T3/T;

    invoke-virtual {v1, v2}, Lcom/T2/T/T3/TN$T;->T(Lcom/T2/T/T/T3/T;)Lcom/T2/T/T3/TN$T;

    move-result-object v1

    sget-object v2, Lcom/T2/T/T3/T/T3;->T3:Lcom/T2/T/T3/T/T3;

    invoke-virtual {v1, v2}, Lcom/T2/T/T3/TN$T;->T(Lcom/T2/T/T3/T/T3;)Lcom/T2/T/T3/TN$T;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/T2/T/T3/TN$T;->T3(I)Lcom/T2/T/T3/TN$T;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/T2/T/T3/TN$T;->T(I)Lcom/T2/T/T3/TN$T;

    move-result-object v0

    .line 65
    .local v0, "configBuilder":Lcom/T2/T/T3/TN$T;
    invoke-virtual {v0}, Lcom/T2/T/T3/TN$T;->T()Lcom/T2/T/T3/TN;

    move-result-object v1

    sput-object v1, Lcom/txznet/comm/TN/T/T;->T2:Lcom/T2/T/T3/TN;

    .line 66
    invoke-static {}, Lcom/T2/T/T3/T2;->T()Lcom/T2/T/T3/T2;

    move-result-object v1

    sget-object v2, Lcom/txznet/comm/TN/T/T;->T2:Lcom/T2/T/T3/TN;

    invoke-virtual {v1, v2}, Lcom/T2/T/T3/T2;->T(Lcom/T2/T/T3/TN;)V

    .line 67
    invoke-static {}, Lcom/txznet/comm/TN/T/T$T;->Te()Lcom/txznet/comm/TN/T/T$T;

    move-result-object v1

    sget-object v2, Lcom/txznet/comm/TN/T/T;->T2:Lcom/T2/T/T3/TN;

    invoke-virtual {v1, v2}, Lcom/txznet/comm/TN/T/T$T;->T(Lcom/T2/T/T3/TN;)V

    goto :goto_0
.end method
