.class public Lcom/T/T/T2/T3F;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static T:Lcom/T/T/T2/T3F;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/T/T/T2/T3F;

    invoke-direct {v0}, Lcom/T/T/T2/T3F;-><init>()V

    sput-object v0, Lcom/T/T/T2/T3F;->T:Lcom/T/T/T2/T3F;

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
    move-object v0, p2

    .line 31
    check-cast v0, Ljava/lang/Number;

    .line 33
    .local v0, "numberValue":Ljava/lang/Number;
    if-nez v0, :cond_2

    .line 34
    sget-object v3, Lcom/T/T/T2/T3c;->Tn:Lcom/T/T/T2/T3c;

    invoke-virtual {v1, v3}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Lcom/T/T/T2/T30;->T(C)V

    .line 48
    .end local p2    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 37
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v1}, Lcom/T/T/T2/T30;->T()V

    goto :goto_0

    .line 42
    :cond_2
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Number;->shortValue()S

    move-result v2

    .line 43
    .local v2, "value":S
    invoke-virtual {v1, v2}, Lcom/T/T/T2/T30;->T3(I)V

    .line 45
    sget-object v3, Lcom/T/T/T2/T3c;->TP:Lcom/T/T/T2/T3c;

    invoke-virtual {p1, v3}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    const/16 v3, 0x53

    invoke-virtual {v1, v3}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_0
.end method
