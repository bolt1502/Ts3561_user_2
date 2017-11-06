.class public final enum Lcom/txznet/sdk/TXZTtsManager$PreemptType;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZTtsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreemptType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/txznet/sdk/TXZTtsManager$PreemptType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum PREEMPT_TYPE_FLUSH:Lcom/txznet/sdk/TXZTtsManager$PreemptType;

.field public static final enum PREEMPT_TYPE_IMMEADIATELY:Lcom/txznet/sdk/TXZTtsManager$PreemptType;

.field public static final enum PREEMPT_TYPE_IMMEADIATELY_WITHOUT_CANCLE:Lcom/txznet/sdk/TXZTtsManager$PreemptType;

.field public static final enum PREEMPT_TYPE_NEXT:Lcom/txznet/sdk/TXZTtsManager$PreemptType;

.field public static final enum PREEMPT_TYPE_NONE:Lcom/txznet/sdk/TXZTtsManager$PreemptType;

.field private static final synthetic T:[Lcom/txznet/sdk/TXZTtsManager$PreemptType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/txznet/sdk/TXZTtsManager$PreemptType;

    const-string v1, "PREEMPT_TYPE_NONE"

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZTtsManager$PreemptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZTtsManager$PreemptType;->PREEMPT_TYPE_NONE:Lcom/txznet/sdk/TXZTtsManager$PreemptType;

    .line 79
    new-instance v0, Lcom/txznet/sdk/TXZTtsManager$PreemptType;

    const-string v1, "PREEMPT_TYPE_IMMEADIATELY"

    invoke-direct {v0, v1, v3}, Lcom/txznet/sdk/TXZTtsManager$PreemptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZTtsManager$PreemptType;->PREEMPT_TYPE_IMMEADIATELY:Lcom/txznet/sdk/TXZTtsManager$PreemptType;

    .line 83
    new-instance v0, Lcom/txznet/sdk/TXZTtsManager$PreemptType;

    const-string v1, "PREEMPT_TYPE_NEXT"

    invoke-direct {v0, v1, v4}, Lcom/txznet/sdk/TXZTtsManager$PreemptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZTtsManager$PreemptType;->PREEMPT_TYPE_NEXT:Lcom/txznet/sdk/TXZTtsManager$PreemptType;

    .line 87
    new-instance v0, Lcom/txznet/sdk/TXZTtsManager$PreemptType;

    const-string v1, "PREEMPT_TYPE_FLUSH"

    invoke-direct {v0, v1, v5}, Lcom/txznet/sdk/TXZTtsManager$PreemptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZTtsManager$PreemptType;->PREEMPT_TYPE_FLUSH:Lcom/txznet/sdk/TXZTtsManager$PreemptType;

    .line 91
    new-instance v0, Lcom/txznet/sdk/TXZTtsManager$PreemptType;

    const-string v1, "PREEMPT_TYPE_IMMEADIATELY_WITHOUT_CANCLE"

    invoke-direct {v0, v1, v6}, Lcom/txznet/sdk/TXZTtsManager$PreemptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZTtsManager$PreemptType;->PREEMPT_TYPE_IMMEADIATELY_WITHOUT_CANCLE:Lcom/txznet/sdk/TXZTtsManager$PreemptType;

    .line 71
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/txznet/sdk/TXZTtsManager$PreemptType;

    sget-object v1, Lcom/txznet/sdk/TXZTtsManager$PreemptType;->PREEMPT_TYPE_NONE:Lcom/txznet/sdk/TXZTtsManager$PreemptType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/txznet/sdk/TXZTtsManager$PreemptType;->PREEMPT_TYPE_IMMEADIATELY:Lcom/txznet/sdk/TXZTtsManager$PreemptType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/txznet/sdk/TXZTtsManager$PreemptType;->PREEMPT_TYPE_NEXT:Lcom/txznet/sdk/TXZTtsManager$PreemptType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/txznet/sdk/TXZTtsManager$PreemptType;->PREEMPT_TYPE_FLUSH:Lcom/txznet/sdk/TXZTtsManager$PreemptType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/txznet/sdk/TXZTtsManager$PreemptType;->PREEMPT_TYPE_IMMEADIATELY_WITHOUT_CANCLE:Lcom/txznet/sdk/TXZTtsManager$PreemptType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/txznet/sdk/TXZTtsManager$PreemptType;->T:[Lcom/txznet/sdk/TXZTtsManager$PreemptType;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txznet/sdk/TXZTtsManager$PreemptType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    const-class v0, Lcom/txznet/sdk/TXZTtsManager$PreemptType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZTtsManager$PreemptType;

    return-object v0
.end method

.method public static values()[Lcom/txznet/sdk/TXZTtsManager$PreemptType;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/txznet/sdk/TXZTtsManager$PreemptType;->T:[Lcom/txznet/sdk/TXZTtsManager$PreemptType;

    invoke-virtual {v0}, [Lcom/txznet/sdk/TXZTtsManager$PreemptType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txznet/sdk/TXZTtsManager$PreemptType;

    return-object v0
.end method
