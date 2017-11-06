.class public Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA2;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZT_BMS_DATA2"
.end annotation


# instance fields
.field public CtlTemp:I

.field public DjTemp:I

.field public PwmMk:I

.field public Update:I

.field public UpdateOnce:I

.field public Xdl:I

.field public Xdy:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
