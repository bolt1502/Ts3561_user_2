.class Lcom/txznet/comm/ui/Tw/TN$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/comm/ui/T3$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/comm/ui/Tw/TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/ui/Tw/TN;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/Tw/TN;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/txznet/comm/ui/Tw/TN$2;->T:Lcom/txznet/comm/ui/Tw/TN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/TN$2;->T:Lcom/txznet/comm/ui/Tw/TN;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/TN;->dismiss()V

    .line 169
    return-void
.end method
