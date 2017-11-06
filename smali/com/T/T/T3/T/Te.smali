.class public Lcom/T/T/T3/T/Te;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/Te;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/T/T/T3/T/Te;

    invoke-direct {v0}, Lcom/T/T/T3/T/Te;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/Te;->T:Lcom/T/T/T3/T/Te;

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
    .locals 5
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
    .line 22
    invoke-virtual {p0}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v0

    .line 23
    .local v0, "lexer":Lcom/T/T/T3/Te;
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 24
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TW()Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "val":Ljava/lang/String;
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/T/T/T3/Te;->T(I)V

    .line 26
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 35
    .end local v1    # "val":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v2

    .line 31
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 32
    const/4 v3, 0x0

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {v2}, Lcom/T/T/TN/Ty;->Tw(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public T()I
    .locals 1

    .prologue
    .line 39
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
    invoke-static {p1}, Lcom/T/T/T3/T/Te;->T(Lcom/T/T/T3/T2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
