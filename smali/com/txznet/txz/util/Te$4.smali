.class Lcom/txznet/txz/util/Te$4;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/txz/util/Te;->T(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/txz/util/Te;


# direct methods
.method constructor <init>(Lcom/txznet/txz/util/Te;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/txznet/txz/util/Te$4;->T:Lcom/txznet/txz/util/Te;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/txznet/txz/util/Te$4;->T:Lcom/txznet/txz/util/Te;

    invoke-virtual {v0}, Lcom/txznet/txz/util/Te;->T()V

    .line 159
    return-void
.end method
