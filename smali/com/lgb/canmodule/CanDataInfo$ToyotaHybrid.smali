.class public Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToyotaHybrid"
.end annotation


# instance fields
.field public Battery:I

.field public ClQdMd:I

.field public DcQdMd:I

.field public FdjQdCl:I

.field public FdjQdMd:I

.field public MdQdCl:I

.field public MdQdDc:I

.field public Update:I

.field public UpdateOnce:I

.field public fgHybrid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
