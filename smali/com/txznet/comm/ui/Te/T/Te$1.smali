.class Lcom/txznet/comm/ui/Te/T/Te$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/ui/Te/T/Te;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/ui/Te/T/Te;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/Te/T/Te;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/txznet/comm/ui/Te/T/Te$1;->T:Lcom/txznet/comm/ui/Te/T/Te;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te$1;->T:Lcom/txznet/comm/ui/Te/T/Te;

    invoke-static {v0}, Lcom/txznet/comm/ui/Te/T/Te;->T(Lcom/txznet/comm/ui/Te/T/Te;)Lcom/txznet/comm/ui/Te/T/T2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T2;->T3()V

    .line 112
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te$1;->T:Lcom/txznet/comm/ui/Te/T/Te;

    invoke-static {v0}, Lcom/txznet/comm/ui/Te/T/Te;->T3(Lcom/txznet/comm/ui/Te/T/Te;)Lcom/txznet/comm/ui/Te/T/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T;->T3()V

    .line 113
    return-void
.end method
