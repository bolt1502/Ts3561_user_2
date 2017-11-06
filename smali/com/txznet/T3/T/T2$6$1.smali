.class Lcom/txznet/T3/T/T2$6$1;
.super Lcom/txznet/comm/ui/T2/T;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/T3/T/T2$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic TG:Lcom/txznet/T3/T/T2$6;


# direct methods
.method constructor <init>(Lcom/txznet/T3/T/T2$6;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/txznet/T3/T/T2$6$1;->TG:Lcom/txznet/T3/T/T2$6;

    invoke-direct {p0}, Lcom/txznet/comm/ui/T2/T;-><init>()V

    return-void
.end method


# virtual methods
.method public T()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.config.restore"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 116
    return-void
.end method
