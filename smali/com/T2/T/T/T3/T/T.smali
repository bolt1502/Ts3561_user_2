.class public Lcom/T2/T/T/T3/T/T;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T2/T/T/T3/T;


# instance fields
.field private final T:Lcom/T2/T/T/T3/T;

.field private final T3:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/T2/T/T/T3/T;Ljava/util/Comparator;)V
    .locals 0
    .param p1, "cache"    # Lcom/T2/T/T/T3/T;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T2/T/T/T3/T;",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "keyComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/T2/T/T/T3/T/T;->T:Lcom/T2/T/T/T3/T;

    .line 41
    iput-object p2, p0, Lcom/T2/T/T/T3/T/T;->T3:Ljava/util/Comparator;

    .line 42
    return-void
.end method


# virtual methods
.method public T()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/T2/T/T/T3/T/T;->T:Lcom/T2/T/T/T3/T;

    invoke-interface {v0}, Lcom/T2/T/T/T3/T;->T()V

    .line 75
    return-void
.end method
