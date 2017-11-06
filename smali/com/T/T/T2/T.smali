.class public Lcom/T/T/T2/T;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static final T:Lcom/T/T/T2/T;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/T/T/T2/T;

    invoke-direct {v0}, Lcom/T/T/T2/T;-><init>()V

    sput-object v0, Lcom/T/T/T2/T;->T:Lcom/T/T/T2/T;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 2
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
    .line 11
    if-nez p2, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v0

    .line 13
    .local v0, "out":Lcom/T/T/T2/T30;
    sget-object v1, Lcom/T/T/T2/T3c;->Ty:Lcom/T/T/T2/T3c;

    invoke-virtual {v0, v1}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/T/T/T2/T30;->T(Ljava/lang/String;)V

    .line 22
    .end local v0    # "out":Lcom/T/T/T2/T30;
    :goto_0
    return-void

    .line 16
    .restart local v0    # "out":Lcom/T/T/T2/T30;
    :cond_0
    invoke-virtual {v0}, Lcom/T/T/T2/T30;->T()V

    goto :goto_0

    .line 21
    .end local v0    # "out":Lcom/T/T/T2/T30;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/T/T/T2/TS;->T(Ljava/lang/String;)V

    goto :goto_0
.end method
