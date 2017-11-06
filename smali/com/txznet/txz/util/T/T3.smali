.class public abstract Lcom/txznet/txz/util/T/T3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field protected T2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT1;"
        }
    .end annotation
.end field

.field protected TN:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT2;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;)V"
        }
    .end annotation

    .prologue
    .line 7
    .local p0, "this":Lcom/txznet/txz/util/T/T3;, "Lcom/txznet/txz/util/T/T3<TT1;TT2;>;"
    .local p1, "p1":Ljava/lang/Object;, "TT1;"
    .local p2, "p2":Ljava/lang/Object;, "TT2;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/txznet/txz/util/T/T3;->T2:Ljava/lang/Object;

    .line 9
    iput-object p2, p0, Lcom/txznet/txz/util/T/T3;->TN:Ljava/lang/Object;

    .line 10
    return-void
.end method
