.class public Lcom/ts/can/df/er70/CanDFQCVersionActivity;
.super Lcom/ts/can/df/er70/CanDFQCBaseActivity;
.source "CanDFQCVersionActivity.java"


# instance fields
.field private mFactoryVersion:Ljava/lang/String;

.field private mHardVersion:Ljava/lang/String;

.field private mSoftVersion:Ljava/lang/String;

.field private mTvFactoryVersion:Landroid/widget/TextView;

.field private mTvHardVersion:Landroid/widget/TextView;

.field private mTvSoftVersion:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/ts/can/df/er70/CanDFQCBaseActivity;-><init>()V

    return-void
.end method

.method private initValue(Z)V
    .locals 2
    .param p1, "isSet"    # Z

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    sget v1, Lcom/ts/MainUI/R$string;->can_dfqc_version_factory:I

    invoke-virtual {p0, v1}, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mFactoryVersion:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    sget v1, Lcom/ts/MainUI/R$string;->can_dfqc_version_hard:I

    invoke-virtual {p0, v1}, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mHardVersion:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    sget v1, Lcom/ts/MainUI/R$string;->can_dfqc_version_soft:I

    invoke-virtual {p0, v1}, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mSoftVersion:Ljava/lang/String;

    .line 33
    if-eqz p1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mTvFactoryVersion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mFactoryVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mTvHardVersion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mHardVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mTvSoftVersion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mSoftVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :cond_0
    return-void
.end method

.method private toASCIIString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 101
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v3, p1

    .end local p1    # "s":Ljava/lang/String;
    .local v3, "s":Ljava/lang/String;
    :goto_0
    :try_start_0
    array-length v4, v0

    if-lt v2, v4, :cond_0

    .line 109
    :goto_1
    return-object v3

    .line 103
    :cond_0
    mul-int/lit8 v4, v2, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    .line 102
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 104
    new-instance p1, Ljava/lang/String;

    const-string v4, "ASCII"

    invoke-direct {p1, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v3    # "s":Ljava/lang/String;
    .restart local p1    # "s":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    move-object v3, p1

    .end local p1    # "s":Ljava/lang/String;
    .restart local v3    # "s":Ljava/lang/String;
    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected InitLayout()V
    .locals 5

    .prologue
    const/16 v4, 0x73

    const/16 v3, 0xe6

    const/16 v2, 0x19

    .line 19
    sget v0, Lcom/ts/MainUI/R$drawable;->can_dfqc_banben_bg:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->SetBackground(I)V

    .line 21
    const/16 v0, 0x78

    const/16 v1, 0xbb

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mTvFactoryVersion:Landroid/widget/TextView;

    .line 22
    const/16 v0, 0xe4

    invoke-virtual {p0, v4, v0, v3, v2}, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mTvHardVersion:Landroid/widget/TextView;

    .line 23
    const/16 v0, 0x10e

    invoke-virtual {p0, v4, v0, v3, v2}, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mTvSoftVersion:Landroid/widget/TextView;

    .line 25
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->initValue(Z)V

    .line 26
    return-void
.end method

.method protected Query()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method protected ResetData(Z)V
    .locals 7
    .param p1, "check"    # Z

    .prologue
    const/4 v6, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->VenuciaGetBmsVersion()V

    .line 44
    invoke-direct {p0, v6}, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->initValue(Z)V

    .line 46
    iget-object v5, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mBmsVersion:Lcom/lgb/canmodule/CanDataInfo$BMS_Version;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$BMS_Version;->UpdateOnce:I

    invoke-static {v5}, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->i2b(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 47
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mBmsVersion:Lcom/lgb/canmodule/CanDataInfo$BMS_Version;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$BMS_Version;->Update:I

    invoke-static {v5}, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->i2b(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 48
    :cond_0
    iget-object v5, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mBmsVersion:Lcom/lgb/canmodule/CanDataInfo$BMS_Version;

    iput v6, v5, Lcom/lgb/canmodule/CanDataInfo$BMS_Version;->Update:I

    .line 50
    iget-object v5, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mBmsVersion:Lcom/lgb/canmodule/CanDataInfo$BMS_Version;

    iget-object v0, v5, Lcom/lgb/canmodule/CanDataInfo$BMS_Version;->BMS_SupplierManufacturersNo:[I

    .line 51
    .local v0, "factoryV":[I
    iget-object v5, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mBmsVersion:Lcom/lgb/canmodule/CanDataInfo$BMS_Version;

    iget-object v1, v5, Lcom/lgb/canmodule/CanDataInfo$BMS_Version;->BMS_HardVersion:[I

    .line 52
    .local v1, "hV":[I
    iget-object v5, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mBmsVersion:Lcom/lgb/canmodule/CanDataInfo$BMS_Version;

    iget-object v4, v5, Lcom/lgb/canmodule/CanDataInfo$BMS_Version;->BMS_SoftVersion:[I

    .line 54
    .local v4, "sV":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v0

    if-lt v3, v5, :cond_2

    .line 63
    const/4 v3, 0x0

    :goto_1
    array-length v5, v1

    if-lt v3, v5, :cond_4

    .line 69
    const/4 v3, 0x0

    :goto_2
    array-length v5, v4

    if-lt v3, v5, :cond_6

    .line 76
    iget-object v5, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mTvFactoryVersion:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mFactoryVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v5, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mTvHardVersion:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mHardVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v5, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mTvSoftVersion:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mSoftVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .end local v0    # "factoryV":[I
    .end local v1    # "hV":[I
    .end local v3    # "i":I
    .end local v4    # "sV":[I
    :cond_1
    return-void

    .line 55
    .restart local v0    # "factoryV":[I
    .restart local v1    # "hV":[I
    .restart local v3    # "i":I
    .restart local v4    # "sV":[I
    :cond_2
    aget v5, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "hexString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    :cond_3
    iget-object v5, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mFactoryVersion:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-direct {p0, v2}, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->toASCIIString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mFactoryVersion:Ljava/lang/String;

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    .end local v2    # "hexString":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mHardVersion:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v5, v1, v3

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mHardVersion:Ljava/lang/String;

    .line 65
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_5

    .line 66
    iget-object v5, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mHardVersion:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mHardVersion:Ljava/lang/String;

    .line 63
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 70
    :cond_6
    iget-object v5, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mSoftVersion:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v5, v4, v3

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mSoftVersion:Ljava/lang/String;

    .line 71
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_7

    .line 72
    iget-object v5, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mSoftVersion:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ts/can/df/er70/CanDFQCVersionActivity;->mSoftVersion:Ljava/lang/String;

    .line 69
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2
.end method
