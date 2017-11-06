.class Lcom/txznet/T3/T/T2$4;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/T3/T/T2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/T3/T/T2;


# direct methods
.method constructor <init>(Lcom/txznet/T3/T/T2;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/txznet/T3/T/T2$4;->T:Lcom/txznet/T3/T/T2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/txznet/T3/T/T2$4;->T:Lcom/txznet/T3/T/T2;

    invoke-static {v0}, Lcom/txznet/T3/T/T2;->T(Lcom/txznet/T3/T/T2;)V

    .line 97
    return-void
.end method
