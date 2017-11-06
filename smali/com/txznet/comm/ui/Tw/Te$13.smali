.class Lcom/txznet/comm/ui/Tw/Te$13;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/ui/Tw/Te;->Ty()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/ui/Tw/Te;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/Tw/Te;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/txznet/comm/ui/Tw/Te$13;->T:Lcom/txznet/comm/ui/Tw/Te;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/Te$13;->T:Lcom/txznet/comm/ui/Tw/Te;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/txznet/comm/ui/Tw/Te;->T3(Lcom/txznet/comm/ui/Tw/Te;Z)Z

    .line 326
    return-void
.end method
