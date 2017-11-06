.class Lcom/txznet/comm/ui/T2/T2$7;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/comm/ui/T3$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/comm/ui/T2/T2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/ui/T2/T2;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/T2/T2;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/txznet/comm/ui/T2/T2$7;->T:Lcom/txznet/comm/ui/T2/T2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$7;->T:Lcom/txznet/comm/ui/T2/T2;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/T2/T2;->dismiss()V

    .line 361
    return-void
.end method
