.class public Lcom/ts/main/cmmb/CmmbMainActivity;
.super Landroid/app/Activity;
.source "CmmbMainActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field private static final CMMB_DELAY_NUM:I = 0x5a

.field static nOldMode:I


# instance fields
.field BtnCmmb:[Lcom/ts/other/ParamButton;

.field CMMBShow:Lcom/ts/main/avin/AvShowMainItem;

.field CmmbManage:Lcom/ts/other/RelativeLayoutManager;

.field private Ysj_btn_Icondn:[I

.field private Ysj_btn_Iconup:[I

.field private mEvc:Lcom/ts/MainUI/Evc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 180
    const/16 v0, 0xff

    sput v0, Lcom/ts/main/cmmb/CmmbMainActivity;->nOldMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->mEvc:Lcom/ts/MainUI/Evc;

    .line 36
    new-instance v0, Lcom/ts/main/avin/AvShowMainItem;

    invoke-direct {v0}, Lcom/ts/main/avin/AvShowMainItem;-><init>()V

    iput-object v0, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->CMMBShow:Lcom/ts/main/avin/AvShowMainItem;

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->BtnCmmb:[Lcom/ts/other/ParamButton;

    .line 41
    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Lcom/ts/MainUI/R$drawable;->dtv_list_up:I

    aput v1, v0, v3

    .line 42
    sget v1, Lcom/ts/MainUI/R$drawable;->dtv_up_up:I

    aput v1, v0, v4

    sget v1, Lcom/ts/MainUI/R$drawable;->dtv_down_up:I

    aput v1, v0, v5

    .line 43
    sget v1, Lcom/ts/MainUI/R$drawable;->dtv_left_up:I

    aput v1, v0, v6

    sget v1, Lcom/ts/MainUI/R$drawable;->dtv_right_up:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 44
    sget v2, Lcom/ts/MainUI/R$drawable;->dtv_ok_up:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/ts/MainUI/R$drawable;->dtv_return_up:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->Ysj_btn_Iconup:[I

    .line 46
    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Lcom/ts/MainUI/R$drawable;->dtv_list_dn:I

    aput v1, v0, v3

    .line 47
    sget v1, Lcom/ts/MainUI/R$drawable;->dtv_up_dn:I

    aput v1, v0, v4

    sget v1, Lcom/ts/MainUI/R$drawable;->dtv_down_dn:I

    aput v1, v0, v5

    .line 48
    sget v1, Lcom/ts/MainUI/R$drawable;->dtv_left_dn:I

    aput v1, v0, v6

    sget v1, Lcom/ts/MainUI/R$drawable;->dtv_right_dn:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 49
    sget v2, Lcom/ts/MainUI/R$drawable;->dtv_ok_dn:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/ts/MainUI/R$drawable;->dtv_return_dn:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->Ysj_btn_Icondn:[I

    .line 31
    return-void
.end method


# virtual methods
.method ShowCmmbBtn(Z)V
    .locals 3
    .param p1, "bShow"    # Z

    .prologue
    .line 185
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetDtvType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 202
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 189
    .restart local v0    # "i":I
    :cond_1
    if-eqz p1, :cond_2

    .line 191
    iget-object v1, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->BtnCmmb:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setVisibility(I)V

    .line 187
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->BtnCmmb:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public UserAll()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 206
    iget-object v0, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->CMMBShow:Lcom/ts/main/avin/AvShowMainItem;

    invoke-virtual {v0}, Lcom/ts/main/avin/AvShowMainItem;->SignalDetect()V

    .line 207
    sget v0, Lcom/ts/main/cmmb/CmmbMainActivity;->nOldMode:I

    iget-object v1, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->CMMBShow:Lcom/ts/main/avin/AvShowMainItem;

    iget v1, v1, Lcom/ts/main/avin/AvShowMainItem;->nShowMode:I

    if-eq v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->CMMBShow:Lcom/ts/main/avin/AvShowMainItem;

    iget v0, v0, Lcom/ts/main/avin/AvShowMainItem;->nShowMode:I

    sput v0, Lcom/ts/main/cmmb/CmmbMainActivity;->nOldMode:I

    .line 210
    iget-object v0, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->CMMBShow:Lcom/ts/main/avin/AvShowMainItem;

    iget v0, v0, Lcom/ts/main/avin/AvShowMainItem;->nShowMode:I

    packed-switch v0, :pswitch_data_0

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 213
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/ts/main/cmmb/CmmbMainActivity;->ShowCmmbBtn(Z)V

    goto :goto_0

    .line 217
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/main/cmmb/CmmbMainActivity;->ShowCmmbBtn(Z)V

    goto :goto_0

    .line 220
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/ts/main/cmmb/CmmbMainActivity;->ShowCmmbBtn(Z)V

    goto :goto_0

    .line 223
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/ts/main/cmmb/CmmbMainActivity;->ShowCmmbBtn(Z)V

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget v1, Lcom/ts/MainUI/R$layout;->activity_avin_main:I

    invoke-virtual {p0, v1}, Lcom/ts/main/cmmb/CmmbMainActivity;->setContentView(I)V

    .line 61
    iget-object v2, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->CMMBShow:Lcom/ts/main/avin/AvShowMainItem;

    sget v1, Lcom/ts/MainUI/R$id;->activity_avin_mainid:I

    invoke-virtual {p0, v1}, Lcom/ts/main/cmmb/CmmbMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v3, 0x2

    invoke-virtual {v2, p0, v1, v3}, Lcom/ts/main/avin/AvShowMainItem;->Inint(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    .line 62
    iget-object v1, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->CMMBShow:Lcom/ts/main/avin/AvShowMainItem;

    invoke-virtual {v1}, Lcom/ts/main/avin/AvShowMainItem;->InintCommonBtn()V

    .line 63
    iget-object v1, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->CMMBShow:Lcom/ts/main/avin/AvShowMainItem;

    invoke-virtual {v1}, Lcom/ts/main/avin/AvShowMainItem;->GetVideoName()Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->title_activity_cmmb_main:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 65
    new-instance v1, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->activity_avin_mainid:I

    invoke-direct {v1, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->CmmbManage:Lcom/ts/other/RelativeLayoutManager;

    .line 68
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetDtvType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 117
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 72
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->BtnCmmb:[Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->CmmbManage:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit16 v3, v0, 0x89

    add-int/lit8 v3, v3, 0x2c

    const/16 v4, 0x1f4

    const/16 v5, 0x76

    const/16 v6, 0x4e

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v1, v0

    .line 73
    iget-object v1, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->BtnCmmb:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->Ysj_btn_Iconup:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->Ysj_btn_Icondn:[I

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 74
    iget-object v1, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->BtnCmmb:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 75
    iget-object v1, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->BtnCmmb:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    new-instance v2, Lcom/ts/main/cmmb/CmmbMainActivity$1;

    invoke-direct {v2, p0}, Lcom/ts/main/cmmb/CmmbMainActivity$1;-><init>(Lcom/ts/main/cmmb/CmmbMainActivity;)V

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    invoke-static {}, Lcom/ts/main/common/ScreenSet;->GetInstance()Lcom/ts/main/common/ScreenSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/common/ScreenSet;->Hide()V

    .line 166
    invoke-static {}, Lcom/ts/main/common/MainUI;->GetInstance()Lcom/ts/main/common/MainUI;

    invoke-static {}, Lcom/ts/main/common/MainUI;->IsCameraMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 168
    invoke-static {}, Lcom/ts/MainUI/TsDisplay;->GetInstance()Lcom/ts/MainUI/TsDisplay;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/TsDisplay;->SetSrcMute(I)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->CMMBShow:Lcom/ts/main/avin/AvShowMainItem;

    iput v2, v0, Lcom/ts/main/avin/AvShowMainItem;->nShowMode:I

    .line 171
    iget-object v0, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->CMMBShow:Lcom/ts/main/avin/AvShowMainItem;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/ts/main/avin/AvShowMainItem;->ShowMode(IZ)I

    .line 172
    iget-object v0, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->CMMBShow:Lcom/ts/main/avin/AvShowMainItem;

    iput v2, v0, Lcom/ts/main/avin/AvShowMainItem;->nShowMode:I

    .line 173
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 174
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ts/main/common/MainSet;->TwShowTitle(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/ts/backcar/BackcarService;->getInstance()Lcom/ts/backcar/BackcarService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/backcar/BackcarService;->StopCamera()V

    .line 177
    invoke-static {}, Lcom/ts/MainUI/TsDisplay;->GetInstance()Lcom/ts/MainUI/TsDisplay;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/TsDisplay;->SetDispParat(I)V

    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 179
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x63

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 135
    iget-object v0, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->CMMBShow:Lcom/ts/main/avin/AvShowMainItem;

    const/16 v1, 0x5a

    iput v1, v0, Lcom/ts/main/avin/AvShowMainItem;->nDelayNum:I

    .line 136
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 137
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetDtvType()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 139
    iget-object v0, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->mEvc:Lcom/ts/MainUI/Evc;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 145
    :goto_0
    invoke-static {v2}, Lcom/yyw/ts70xhw/Mcu;->SetCmmbstate(B)I

    .line 146
    iget-object v0, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->CMMBShow:Lcom/ts/main/avin/AvShowMainItem;

    invoke-virtual {v0, v2, v2}, Lcom/ts/main/avin/AvShowMainItem;->ShowMode(IZ)I

    .line 147
    iget-object v0, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->CMMBShow:Lcom/ts/main/avin/AvShowMainItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ts/main/avin/AvShowMainItem;->nShowMode:I

    .line 148
    invoke-static {}, Lcom/ts/MainUI/TsDisplay;->GetInstance()Lcom/ts/MainUI/TsDisplay;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ts/MainUI/TsDisplay;->SetDispParat(I)V

    .line 149
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetDtvType()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 151
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ts/main/common/MainSet;->SetVideoChannel(I)V

    .line 157
    :goto_1
    invoke-static {}, Lcom/ts/backcar/BackcarService;->getInstance()Lcom/ts/backcar/BackcarService;

    move-result-object v1

    sget v0, Lcom/ts/MainUI/R$id;->textureView:I

    invoke-virtual {p0, v0}, Lcom/ts/main/cmmb/CmmbMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ts/backcar/AutoFitTextureView;

    invoke-virtual {v1, v0}, Lcom/ts/backcar/BackcarService;->StartCamera(Lcom/ts/backcar/AutoFitTextureView;)V

    .line 158
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ts/main/cmmb/CmmbMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->title_activity_cmmb_main:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/main/common/MainSet;->TwShowTitle(Ljava/lang/String;)V

    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 160
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->mEvc:Lcom/ts/MainUI/Evc;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ts/main/common/MainSet;->SetVideoChannel(I)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 122
    const-string v0, "onTouchEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "x = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Lcom/ts/MainUI/Cmmb;->GetInstance()Lcom/ts/MainUI/Cmmb;

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

    invoke-virtual {v0, v1, v2}, Lcom/ts/MainUI/Cmmb;->SendTouch(II)V

    .line 124
    iget-object v0, p0, Lcom/ts/main/cmmb/CmmbMainActivity;->CMMBShow:Lcom/ts/main/avin/AvShowMainItem;

    invoke-virtual {v0}, Lcom/ts/main/avin/AvShowMainItem;->DealKeyTouch()V

    .line 129
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    goto :goto_0
.end method
