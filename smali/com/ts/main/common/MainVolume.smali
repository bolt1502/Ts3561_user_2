.class public Lcom/ts/main/common/MainVolume;
.super Ljava/lang/Object;
.source "MainVolume.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field static MyVolume:Lcom/ts/main/common/MainVolume; = null

.field private static final TAG:Ljava/lang/String; = "MainVolume"

.field public static final VOL_BAR_OUTPOSY:I = -0x4f

.field public static final VOL_BAR_POSX:I = 0x18

.field public static final VOL_BAR_POSY:I = 0x14

.field public static final VOL_BAR_SIZEX:I = 0x3d0

.field public static final VOL_BAR_SIZEY:I = 0x4f

.field public static nBklisOn:I


# instance fields
.field Btnsst_cancel:Landroid/widget/Button;

.field bFullScreen:Z

.field private mEvc:Lcom/ts/MainUI/Evc;

.field private mFloatLayoutNaw:Landroid/widget/RelativeLayout;

.field private mFloatLayoutScreenFor:Landroid/widget/RelativeLayout;

.field private mFloatLayoutVol:Landroid/widget/RelativeLayout;

.field mProcessName:Landroid/widget/Button;

.field mSeekBar:Landroid/widget/SeekBar;

.field m_Application:Landroid/app/Application;

.field m_Context:Landroid/content/Context;

.field mtrackText:Landroid/widget/TextView;

.field mtrackforbiden:Landroid/widget/TextView;

.field public nAidlVolumeShow:I

.field private nBtVolold:I

.field private nMusicVolold:I

.field private nMute:I

.field private nNVolold:I

.field nNaviVoiceState:I

.field nVolDnColor:I

.field nVolTimeDelay:I

.field nVolUpColor:I

.field private wManager:Landroid/view/WindowManager;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/ts/main/common/MainVolume;->nBklisOn:I

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/main/common/MainVolume;->MyVolume:Lcom/ts/main/common/MainVolume;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/common/MainVolume;->mEvc:Lcom/ts/MainUI/Evc;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutNaw:Landroid/widget/RelativeLayout;

    .line 38
    iput v1, p0, Lcom/ts/main/common/MainVolume;->nAidlVolumeShow:I

    .line 40
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/ts/main/common/MainVolume;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/main/common/MainVolume;->bFullScreen:Z

    .line 53
    iput v2, p0, Lcom/ts/main/common/MainVolume;->nMusicVolold:I

    .line 54
    iput v2, p0, Lcom/ts/main/common/MainVolume;->nBtVolold:I

    .line 55
    iput v2, p0, Lcom/ts/main/common/MainVolume;->nNVolold:I

    .line 56
    iput v1, p0, Lcom/ts/main/common/MainVolume;->nMute:I

    .line 57
    iput v1, p0, Lcom/ts/main/common/MainVolume;->nVolTimeDelay:I

    .line 58
    iput v1, p0, Lcom/ts/main/common/MainVolume;->nVolUpColor:I

    .line 59
    iput v1, p0, Lcom/ts/main/common/MainVolume;->nVolDnColor:I

    .line 375
    iput v1, p0, Lcom/ts/main/common/MainVolume;->nNaviVoiceState:I

    .line 30
    return-void
.end method

.method public static GetInstance()Lcom/ts/main/common/MainVolume;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/ts/main/common/MainVolume;->MyVolume:Lcom/ts/main/common/MainVolume;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/ts/main/common/MainVolume;

    invoke-direct {v0}, Lcom/ts/main/common/MainVolume;-><init>()V

    sput-object v0, Lcom/ts/main/common/MainVolume;->MyVolume:Lcom/ts/main/common/MainVolume;

    .line 75
    :cond_0
    sget-object v0, Lcom/ts/main/common/MainVolume;->MyVolume:Lcom/ts/main/common/MainVolume;

    return-object v0
.end method

.method static synthetic access$0(Lcom/ts/main/common/MainVolume;)Lcom/ts/MainUI/Evc;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mEvc:Lcom/ts/MainUI/Evc;

    return-object v0
.end method


