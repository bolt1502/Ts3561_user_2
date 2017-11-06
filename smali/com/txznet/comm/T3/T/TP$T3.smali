.class public final enum Lcom/txznet/comm/T3/T/TP$T3;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/comm/T3/T/TP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "T3"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/txznet/comm/T3/T/TP$T3;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum T:Lcom/txznet/comm/T3/T/TP$T3;

.field public static final enum T2:Lcom/txznet/comm/T3/T/TP$T3;

.field public static final enum T3:Lcom/txznet/comm/T3/T/TP$T3;

.field public static final enum TN:Lcom/txznet/comm/T3/T/TP$T3;

.field public static final enum Te:Lcom/txznet/comm/T3/T/TP$T3;

.field private static final synthetic Tw:[Lcom/txznet/comm/T3/T/TP$T3;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/txznet/comm/T3/T/TP$T3;

    const-string v1, "PREEMPT_TYPE_NONE"

    invoke-direct {v0, v1, v2}, Lcom/txznet/comm/T3/T/TP$T3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/comm/T3/T/TP$T3;->T:Lcom/txznet/comm/T3/T/TP$T3;

    .line 37
    new-instance v0, Lcom/txznet/comm/T3/T/TP$T3;

    const-string v1, "PREEMPT_TYPE_IMMEADIATELY"

    invoke-direct {v0, v1, v3}, Lcom/txznet/comm/T3/T/TP$T3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/comm/T3/T/TP$T3;->T3:Lcom/txznet/comm/T3/T/TP$T3;

    .line 41
    new-instance v0, Lcom/txznet/comm/T3/T/TP$T3;

    const-string v1, "PREEMPT_TYPE_NEXT"

    invoke-direct {v0, v1, v4}, Lcom/txznet/comm/T3/T/TP$T3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/comm/T3/T/TP$T3;->T2:Lcom/txznet/comm/T3/T/TP$T3;

    .line 45
    new-instance v0, Lcom/txznet/comm/T3/T/TP$T3;

    const-string v1, "PREEMPT_TYPE_FLUSH"

    invoke-direct {v0, v1, v5}, Lcom/txznet/comm/T3/T/TP$T3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/comm/T3/T/TP$T3;->TN:Lcom/txznet/comm/T3/T/TP$T3;

    .line 49
    new-instance v0, Lcom/txznet/comm/T3/T/TP$T3;

    const-string v1, "PREEMPT_TYPE_IMMEADIATELY_WITHOUT_CANCLE"

    invoke-direct {v0, v1, v6}, Lcom/txznet/comm/T3/T/TP$T3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/comm/T3/T/TP$T3;->Te:Lcom/txznet/comm/T3/T/TP$T3;

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/txznet/comm/T3/T/TP$T3;

    sget-object v1, Lcom/txznet/comm/T3/T/TP$T3;->T:Lcom/txznet/comm/T3/T/TP$T3;

    aput-object v1, v0, v2

    sget-object v1, Lcom/txznet/comm/T3/T/TP$T3;->T3:Lcom/txznet/comm/T3/T/TP$T3;

    aput-object v1, v0, v3

    sget-object v1, Lcom/txznet/comm/T3/T/TP$T3;->T2:Lcom/txznet/comm/T3/T/TP$T3;

    aput-object v1, v0, v4

    sget-object v1, Lcom/txznet/comm/T3/T/TP$T3;->TN:Lcom/txznet/comm/T3/T/TP$T3;

    aput-object v1, v0, v5

    sget-object v1, Lcom/txznet/comm/T3/T/TP$T3;->Te:Lcom/txznet/comm/T3/T/TP$T3;

    aput-object v1, v0, v6

    sput-object v0, Lcom/txznet/comm/T3/T/TP$T3;->Tw:[Lcom/txznet/comm/T3/T/TP$T3;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txznet/comm/T3/T/TP$T3;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/txznet/comm/T3/T/TP$T3;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/txznet/comm/T3/T/TP$T3;

    return-object v0
.end method

.method public static values()[Lcom/txznet/comm/T3/T/TP$T3;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/txznet/comm/T3/T/TP$T3;->Tw:[Lcom/txznet/comm/T3/T/TP$T3;

    invoke-virtual {v0}, [Lcom/txznet/comm/T3/T/TP$T3;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txznet/comm/T3/T/TP$T3;

    return-object v0
.end method
