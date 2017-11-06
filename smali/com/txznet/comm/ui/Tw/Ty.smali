.class public abstract Lcom/txznet/comm/ui/Tw/Ty;
.super Lcom/txznet/comm/ui/Tw/TG;
.source "Proguard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/TG;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "isSystem"    # Z
    .param p2, "isFullScreen"    # Z

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/txznet/comm/ui/Tw/TG;-><init>(ZZ)V

    .line 23
    return-void
.end method

.method public constructor <init>(ZZLcom/txznet/comm/ui/Te/T2;)V
    .locals 2
    .param p1, "isSystem"    # Z
    .param p2, "isFullScreen"    # Z
    .param p3, "winLayout"    # Lcom/txznet/comm/ui/Te/T2;

    .prologue
    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/txznet/comm/ui/Tw/TG;-><init>(ZZ[Ljava/lang/Object;)V

    .line 27
    return-void
.end method
