.class Lcom/txznet/sdk/TXZRecordWinManager$1$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZRecordWinManager$RecordWin2$RecordWinController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZRecordWinManager$1;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZRecordWinManager$1;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZRecordWinManager$1;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/txznet/sdk/TXZRecordWinManager$1$1;->T:Lcom/txznet/sdk/TXZRecordWinManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addView(ILandroid/view/View;)Ljava/lang/Object;
    .locals 1
    .param p1, "targetView"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 217
    invoke-static {}, Lcom/txznet/comm/ui/Tw/Te;->T3()Lcom/txznet/comm/ui/Tw/Te;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/txznet/comm/ui/Tw/Te;->T(ILandroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lcom/txznet/comm/ui/Tw/Te;->T3()Lcom/txznet/comm/ui/Tw/Te;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/Te;->Tw()V

    .line 213
    return-void
.end method

.method public operateView(IIII)Ljava/lang/Object;
    .locals 1
    .param p1, "actionType"    # I
    .param p2, "view"    # I
    .param p3, "listType"    # I
    .param p4, "listIndex"    # I

    .prologue
    .line 222
    invoke-static {}, Lcom/txznet/comm/ui/Tw/Te;->T3()Lcom/txznet/comm/ui/Tw/Te;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/txznet/comm/ui/Tw/Te;->T(IIII)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Lcom/txznet/comm/ui/Tw/Te;->T3()Lcom/txznet/comm/ui/Tw/Te;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/Te;->Te()V

    .line 208
    return-void
.end method
