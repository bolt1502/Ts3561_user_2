.class Lcom/txznet/comm/ui/Tw/Te$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/ui/Tw/Te;->T(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Ljava/lang/String;

.field final synthetic T3:Lcom/txznet/comm/ui/Tw/Te;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/Tw/Te;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/txznet/comm/ui/Tw/Te$1;->T3:Lcom/txznet/comm/ui/Tw/Te;

    iput-object p2, p0, Lcom/txznet/comm/ui/Tw/Te$1;->T:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 72
    invoke-static {}, Lcom/txznet/comm/ui/Tw/T3;->T()Lcom/txznet/comm/ui/Tw/T3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txznet/comm/ui/Tw/T3;->T2()Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Te$1;->T:Ljava/lang/String;

    invoke-static {v2}, Lcom/txznet/comm/ui/TR/TN;->T(Ljava/lang/String;)Lcom/txznet/comm/ui/TR/TN$T;

    move-result-object v1

    .line 76
    .local v1, "viewAdapter":Lcom/txznet/comm/ui/TR/TN$T;
    if-eqz v1, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "targetView":I
    iget-object v2, v1, Lcom/txznet/comm/ui/TR/TN$T;->Te:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    .line 79
    iget-object v2, v1, Lcom/txznet/comm/ui/TR/TN$T;->Te:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v0, 0x14

    .line 84
    :goto_1
    iget-boolean v2, v1, Lcom/txznet/comm/ui/TR/TN$T;->T2:Z

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/txznet/comm/ui/TR/TN$T;->TN:Ljava/lang/Object;

    instance-of v2, v2, Lcom/txznet/comm/ui/TR/T3/TB;

    if-eqz v2, :cond_2

    .line 85
    invoke-static {}, Lcom/txznet/comm/ui/Te/TN;->T()Lcom/txznet/comm/ui/Te/TN;

    move-result-object v3

    iget-object v2, v1, Lcom/txznet/comm/ui/TR/TN$T;->TN:Ljava/lang/Object;

    check-cast v2, Lcom/txznet/comm/ui/TR/T3/TB;

    invoke-virtual {v3, v2}, Lcom/txznet/comm/ui/Te/TN;->T(Lcom/txznet/comm/ui/TR/T3/TB;)V

    .line 87
    :cond_2
    iget-object v2, v1, Lcom/txznet/comm/ui/TR/TN$T;->TN:Ljava/lang/Object;

    instance-of v2, v2, Lcom/txznet/comm/ui/TR/T3;

    if-eqz v2, :cond_3

    .line 88
    invoke-static {}, Lcom/txznet/comm/ui/Te/TN;->T()Lcom/txznet/comm/ui/Te/TN;

    move-result-object v3

    iget-object v2, v1, Lcom/txznet/comm/ui/TR/TN$T;->TN:Ljava/lang/Object;

    check-cast v2, Lcom/txznet/comm/ui/TR/T3;

    invoke-virtual {v3, v2}, Lcom/txznet/comm/ui/Te/TN;->T(Lcom/txznet/comm/ui/TR/T3;)V

    .line 90
    :cond_3
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Te$1;->T3:Lcom/txznet/comm/ui/Tw/Te;

    iget v3, v1, Lcom/txznet/comm/ui/TR/TN$T;->T:I

    invoke-static {v2, v3}, Lcom/txznet/comm/ui/Tw/Te;->T3(Lcom/txznet/comm/ui/Tw/Te;I)I

    .line 91
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Te$1;->T3:Lcom/txznet/comm/ui/Tw/Te;

    iget-object v3, v1, Lcom/txznet/comm/ui/TR/TN$T;->T3:Landroid/view/View;

    invoke-static {v2, v0, v3}, Lcom/txznet/comm/ui/Tw/Te;->T(Lcom/txznet/comm/ui/Tw/Te;ILandroid/view/View;)V

    goto :goto_0

    .line 79
    :cond_4
    const/16 v0, 0xa

    goto :goto_1

    .line 82
    :cond_5
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Te$1;->T3:Lcom/txznet/comm/ui/Tw/Te;

    iget v3, v1, Lcom/txznet/comm/ui/TR/TN$T;->T:I

    invoke-static {v2, v3}, Lcom/txznet/comm/ui/Tw/Te;->T(Lcom/txznet/comm/ui/Tw/Te;I)I

    move-result v0

    goto :goto_1
.end method
