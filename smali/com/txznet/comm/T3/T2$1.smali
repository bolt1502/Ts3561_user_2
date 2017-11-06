.class Lcom/txznet/comm/T3/T2$1;
.super Lcom/txznet/txz/util/Te;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/T3/T2;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/T3/T2;


# direct methods
.method constructor <init>(Lcom/txznet/comm/T3/T2;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/txznet/comm/T3/T2$1;->T:Lcom/txznet/comm/T3/T2;

    invoke-direct {p0, p2}, Lcom/txznet/txz/util/Te;-><init>(Landroid/os/Looper;)V

    return-void
.end method
