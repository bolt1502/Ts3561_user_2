.class public Lcom/ts/factoryset/FsTVActivity;
.super Lcom/ts/factoryset/FsBaseActivity;
.source "FsTVActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FsTVActivity"


# instance fields
.field private mBtnTv:[Lcom/ts/other/ParamButton;

.field private mStrTvType:[Ljava/lang/String;

.field private mType:[I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    invoke-direct {p0}, Lcom/ts/factoryset/FsBaseActivity;-><init>()V

    .line 18
    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 19
    sget v1, Lcom/ts/MainUI/R$id;->fstv_mode0:I

    aput v1, v0, v3

    .line 20
    sget v1, Lcom/ts/MainUI/R$id;->fstv_mode1:I

    aput v1, v0, v4

    .line 21
    sget v1, Lcom/ts/MainUI/R$id;->fstv_mode2:I

    aput v1, v0, v5

    .line 22
    sget v1, Lcom/ts/MainUI/R$id;->fstv_mode3:I

    aput v1, v0, v6

    .line 23
    sget v1, Lcom/ts/MainUI/R$id;->fstv_mode4:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 24
    sget v2, Lcom/ts/MainUI/R$id;->fstv_mode5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 25
    sget v2, Lcom/ts/MainUI/R$id;->fstv_mode6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 26
    sget v2, Lcom/ts/MainUI/R$id;->fstv_mode7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 27
    sget v2, Lcom/ts/MainUI/R$id;->fstv_mode8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 28
    sget v2, Lcom/ts/MainUI/R$id;->fstv_mode9:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/factoryset/FsTVActivity;->mType:[I

    .line 32
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 33
    const-string v1, "TV_PAL_I"

    aput-object v1, v0, v3

    .line 34
    const-string v1, "TV_PAL_DK"

    aput-object v1, v0, v4

    .line 35
    const-string v1, "TV_PAL_BG"

    aput-object v1, v0, v5

    .line 36
    const-string v1, "TV_PAL_M"

    aput-object v1, v0, v6

    .line 37
    const-string v1, "TV_PAL_N"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 38
    const-string v2, "TV_SECAM_DK"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 39
    const-string v2, "TV_SECAM_BG"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 40
    const-string v2, "TV_NTSC_MN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 41
    const-string v2, "RES"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 42
    const-string v2, "RES"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/factoryset/FsTVActivity;->mStrTvType:[Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    move-object v0, p1

    check-cast v0, Lcom/ts/other/ParamButton;

    .line 71
    .local v0, "curBtn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0}, Lcom/ts/other/ParamButton;->getIntParam()I

    move-result v1

    .line 73
    .local v1, "id":I
    iget-object v2, p0, Lcom/ts/factoryset/FsTVActivity;->mBtnTv:[Lcom/ts/other/ParamButton;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 75
    invoke-static {v1}, Lcom/yyw/ts70xhw/FtSet;->SetTvFormat(I)I

    .line 76
    invoke-virtual {p0}, Lcom/ts/factoryset/FsTVActivity;->updateTvType()V

    .line 78
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/ts/factoryset/FsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v1, Lcom/ts/MainUI/R$layout;->activity_fs_tv:I

    invoke-virtual {p0, v1}, Lcom/ts/factoryset/FsTVActivity;->setContentView(I)V

    .line 52
    sget v1, Lcom/ts/MainUI/R$string;->str_fsmain_atv:I

    invoke-virtual {p0, v1}, Lcom/ts/factoryset/FsTVActivity;->topBtnInit(I)V

    .line 55
    const/16 v1, 0xa

    new-array v1, v1, [Lcom/ts/other/ParamButton;

    iput-object v1, p0, Lcom/ts/factoryset/FsTVActivity;->mBtnTv:[Lcom/ts/other/ParamButton;

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/factoryset/FsTVActivity;->mType:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 64
    return-void

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/ts/factoryset/FsTVActivity;->mBtnTv:[Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/factoryset/FsTVActivity;->mType:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/ts/factoryset/FsTVActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ts/other/ParamButton;

    aput-object v1, v2, v0

    .line 60
    iget-object v1, p0, Lcom/ts/factoryset/FsTVActivity;->mBtnTv:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v1, p0, Lcom/ts/factoryset/FsTVActivity;->mBtnTv:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v0}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 62
    iget-object v1, p0, Lcom/ts/factoryset/FsTVActivity;->mBtnTv:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/ts/factoryset/FsTVActivity;->mStrTvType:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Lcom/ts/factoryset/FsBaseActivity;->onResume()V

    .line 86
    invoke-virtual {p0}, Lcom/ts/factoryset/FsTVActivity;->updateTvType()V

    .line 87
    return-void
.end method

.method updateTvType()V
    .locals 4

    .prologue
    .line 91
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetTvFormat()I

    move-result v1

    .line 92
    .local v1, "type":I
    iget-object v2, p0, Lcom/ts/factoryset/FsTVActivity;->mBtnTv:[Lcom/ts/other/ParamButton;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ts/factoryset/FsTVActivity;->mBtnTv:[Lcom/ts/other/ParamButton;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/ts/factoryset/FsTVActivity;->mBtnTv:[Lcom/ts/other/ParamButton;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 102
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 97
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/ts/factoryset/FsTVActivity;->mBtnTv:[Lcom/ts/other/ParamButton;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
