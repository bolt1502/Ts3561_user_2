.class public final Lcom/T2/T/T3/T3;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/T2/T/T3/T3$T;
    }
.end annotation


# instance fields
.field private final T:I

.field private final T2:I

.field private final T3:I

.field private final T7:Lcom/T2/T/T3/Tw/T;

.field private final TB:Z

.field private final TG:Z

.field private final TJ:I

.field private final TN:Landroid/graphics/drawable/Drawable;

.field private final TO:Lcom/T2/T/T3/T2/T;

.field private final TP:Ljava/lang/Object;

.field private final TQ:Z

.field private final TR:Lcom/T2/T/T3/T/T;

.field private final TW:Landroid/graphics/BitmapFactory$Options;

.field private final Te:Landroid/graphics/drawable/Drawable;

.field private final Tn:Z

.field private final To:Landroid/os/Handler;

.field private final Tr:Lcom/T2/T/T3/Tw/T;

.field private final Tw:Landroid/graphics/drawable/Drawable;

.field private final Ty:Z


# direct methods
.method private constructor <init>(Lcom/T2/T/T3/T3$T;)V
    .locals 1
    .param p1, "builder"    # Lcom/T2/T/T3/T3$T;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Lcom/T2/T/T3/T3$T;->T(Lcom/T2/T/T3/T3$T;)I

    move-result v0

    iput v0, p0, Lcom/T2/T/T3/T3;->T:I

    .line 89
    invoke-static {p1}, Lcom/T2/T/T3/T3$T;->T3(Lcom/T2/T/T3/T3$T;)I

    move-result v0

    iput v0, p0, Lcom/T2/T/T3/T3;->T3:I

    .line 90
    invoke-static {p1}, Lcom/T2/T/T3/T3$T;->T2(Lcom/T2/T/T3/T3$T;)I

    move-result v0

    iput v0, p0, Lcom/T2/T/T3/T3;->T2:I

    .line 91
    invoke-static {p1}, Lcom/T2/T/T3/T3$T;->TN(Lcom/T2/T/T3/T3$T;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/T3;->TN:Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-static {p1}, Lcom/T2/T/T3/T3$T;->Te(Lcom/T2/T/T3/T3$T;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/T3;->Te:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-static {p1}, Lcom/T2/T/T3/T3$T;->Tw(Lcom/T2/T/T3/T3$T;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/T3;->Tw:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-static {p1}, Lcom/T2/T/T3/T3$T;->Ty(Lcom/T2/T/T3/T3$T;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/T2/T/T3/T3;->Ty:Z

    .line 95
    invoke-static {p1}, Lcom/T2/T/T3/T3$T;->Tn(Lcom/T2/T/T3/T3$T;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/T2/T/T3/T3;->Tn:Z

    .line 96
    invoke-static {p1}, Lcom/T2/T/T3/T3$T;->TG(Lcom/T2/T/T3/T3$T;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/T2/T/T3/T3;->TG:Z

    .line 97
    invoke-static {p1}, Lcom/T2/T/T3/T3$T;->TR(Lcom/T2/T/T3/T3$T;)Lcom/T2/T/T3/T/T;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/T3;->TR:Lcom/T2/T/T3/T/T;

    .line 98
    invoke-static {p1}, Lcom/T2/T/T3/T3$T;->TW(Lcom/T2/T/T3/T3$T;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/T3;->TW:Landroid/graphics/BitmapFactory$Options;

    .line 99
    invoke-static {p1}, Lcom/T2/T/T3/T3$T;->TJ(Lcom/T2/T/T3/T3$T;)I

    move-result v0

    iput v0, p0, Lcom/T2/T/T3/T3;->TJ:I

    .line 100
    invoke-static {p1}, Lcom/T2/T/T3/T3$T;->TB(Lcom/T2/T/T3/T3$T;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/T2/T/T3/T3;->TB:Z

    .line 101
    invoke-static {p1}, Lcom/T2/T/T3/T3$T;->TP(Lcom/T2/T/T3/T3$T;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/T3;->TP:Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Lcom/T2/T/T3/T3$T;->Tr(Lcom/T2/T/T3/T3$T;)Lcom/T2/T/T3/Tw/T;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/T3;->Tr:Lcom/T2/T/T3/Tw/T;

    .line 103
    invoke-static {p1}, Lcom/T2/T/T3/T3$T;->T7(Lcom/T2/T/T3/T3$T;)Lcom/T2/T/T3/Tw/T;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/T3;->T7:Lcom/T2/T/T3/Tw/T;

    .line 104
    invoke-static {p1}, Lcom/T2/T/T3/T3$T;->TO(Lcom/T2/T/T3/T3$T;)Lcom/T2/T/T3/T2/T;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/T3;->TO:Lcom/T2/T/T3/T2/T;

    .line 105
    invoke-static {p1}, Lcom/T2/T/T3/T3$T;->To(Lcom/T2/T/T3/T3$T;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/T3;->To:Landroid/os/Handler;

    .line 106
    invoke-static {p1}, Lcom/T2/T/T3/T3$T;->TQ(Lcom/T2/T/T3/T3$T;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/T2/T/T3/T3;->TQ:Z

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lcom/T2/T/T3/T3$T;Lcom/T2/T/T3/T3;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/T2/T/T3/T3;-><init>(Lcom/T2/T/T3/T3$T;)V

    return-void
.end method

.method public static T()Lcom/T2/T/T3/T3;
    .locals 1

    .prologue
    .line 507
    new-instance v0, Lcom/T2/T/T3/T3$T;

    invoke-direct {v0}, Lcom/T2/T/T3/T3$T;-><init>()V

    invoke-virtual {v0}, Lcom/T2/T/T3/T3$T;->T()Lcom/T2/T/T3/T3;

    move-result-object v0

    return-object v0
.end method
