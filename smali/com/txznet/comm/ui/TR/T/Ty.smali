.class public Lcom/txznet/comm/ui/TR/T/Ty;
.super Lcom/txznet/comm/ui/TR/T/TQ;
.source "Proguard"


# instance fields
.field public T:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/TR/T/TQ;-><init>(I)V

    .line 9
    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/txznet/comm/ui/TR/T/Ty;->T:Ljava/lang/String;

    .line 13
    return-void
.end method
