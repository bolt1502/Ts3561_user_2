.class public abstract Lcom/txznet/comm/T3/T/TP$T;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/comm/T3/T/TP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "T"
.end annotation


# instance fields
.field protected T:Ljava/lang/Object;

.field protected T3:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/txznet/comm/T3/T/TP$T;->T3:I

    return-void
.end method


# virtual methods
.method public isNeedStartAsr()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public onEnd()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onError(I)V
    .locals 0
    .param p1, "iError"    # I

    .prologue
    .line 80
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public setData(Ljava/lang/Object;)Lcom/txznet/comm/T3/T/TP$T;
    .locals 0
    .param p1, "d"    # Ljava/lang/Object;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/txznet/comm/T3/T/TP$T;->T:Ljava/lang/Object;

    .line 84
    return-object p0
.end method

.method public setTaskId(I)Lcom/txznet/comm/T3/T/TP$T;
    .locals 0
    .param p1, "taskId"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/txznet/comm/T3/T/TP$T;->T3:I

    .line 91
    return-object p0
.end method
