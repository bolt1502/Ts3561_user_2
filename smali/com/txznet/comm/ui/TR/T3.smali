.class public abstract Lcom/txznet/comm/ui/TR/T3;
.super Lcom/txznet/comm/ui/TR/T2;
.source "Proguard"


# instance fields
.field public T:Lcom/txznet/comm/ui/TR/T;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/txznet/comm/ui/TR/T2;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/txznet/comm/ui/TR/T;)V
    .locals 0
    .param p1, "viewStateListener"    # Lcom/txznet/comm/ui/TR/T;

    .prologue
    .line 8
    iput-object p1, p0, Lcom/txznet/comm/ui/TR/T3;->T:Lcom/txznet/comm/ui/TR/T;

    .line 9
    return-void
.end method

.method public T()Z
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    return v0
.end method
