.class Lcom/txznet/txz/util/Te$5;
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
    .line 162
    iput-object p1, p0, Lcom/txznet/txz/util/Te$5;->T:Lcom/txznet/txz/util/Te;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/txznet/txz/util/Te$5;->T:Lcom/txznet/txz/util/Te;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/txznet/txz/util/Te;->Ty:J

    .line 166
    return-void
.end method
