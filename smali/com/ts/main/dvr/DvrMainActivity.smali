.class public Lcom/ts/main/dvr/DvrMainActivity;
.super Landroid/app/Activity;
.source "DvrMainActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field private static final DVR_DELAY_NUM:I = 0x32


# instance fields
.field BtnDvr:[Lcom/ts/other/ParamButton;

.field DvrManage:Lcom/ts/other/RelativeLayoutManager;

.field DvrShow:Lcom/ts/main/avin/AvShowMainItem;

.field private Ysj_btn1_Icondn:[I

.field private Ysj_btn1_Iconup:[I

.field private Ysj_btn_Icondn:[I

.field private Ysj_btn_Iconup:[I

.field private nDelayNum:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    iput v3, p0, Lcom/ts/main/dvr/DvrMainActivity;->nDelayNum:I

    .line 32
    new-instance v0, Lcom/ts/main/avin/AvShowMainItem;

    invoke-direct {v0}, Lcom/ts/main/avin/AvShowMainItem;-><init>()V

    iput-object v0, p0, Lcom/ts/main/dvr/DvrMainActivity;->DvrShow:Lcom/ts/main/avin/AvShowMainItem;

    .line 35
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/main/dvr/DvrMainActivity;->BtnDvr:[Lcom/ts/other/ParamButton;

    .line 37
    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Lcom/ts/MainUI/R$drawable;->driving_menu_up:I

    aput v1, v0, v3

    .line 38
    sget v1, Lcom/ts/MainUI/R$drawable;->driving_return_up:I

    aput v1, v0, v4

    sget v1, Lcom/ts/MainUI/R$drawable;->driving_lock_up:I

    aput v1, v0, v5

    .line 39
    sget v1, Lcom/ts/MainUI/R$drawable;->driving_hf_up:I

    aput v1, v0, v6

    sget v1, Lcom/ts/MainUI/R$drawable;->driving_seekup_up:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 40
    sget v2, Lcom/ts/MainUI/R$drawable;->driving_play_up:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/ts/MainUI/R$drawable;->driving_seekdn_up:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/main/dvr/DvrMainActivity;->Ysj_btn_Iconup:[I

    .line 42
    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Lcom/ts/MainUI/R$drawable;->driving_menu_dn:I

    aput v1, v0, v3

    .line 43
    sget v1, Lcom/ts/MainUI/R$drawable;->driving_return_dn:I

    aput v1, v0, v4

    sget v1, Lcom/ts/MainUI/R$drawable;->driving_lock_dn:I

    aput v1, v0, v5

    .line 44
    sget v1, Lcom/ts/MainUI/R$drawable;->driving_hf_dn:I

    aput v1, v0, v6

    sget v1, Lcom/ts/MainUI/R$drawable;->driving_seekup_dn:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 45
    sget v2, Lcom/ts/MainUI/R$drawable;->driving_play_dn:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/ts/MainUI/R$drawable;->driving_seekdn_dn:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/main/dvr/DvrMainActivity;->Ysj_btn_Icondn:[I

    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [I

    sget v1, Lcom/ts/MainUI/R$drawable;->driving_gnxd_up:I

    aput v1, v0, v3

    .line 48
    sget v1, Lcom/ts/MainUI/R$drawable;->driving_lykg_up:I

    aput v1, v0, v4

    sget v1, Lcom/ts/MainUI/R$drawable;->driving_msqh_up:I

    aput v1, v0, v5

    .line 49
    sget v1, Lcom/ts/MainUI/R$drawable;->driving_play_up1:I

    aput v1, v0, v6

    sget v1, Lcom/ts/MainUI/R$drawable;->driving_prv_up:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 50
    sget v2, Lcom/ts/MainUI/R$drawable;->driving_next_up:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/main/dvr/DvrMainActivity;->Ysj_btn1_Iconup:[I

    .line 52
    const/4 v0, 0x6

    new-array v0, v0, [I

    sget v1, Lcom/ts/MainUI/R$drawable;->driving_gnxd_dn:I

    aput v1, v0, v3

    .line 53
    sget v1, Lcom/ts/MainUI/R$drawable;->driving_lykg_dn:I

    aput v1, v0, v4

    sget v1, Lcom/ts/MainUI/R$drawable;->driving_msqh_dn:I

    aput v1, v0, v5

    .line 54
    sget v1, Lcom/ts/MainUI/R$drawable;->driving_play_dn1:I

    aput v1, v0, v6

    sget v1, Lcom/ts/MainUI/R$drawable;->driving_prv_dn:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 55
    sget v2, Lcom/ts/MainUI/R$drawable;->driving_next_dn:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/main/dvr/DvrMainActivity;->Ysj_btn1_Icondn:[I

    .line 27
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/ts/main/dvr/DvrMainActivity;->DvrShow:Lcom/ts/main/avin/AvShowMainItem;

    invoke-virtual {v0}, Lcom/ts/main/avin/AvShowMainItem;->SignalDetect()V

    .line 186
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x1f4

    .line 63
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetDvrType()I

    move-result v1

    if-nez v1, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/ts/main/dvr/DvrMainActivity;->finish()V

    .line 79
    :goto_0
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetDvrType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 131
    :cond_0
    :sswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    return-void

    .line 71
    :cond_1
    sget v1, Lcom/ts/MainUI/R$layout;->activity_avin_main:I

    invoke-virtual {p0, v1}, Lcom/ts/main/dvr/DvrMainActivity;->setContentView(I)V

    .line 73
    iget-object v2, p0, Lcom/ts/main/dvr/DvrMainActivity;->DvrShow:Lcom/ts/main/avin/AvShowMainItem;

    sget v1, Lcom/ts/MainUI/R$id;->activity_avin_mainid:I

    invoke-virtual {p0, v1}, Lcom/ts/main/dvr/DvrMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v3, 0x3

    invoke-virtual {v2, p0, v1, v3}, Lcom/ts/main/avin/AvShowMainItem;->Inint(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    .line 74
    iget-object v1, p0, Lcom/ts/main/dvr/DvrMainActivity;->DvrShow:Lcom/ts/main/avin/AvShowMainItem;

    invoke-virtual {v1}, Lcom/ts/main/avin/AvShowMainItem;->InintCommonBtn()V

    .line 75
    iget-object v1, p0, Lcom/ts/main/dvr/DvrMainActivity;->DvrShow:Lcom/ts/main/avin/AvShowMainItem;

    invoke-virtual {v1}, Lcom/ts/main/avin/AvShowMainItem;->GetVideoName()Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->title_activity_dvr_main:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 77
    new-instance v1, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->activity_avin_mainid:I

    invoke-direct {v1, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/ts/main/dvr/DvrMainActivity;->DvrManage:Lcom/ts/other/RelativeLayoutManager;

    goto :goto_0

    .line 87
    :sswitch_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/ts/main/dvr/DvrMainActivity;->BtnDvr:[Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/main/dvr/DvrMainActivity;->DvrManage:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit16 v3, v0, 0x97

    add-int/lit8 v3, v3, 0x3f

    const/16 v4, 0x87

    const/16 v5, 0x52

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v1, v0

    .line 90
    iget-object v1, p0, Lcom/ts/main/dvr/DvrMainActivity;->BtnDvr:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/ts/main/dvr/DvrMainActivity;->Ysj_btn1_Iconup:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/ts/main/dvr/DvrMainActivity;->Ysj_btn1_Icondn:[I

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 91
    iget-object v1, p0, Lcom/ts/main/dvr/DvrMainActivity;->BtnDvr:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 92
    iget-object v1, p0, Lcom/ts/main/dvr/DvrMainActivity;->BtnDvr:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    new-instance v2, Lcom/ts/main/dvr/DvrMainActivity$1;

    invoke-direct {v2, p0}, Lcom/ts/main/dvr/DvrMainActivity$1;-><init>(Lcom/ts/main/dvr/DvrMainActivity;)V

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    .end local v0    # "i":I
    :sswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/ts/main/dvr/DvrMainActivity;->BtnDvr:[Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/main/dvr/DvrMainActivity;->DvrManage:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit16 v3, v0, 0x89

    add-int/lit8 v3, v3, 0x2c

    const/16 v4, 0x76

    const/16 v5, 0x4e

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v1, v0

    .line 111
    iget-object v1, p0, Lcom/ts/main/dvr/DvrMainActivity;->BtnDvr:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/ts/main/dvr/DvrMainActivity;->Ysj_btn_Iconup:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/ts/main/dvr/DvrMainActivity;->Ysj_btn_Icondn:[I

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 112
    iget-object v1, p0, Lcom/ts/main/dvr/DvrMainActivity;->BtnDvr:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 113
    iget-object v1, p0, Lcom/ts/main/dvr/DvrMainActivity;->BtnDvr:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    new-instance v2, Lcom/ts/main/dvr/DvrMainActivity$2;

    invoke-direct {v2, p0}, Lcom/ts/main/dvr/DvrMainActivity$2;-><init>(Lcom/ts/main/dvr/DvrMainActivity;)V

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 79
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    invoke-static {}, Lcom/ts/main/common/ScreenSet;->GetInstance()Lcom/ts/main/common/ScreenSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/common/ScreenSet;->Hide()V

    .line 153
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 154
    iget-object v0, p0, Lcom/ts/main/dvr/DvrMainActivity;->DvrShow:Lcom/ts/main/avin/AvShowMainItem;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/ts/main/avin/AvShowMainItem;->ShowMode(IZ)I

    .line 155
    iget-object v0, p0, Lcom/ts/main/dvr/DvrMainActivity;->DvrShow:Lcom/ts/main/avin/AvShowMainItem;

    iput v2, v0, Lcom/ts/main/avin/AvShowMainItem;->nShowMode:I

    .line 156
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ts/main/common/MainSet;->TwShowTitle(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/ts/backcar/BackcarService;->getInstance()Lcom/ts/backcar/BackcarService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/backcar/BackcarService;->StopCamera()V

    .line 158
    invoke-static {}, Lcom/ts/MainUI/TsDisplay;->GetInstance()Lcom/ts/MainUI/TsDisplay;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/TsDisplay;->SetDispParat(I)V

    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 161
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 137
    iget-object v0, p0, Lcom/ts/main/dvr/DvrMainActivity;->DvrShow:Lcom/ts/main/avin/AvShowMainItem;

    const/16 v1, 0x32

    iput v1, v0, Lcom/ts/main/avin/AvShowMainItem;->nDelayNum:I

    .line 138
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 140
    iget-object v0, p0, Lcom/ts/main/dvr/DvrMainActivity;->DvrShow:Lcom/ts/main/avin/AvShowMainItem;

    invoke-virtual {v0, v3, v3}, Lcom/ts/main/avin/AvShowMainItem;->ShowMode(IZ)I

    .line 141
    iget-object v0, p0, Lcom/ts/main/dvr/DvrMainActivity;->DvrShow:Lcom/ts/main/avin/AvShowMainItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ts/main/avin/AvShowMainItem;->nShowMode:I

    .line 142
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ts/main/dvr/DvrMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->title_activity_dvr_main:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/main/common/MainSet;->TwShowTitle(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/ts/MainUI/TsDisplay;->GetInstance()Lcom/ts/MainUI/TsDisplay;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/TsDisplay;->SetDispParat(I)V

    .line 144
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ts/main/common/MainSet;->SetVideoChannel(I)V

    .line 145
    invoke-static {}, Lcom/ts/backcar/BackcarService;->getInstance()Lcom/ts/backcar/BackcarService;

    move-result-object v1

    sget v0, Lcom/ts/MainUI/R$id;->textureView:I

    invoke-virtual {p0, v0}, Lcom/ts/main/dvr/DvrMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ts/backcar/AutoFitTextureView;

    invoke-virtual {v1, v0}, Lcom/ts/backcar/BackcarService;->StartCamera(Lcom/ts/backcar/AutoFitTextureView;)V

    .line 146
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-static {}, Lcom/ts/MainUI/Dvr;->GetInstance()Lcom/ts/MainUI/Dvr;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x20

    div-int/lit8 v2, v2, 0x4b

    invoke-virtual {v0, v1, v2}, Lcom/ts/MainUI/Dvr;->SendTouchXY(II)I

    .line 170
    iget-object v0, p0, Lcom/ts/main/dvr/DvrMainActivity;->DvrShow:Lcom/ts/main/avin/AvShowMainItem;

    invoke-virtual {v0}, Lcom/ts/main/avin/AvShowMainItem;->DealKeyTouch()V

    .line 179
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 176
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    goto :goto_0
.end method
