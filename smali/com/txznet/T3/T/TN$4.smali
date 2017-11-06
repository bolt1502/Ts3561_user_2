.class Lcom/txznet/T3/T/TN$4;
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
    .line 101
    iput-object p1, p0, Lcom/txznet/T3/T/TN$4;->T3:Lcom/txznet/T3/T/TN;

    iput p2, p0, Lcom/txznet/T3/T/TN$4;->T:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 105
    monitor-enter p1

    .line 106
    :try_start_0
    sget-object v0, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/txznet/T3/T/TN$4;->T3:Lcom/txznet/T3/T/TN;

    iget-object v0, v0, Lcom/txznet/T3/T/TN;->T:Landroid/content/Context;

    const-string v1, "\u4eb2\uff0c\u5524\u9192\u8bcd\u5168\u90e8\u5220\u9664\uff0c\u4e0d\u80fd\u5524\u9192\u54e6"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 112
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v1

    sget-object v0, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    sget-object v2, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/txznet/sdk/TXZConfigManager;->setWakeupKeywordsNew([Ljava/lang/String;)V

    .line 115
    return-void

    .line 109
    :cond_0
    :try_start_1
    sget-object v0, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    iget v1, p0, Lcom/txznet/T3/T/TN$4;->T:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/txznet/T3/T/TN$4;->T3:Lcom/txznet/T3/T/TN;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/txznet/T3/T/TN;->T(I)V

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
