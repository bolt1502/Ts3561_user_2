.class Lcom/txznet/comm/ui/view/RippleView$2$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/ui/view/RippleView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/ui/view/RippleView$2;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/view/RippleView$2;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/txznet/comm/ui/view/RippleView$2$1;->T:Lcom/txznet/comm/ui/view/RippleView$2;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 149
    iget-object v0, p0, Lcom/txznet/comm/ui/view/RippleView$2$1;->T:Lcom/txznet/comm/ui/view/RippleView$2;

    iget-object v0, v0, Lcom/txznet/comm/ui/view/RippleView$2;->T3:Lcom/txznet/comm/ui/view/RippleView;

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/view/RippleView;->animateRipple(Landroid/view/MotionEvent;)V

    .line 150
    iget-object v0, p0, Lcom/txznet/comm/ui/view/RippleView$2$1;->T:Lcom/txznet/comm/ui/view/RippleView$2;

    iget-object v0, v0, Lcom/txznet/comm/ui/view/RippleView$2;->T3:Lcom/txznet/comm/ui/view/RippleView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/txznet/comm/ui/view/RippleView;->T(Lcom/txznet/comm/ui/view/RippleView;Ljava/lang/Boolean;)V

    .line 151
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 160
    const/4 v0, 0x1

    return v0
.end method
