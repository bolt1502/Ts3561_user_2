.class public Lcom/T/T/T2/T3Q;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static final T:Lcom/T/T/T2/T3Q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/T/T/T2/T3Q;

    invoke-direct {v0}, Lcom/T/T/T2/T3Q;-><init>()V

    sput-object v0, Lcom/T/T/T2/T3Q;->T:Lcom/T/T/T2/T3Q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 3
    .param p1, "serializer"    # Lcom/T/T/T2/TS;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    instance-of v2, p2, Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 34
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 35
    .local v1, "val":Ljava/util/concurrent/atomic/AtomicReference;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 39
    .end local v1    # "val":Ljava/util/concurrent/atomic/AtomicReference;
    .end local p2    # "object":Ljava/lang/Object;
    .local v0, "item":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1, v0}, Lcom/T/T/T2/TS;->TN(Ljava/lang/Object;)V

    .line 40
    return-void

    .line 37
    .end local v0    # "item":Ljava/lang/Object;
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/ref/Reference;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "item":Ljava/lang/Object;
    goto :goto_0
.end method
