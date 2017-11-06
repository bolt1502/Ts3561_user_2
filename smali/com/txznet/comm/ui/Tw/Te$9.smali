.class Lcom/txznet/comm/ui/Tw/Te$9;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/ui/Tw/Te;->T(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Ljava/lang/Integer;

.field final synthetic T3:Lcom/txznet/comm/ui/Tw/Te;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/Tw/Te;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/txznet/comm/ui/Tw/Te$9;->T3:Lcom/txznet/comm/ui/Tw/Te;

    iput-object p2, p0, Lcom/txznet/comm/ui/Tw/Te$9;->T:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/Te$9;->T3:Lcom/txznet/comm/ui/Tw/Te;

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Te$9;->T:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/txznet/comm/ui/Tw/Te;->TN(Lcom/txznet/comm/ui/Tw/Te;I)V

    .line 138
    return-void
.end method
