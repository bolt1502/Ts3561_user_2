.class public Lcom/T/T/T2/TM;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static T:Lcom/T/T/T2/TM;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/T/T/T2/TM;

    invoke-direct {v0}, Lcom/T/T/T2/TM;-><init>()V

    sput-object v0, Lcom/T/T/T2/TM;->T:Lcom/T/T/T2/TM;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 3
    .param p1, "serializer"    # Lcom/T/T/T2/TS;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v1

    .line 14
    .local v1, "out":Lcom/T/T/T2/T30;
    if-nez p2, :cond_0

    .line 15
    invoke-virtual {v1}, Lcom/T/T/T2/T30;->T()V

    .line 22
    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    .line 19
    check-cast v0, Ljava/io/File;

    .line 21
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/T/T/T2/TS;->T(Ljava/lang/String;)V

    goto :goto_0
.end method
