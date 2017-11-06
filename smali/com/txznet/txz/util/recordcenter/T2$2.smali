.class final Lcom/txznet/txz/util/recordcenter/T2$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/txz/util/recordcenter/T/T;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/txz/util/recordcenter/T2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T([BII)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 797
    invoke-static {p3}, Lcom/txznet/txz/util/recordcenter/T2;->T3(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    :goto_0
    return p3

    .line 800
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0, p1, p2, p3}, Lcom/txznet/txz/util/recordcenter/T2;->T(I[BII)V

    goto :goto_0
.end method
