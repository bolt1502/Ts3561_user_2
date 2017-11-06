.class public Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;
.super Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;
.source "CanMzdCx4CarOilActivity.java"


# instance fields
.field private mAveOilHis:Lcom/lgb/canmodule/CanDataInfo$Cx4_Ave_Oil_His;

.field private mIvAveOils:[Lcom/ts/canview/CanVerticalBar;

.field private mIvMinOils:[Lcom/ts/canview/CanVerticalBar;

.field private mMinOilInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Min_Oil_Info;

.field private mRelativeManager:Lcom/ts/other/RelativeLayoutManager;

.field private mTvAveValue:[Landroid/widget/TextView;

.field private mTvAvgOil:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;-><init>()V

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mTvAveValue:[Landroid/widget/TextView;

    .line 22
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/ts/canview/CanVerticalBar;

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mIvMinOils:[Lcom/ts/canview/CanVerticalBar;

    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ts/canview/CanVerticalBar;

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mIvAveOils:[Lcom/ts/canview/CanVerticalBar;

    .line 25
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_Ave_Oil_His;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$Cx4_Ave_Oil_His;-><init>()V

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mAveOilHis:Lcom/lgb/canmodule/CanDataInfo$Cx4_Ave_Oil_His;

    .line 26
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_Min_Oil_Info;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$Cx4_Min_Oil_Info;-><init>()V

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mMinOilInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Min_Oil_Info;

    .line 14
    return-void
.end method

.method private AddText(III)Landroid/widget/TextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "textSize"    # I

    .prologue
    .line 127
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mRelativeManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2}, Lcom/ts/other/RelativeLayoutManager;->AddText(II)Landroid/widget/TextView;

    move-result-object v0

    .line 128
    .local v0, "view":Landroid/widget/TextView;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 130
    int-to-float v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 131
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 132
    return-object v0
.end method

.method private AddVerticalBar(III)Lcom/ts/canview/CanVerticalBar;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "imgId"    # I

    .prologue
    .line 136
    new-instance v0, Lcom/ts/canview/CanVerticalBar;

    invoke-direct {v0, p0, p3}, Lcom/ts/canview/CanVerticalBar;-><init>(Landroid/content/Context;I)V

    .line 137
    .local v0, "bar":Lcom/ts/canview/CanVerticalBar;
    const/4 v1, 0x0

    const/high16 v2, 0x43160000    # 150.0f

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/CanVerticalBar;->setMinMax(FF)V

    .line 138
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanVerticalBar;->setCurPos(I)V

    .line 139
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mRelativeManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, v0, p1, p2}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    .line 140
    return-object v0
.end method

.method private showAvgOilIcons([I)V
    .locals 4
    .param p1, "avgOils"    # [I

    .prologue
    const/16 v3, 0x96

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mIvAveOils:[Lcom/ts/canview/CanVerticalBar;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 107
    return-void

    .line 101
    :cond_0
    aget v1, p1, v0

    if-le v1, v3, :cond_1

    .line 102
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mIvAveOils:[Lcom/ts/canview/CanVerticalBar;

    iget-object v2, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mIvAveOils:[Lcom/ts/canview/CanVerticalBar;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/ts/canview/CanVerticalBar;->setCurPos(I)V

    .line 100
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mIvAveOils:[Lcom/ts/canview/CanVerticalBar;

    iget-object v2, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mIvAveOils:[Lcom/ts/canview/CanVerticalBar;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aget-object v1, v1, v2

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanVerticalBar;->setCurPos(I)V

    goto :goto_1
.end method

.method private showAvgOilValue([I)V
    .locals 7
    .param p1, "avgOils"    # [I

    .prologue
    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mTvAveValue:[Landroid/widget/TextView;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 97
    return-void

    .line 90
    :cond_0
    aget v1, p1, v0

    if-lez v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mTvAveValue:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mTvAveValue:[Landroid/widget/TextView;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aget-object v1, v1, v2

    .line 92
    const-string v2, "%.1f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget v5, p1, v0

    int-to-float v5, v5

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mTvAveValue:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mTvAveValue:[Landroid/widget/TextView;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private showMinOilIcons([I)V
    .locals 4
    .param p1, "minOils"    # [I

    .prologue
    const/16 v3, 0x96

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mIvMinOils:[Lcom/ts/canview/CanVerticalBar;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 117
    return-void

    .line 111
    :cond_0
    aget v1, p1, v0

    if-le v1, v3, :cond_1

    .line 112
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mIvMinOils:[Lcom/ts/canview/CanVerticalBar;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/ts/canview/CanVerticalBar;->setCurPos(I)V

    .line 110
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mIvMinOils:[Lcom/ts/canview/CanVerticalBar;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanVerticalBar;->setCurPos(I)V

    goto :goto_1
.end method


# virtual methods
.method protected InitUI()V
    .locals 5

    .prologue
    const/16 v4, 0x39

    .line 38
    const/16 v1, 0x362

    const/16 v2, 0x10d

    const/16 v3, 0x1e

    invoke-direct {p0, v1, v2, v3}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->AddText(III)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mTvAvgOil:Landroid/widget/TextView;

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mIvMinOils:[Lcom/ts/canview/CanVerticalBar;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 50
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mIvAveOils:[Lcom/ts/canview/CanVerticalBar;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 55
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mTvAveValue:[Landroid/widget/TextView;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 58
    return-void

    .line 41
    :cond_0
    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mIvMinOils:[Lcom/ts/canview/CanVerticalBar;

    add-int/lit8 v2, v0, -0x5

    mul-int/lit8 v2, v2, 0x21

    add-int/lit16 v2, v2, 0x19d

    .line 43
    sget v3, Lcom/ts/MainUI/R$drawable;->can_mzdcx4_pillar_small_up:I

    .line 42
    invoke-direct {p0, v2, v4, v3}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->AddVerticalBar(III)Lcom/ts/canview/CanVerticalBar;

    move-result-object v2

    aput-object v2, v1, v0

    .line 40
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mIvMinOils:[Lcom/ts/canview/CanVerticalBar;

    mul-int/lit8 v2, v0, 0x3f

    add-int/lit8 v2, v2, 0x62

    .line 46
    sget v3, Lcom/ts/MainUI/R$drawable;->can_mzdcx4_pillar_big_up:I

    .line 45
    invoke-direct {p0, v2, v4, v3}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->AddVerticalBar(III)Lcom/ts/canview/CanVerticalBar;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_3

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mIvAveOils:[Lcom/ts/canview/CanVerticalBar;

    mul-int/lit8 v2, v0, 0x6b

    add-int/lit8 v2, v2, 0x79

    const/16 v3, 0x153

    .line 52
    sget v4, Lcom/ts/MainUI/R$drawable;->can_mzdcx4_pillar_big_up:I

    .line 51
    invoke-direct {p0, v2, v3, v4}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->AddVerticalBar(III)Lcom/ts/canview/CanVerticalBar;

    move-result-object v2

    aput-object v2, v1, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    :cond_3
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mTvAveValue:[Landroid/widget/TextView;

    mul-int/lit8 v2, v0, 0x6b

    add-int/lit16 v2, v2, 0x14f

    const/16 v3, 0x12c

    const/16 v4, 0xf

    invoke-direct {p0, v2, v3, v4}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->AddText(III)Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected Query()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    const/16 v0, 0xb

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->MzdCx4Query(II)V

    .line 122
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->Sleep(J)V

    .line 123
    const/16 v0, 0xc

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->MzdCx4Query(II)V

    .line 124
    return-void
.end method

.method protected ResetData(Z)V
    .locals 6
    .param p1, "check"    # Z

    .prologue
    const/4 v5, 0x0

    .line 62
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mAveOilHis:Lcom/lgb/canmodule/CanDataInfo$Cx4_Ave_Oil_His;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MzdCx4GetAveOilHis(Lcom/lgb/canmodule/CanDataInfo$Cx4_Ave_Oil_His;)V

    .line 63
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mMinOilInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Min_Oil_Info;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MzdCx4GetMineOilInfo(Lcom/lgb/canmodule/CanDataInfo$Cx4_Min_Oil_Info;)V

    .line 65
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mMinOilInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Min_Oil_Info;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_Min_Oil_Info;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mMinOilInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Min_Oil_Info;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_Min_Oil_Info;->Update:I

    invoke-static {v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mMinOilInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Min_Oil_Info;

    iput v5, v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_Min_Oil_Info;->Update:I

    .line 69
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mMinOilInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Min_Oil_Info;

    iget-object v0, v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_Min_Oil_Info;->pjyh:[I

    invoke-direct {p0, v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->showMinOilIcons([I)V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mAveOilHis:Lcom/lgb/canmodule/CanDataInfo$Cx4_Ave_Oil_His;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_Ave_Oil_His;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mAveOilHis:Lcom/lgb/canmodule/CanDataInfo$Cx4_Ave_Oil_His;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_Ave_Oil_His;->Update:I

    invoke-static {v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mAveOilHis:Lcom/lgb/canmodule/CanDataInfo$Cx4_Ave_Oil_His;

    iput v5, v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_Ave_Oil_His;->Update:I

    .line 77
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mAveOilHis:Lcom/lgb/canmodule/CanDataInfo$Cx4_Ave_Oil_His;

    iget-object v0, v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_Ave_Oil_His;->pjryls:[I

    invoke-direct {p0, v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->showAvgOilIcons([I)V

    .line 79
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mAveOilHis:Lcom/lgb/canmodule/CanDataInfo$Cx4_Ave_Oil_His;

    iget-object v0, v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_Ave_Oil_His;->pjryls:[I

    invoke-direct {p0, v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->showAvgOilValue([I)V

    .line 81
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mTvAvgOil:Landroid/widget/TextView;

    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 82
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mAveOilHis:Lcom/lgb/canmodule/CanDataInfo$Cx4_Ave_Oil_His;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Cx4_Ave_Oil_His;->bcjspjyh:I

    int-to-float v3, v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    .line 81
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_3
    return-void
.end method

.method protected SetContentLayout()V
    .locals 2

    .prologue
    .line 30
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->setContentView(I)V

    .line 31
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mRelativeManager:Lcom/ts/other/RelativeLayoutManager;

    .line 32
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;->mRelativeManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v0}, Lcom/ts/other/RelativeLayoutManager;->GetLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 33
    sget v1, Lcom/ts/MainUI/R$drawable;->can_mzdcx4_bg:I

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 34
    return-void
.end method
