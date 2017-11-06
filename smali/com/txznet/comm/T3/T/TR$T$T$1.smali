.class Lcom/txznet/comm/T3/T/TR$T$T$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/comm/T3/T/TR$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/T3/T/TR$T$T;->T3()Lcom/txznet/comm/T3/T/TR$T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/T3/T/TR$T$T;


# direct methods
.method constructor <init>(Lcom/txznet/comm/T3/T/TR$T$T;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/txznet/comm/T3/T/TR$T$T$1;->T:Lcom/txznet/comm/T3/T/TR$T$T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public T3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/txznet/comm/T3/T/TR$T$T$1;->T:Lcom/txznet/comm/T3/T/TR$T$T;

    invoke-static {v0}, Lcom/txznet/comm/T3/T/TR$T$T;->T(Lcom/txznet/comm/T3/T/TR$T$T;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
