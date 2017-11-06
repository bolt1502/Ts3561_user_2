.class Lcom/txznet/comm/T3/T2$TN$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/comm/T3/T2$TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/T3/T2$TN;


# direct methods
.method constructor <init>(Lcom/txznet/comm/T3/T2$TN;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/txznet/comm/T3/T2$TN$1;->T:Lcom/txznet/comm/T3/T2$TN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/txznet/comm/T3/T2$TN$1;->T:Lcom/txznet/comm/T3/T2$TN;

    iget v0, v0, Lcom/txznet/comm/T3/T2$TN;->Tw:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/txznet/comm/T3/T2$TN$1;->T:Lcom/txznet/comm/T3/T2$TN;

    iget v1, v0, Lcom/txznet/comm/T3/T2$TN;->Tw:I

    add-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lcom/txznet/comm/T3/T2$TN;->Tw:I

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/txznet/comm/T3/T2$TN$1;->T:Lcom/txznet/comm/T3/T2$TN;

    invoke-static {v0}, Lcom/txznet/comm/T3/T2$TN;->T(Lcom/txznet/comm/T3/T2$TN;)V

    .line 236
    return-void
.end method
