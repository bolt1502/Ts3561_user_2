.class public Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OdysseyMenu"
.end annotation


# instance fields
.field public Code:[I

.field public DataLen:[I

.field public Gl:[I

.field public Menu1Data:[B

.field public Menu2Data:[B

.field public Menu3Data:[B

.field public Num:I

.field public TitleData:[B

.field public Update:I

.field public UpdateOnce:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/16 v1, 0x28

    .line 3462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3467
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;->Code:[I

    .line 3468
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;->Gl:[I

    .line 3469
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;->DataLen:[I

    .line 3470
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;->TitleData:[B

    .line 3471
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;->Menu1Data:[B

    .line 3472
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;->Menu2Data:[B

    .line 3473
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;->Menu3Data:[B

    .line 3462
    return-void
.end method
