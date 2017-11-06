.class public Lcom/T/T/T2/T3e;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static T:Lcom/T/T/T2/T3e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/T/T/T2/T3e;

    invoke-direct {v0}, Lcom/T/T/T2/T3e;-><init>()V

    sput-object v0, Lcom/T/T/T2/T3e;->T:Lcom/T/T/T2/T3e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 5
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
    .line 29
    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v0

    .line 31
    .local v0, "out":Lcom/T/T/T2/T30;
    if-nez p2, :cond_2

    .line 32
    sget-object v3, Lcom/T/T/T2/T3c;->Tn:Lcom/T/T/T2/T3c;

    invoke-virtual {v0, v3}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Lcom/T/T/T2/T30;->T(C)V

    .line 50
    .end local p2    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 35
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Lcom/T/T/T2/T30;->T()V

    goto :goto_0

    .line 40
    :cond_2
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 41
    .local v1, "value":J
    invoke-virtual {v0, v1, v2}, Lcom/T/T/T2/T30;->T(J)V

    .line 43
    sget-object v3, Lcom/T/T/T2/T3c;->TP:Lcom/T/T/T2/T3c;

    invoke-virtual {p1, v3}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    const-wide/32 v3, -0x80000000

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    .line 45
    const-class v3, Ljava/lang/Long;

    if-eq p4, v3, :cond_0

    .line 46
    const/16 v3, 0x4c

    invoke-virtual {v0, v3}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_0
.end method
