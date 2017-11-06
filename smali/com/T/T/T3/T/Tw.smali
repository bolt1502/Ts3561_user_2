.class public Lcom/T/T/T3/T/Tw;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/Tw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/T/T/T3/T/Tw;

    invoke-direct {v0}, Lcom/T/T/T3/T/Tw;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/Tw;->T:Lcom/T/T/T3/T/Tw;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x6

    return v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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
    const/16 v6, 0x10

    .line 17
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v2

    .line 20
    .local v2, "lexer":Lcom/T/T/T3/Te;
    invoke-virtual {v2}, Lcom/T/T/T3/Te;->TN()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    .line 21
    invoke-virtual {v2, v6}, Lcom/T/T/T3/Te;->T(I)V

    .line 22
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    .local v0, "boolObj":Ljava/lang/Boolean;
    :goto_0
    const-class v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne p2, v4, :cond_0

    .line 46
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v0, v4

    .line 49
    .end local v0    # "boolObj":Ljava/lang/Boolean;
    :cond_0
    :goto_1
    return-object v0

    .line 23
    :cond_1
    invoke-virtual {v2}, Lcom/T/T/T3/Te;->TN()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_2

    .line 24
    invoke-virtual {v2, v6}, Lcom/T/T/T3/Te;->T(I)V

    .line 25
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .restart local v0    # "boolObj":Ljava/lang/Boolean;
    goto :goto_0

    .line 26
    .end local v0    # "boolObj":Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {v2}, Lcom/T/T/T3/Te;->TN()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 27
    invoke-virtual {v2}, Lcom/T/T/T3/Te;->To()I

    move-result v1

    .line 28
    .local v1, "intValue":I
    invoke-virtual {v2, v6}, Lcom/T/T/T3/Te;->T(I)V

    .line 30
    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    .line 31
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .restart local v0    # "boolObj":Ljava/lang/Boolean;
    goto :goto_0

    .line 33
    .end local v0    # "boolObj":Ljava/lang/Boolean;
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .restart local v0    # "boolObj":Ljava/lang/Boolean;
    goto :goto_0

    .line 36
    .end local v0    # "boolObj":Ljava/lang/Boolean;
    .end local v1    # "intValue":I
    :cond_4
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v3

    .line 38
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_5

    .line 39
    const/4 v0, 0x0

    goto :goto_1

    .line 42
    :cond_5
    invoke-static {v3}, Lcom/T/T/TN/Ty;->TP(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .restart local v0    # "boolObj":Ljava/lang/Boolean;
    goto :goto_0
.end method
