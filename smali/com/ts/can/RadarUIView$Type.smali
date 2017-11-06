.class public final enum Lcom/ts/can/RadarUIView$Type;
.super Ljava/lang/Enum;
.source "RadarUIView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/RadarUIView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ts/can/RadarUIView$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COMMON:Lcom/ts/can/RadarUIView$Type;

.field private static final synthetic ENUM$VALUES:[Lcom/ts/can/RadarUIView$Type;

.field public static final enum FORD:Lcom/ts/can/RadarUIView$Type;

.field public static final enum XT5:Lcom/ts/can/RadarUIView$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 178
    new-instance v0, Lcom/ts/can/RadarUIView$Type;

    const-string v1, "COMMON"

    invoke-direct {v0, v1, v2}, Lcom/ts/can/RadarUIView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ts/can/RadarUIView$Type;->COMMON:Lcom/ts/can/RadarUIView$Type;

    new-instance v0, Lcom/ts/can/RadarUIView$Type;

    const-string v1, "FORD"

    invoke-direct {v0, v1, v3}, Lcom/ts/can/RadarUIView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ts/can/RadarUIView$Type;->FORD:Lcom/ts/can/RadarUIView$Type;

    new-instance v0, Lcom/ts/can/RadarUIView$Type;

    const-string v1, "XT5"

    invoke-direct {v0, v1, v4}, Lcom/ts/can/RadarUIView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ts/can/RadarUIView$Type;->XT5:Lcom/ts/can/RadarUIView$Type;

    .line 177
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ts/can/RadarUIView$Type;

    sget-object v1, Lcom/ts/can/RadarUIView$Type;->COMMON:Lcom/ts/can/RadarUIView$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ts/can/RadarUIView$Type;->FORD:Lcom/ts/can/RadarUIView$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ts/can/RadarUIView$Type;->XT5:Lcom/ts/can/RadarUIView$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ts/can/RadarUIView$Type;->ENUM$VALUES:[Lcom/ts/can/RadarUIView$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ts/can/RadarUIView$Type;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/ts/can/RadarUIView$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ts/can/RadarUIView$Type;

    return-object v0
.end method

.method public static values()[Lcom/ts/can/RadarUIView$Type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ts/can/RadarUIView$Type;->ENUM$VALUES:[Lcom/ts/can/RadarUIView$Type;

    array-length v1, v0

    new-array v2, v1, [Lcom/ts/can/RadarUIView$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
