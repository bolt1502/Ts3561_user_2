.class Lcom/txznet/T3/T/TN$3;
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
    .line 93
    iput-object p1, p0, Lcom/txznet/T3/T/TN$3;->T3:Lcom/txznet/T3/T/TN;

    iput p2, p0, Lcom/txznet/T3/T/TN$3;->T:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    sget-object v0, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    iget v1, p0, Lcom/txznet/T3/T/TN$3;->T:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/txznet/T3/T/TN$3;->T3:Lcom/txznet/T3/T/TN;

    iget-object v1, v1, Lcom/txznet/T3/T/TN;->T:Landroid/content/Context;

    const-string v2, "\u4fee\u6539\u5524\u9192\u8bcd"

    iget v3, p0, Lcom/txznet/T3/T/TN$3;->T:I

    invoke-static {v0, v1, v2, v3}, Lcom/txznet/T3/T/T;->T(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V

    .line 99
    return-void
.end method
