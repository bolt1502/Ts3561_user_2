.class public final enum Lcom/txznet/comm/ui/view/RippleView$T3;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/comm/ui/view/RippleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "T3"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/txznet/comm/ui/view/RippleView$T3;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum T:Lcom/txznet/comm/ui/view/RippleView$T3;

.field public static final enum T2:Lcom/txznet/comm/ui/view/RippleView$T3;

.field public static final enum T3:Lcom/txznet/comm/ui/view/RippleView$T3;

.field private static final synthetic Te:[Lcom/txznet/comm/ui/view/RippleView$T3;


# instance fields
.field TN:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 511
    new-instance v0, Lcom/txznet/comm/ui/view/RippleView$T3;

    const-string v1, "SIMPLE"

    invoke-direct {v0, v1, v2, v2}, Lcom/txznet/comm/ui/view/RippleView$T3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/txznet/comm/ui/view/RippleView$T3;->T:Lcom/txznet/comm/ui/view/RippleView$T3;

    .line 512
    new-instance v0, Lcom/txznet/comm/ui/view/RippleView$T3;

    const-string v1, "DOUBLE"

    invoke-direct {v0, v1, v3, v3}, Lcom/txznet/comm/ui/view/RippleView$T3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/txznet/comm/ui/view/RippleView$T3;->T3:Lcom/txznet/comm/ui/view/RippleView$T3;

    .line 513
    new-instance v0, Lcom/txznet/comm/ui/view/RippleView$T3;

    const-string v1, "RECTANGLE"

    invoke-direct {v0, v1, v4, v4}, Lcom/txznet/comm/ui/view/RippleView$T3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/txznet/comm/ui/view/RippleView$T3;->T2:Lcom/txznet/comm/ui/view/RippleView$T3;

    .line 510
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/txznet/comm/ui/view/RippleView$T3;

    sget-object v1, Lcom/txznet/comm/ui/view/RippleView$T3;->T:Lcom/txznet/comm/ui/view/RippleView$T3;

    aput-object v1, v0, v2

    sget-object v1, Lcom/txznet/comm/ui/view/RippleView$T3;->T3:Lcom/txznet/comm/ui/view/RippleView$T3;

    aput-object v1, v0, v3

    sget-object v1, Lcom/txznet/comm/ui/view/RippleView$T3;->T2:Lcom/txznet/comm/ui/view/RippleView$T3;

    aput-object v1, v0, v4

    sput-object v0, Lcom/txznet/comm/ui/view/RippleView$T3;->Te:[Lcom/txznet/comm/ui/view/RippleView$T3;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 518
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 519
    iput p3, p0, Lcom/txznet/comm/ui/view/RippleView$T3;->TN:I

    .line 520
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txznet/comm/ui/view/RippleView$T3;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 510
    const-class v0, Lcom/txznet/comm/ui/view/RippleView$T3;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/txznet/comm/ui/view/RippleView$T3;

    return-object v0
.end method

.method public static values()[Lcom/txznet/comm/ui/view/RippleView$T3;
    .locals 1

    .prologue
    .line 510
    sget-object v0, Lcom/txznet/comm/ui/view/RippleView$T3;->Te:[Lcom/txznet/comm/ui/view/RippleView$T3;

    invoke-virtual {v0}, [Lcom/txznet/comm/ui/view/RippleView$T3;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txznet/comm/ui/view/RippleView$T3;

    return-object v0
.end method
