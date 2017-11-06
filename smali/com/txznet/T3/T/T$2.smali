.class Lcom/txznet/T3/T/T$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/T3/T/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/T3/T/T;


# direct methods
.method constructor <init>(Lcom/txznet/T3/T/T;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/txznet/T3/T/T$2;->T:Lcom/txznet/T3/T/T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    monitor-enter p1

    .line 91
    :try_start_0
    sget-object v0, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/txznet/T3/T/T$2;->T:Lcom/txznet/T3/T/T;

    const-string v1, "\u4eb2\uff0c\u5524\u9192\u8bcd\u592a\u591a\uff0c\u4f53\u9a8c\u6548\u679c\u66f4\u4e0d\u597d\u54e6"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 93
    monitor-exit p1

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v0, ""

    iget-object v1, p0, Lcom/txznet/T3/T/T$2;->T:Lcom/txznet/T3/T/T;

    const-string v2, "\u6dfb\u52a0\u5524\u9192\u8bcd"

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/txznet/T3/T/T;->T(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V

    .line 97
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
