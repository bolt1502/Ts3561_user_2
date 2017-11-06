.class public Lcom/ts/main/common/MainVerSion;
.super Ljava/lang/Object;
.source "MainVerSion.java"


# static fields
.field public static HMIVER:Ljava/lang/String;

.field public static MMP_VERSION:Ljava/lang/String;

.field public static ROM_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3
    const-string v0, "_010.2017.07.29. 8.36"

    sput-object v0, Lcom/ts/main/common/MainVerSion;->HMIVER:Ljava/lang/String;

    .line 4
    sput-object v1, Lcom/ts/main/common/MainVerSion;->ROM_VERSION:Ljava/lang/String;

    .line 5
    sput-object v1, Lcom/ts/main/common/MainVerSion;->MMP_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
