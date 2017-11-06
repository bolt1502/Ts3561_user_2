.class public Lcom/T/T/T2/TL;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static final T:Lcom/T/T/T2/TL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/T/T/T2/TL;

    invoke-direct {v0}, Lcom/T/T/T2/TL;-><init>()V

    sput-object v0, Lcom/T/T/T2/TL;->T:Lcom/T/T/T2/TL;

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

    move-result-object v1

    .local v1, "out":Lcom/T/T/T2/T30;
    move-object v2, p2

    .line 31
    check-cast v2, Ljava/lang/Character;

    .line 32
    .local v2, "value":Ljava/lang/Character;
    if-nez v2, :cond_0

    .line 33
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/T/T/T2/T30;->T(Ljava/lang/String;)V

    .line 43
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 38
    .local v0, "c":C
    if-nez v0, :cond_1

    .line 39
    const-string v3, "\u0000"

    invoke-virtual {v1, v3}, Lcom/T/T/T2/T30;->T(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/T/T/T2/T30;->T(Ljava/lang/String;)V

    goto :goto_0
.end method