# virtual methods
.method public CheckVol()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 378
    invoke-static {v2}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget v0, p0, Lcom/ts/main/common/MainVolume;->nNaviVoiceState:I

    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    sget v1, Lcom/ts/MainUI/Evc;->nNaviSpeeking:I

    if-eq v0, v1, :cond_0

    .line 380
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    sget v0, Lcom/ts/MainUI/Evc;->nNaviSpeeking:I

    iput v0, p0, Lcom/ts/main/common/MainVolume;->nNaviVoiceState:I

    .line 381
    iget v0, p0, Lcom/ts/main/common/MainVolume;->nNaviVoiceState:I

    invoke-static {v0}, Lcom/ts/can/CanIF;->DealGpsVoice(I)V

    .line 386
    :cond_0
    iget v0, p0, Lcom/ts/main/common/MainVolume;->nAidlVolumeShow:I

    if-ne v0, v2, :cond_1

    .line 388
    invoke-virtual {p0}, Lcom/ts/main/common/MainVolume;->VolWinShow()V

    .line 389
    iput v3, p0, Lcom/ts/main/common/MainVolume;->nAidlVolumeShow:I

    .line 393
    :cond_1
    iget v0, p0, Lcom/ts/main/common/MainVolume;->nMute:I

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetMute()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/ts/main/common/MainVolume;->NaviVolShow()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/ts/main/common/MainVolume;->nBtVolold:I

    invoke-static {v2}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetMediaOrBlue()I

    move-result v0

    if-eq v0, v2, :cond_3

    :cond_2
    iget v0, p0, Lcom/ts/main/common/MainVolume;->nMusicVolold:I

    invoke-static {v3}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 395
    :cond_3
    invoke-static {v2}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v0

    iput v0, p0, Lcom/ts/main/common/MainVolume;->nBtVolold:I

    .line 396
    invoke-static {v3}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v0

    iput v0, p0, Lcom/ts/main/common/MainVolume;->nMusicVolold:I

    .line 397
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetNvol()I

    move-result v0

    iput v0, p0, Lcom/ts/main/common/MainVolume;->nNVolold:I

    .line 398
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetMute()I

    move-result v0

    iput v0, p0, Lcom/ts/main/common/MainVolume;->nMute:I

    .line 399
    invoke-virtual {p0}, Lcom/ts/main/common/MainVolume;->VolWinShow()V

    .line 401
    :cond_4
    iget v0, p0, Lcom/ts/main/common/MainVolume;->nVolTimeDelay:I

    if-lez v0, :cond_5

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetMute()I

    move-result v0

    if-nez v0, :cond_5

    .line 402
    iget v0, p0, Lcom/ts/main/common/MainVolume;->nVolTimeDelay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ts/main/common/MainVolume;->nVolTimeDelay:I

    .line 403
    iget v0, p0, Lcom/ts/main/common/MainVolume;->nVolTimeDelay:I

    if-nez v0, :cond_5

    .line 404
    invoke-virtual {p0}, Lcom/ts/main/common/MainVolume;->VolWinHide()V

    .line 410
    :cond_5
    return-void
.end method

.method public Destroy()V
    .locals 3

    .prologue
    .line 261
    const-string v0, "MainVolume"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Destroy=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutNaw:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutNaw:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->wManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutNaw:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutNaw:Landroid/widget/RelativeLayout;

    .line 267
    :cond_0
    return-void
.end method

