.class public final Lcom/T2/T/T2/T3;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static T()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/T2/T/T2/T3$1;

    invoke-direct {v0}, Lcom/T2/T/T2/T3$1;-><init>()V

    return-object v0
.end method
