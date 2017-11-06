.class Lcom/txznet/comm/ui/TN$1$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/ui/TN$1;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/ui/TN$1;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/TN$1;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/txznet/comm/ui/TN$1$1;->T:Lcom/txznet/comm/ui/TN$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 118
    :try_start_0
    const-string v2, "theme_code"

    invoke-static {v2}, Lcom/txznet/comm/ui/TG/T3;->Te(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/txznet/comm/ui/TG/T;->T(I)V

    .line 119
    invoke-static {}, Lcom/txznet/comm/ui/Tw/T3;->T()Lcom/txznet/comm/ui/Tw/T3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txznet/comm/ui/Tw/T3;->T3()V

    .line 120
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v2

    iget-boolean v0, v2, Lcom/txznet/comm/ui/Ty/T;->T2:Z

    .line 121
    .local v0, "disableThirdWin":Z
    invoke-static {}, Lcom/txznet/comm/ui/Tw/Te;->T3()Lcom/txznet/comm/ui/Tw/Te;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/txznet/comm/ui/Tw/Te;->T(Z)V

    .line 122
    invoke-static {}, Lcom/txznet/comm/ui/T3/T;->T3()Lcom/txznet/comm/ui/T3/T;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txznet/comm/ui/T3/T;->T()V

    .line 123
    invoke-static {}, Lcom/txznet/comm/ui/Tn/Tw;->T3()Lcom/txznet/comm/ui/Tn/Tw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txznet/comm/ui/Tn/Tw;->T()V

    .line 124
    invoke-static {}, Lcom/txznet/comm/ui/Tw/Te;->T3()Lcom/txznet/comm/ui/Tw/Te;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txznet/comm/ui/Tw/Te;->T()V

    .line 125
    invoke-static {}, Lcom/txznet/comm/ui/Te;->T()Lcom/txznet/comm/ui/Te;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txznet/comm/ui/Te;->T3()V

    .line 127
    new-instance v2, Lcom/txznet/comm/ui/TN$1$1$1;

    invoke-direct {v2, p0}, Lcom/txznet/comm/ui/TN$1$1$1;-><init>(Lcom/txznet/comm/ui/TN$1$1;)V

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v0    # "disableThirdWin":Z
    :cond_0
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UI2.0:"

    invoke-static {v2, v1}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    const-string v2, "UI2.0 normal init error!"

    invoke-static {v2}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    .line 157
    iget-object v2, p0, Lcom/txznet/comm/ui/TN$1$1;->T:Lcom/txznet/comm/ui/TN$1;

    iget-object v2, v2, Lcom/txznet/comm/ui/TN$1;->T:Lcom/txznet/comm/ui/TN;

    invoke-static {v2}, Lcom/txznet/comm/ui/TN;->T(Lcom/txznet/comm/ui/TN;)Lcom/txznet/comm/ui/TN$T;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/txznet/comm/ui/TN$1$1;->T:Lcom/txznet/comm/ui/TN$1;

    iget-object v2, v2, Lcom/txznet/comm/ui/TN$1;->T:Lcom/txznet/comm/ui/TN;

    invoke-static {v2}, Lcom/txznet/comm/ui/TN;->T(Lcom/txznet/comm/ui/TN;)Lcom/txznet/comm/ui/TN$T;

    move-result-object v2

    invoke-interface {v2}, Lcom/txznet/comm/ui/TN$T;->T3()V

    goto :goto_0
.end method