.method public Inint(Landroid/app/Application;Landroid/content/Context;)V
    .locals 5
    .param p1, "MyApplication"    # Landroid/app/Application;
    .param p2, "MyContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 121
    iput-object p1, p0, Lcom/ts/main/common/MainVolume;->m_Application:Landroid/app/Application;

    .line 122
    iput-object p2, p0, Lcom/ts/main/common/MainVolume;->m_Context:Landroid/content/Context;

    .line 123
    iput v1, p0, Lcom/ts/main/common/MainVolume;->nMusicVolold:I

    .line 124
    iput v1, p0, Lcom/ts/main/common/MainVolume;->nBtVolold:I

    .line 125
    iput v1, p0, Lcom/ts/main/common/MainVolume;->nNVolold:I

    .line 126
    iput v4, p0, Lcom/ts/main/common/MainVolume;->nMute:I

    .line 128
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 132
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/ts/MainUI/R$layout;->screen_forbiden:I

    .line 131
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutScreenFor:Landroid/widget/RelativeLayout;

    .line 133
    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutScreenFor:Landroid/widget/RelativeLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 134
    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutScreenFor:Landroid/widget/RelativeLayout;

    sget v2, Lcom/ts/MainUI/R$id;->forbiden:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ts/main/common/MainVolume;->mtrackforbiden:Landroid/widget/TextView;

    .line 135
    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->mtrackforbiden:Landroid/widget/TextView;

    sget v2, Lcom/ts/MainUI/R$string;->drive_state_forbiden:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 141
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$color;->vol_bar_up:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/ts/main/common/MainVolume;->nVolUpColor:I

    .line 142
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$color;->vol_bar_dn:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/ts/main/common/MainVolume;->nVolDnColor:I

    .line 143
    invoke-static {}, Lcom/ts/main/common/MainSet;->IsVSUI()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ts/main/common/MainSet;->IsBmwX1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    :cond_0
    sget v1, Lcom/ts/MainUI/R$layout;->vertical_volume:I

    .line 144
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutVol:Landroid/widget/RelativeLayout;

    .line 153
    :goto_0
    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutVol:Landroid/widget/RelativeLayout;

    sget v2, Lcom/ts/MainUI/R$id;->volmodename:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ts/main/common/MainVolume;->mProcessName:Landroid/widget/Button;

    .line 155
    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->mProcessName:Landroid/widget/Button;

    const v2, 0xffffff

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 157
    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->mProcessName:Landroid/widget/Button;

    new-instance v2, Lcom/ts/main/common/MainVolume$1;

    invoke-direct {v2, p0}, Lcom/ts/main/common/MainVolume$1;-><init>(Lcom/ts/main/common/MainVolume;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutVol:Landroid/widget/RelativeLayout;

    sget v2, Lcom/ts/MainUI/R$id;->volsize:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ts/main/common/MainVolume;->mtrackText:Landroid/widget/TextView;

    .line 169
    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutVol:Landroid/widget/RelativeLayout;

    sget v2, Lcom/ts/MainUI/R$id;->seekBar1:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/ts/main/common/MainVolume;->mSeekBar:Landroid/widget/SeekBar;

    .line 170
    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 173
    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->mProcessName:Landroid/widget/Button;

    sget v2, Lcom/ts/MainUI/R$string;->vol_common_mainvol:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 174
    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->mtrackText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-static {v4}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v1

    iput v1, p0, Lcom/ts/main/common/MainVolume;->nMusicVolold:I

    .line 176
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v1

    iput v1, p0, Lcom/ts/main/common/MainVolume;->nBtVolold:I

    .line 177
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetNvol()I

    move-result v1

    iput v1, p0, Lcom/ts/main/common/MainVolume;->nNVolold:I

    .line 183
    const-string v1, "MainVolume"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nBklisOn="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/ts/main/common/MainVolume;->nBklisOn:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Lcom/ts/main/common/MainVolume;->InintVolBar()V

    .line 189
    return-void

    .line 150
    :cond_1
    sget v1, Lcom/ts/MainUI/R$layout;->common_volume:I

    .line 149
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutVol:Landroid/widget/RelativeLayout;

    goto/16 :goto_0
.end method

.method public InintForbidenScreen()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 207
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutNaw:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutScreenFor:Landroid/widget/RelativeLayout;

    if-eq v0, v1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/ts/main/common/MainVolume;->Destroy()V

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/main/common/MainVolume;->bFullScreen:Z

    .line 211
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutScreenFor:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutNaw:Landroid/widget/RelativeLayout;

    .line 212
    const/16 v1, 0x400

    const/16 v2, 0x258

    iget-object v5, p0, Lcom/ts/main/common/MainVolume;->m_Context:Landroid/content/Context;

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/common/MainVolume;->InintWinManage(IIIILandroid/content/Context;)V

    .line 213
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->wManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutScreenFor:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ts/main/common/MainVolume;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    :cond_0
    return-void
.end method

.method public InintScreen(Landroid/widget/RelativeLayout;)V
    .locals 6
    .param p1, "v"    # Landroid/widget/RelativeLayout;

    .prologue
    const/4 v3, 0x0

    .line 235
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutNaw:Landroid/widget/RelativeLayout;

    if-eq v0, p1, :cond_0

    .line 237
    const-string v0, "MainVolume"

    const-string v1, "InintScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Lcom/ts/main/common/MainVolume;->Destroy()V

    .line 239
    iput-object p1, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutNaw:Landroid/widget/RelativeLayout;

    .line 240
    const/16 v1, 0x400

    const/16 v2, 0x258

    iget-object v5, p0, Lcom/ts/main/common/MainVolume;->m_Context:Landroid/content/Context;

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/common/MainVolume;->InintWinManage(IIIILandroid/content/Context;)V

    .line 241
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->wManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    :cond_0
    return-void
.end method

.method public InintScreen(Landroid/widget/RelativeLayout;II)V
    .locals 6
    .param p1, "v"    # Landroid/widget/RelativeLayout;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 247
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutNaw:Landroid/widget/RelativeLayout;

    if-eq v0, p1, :cond_0

    .line 249
    const-string v0, "MainVolume"

    const-string v1, "InintScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0}, Lcom/ts/main/common/MainVolume;->Destroy()V

    .line 251
    iput-object p1, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutNaw:Landroid/widget/RelativeLayout;

    .line 252
    iget-object v5, p0, Lcom/ts/main/common/MainVolume;->m_Context:Landroid/content/Context;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/common/MainVolume;->InintWinManage(IIIILandroid/content/Context;)V

    .line 253
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->wManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    :cond_0
    return-void
.end method

.method public InintVolBar()V
    .locals 6

    .prologue
    .line 192
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutNaw:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutVol:Landroid/widget/RelativeLayout;

    if-eq v0, v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/ts/main/common/MainVolume;->Destroy()V

    .line 196
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutVol:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutNaw:Landroid/widget/RelativeLayout;

    .line 197
    const/16 v1, 0x3d0

    const/4 v2, 0x0

    const/16 v3, 0x18

    const/16 v4, -0x4f

    iget-object v5, p0, Lcom/ts/main/common/MainVolume;->m_Context:Landroid/content/Context;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/common/MainVolume;->InintWinManage(IIIILandroid/content/Context;)V

    .line 198
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->wManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutVol:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ts/main/common/MainVolume;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    :cond_0
    return-void
.end method

.method InintVolBarState()V
    .locals 6

    .prologue
    const/16 v5, 0x1e

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 273
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetMute()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 275
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mProcessName:Landroid/widget/Button;

    iget v1, p0, Lcom/ts/main/common/MainVolume;->nVolDnColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 276
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mtrackText:Landroid/widget/TextView;

    iget v1, p0, Lcom/ts/main/common/MainVolume;->nVolDnColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mProcessName:Landroid/widget/Button;

    sget v1, Lcom/ts/MainUI/R$string;->vol_common_mut:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 285
    :goto_0
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetMediaOrBlue()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 287
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 288
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 289
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 290
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetMute()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 291
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mtrackText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :goto_1
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {v3}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 298
    invoke-static {}, Lcom/ts/main/common/MainSet;->IsVSUI()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ts/main/common/MainSet;->IsBmwX1()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutVol:Landroid/widget/RelativeLayout;

    sget v1, Lcom/ts/MainUI/R$drawable;->vertical_vol_bg_bt:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 369
    :goto_2
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mProcessName:Landroid/widget/Button;

    iget v1, p0, Lcom/ts/main/common/MainVolume;->nVolUpColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 282
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mtrackText:Landroid/widget/TextView;

    iget v1, p0, Lcom/ts/main/common/MainVolume;->nVolUpColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mProcessName:Landroid/widget/Button;

    sget v1, Lcom/ts/MainUI/R$string;->vol_common_btvol:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 295
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mtrackText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 303
    :cond_3
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutVol:Landroid/widget/RelativeLayout;

    sget v1, Lcom/ts/MainUI/R$drawable;->common_btvol_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_2

    .line 308
    :cond_4
    sget-boolean v0, Lcom/ts/MainUI/Evc;->bNaviVol:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    sget v0, Lcom/ts/MainUI/Evc;->nNaviSpeeking:I

    if-eq v0, v3, :cond_5

    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    sget v0, Lcom/ts/MainUI/Evc;->nNaviSpeeShow:I

    if-ne v0, v3, :cond_7

    .line 310
    :cond_5
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 311
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 312
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/ts/main/common/MainVolume$2;

    invoke-direct {v1, p0}, Lcom/ts/main/common/MainVolume$2;-><init>(Lcom/ts/main/common/MainVolume;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 337
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetMute()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 339
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mtrackText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    :goto_3
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetNvol()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 345
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutVol:Landroid/widget/RelativeLayout;

    sget v1, Lcom/ts/MainUI/R$drawable;->vertical_vol_bg_navi:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 346
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    sput v3, Lcom/ts/MainUI/Evc;->nNaviSpeeShow:I

    goto/16 :goto_2

    .line 341
    :cond_6
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mProcessName:Landroid/widget/Button;

    sget v1, Lcom/ts/MainUI/R$string;->vol_common_navivol:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 342
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mtrackText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetNvol()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 349
    :cond_7
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 350
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 351
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 352
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetMute()I

    move-result v0

    if-ne v0, v3, :cond_9

    .line 353
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mtrackText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :goto_4
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {v4}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 359
    invoke-static {}, Lcom/ts/main/common/MainSet;->IsVSUI()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/ts/main/common/MainSet;->IsBmwX1()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 360
    :cond_8
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutVol:Landroid/widget/RelativeLayout;

    sget v1, Lcom/ts/MainUI/R$drawable;->vertical_vol_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 355
    :cond_9
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mProcessName:Landroid/widget/Button;

    sget v1, Lcom/ts/MainUI/R$string;->vol_common_mainvol:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 356
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mtrackText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 364
    :cond_a
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutVol:Landroid/widget/RelativeLayout;

    sget v1, Lcom/ts/MainUI/R$drawable;->common_vol_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_2
.end method

.method public InintWinManage(IIIILandroid/content/Context;)V
    .locals 3
    .param p1, "nSizeX"    # I
    .param p2, "nSizeY"    # I
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "MyContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 81
    .line 82
    const-string v0, "window"

    invoke-virtual {p5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 81
    iput-object v0, p0, Lcom/ts/main/common/MainVolume;->wManager:Landroid/view/WindowManager;

    .line 83
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/ts/main/common/MainVolume;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 84
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 85
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 86
    const/16 v0, 0x400

    if-eq p1, v0, :cond_0

    const/16 v0, 0x258

    if-eq p2, v0, :cond_0

    const/16 v0, 0x1e0

    if-eq p2, v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x53

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 109
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 110
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 112
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 113
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 116
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutNaw:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutScreenFor:Landroid/widget/RelativeLayout;

    if-ne v0, v1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x800

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 102
    :goto_1
    iput-boolean v2, p0, Lcom/ts/main/common/MainVolume;->bFullScreen:Z

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 99
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x204

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    goto :goto_1
.end method

.method public IsVolumeShow()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 416
    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutVol:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutNaw:Landroid/widget/RelativeLayout;

    if-ne v1, v2, :cond_0

    .line 418
    iget v1, p0, Lcom/ts/main/common/MainVolume;->nVolTimeDelay:I

    if-lez v1, :cond_0

    .line 420
    const/4 v0, 0x1

    .line 427
    :cond_0
    return v0
.end method

.method NaviVolShow()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 372
    iget v1, p0, Lcom/ts/main/common/MainVolume;->nNVolold:I

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetNvol()I

    move-result v2

    if-eq v1, v2, :cond_1

    sget-boolean v1, Lcom/ts/MainUI/Evc;->bNaviVol:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    sget v1, Lcom/ts/MainUI/Evc;->nNaviSpeeking:I

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    sget v1, Lcom/ts/MainUI/Evc;->nNaviSpeeShow:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public VolWinHide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 449
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutVol:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutNaw:Landroid/widget/RelativeLayout;

    if-ne v0, v1, :cond_0

    .line 451
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 452
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, -0x4f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 453
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->wManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutVol:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ts/main/common/MainVolume;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    :cond_0
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    sput v3, Lcom/ts/MainUI/Evc;->nNaviSpeeShow:I

    .line 457
    return-void
.end method

.method public VolWinShow()V
    .locals 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutNaw:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutScreenFor:Landroid/widget/RelativeLayout;

    if-eq v0, v1, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/ts/main/common/MainVolume;->InintVolBar()V

    .line 434
    invoke-virtual {p0}, Lcom/ts/main/common/MainVolume;->InintVolBarState()V

    .line 435
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutVol:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutNaw:Landroid/widget/RelativeLayout;

    if-ne v0, v1, :cond_0

    .line 437
    const/16 v0, 0x3c

    iput v0, p0, Lcom/ts/main/common/MainVolume;->nVolTimeDelay:I

    .line 438
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x4f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 439
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x14

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 440
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->wManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/ts/main/common/MainVolume;->mFloatLayoutVol:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ts/main/common/MainVolume;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    const-string v0, "MainVolume"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VolWinShow "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ts/main/common/MainVolume;->nBklisOn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekbar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "frpmTouch"    # Z

    .prologue
    .line 465
    iget-object v0, p0, Lcom/ts/main/common/MainVolume;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v0, p2}, Lcom/ts/MainUI/Evc;->evol_vol_set(I)V

    .line 467
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekbar"    # Landroid/widget/SeekBar;

    .prologue
    .line 473
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekbar"    # Landroid/widget/SeekBar;

    .prologue
    .line 479
    return-void
.end method
