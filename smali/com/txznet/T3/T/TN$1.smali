.class Lcom/txznet/T3/T/TN$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/T3/T/TN;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:I

.field final synthetic T3:Lcom/txznet/T3/T/TN;


# direct methods
.method constructor <init>(Lcom/txznet/T3/T/TN;I)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/txznet/T3/T/TN$1;->T3:Lcom/txznet/T3/T/TN;

    iput p2, p0, Lcom/txznet/T3/T/TN$1;->T:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/txznet/T3/T/TN$1;->T3:Lcom/txznet/T3/T/TN;

    iget v1, p0, Lcom/txznet/T3/T/TN$1;->T:I

    invoke-virtual {v0, v1}, Lcom/txznet/T3/T/TN;->T(I)V

    .line 84
    return-void
.end method
