.class public Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanBmwMiniFsttCarInfoActivity.java"


# instance fields
.field private mContainer:Lcom/ts/canview/RelativeLayoutContainer;

.field private mTripInfo:Lcom/lgb/canmodule/CanDataInfo$BMW_Trip_MINI;

.field private mTvOil:Landroid/widget/TextView;

.field private mTvRange:Landroid/widget/TextView;

.field private mTvSpeed:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 22
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$BMW_Trip_MINI;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$BMW_Trip_MINI;-><init>()V

    iput-object v0, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mTripInfo:Lcom/lgb/canmodule/CanDataInfo$BMW_Trip_MINI;

    .line 14
    return-void
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    return v0
.end method

.method protected InitUI()V
    .locals 12

    .prologue
    const/16 v11, 0x19

    const/16 v3, 0x11

    const/4 v2, 0x0

    const/16 v9, 0x96

    const/4 v4, -0x1

    .line 36
    new-instance v0, Lcom/ts/canview/RelativeLayoutContainer;

    invoke-direct {v0, p0}, Lcom/ts/canview/RelativeLayoutContainer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    .line 38
    iget-object v0, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_ecu_fuel:I

    invoke-virtual {v0, v9, v9, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    .line 39
    iget-object v0, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x190

    sget v5, Lcom/ts/MainUI/R$drawable;->can_ecu_speed:I

    invoke-virtual {v0, v1, v9, v5}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    .line 40
    iget-object v0, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x28a

    sget v5, Lcom/ts/MainUI/R$drawable;->can_ecu_range:I

    invoke-virtual {v0, v1, v9, v5}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    .line 42
    iget-object v0, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x78

    const/16 v5, 0x118

    const/16 v9, 0xfa

    const/16 v10, 0x64

    invoke-virtual {v0, v1, v5, v9, v10}, Lcom/ts/canview/RelativeLayoutContainer;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mTvOil:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x16d

    const/16 v5, 0x118

    const/16 v9, 0xfa

    const/16 v10, 0x64

    invoke-virtual {v0, v1, v5, v9, v10}, Lcom/ts/canview/RelativeLayoutContainer;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mTvSpeed:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x294

    const/16 v5, 0x118

    const/16 v9, 0xfa

    const/16 v10, 0x64

    invoke-virtual {v0, v1, v5, v9, v10}, Lcom/ts/canview/RelativeLayoutContainer;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mTvRange:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0xaa

    const/16 v5, 0x17c

    invoke-virtual {v0, v1, v5}, Lcom/ts/canview/RelativeLayoutContainer;->addText(II)Landroid/widget/TextView;

    move-result-object v6

    .line 47
    .local v6, "oilUnit":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x1c2

    const/16 v5, 0x17c

    invoke-virtual {v0, v1, v5}, Lcom/ts/canview/RelativeLayoutContainer;->addText(II)Landroid/widget/TextView;

    move-result-object v8

    .line 48
    .local v8, "speedUnit":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x2f8

    const/16 v5, 0x17c

    invoke-virtual {v0, v1, v5}, Lcom/ts/canview/RelativeLayoutContainer;->addText(II)Landroid/widget/TextView;

    move-result-object v7

    .line 50
    .local v7, "rangUnit":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v1, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mTvOil:Landroid/widget/TextView;

    const/16 v5, 0x23

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;IIII)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mTvSpeed:Landroid/widget/TextView;

    const/16 v5, 0x23

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;IIII)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mTvRange:Landroid/widget/TextView;

    const/16 v5, 0x23

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;IIII)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 53
    sget v1, Lcom/ts/MainUI/R$string;->can_fuels_lkm:I

    invoke-virtual {v0, v6, v1, v4, v11}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle1(Landroid/widget/TextView;III)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 54
    sget v1, Lcom/ts/MainUI/R$string;->can_fuels_kml:I

    invoke-virtual {v0, v8, v1, v4, v11}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle1(Landroid/widget/TextView;III)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 55
    sget v1, Lcom/ts/MainUI/R$string;->can_distance_km:I

    invoke-virtual {v0, v7, v1, v4, v11}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle1(Landroid/widget/TextView;III)Lcom/ts/canview/RelativeLayoutContainer;

    .line 56
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method protected ResetData(Z)V
    .locals 6
    .param p1, "check"    # Z

    .prologue
    const/4 v5, 0x0

    .line 60
    iget-object v0, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mTripInfo:Lcom/lgb/canmodule/CanDataInfo$BMW_Trip_MINI;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->BmwMiniGetTrip(Lcom/lgb/canmodule/CanDataInfo$BMW_Trip_MINI;)V

    .line 62
    iget-object v0, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mTripInfo:Lcom/lgb/canmodule/CanDataInfo$BMW_Trip_MINI;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_Trip_MINI;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mTripInfo:Lcom/lgb/canmodule/CanDataInfo$BMW_Trip_MINI;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_Trip_MINI;->Update:I

    invoke-static {v0}, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mTripInfo:Lcom/lgb/canmodule/CanDataInfo$BMW_Trip_MINI;

    iput v5, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_Trip_MINI;->Update:I

    .line 68
    iget-object v0, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mTvOil:Landroid/widget/TextView;

    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mTripInfo:Lcom/lgb/canmodule/CanDataInfo$BMW_Trip_MINI;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$BMW_Trip_MINI;->Consumption:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mTvSpeed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mTripInfo:Lcom/lgb/canmodule/CanDataInfo$BMW_Trip_MINI;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$BMW_Trip_MINI;->Speed:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mTvRange:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/bmw/mini/fstt/CanBmwMiniFsttCarInfoActivity;->mTripInfo:Lcom/lgb/canmodule/CanDataInfo$BMW_Trip_MINI;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$BMW_Trip_MINI;->Range:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 27
    return-void
.end method
