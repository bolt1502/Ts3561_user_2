.class public final Lcom/T/T/TN/Te$T;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/T/T/TN/Te;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "T"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final T:I

.field public T2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public final T3:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final TN:Lcom/T/T/TN/Te$T;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/T/T/TN/Te$T",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/T/T/TN/Te$T;)V
    .locals 0
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Lcom/T/T/TN/Te$T",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/T/T/TN/Te$T;, "Lcom/T/T/TN/Te$T<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Lcom/T/T/TN/Te$T;, "Lcom/T/T/TN/Te$T<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/T/T/TN/Te$T;->T3:Ljava/lang/Object;

    .line 90
    iput-object p2, p0, Lcom/T/T/TN/Te$T;->T2:Ljava/lang/Object;

    .line 91
    iput-object p4, p0, Lcom/T/T/TN/Te$T;->TN:Lcom/T/T/TN/Te$T;

    .line 92
    iput p3, p0, Lcom/T/T/TN/Te$T;->T:I

    .line 93
    return-void
.end method
