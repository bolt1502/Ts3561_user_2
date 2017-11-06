.class Lcom/txznet/T3/T/T2$9;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/comm/T3/T/T3$T;


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
    .line 240
    iput-object p1, p0, Lcom/txznet/T3/T/T2$9;->T:Lcom/txznet/T3/T/T2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 243
    new-instance v0, Lcom/txznet/T3/T/T2$9$1;

    invoke-direct {v0, p0, p1}, Lcom/txznet/T3/T/T2$9$1;-><init>(Lcom/txznet/T3/T/T2$9;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/txznet/T/T;->T3(Ljava/lang/Runnable;J)V

    .line 285
    return-void
.end method
