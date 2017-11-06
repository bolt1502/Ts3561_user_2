.class public Lcom/lgb/canmodule/CanDataInfo$FordWarn;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FordWarn"
.end annotation


# instance fields
.field public Color:[I

.field public Num:I

.field public Update:I

.field public UpdateOnce:I

.field public Value:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x80

    .line 1754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1759
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$FordWarn;->Color:[I

    .line 1760
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$FordWarn;->Value:[I

    .line 1754
    return-void
.end method
