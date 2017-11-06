.class Lcom/txznet/comm/ui/view/RippleView$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/ui/view/RippleView;->T(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Landroid/content/Context;

.field final synthetic T3:Lcom/txznet/comm/ui/view/RippleView;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/view/RippleView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/txznet/comm/ui/view/RippleView$2;->T3:Lcom/txznet/comm/ui/view/RippleView;

    iput-object p2, p0, Lcom/txznet/comm/ui/view/RippleView$2;->T:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/txznet/comm/ui/view/RippleView$2;->T3:Lcom/txznet/comm/ui/view/RippleView;

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/txznet/comm/ui/view/RippleView$2;->T:Landroid/content/Context;

    new-instance v3, Lcom/txznet/comm/ui/view/RippleView$2$1;

    invoke-direct {v3, p0}, Lcom/txznet/comm/ui/view/RippleView$2$1;-><init>(Lcom/txznet/comm/ui/view/RippleView$2;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-static {v0, v1}, Lcom/txznet/comm/ui/view/RippleView;->T(Lcom/txznet/comm/ui/view/RippleView;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;

    .line 163
    return-void
.end method
