.class Lcom/txznet/comm/ui/T2/T2$6;
.super Lcom/txznet/txz/util/T/T;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/ui/T2/T2;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txznet/txz/util/T/T",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/ui/T2/T2;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/T2/T2;Ljava/lang/Integer;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/Integer;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/txznet/comm/ui/T2/T2$6;->T:Lcom/txznet/comm/ui/T2/T2;

    invoke-direct {p0, p2}, Lcom/txznet/txz/util/T/T;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$6;->T:Lcom/txznet/comm/ui/T2/T2;

    iget-object v1, v0, Lcom/txznet/comm/ui/T2/T2;->Ty:[Landroid/view/View;

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$6;->T3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 323
    return-void
.end method
