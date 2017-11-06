.class public Lcom/txznet/txz/util/T;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static T(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {}, Lcom/txznet/txz/util/T;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/txznet/txz/util/T;->T3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static T()Z
    .locals 3

    .prologue
    .line 38
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 39
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "country":Ljava/lang/String;
    const-string v2, "TW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "HK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    :cond_0
    const/4 v2, 0x0

    .line 45
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static T3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 72
    :try_start_0
    invoke-static {}, LT/T/T/T;->T()LT/T/T/T;

    move-result-object v0

    invoke-virtual {v0, p0}, LT/T/T/T;->T(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 73
    :catch_0
    move-exception v0

    .line 77
    const-string v0, ""

    goto :goto_0
.end method
