.class Lcom/txznet/T3/T/T2$6;
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
    .line 108
    iput-object p1, p0, Lcom/txznet/T3/T/T2$6;->T:Lcom/txznet/T3/T/T2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    new-instance v0, Lcom/txznet/T3/T/T2$6$1;

    invoke-direct {v0, p0}, Lcom/txznet/T3/T/T2$6$1;-><init>(Lcom/txznet/T3/T/T2$6;)V

    .line 119
    .local v0, "warmDialog":Lcom/txznet/comm/ui/T2/T;
    const-string v1, "\u91cd\u7f6e\u8bbe\u7f6e\u53c2\u6570\uff1f"

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/T2/T;->T(Ljava/lang/String;)Lcom/txznet/comm/ui/T2/T;

    .line 120
    invoke-virtual {v0}, Lcom/txznet/comm/ui/T2/T;->show()V

    .line 121
    return-void
.end method
