.class public Lcom/T/T/T3/T/T3e;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/T3e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/T/T/T3/T/T3e;

    invoke-direct {v0}, Lcom/T/T/T3/T/T3e;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/T3e;->T:Lcom/T/T/T3/T/T3e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static T(Lcom/T/T/T3/T2;)Ljava/lang/Object;
    .locals 6
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
    const/16 v5, 0x10

    .line 20
    invoke-virtual {p0}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v0

    .line 21
    .local v0, "lexer":Lcom/T/T/T3/Te;
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 22
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "val":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/T/T/T3/Te;->T(I)V

    .line 39
    .end local v1    # "val":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 27
    :cond_0
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 28
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TW()Ljava/lang/String;

    move-result-object v1

    .line 29
    .restart local v1    # "val":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/T/T/T3/Te;->T(I)V

    goto :goto_0

    .line 33
    .end local v1    # "val":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v2

    .line 35
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 36
    const/4 v1, 0x0

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public T()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x4

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
    .line 15
    invoke-static {p1}, Lcom/T/T/T3/T/T3e;->T(Lcom/T/T/T3/T2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
