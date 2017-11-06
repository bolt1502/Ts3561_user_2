.class public Lcom/T2/T/T3/T3/T;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T2/T/T3/T3/T3;


# instance fields
.field protected final T:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "loggingEnabled"    # Z

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean p1, p0, Lcom/T2/T/T3/T3/T;->T:Z

    .line 58
    return-void
.end method
