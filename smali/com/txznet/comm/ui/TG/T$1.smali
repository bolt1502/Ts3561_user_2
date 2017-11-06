.class final Lcom/txznet/comm/ui/TG/T$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/ui/TG/T;->Te(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic T:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/txznet/comm/ui/TG/T$1;->T:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 338
    iget-object v1, p0, Lcom/txznet/comm/ui/TG/T$1;->T:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 339
    iget-object v1, p0, Lcom/txznet/comm/ui/TG/T$1;->T:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 340
    .local v0, "tmp":I
    sget v1, Lcom/txznet/comm/ui/TG/T;->T7:I

    if-eq v0, v1, :cond_0

    .line 341
    if-lez v0, :cond_0

    .line 342
    sput v0, Lcom/txznet/comm/ui/TG/T;->T7:I

    .line 343
    sget v1, Lcom/txznet/comm/ui/TG/T;->T7:I

    invoke-static {v1}, Lcom/txznet/comm/ui/TG/T;->T3(I)V

    .line 344
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/txznet/comm/ui/TG/T;->T(Z)I

    .line 347
    :cond_0
    return-void
.end method
