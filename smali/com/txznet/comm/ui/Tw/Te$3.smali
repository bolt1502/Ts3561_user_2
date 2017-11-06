.class Lcom/txznet/comm/ui/Tw/Te$3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/ui/Tw/Te;->T(ILandroid/view/View;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:I

.field final synthetic T2:Lcom/txznet/comm/ui/Tw/Te;

.field final synthetic T3:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/Tw/Te;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/txznet/comm/ui/Tw/Te$3;->T2:Lcom/txznet/comm/ui/Tw/Te;

    iput p2, p0, Lcom/txznet/comm/ui/Tw/Te$3;->T:I

    iput-object p3, p0, Lcom/txznet/comm/ui/Tw/Te$3;->T3:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/Te$3;->T2:Lcom/txznet/comm/ui/Tw/Te;

    iget v1, p0, Lcom/txznet/comm/ui/Tw/Te$3;->T:I

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Te$3;->T3:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/txznet/comm/ui/Tw/Te;->T(Lcom/txznet/comm/ui/Tw/Te;ILandroid/view/View;)V

    .line 422
    return-void
.end method
