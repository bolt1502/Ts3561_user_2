.class public Lcom/T/T/T3/T/TP;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/TP;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/T/T/T3/T/TP;

    invoke-direct {v0}, Lcom/T/T/T3/T/TP;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/TP;->T:Lcom/T/T/T3/T/TP;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public T()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x4

    return v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "parser"    # Lcom/T/T/T3/T2;
    .param p2, "type"    # Ljava/lang/reflect/Type;
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
    .line 20
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v1

    .line 22
    .local v1, "lexer":Lcom/T/T/T3/Te;
    invoke-virtual {v1}, Lcom/T/T/T3/Te;->TN()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 23
    invoke-virtual {v1}, Lcom/T/T/T3/Te;->T()V

    .line 24
    const/4 v2, 0x0

    .line 33
    :goto_0
    return-object v2

    .line 27
    :cond_0
    invoke-virtual {v1}, Lcom/T/T/T3/Te;->TN()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 28
    new-instance v2, Lcom/T/T/TN;

    const-string v3, "expect className"

    invoke-direct {v2, v3}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v2

    .line 30
    :cond_1
    invoke-virtual {v1}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "className":Ljava/lang/String;
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/T/T/T3/Te;->T(I)V

    .line 33
    invoke-static {v0}, Lcom/T/T/TN/Ty;->T(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_0
.end method
