.class public Lcom/T/T/T3/T/TN;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/TN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/T/T/T3/T/TN;

    invoke-direct {v0}, Lcom/T/T/T3/T/TN;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/TN;->T:Lcom/T/T/T3/T/TN;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static T(Lcom/T/T/T3/T2;)Ljava/lang/Object;
    .locals 7
    .param p0, "parser"    # Lcom/T/T/T3/T2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/T/T/T3/T2;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    .line 22
    invoke-virtual {p0}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v0

    .line 23
    .local v0, "lexer":Lcom/T/T/T3/Te;
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 24
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TY()J

    move-result-wide v1

    .line 25
    .local v1, "val":J
    invoke-virtual {v0, v6}, Lcom/T/T/T3/Te;->T(I)V

    .line 26
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    move-object v1, v4

    .line 41
    .end local v1    # "val":J
    :goto_0
    return-object v1

    .line 29
    :cond_0
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 30
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TZ()Ljava/math/BigDecimal;

    move-result-object v1

    .line 31
    .local v1, "val":Ljava/math/BigDecimal;
    invoke-virtual {v0, v6}, Lcom/T/T/T3/Te;->T(I)V

    goto :goto_0

    .line 35
    .end local v1    # "val":Ljava/math/BigDecimal;
    :cond_1
    invoke-virtual {p0}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v3

    .line 37
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_2

    .line 38
    const/4 v1, 0x0

    goto :goto_0

    .line 41
    :cond_2
    invoke-static {v3}, Lcom/T/T/TN/Ty;->Te(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public T()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x2

    return v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "parser"    # Lcom/T/T/T3/T2;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/T/T/T3/T2;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 17
    invoke-static {p1}, Lcom/T/T/T3/T/TN;->T(Lcom/T/T/T3/T2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
