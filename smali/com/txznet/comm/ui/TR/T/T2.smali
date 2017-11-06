.class public Lcom/txznet/comm/ui/TR/T/T2;
.super Lcom/txznet/comm/ui/TR/T/TQ;
.source "Proguard"


# instance fields
.field public T:Ljava/lang/String;

.field public T3:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/TR/T/TQ;-><init>(I)V

    .line 12
    return-void
.end method


# virtual methods
.method public T(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/txznet/comm/ui/TR/T/T2;->T3:Landroid/view/View$OnClickListener;

    .line 22
    return-void
.end method

.method public T(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/txznet/comm/ui/TR/T/T2;->T:Ljava/lang/String;

    .line 16
    return-void
.end method
