.class Lcom/T2/T/T3/T/T/TN$T3;
.super Lcom/T2/T/T3/T/T/TN$T;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/T2/T/T3/T/T/TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "T3"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/T2/T/T3/T/T/TN",
        "<TE;>.T;"
    }
.end annotation


# instance fields
.field final synthetic TN:Lcom/T2/T/T3/T/T/TN;


# direct methods
.method private constructor <init>(Lcom/T2/T/T3/T/T/TN;)V
    .locals 0

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/T2/T/T3/T/T/TN$T3;->TN:Lcom/T2/T/T3/T/T/TN;

    invoke-direct {p0, p1}, Lcom/T2/T/T3/T/T/TN$T;-><init>(Lcom/T2/T/T3/T/T/TN;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/T2/T/T3/T/T/TN;Lcom/T2/T/T3/T/T/TN$T3;)V
    .locals 0

    .prologue
    .line 1113
    invoke-direct {p0, p1}, Lcom/T2/T/T3/T/T/TN$T3;-><init>(Lcom/T2/T/T3/T/T/TN;)V

    return-void
.end method


# virtual methods
.method T()Lcom/T2/T/T3/T/T/TN$T2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/T2/T/T3/T/T/TN$T2",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN$T3;->TN:Lcom/T2/T/T3/T/T/TN;

    iget-object v0, v0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    return-object v0
.end method

.method T(Lcom/T2/T/T3/T/T/TN$T2;)Lcom/T2/T/T3/T/T/TN$T2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T2/T/T3/T/T/TN$T2",
            "<TE;>;)",
            "Lcom/T2/T/T3/T/T/TN$T2",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1115
    .local p1, "n":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    iget-object v0, p1, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;

    return-object v0
.end method
