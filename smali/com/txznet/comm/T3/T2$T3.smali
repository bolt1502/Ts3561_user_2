.class public abstract Lcom/txznet/comm/T3/T2$T3;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/comm/T3/T2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "T3"
.end annotation


# instance fields
.field T2:Z

.field TN:I

.field Te:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    return-void
.end method


# virtual methods
.method public T()I
    .locals 1

    .prologue
    .line 177
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T2()I

    move-result v0

    return v0
.end method

.method public T(Ljava/lang/Object;)Lcom/txznet/comm/T3/T2$T3;
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/txznet/comm/T3/T2$T3;->Te:Ljava/lang/Object;

    .line 196
    return-object p0
.end method

.method public abstract T(Lcom/txznet/comm/T3/T2$T2;)V
.end method

.method public T2()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/txznet/comm/T3/T2$T3;->TN:I

    return v0
.end method

.method public T3()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/txznet/comm/T3/T2$T3;->T2:Z

    return v0
.end method

.method public TN()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/txznet/comm/T3/T2$T3;->Te:Ljava/lang/Object;

    return-object v0
.end method
