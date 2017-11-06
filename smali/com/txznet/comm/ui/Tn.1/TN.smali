.class public Lcom/txznet/comm/ui/Tn/TN;
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
    const/16 v0, 0x64

    .line 4
    sput v0, Lcom/txznet/comm/ui/Tn/TN;->T:I

    .line 5
    sput v0, Lcom/txznet/comm/ui/Tn/TN;->T3:I

    .line 6
    const/16 v0, 0x2a

    sput v0, Lcom/txznet/comm/ui/Tn/TN;->T2:I

    .line 7
    const/16 v0, 0x3c

    sput v0, Lcom/txznet/comm/ui/Tn/TN;->TN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
