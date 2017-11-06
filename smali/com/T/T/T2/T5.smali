.class public Lcom/T/T/T2/T5;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static final T:Lcom/T/T/T2/T5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/T/T/T2/T5;

    invoke-direct {v0}, Lcom/T/T/T2/T5;-><init>()V

    sput-object v0, Lcom/T/T/T2/T5;->T:Lcom/T/T/T2/T5;

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
    .line 29
    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v1

    .line 30
    .local v1, "out":Lcom/T/T/T2/T30;
    if-nez p2, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v2

    invoke-virtual {v2}, Lcom/T/T/T2/T30;->T()V

    .line 42
    :goto_0
    return-void

    .line 35
    :cond_0
    sget-object v2, Lcom/T/T/T2/T3c;->TN:Lcom/T/T/T2/T3c;

    invoke-virtual {p1, v2}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 36
    check-cast v0, Ljava/lang/Enum;

    .line 37
    .local v0, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/T/T/T2/TS;->T(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_1
    move-object v0, p2

    .line 39
    check-cast v0, Ljava/lang/Enum;

    .line 40
    .restart local v0    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/T/T/T2/T30;->T3(I)V

    goto :goto_0
.end method
