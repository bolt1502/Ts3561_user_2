.class public Lcom/T/T/T2/TP;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static T:Lcom/T/T/T2/TP;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/T/T/T2/TP;

    invoke-direct {v0}, Lcom/T/T/T2/TP;-><init>()V

    sput-object v0, Lcom/T/T/T2/TP;->T:Lcom/T/T/T2/TP;

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

    .line 31
    .local v1, "out":Lcom/T/T/T2/T30;
    if-nez p2, :cond_1

    .line 32
    sget-object v2, Lcom/T/T/T2/T3c;->Tw:Lcom/T/T/T2/T3c;

    invoke-virtual {v1, v2}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    const-string v2, "[]"

    invoke-virtual {v1, v2}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    .line 42
    .end local p2    # "object":Ljava/lang/Object;
    :goto_0
    return-void

    .line 35
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v1}, Lcom/T/T/T2/T30;->T()V

    goto :goto_0

    .line 40
    :cond_1
    check-cast p2, [B

    .end local p2    # "object":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [B

    .line 41
    .local v0, "array":[B
    invoke-virtual {v1, v0}, Lcom/T/T/T2/T30;->T([B)V

    goto :goto_0
.end method
