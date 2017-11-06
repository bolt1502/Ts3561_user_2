.class public final Lcom/T3/T/T/Ty;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final T:[I

.field public static final T2:[F

.field public static final T3:[J

.field public static final TN:[D

.field public static final Te:[Z

.field public static final Tn:[B

.field public static final Tw:[Ljava/lang/String;

.field public static final Ty:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    new-array v0, v1, [I

    sput-object v0, Lcom/T3/T/T/Ty;->T:[I

    .line 76
    new-array v0, v1, [J

    sput-object v0, Lcom/T3/T/T/Ty;->T3:[J

    .line 77
    new-array v0, v1, [F

    sput-object v0, Lcom/T3/T/T/Ty;->T2:[F

    .line 78
    new-array v0, v1, [D

    sput-object v0, Lcom/T3/T/T/Ty;->TN:[D

    .line 79
    new-array v0, v1, [Z

    sput-object v0, Lcom/T3/T/T/Ty;->Te:[Z

    .line 80
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/T3/T/T/Ty;->Tw:[Ljava/lang/String;

    .line 81
    new-array v0, v1, [[B

    sput-object v0, Lcom/T3/T/T/Ty;->Ty:[[B

    .line 82
    new-array v0, v1, [B

    sput-object v0, Lcom/T3/T/T/Ty;->Tn:[B

    return-void
.end method

.method static T(I)I
    .locals 1

    .prologue
    .line 62
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static T(II)I
    .locals 1

    .prologue
    .line 72
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static T(Lcom/T3/T/T/T;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/T3/T/T/T;->T3(I)Z

    move-result v0

    return v0
.end method

.method public static T3(I)I
    .locals 1

    .prologue
    .line 67
    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method public static final T3(Lcom/T3/T/T/T;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0}, Lcom/T3/T/T/T;->TO()I

    move-result v1

    .line 115
    invoke-virtual {p0, p1}, Lcom/T3/T/T/T;->T3(I)Z

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/T3/T/T/T;->Tr()I

    move-result v2

    if-lez v2, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/T3/T/T/T;->T()I

    move-result v2

    .line 118
    if-eq v2, p1, :cond_1

    .line 124
    :cond_0
    invoke-virtual {p0, v1}, Lcom/T3/T/T/T;->Te(I)V

    .line 125
    return v0

    .line 121
    :cond_1
    invoke-virtual {p0, p1}, Lcom/T3/T/T/T;->T3(I)Z

    .line 122
    add-int/lit8 v0, v0, 0x1

    .line 123
    goto :goto_0
.end method
