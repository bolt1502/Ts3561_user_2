.class public Lcom/T/T/T2/Ty;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static final T:Lcom/T/T/T2/Ty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/T/T/T2/Ty;

    invoke-direct {v0}, Lcom/T/T/T2/Ty;-><init>()V

    sput-object v0, Lcom/T/T/T2/Ty;->T:Lcom/T/T/T2/Ty;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 4
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
    .line 30
    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v0

    .local v0, "out":Lcom/T/T/T2/T30;
    move-object v1, p2

    .line 32
    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 33
    .local v1, "val":Ljava/util/concurrent/atomic/AtomicLong;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/T/T/T2/T30;->T(J)V

    .line 34
    return-void
.end method
