.class public final Lcom/T2/T/T/T/T/T/T$T;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/T2/T/T/T/T/T/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "T"
.end annotation


# instance fields
.field final synthetic T:Lcom/T2/T/T/T/T/T/T;

.field private final T2:[Z

.field private final T3:Lcom/T2/T/T/T/T/T/T$T3;


# direct methods
.method private constructor <init>(Lcom/T2/T/T/T/T/T/T;Lcom/T2/T/T/T/T/T/T$T3;)V
    .locals 1
    .param p2, "entry"    # Lcom/T2/T/T/T/T/T/T$T3;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/T2/T/T/T/T/T/T$T;->T:Lcom/T2/T/T/T/T/T/T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    iput-object p2, p0, Lcom/T2/T/T/T/T/T/T$T;->T3:Lcom/T2/T/T/T/T/T/T$T3;

    .line 773
    invoke-static {p2}, Lcom/T2/T/T/T/T/T/T$T3;->T(Lcom/T2/T/T/T/T/T/T$T3;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/T2/T/T/T/T/T/T$T;->T2:[Z

    .line 774
    return-void

    .line 773
    :cond_0
    invoke-static {p1}, Lcom/T2/T/T/T/T/T/T;->Tw(Lcom/T2/T/T/T/T/T/T;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/T2/T/T/T/T/T/T;Lcom/T2/T/T/T/T/T/T$T3;Lcom/T2/T/T/T/T/T/T$T;)V
    .locals 0

    .prologue
    .line 771
    invoke-direct {p0, p1, p2}, Lcom/T2/T/T/T/T/T/T$T;-><init>(Lcom/T2/T/T/T/T/T/T;Lcom/T2/T/T/T/T/T/T$T3;)V

    return-void
.end method

.method static synthetic T(Lcom/T2/T/T/T/T/T/T$T;)Lcom/T2/T/T/T/T/T/T$T3;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T$T;->T3:Lcom/T2/T/T/T/T/T/T$T3;

    return-object v0
.end method

.method static synthetic T3(Lcom/T2/T/T/T/T/T/T$T;)[Z
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T$T;->T2:[Z

    return-object v0
.end method


# virtual methods
.method public T()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 868
    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T$T;->T:Lcom/T2/T/T/T/T/T/T;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/T2/T/T/T/T/T/T;->T(Lcom/T2/T/T/T/T/T/T;Lcom/T2/T/T/T/T/T/T$T;Z)V

    .line 869
    return-void
.end method
