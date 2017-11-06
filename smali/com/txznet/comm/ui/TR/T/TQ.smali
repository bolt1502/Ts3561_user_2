.class public Lcom/txznet/comm/ui/TR/T/TQ;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private T:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/txznet/comm/ui/TR/T/TQ;->T:I

    .line 25
    iput p1, p0, Lcom/txznet/comm/ui/TR/T/TQ;->T:I

    .line 26
    return-void
.end method


# virtual methods
.method public T()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/txznet/comm/ui/TR/T/TQ;->T:I

    return v0
.end method
