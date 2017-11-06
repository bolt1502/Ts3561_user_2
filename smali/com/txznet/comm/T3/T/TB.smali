.class public Lcom/txznet/comm/T3/T/TB;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/T3/T/TB$T;
    }
.end annotation


# static fields
.field private static T:Lcom/txznet/comm/T3/T/TB$T;


# direct methods
.method private static T(Ljava/lang/String;I)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 55
    .local v1, "value":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 60
    :goto_0
    return v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/NumberFormatException;
    move v1, p1

    goto :goto_0
.end method

.method public static T(Ljava/lang/String;[B)V
    .locals 3
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 33
    const-string v1, "result"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    sget-object v1, Lcom/txznet/comm/T3/T/TB;->T:Lcom/txznet/comm/T3/T/TB$T;

    if-eqz v1, :cond_2

    .line 35
    if-nez p1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    sget-object v1, Lcom/txznet/comm/T3/T/TB;->T:Lcom/txznet/comm/T3/T/TB$T;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/txznet/comm/T3/T/TB$T;->T(Ljava/lang/String;)V

    .line 42
    :cond_2
    const-string v1, "error"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    if-eqz p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 48
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Lcom/txznet/comm/T3/T/TB;->T:Lcom/txznet/comm/T3/T/TB$T;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/txznet/comm/T3/T/TB;->T(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/T3/T/TB$T;->T(I)V

    goto :goto_0
.end method
