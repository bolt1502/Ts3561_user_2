.class public Lcom/T/T/T2/T3k;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static T:Lcom/T/T/T2/T3k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/T/T/T2/T3k;

    invoke-direct {v0}, Lcom/T/T/T2/T3k;-><init>()V

    sput-object v0, Lcom/T/T/T2/T3k;->T:Lcom/T/T/T2/T3k;

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
.method public final T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
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
    .line 29
    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v2

    .line 31
    .local v2, "out":Lcom/T/T/T2/T30;
    if-nez p2, :cond_1

    .line 32
    sget-object v3, Lcom/T/T/T2/T3c;->Tw:Lcom/T/T/T2/T3c;

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    const-string v3, "[]"

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    .line 49
    .end local p2    # "object":Ljava/lang/Object;
    :goto_0
    return-void

    .line 35
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2}, Lcom/T/T/T2/T30;->T()V

    goto :goto_0

    .line 40
    :cond_1
    check-cast p2, [S

    .end local p2    # "object":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [S

    .line 41
    .local v0, "array":[S
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T(C)V

    .line 42
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 43
    if-eqz v1, :cond_2

    .line 44
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T(C)V

    .line 46
    :cond_2
    aget-short v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T3(I)V

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 48
    :cond_3
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_0
.end method
