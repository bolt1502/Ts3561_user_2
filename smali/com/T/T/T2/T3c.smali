.class public final enum Lcom/T/T/T2/T3c;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/T/T/T2/T3c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum T:Lcom/T/T/T2/T3c;

.field private static final synthetic T0:[Lcom/T/T/T2/T3c;

.field public static final enum T2:Lcom/T/T/T2/T3c;

.field public static final enum T3:Lcom/T/T/T2/T3c;

.field public static final enum T7:Lcom/T/T/T2/T3c;

.field public static final enum TB:Lcom/T/T/T2/T3c;

.field public static final enum TG:Lcom/T/T/T2/T3c;

.field public static final enum TJ:Lcom/T/T/T2/T3c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum TL:Lcom/T/T/T2/T3c;

.field public static final enum TN:Lcom/T/T/T2/T3c;

.field public static final enum TO:Lcom/T/T/T2/T3c;

.field public static final enum TP:Lcom/T/T/T2/T3c;

.field public static final enum TQ:Lcom/T/T/T2/T3c;

.field public static final enum TR:Lcom/T/T/T2/T3c;

.field public static final enum TW:Lcom/T/T/T2/T3c;

.field public static final enum Te:Lcom/T/T/T2/T3c;

.field public static final enum Tn:Lcom/T/T/T2/T3c;

.field public static final enum To:Lcom/T/T/T2/T3c;

.field public static final enum Tr:Lcom/T/T/T2/T3c;

.field public static final enum Tw:Lcom/T/T/T2/T3c;

.field public static final enum Ty:Lcom/T/T/T2/T3c;


# instance fields
.field private final TH:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/T/T/T2/T3c;

    const-string v1, "QuoteFieldNames"

    invoke-direct {v0, v1, v3}, Lcom/T/T/T2/T3c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T2/T3c;->T:Lcom/T/T/T2/T3c;

    .line 27
    new-instance v0, Lcom/T/T/T2/T3c;

    const-string v1, "UseSingleQuotes"

    invoke-direct {v0, v1, v4}, Lcom/T/T/T2/T3c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T2/T3c;->T3:Lcom/T/T/T2/T3c;

    .line 31
    new-instance v0, Lcom/T/T/T2/T3c;

    const-string v1, "WriteMapNullValue"

    invoke-direct {v0, v1, v5}, Lcom/T/T/T2/T3c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T2/T3c;->T2:Lcom/T/T/T2/T3c;

    .line 35
    new-instance v0, Lcom/T/T/T2/T3c;

    const-string v1, "WriteEnumUsingToString"

    invoke-direct {v0, v1, v6}, Lcom/T/T/T2/T3c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T2/T3c;->TN:Lcom/T/T/T2/T3c;

    .line 39
    new-instance v0, Lcom/T/T/T2/T3c;

    const-string v1, "UseISO8601DateFormat"

    invoke-direct {v0, v1, v7}, Lcom/T/T/T2/T3c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T2/T3c;->Te:Lcom/T/T/T2/T3c;

    .line 43
    new-instance v0, Lcom/T/T/T2/T3c;

    const-string v1, "WriteNullListAsEmpty"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/T/T/T2/T3c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T2/T3c;->Tw:Lcom/T/T/T2/T3c;

    .line 47
    new-instance v0, Lcom/T/T/T2/T3c;

    const-string v1, "WriteNullStringAsEmpty"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/T/T/T2/T3c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T2/T3c;->Ty:Lcom/T/T/T2/T3c;

    .line 51
    new-instance v0, Lcom/T/T/T2/T3c;

    const-string v1, "WriteNullNumberAsZero"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/T/T/T2/T3c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T2/T3c;->Tn:Lcom/T/T/T2/T3c;

    .line 55
    new-instance v0, Lcom/T/T/T2/T3c;

    const-string v1, "WriteNullBooleanAsFalse"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/T/T/T2/T3c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T2/T3c;->TG:Lcom/T/T/T2/T3c;

    .line 59
    new-instance v0, Lcom/T/T/T2/T3c;

    const-string v1, "SkipTransientField"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/T/T/T2/T3c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T2/T3c;->TR:Lcom/T/T/T2/T3c;

    .line 63
    new-instance v0, Lcom/T/T/T2/T3c;

    const-string v1, "SortField"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/T/T/T2/T3c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T2/T3c;->TW:Lcom/T/T/T2/T3c;

    .line 67
    new-instance v0, Lcom/T/T/T2/T3c;

    const-string v1, "WriteTabAsSpecial"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/T/T/T2/T3c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T2/T3c;->TJ:Lcom/T/T/T2/T3c;

    .line 72
    new-instance v0, Lcom/T/T/T2/T3c;

    const-string v1, "PrettyFormat"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/T/T/T2/T3c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T2/T3c;->TB:Lcom/T/T/T2/T3c;

    .line 76
    new-instance v0, Lcom/T/T/T2/T3c;

    const-string v1, "WriteClassName"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/T/T/T2/T3c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T2/T3c;->TP:Lcom/T/T/T2/T3c;

    .line 81
    new-instance v0, Lcom/T/T/T2/T3c;

    const-string v1, "DisableCircularReferenceDetect"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/T/T/T2/T3c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T2/T3c;->Tr:Lcom/T/T/T2/T3c;

    .line 86
    new-instance v0, Lcom/T/T/T2/T3c;

    const-string v1, "WriteSlashAsSpecial"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/T/T/T2/T3c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T2/T3c;->T7:Lcom/T/T/T2/T3c;

    .line 91
    new-instance v0, Lcom/T/T/T2/T3c;

    const-string v1, "BrowserCompatible"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/T/T/T2/T3c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T2/T3c;->TO:Lcom/T/T/T2/T3c;

    .line 96
    new-instance v0, Lcom/T/T/T2/T3c;

    const-string v1, "WriteDateUseDateFormat"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/T/T/T2/T3c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T2/T3c;->To:Lcom/T/T/T2/T3c;

    .line 101
    new-instance v0, Lcom/T/T/T2/T3c;

    const-string v1, "NotWriteRootClassName"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/T/T/T2/T3c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T2/T3c;->TQ:Lcom/T/T/T2/T3c;

    .line 106
    new-instance v0, Lcom/T/T/T2/T3c;

    const-string v1, "DisableCheckSpecialChar"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/T/T/T2/T3c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/T/T/T2/T3c;->TL:Lcom/T/T/T2/T3c;

    .line 22
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/T/T/T2/T3c;

    sget-object v1, Lcom/T/T/T2/T3c;->T:Lcom/T/T/T2/T3c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/T/T/T2/T3c;->T3:Lcom/T/T/T2/T3c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/T/T/T2/T3c;->T2:Lcom/T/T/T2/T3c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/T/T/T2/T3c;->TN:Lcom/T/T/T2/T3c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/T/T/T2/T3c;->Te:Lcom/T/T/T2/T3c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/T/T/T2/T3c;->Tw:Lcom/T/T/T2/T3c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/T/T/T2/T3c;->Ty:Lcom/T/T/T2/T3c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/T/T/T2/T3c;->Tn:Lcom/T/T/T2/T3c;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/T/T/T2/T3c;->TG:Lcom/T/T/T2/T3c;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/T/T/T2/T3c;->TR:Lcom/T/T/T2/T3c;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/T/T/T2/T3c;->TW:Lcom/T/T/T2/T3c;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/T/T/T2/T3c;->TJ:Lcom/T/T/T2/T3c;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/T/T/T2/T3c;->TB:Lcom/T/T/T2/T3c;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/T/T/T2/T3c;->TP:Lcom/T/T/T2/T3c;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/T/T/T2/T3c;->Tr:Lcom/T/T/T2/T3c;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/T/T/T2/T3c;->T7:Lcom/T/T/T2/T3c;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/T/T/T2/T3c;->TO:Lcom/T/T/T2/T3c;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/T/T/T2/T3c;->To:Lcom/T/T/T2/T3c;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/T/T/T2/T3c;->TQ:Lcom/T/T/T2/T3c;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/T/T/T2/T3c;->TL:Lcom/T/T/T2/T3c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/T/T/T2/T3c;->T0:[Lcom/T/T/T2/T3c;

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
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/T/T/T2/T3c;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    iput v0, p0, Lcom/T/T/T2/T3c;->TH:I

    .line 111
    return-void
.end method

.method public static T(ILcom/T/T/T2/T3c;)Z
    .locals 1
    .param p0, "features"    # I
    .param p1, "feature"    # Lcom/T/T/T2/T3c;

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/T/T/T2/T3c;->T()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/T/T/T2/T3c;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/T/T/T2/T3c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/T/T/T2/T3c;

    return-object v0
.end method

.method public static values()[Lcom/T/T/T2/T3c;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/T/T/T2/T3c;->T0:[Lcom/T/T/T2/T3c;

    invoke-virtual {v0}, [Lcom/T/T/T2/T3c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/T/T/T2/T3c;

    return-object v0
.end method


# virtual methods
.method public final T()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/T/T/T2/T3c;->TH:I

    return v0
.end method
