.class public Lcom/T/T/T3/T2$T;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/T/T/T3/T2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "T"
.end annotation


# instance fields
.field private final T:Lcom/T/T/T3/TR;

.field private T2:Lcom/T/T/T3/T/T0;

.field private final T3:Ljava/lang/String;

.field private TN:Lcom/T/T/T3/TR;


# direct methods
.method public constructor <init>(Lcom/T/T/T3/TR;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Lcom/T/T/T3/TR;
    .param p2, "referenceValue"    # Ljava/lang/String;

    .prologue
    .line 1233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1234
    iput-object p1, p0, Lcom/T/T/T3/T2$T;->T:Lcom/T/T/T3/TR;

    .line 1235
    iput-object p2, p0, Lcom/T/T/T3/T2$T;->T3:Ljava/lang/String;

    .line 1236
    return-void
.end method


# virtual methods
.method public T()Lcom/T/T/T3/TR;
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/T/T/T3/T2$T;->T:Lcom/T/T/T3/TR;

    return-object v0
.end method

.method public T(Lcom/T/T/T3/T/T0;)V
    .locals 0
    .param p1, "fieldDeserializer"    # Lcom/T/T/T3/T/T0;

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/T/T/T3/T2$T;->T2:Lcom/T/T/T3/T/T0;

    .line 1252
    return-void
.end method

.method public T(Lcom/T/T/T3/TR;)V
    .locals 0
    .param p1, "ownerContext"    # Lcom/T/T/T3/TR;

    .prologue
    .line 1259
    iput-object p1, p0, Lcom/T/T/T3/T2$T;->TN:Lcom/T/T/T3/TR;

    .line 1260
    return-void
.end method

.method public T2()Lcom/T/T/T3/T/T0;
    .locals 1

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/T/T/T3/T2$T;->T2:Lcom/T/T/T3/T/T0;

    return-object v0
.end method

.method public T3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/T/T/T3/T2$T;->T3:Ljava/lang/String;

    return-object v0
.end method

.method public TN()Lcom/T/T/T3/TR;
    .locals 1

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/T/T/T3/T2$T;->TN:Lcom/T/T/T3/TR;

    return-object v0
.end method
