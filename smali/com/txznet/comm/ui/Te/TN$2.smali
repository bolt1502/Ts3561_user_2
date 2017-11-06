.class Lcom/txznet/comm/ui/Te/TN$2;
.super Lcom/txznet/comm/ui/TR/T;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/comm/ui/Te/TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/ui/Te/TN;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/Te/TN;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/txznet/comm/ui/Te/TN$2;->T:Lcom/txznet/comm/ui/Te/TN;

    invoke-direct {p0}, Lcom/txznet/comm/ui/TR/T;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Landroid/view/animation/Animation;I)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "state"    # I

    .prologue
    const/4 v3, 0x1

    .line 199
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN$2;->T:Lcom/txznet/comm/ui/Te/TN;

    invoke-static {v0}, Lcom/txznet/comm/ui/Te/TN;->T3(Lcom/txznet/comm/ui/Te/TN;)V

    .line 202
    :cond_0
    invoke-static {}, Lcom/txznet/comm/ui/Tw/Te;->T3()Lcom/txznet/comm/ui/Tw/Te;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lcom/txznet/comm/ui/Tw/Te;->T(I[Ljava/lang/Object;)V

    .line 203
    return-void
.end method
