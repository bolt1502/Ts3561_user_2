.class public Lcom/txznet/comm/ui/Tn/Te;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static T:I

.field public static T2:I

.field public static T3:I

.field public static TN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x50

    .line 4
    sput v0, Lcom/txznet/comm/ui/Tn/Te;->T:I

    .line 5
    sput v0, Lcom/txznet/comm/ui/Tn/Te;->T3:I

    .line 6
    const/16 v0, 0x23

    sput v0, Lcom/txznet/comm/ui/Tn/Te;->T2:I

    .line 7
    const/16 v0, 0x32

    sput v0, Lcom/txznet/comm/ui/Tn/Te;->TN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
