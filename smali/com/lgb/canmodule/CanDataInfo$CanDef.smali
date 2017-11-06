.class public Lcom/lgb/canmodule/CanDataInfo$CanDef;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CanDef"
.end annotation


# static fields
.field public static AUTO_LIGHT_BIG:I

.field public static AUTO_LIGHT_OFF:I

.field public static AUTO_LIGHT_SMALL:I

.field public static CanModuleUpdateAC:I

.field public static CanModuleUpdateDoor:I

.field public static CanModuleUpdateEps:I

.field public static CanModuleUpdateForeRadar:I

.field public static CanModuleUpdateKey:I

.field public static CanModuleUpdateNull:I

.field public static CanModuleUpdateRearRadar:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 9
    sput v1, Lcom/lgb/canmodule/CanDataInfo$CanDef;->AUTO_LIGHT_OFF:I

    .line 10
    sput v2, Lcom/lgb/canmodule/CanDataInfo$CanDef;->AUTO_LIGHT_SMALL:I

    .line 11
    const/4 v0, 0x3

    sput v0, Lcom/lgb/canmodule/CanDataInfo$CanDef;->AUTO_LIGHT_BIG:I

    .line 13
    sput v1, Lcom/lgb/canmodule/CanDataInfo$CanDef;->CanModuleUpdateNull:I

    .line 14
    sput v2, Lcom/lgb/canmodule/CanDataInfo$CanDef;->CanModuleUpdateKey:I

    .line 15
    const/4 v0, 0x2

    sput v0, Lcom/lgb/canmodule/CanDataInfo$CanDef;->CanModuleUpdateAC:I

    .line 16
    const/4 v0, 0x4

    sput v0, Lcom/lgb/canmodule/CanDataInfo$CanDef;->CanModuleUpdateRearRadar:I

    .line 17
    const/16 v0, 0x8

    sput v0, Lcom/lgb/canmodule/CanDataInfo$CanDef;->CanModuleUpdateForeRadar:I

    .line 18
    const/16 v0, 0x10

    sput v0, Lcom/lgb/canmodule/CanDataInfo$CanDef;->CanModuleUpdateDoor:I

    .line 19
    const/16 v0, 0x20

    sput v0, Lcom/lgb/canmodule/CanDataInfo$CanDef;->CanModuleUpdateEps:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
