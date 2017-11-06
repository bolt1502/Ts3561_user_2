.class public final enum Lcom/T/T/T3/TN;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/T/T/T3/TN;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum T:Lcom/T/T/T3/TN;

.field public static final enum T2:Lcom/T/T/T3/TN;

.field public static final enum T3:Lcom/T/T/T3/TN;

.field public static final enum TB:Lcom/T/T/T3/TN;

.field public static final enum TG:Lcom/T/T/T3/TN;

.field public static final enum TJ:Lcom/T/T/T3/TN;

.field public static final enum TN:Lcom/T/T/T3/TN;

.field public static final enum TR:Lcom/T/T/T3/TN;

.field public static final enum TW:Lcom/T/T/T3/TN;

.field public static final enum Te:Lcom/T/T/T3/TN;

.field public static final enum Tn:Lcom/T/T/T3/TN;

.field private static final synthetic Tr:[Lcom/T/T/T3/TN;

.field public static final enum Tw:Lcom/T/T/T3/TN;

.field public static final enum Ty:Lcom/T/T/T3/TN;


# instance fields
.field private final TP:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/T/T/T3/TN;

    const-string v1, "AutoCloseSource"

    invoke-direct {v0, v1, v3}, Lcom/T/T/T3/TN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T3/TN;->T:Lcom/T/T/T3/TN;

    .line 29
    new-instance v0, Lcom/T/T/T3/TN;

    const-string v1, "AllowComment"

    invoke-direct {v0, v1, v4}, Lcom/T/T/T3/TN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T3/TN;->T3:Lcom/T/T/T3/TN;

    .line 33
    new-instance v0, Lcom/T/T/T3/TN;

    const-string v1, "AllowUnQuotedFieldNames"

    invoke-direct {v0, v1, v5}, Lcom/T/T/T3/TN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T3/TN;->T2:Lcom/T/T/T3/TN;

    .line 37
    new-instance v0, Lcom/T/T/T3/TN;

    const-string v1, "AllowSingleQuotes"

    invoke-direct {v0, v1, v6}, Lcom/T/T/T3/TN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T3/TN;->TN:Lcom/T/T/T3/TN;

    .line 41
    new-instance v0, Lcom/T/T/T3/TN;

    const-string v1, "InternFieldNames"

    invoke-direct {v0, v1, v7}, Lcom/T/T/T3/TN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T3/TN;->Te:Lcom/T/T/T3/TN;

    .line 45
    new-instance v0, Lcom/T/T/T3/TN;

    const-string v1, "AllowISO8601DateFormat"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/T/T/T3/TN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T3/TN;->Tw:Lcom/T/T/T3/TN;

    .line 50
    new-instance v0, Lcom/T/T/T3/TN;

    const-string v1, "AllowArbitraryCommas"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/T/T/T3/TN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T3/TN;->Ty:Lcom/T/T/T3/TN;

    .line 55
    new-instance v0, Lcom/T/T/T3/TN;

    const-string v1, "UseBigDecimal"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/T/T/T3/TN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T3/TN;->Tn:Lcom/T/T/T3/TN;

    .line 60
    new-instance v0, Lcom/T/T/T3/TN;

    const-string v1, "IgnoreNotMatch"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/T/T/T3/TN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T3/TN;->TG:Lcom/T/T/T3/TN;

    .line 65
    new-instance v0, Lcom/T/T/T3/TN;

    const-string v1, "SortFeidFastMatch"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/T/T/T3/TN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T3/TN;->TR:Lcom/T/T/T3/TN;

    .line 70
    new-instance v0, Lcom/T/T/T3/TN;

    const-string v1, "DisableASM"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/T/T/T3/TN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T3/TN;->TW:Lcom/T/T/T3/TN;

    .line 75
    new-instance v0, Lcom/T/T/T3/TN;

    const-string v1, "DisableCircularReferenceDetect"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/T/T/T3/TN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T3/TN;->TJ:Lcom/T/T/T3/TN;

    .line 80
    new-instance v0, Lcom/T/T/T3/TN;

    const-string v1, "InitStringFieldAsEmpty"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/T/T/T3/TN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T3/TN;->TB:Lcom/T/T/T3/TN;

    .line 21
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/T/T/T3/TN;

    sget-object v1, Lcom/T/T/T3/TN;->T:Lcom/T/T/T3/TN;

    aput-object v1, v0, v3

    sget-object v1, Lcom/T/T/T3/TN;->T3:Lcom/T/T/T3/TN;

    aput-object v1, v0, v4

    sget-object v1, Lcom/T/T/T3/TN;->T2:Lcom/T/T/T3/TN;

    aput-object v1, v0, v5

    sget-object v1, Lcom/T/T/T3/TN;->TN:Lcom/T/T/T3/TN;

    aput-object v1, v0, v6

    sget-object v1, Lcom/T/T/T3/TN;->Te:Lcom/T/T/T3/TN;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/T/T/T3/TN;->Tw:Lcom/T/T/T3/TN;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/T/T/T3/TN;->Ty:Lcom/T/T/T3/TN;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/T/T/T3/TN;->Tn:Lcom/T/T/T3/TN;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/T/T/T3/TN;->TG:Lcom/T/T/T3/TN;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/T/T/T3/TN;->TR:Lcom/T/T/T3/TN;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/T/T/T3/TN;->TW:Lcom/T/T/T3/TN;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/T/T/T3/TN;->TJ:Lcom/T/T/T3/TN;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/T/T/T3/TN;->TB:Lcom/T/T/T3/TN;

    aput-object v2, v0, v1

    sput-object v0, Lcom/T/T/T3/TN;->Tr:[Lcom/T/T/T3/TN;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/T/T/T3/TN;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    iput v0, p0, Lcom/T/T/T3/TN;->TP:I

    .line 85
    return-void
.end method

.method public static T(ILcom/T/T/T3/TN;Z)I
    .locals 1
    .param p0, "features"    # I
    .param p1, "feature"    # Lcom/T/T/T3/TN;
    .param p2, "state"    # Z

    .prologue
    .line 98
    if-eqz p2, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/T/T/T3/TN;->T()I

    move-result v0

    or-int/2addr p0, v0

    .line 104
    :goto_0
    return p0

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/T/T/T3/TN;->T()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    goto :goto_0
.end method

.method public static T(ILcom/T/T/T3/TN;)Z
    .locals 1
    .param p0, "features"    # I
    .param p1, "feature"    # Lcom/T/T/T3/TN;

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/T/T/T3/TN;->T()I

    move-result v0

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/T/T/T3/TN;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/T/T/T3/TN;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/T/T/T3/TN;

    return-object v0
.end method

.method public static values()[Lcom/T/T/T3/TN;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/T/T/T3/TN;->Tr:[Lcom/T/T/T3/TN;

    invoke-virtual {v0}, [Lcom/T/T/T3/TN;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/T/T/T3/TN;

    return-object v0
.end method


# virtual methods
.method public final T()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/T/T/T3/TN;->TP:I

    return v0
.end method
