.class public Lcom/ts/main/avin/AvinMainActivity;
.super Landroid/app/Activity;
.source "AvinMainActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field private static final AVIN_DELAY_NUM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AvinMainActivity"


# instance fields
.field AvinShow:Lcom/ts/main/avin/AvShowMainItem;

.field MyRelativeLayout:Landroid/widget/RelativeLayout;

.field private mEvc:Lcom/ts/MainUI/Evc;

.field nRearShow:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/avin/AvinMainActivity;->mEvc:Lcom/ts/MainUI/Evc;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/main/avin/AvinMainActivity;->MyRelativeLayout:Landroid/widget/RelativeLayout;

    .line 41
    new-instance v0, Lcom/ts/main/avin/AvShowMainItem;

    invoke-direct {v0}, Lcom/ts/main/avin/AvShowMainItem;-><init>()V

    iput-object v0, p0, Lcom/ts/main/avin/AvinMainActivity;->AvinShow:Lcom/ts/main/avin/AvShowMainItem;

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lcom/ts/main/avin/AvinMainActivity;->nRearShow:I

    .line 29
    return-void
.end method

.method private full(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/16 v3, 0x200

    .line 123
    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/ts/main/avin/AvinMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 125
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 126
    invoke-virtual {p0}, Lcom/ts/main/avin/AvinMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 127
    invoke-virtual {p0}, Lcom/ts/main/avin/AvinMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 134
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/ts/main/avin/AvinMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 130
    .local v0, "attr":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 131
    invoke-virtual {p0}, Lcom/ts/main/avin/AvinMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 132
    invoke-virtual {p0}, Lcom/ts/main/avin/AvinMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/ts/main/avin/AvinMainActivity;->AvinShow:Lcom/ts/main/avin/AvShowMainItem;

    invoke-virtual {v0}, Lcom/ts/main/avin/AvShowMainItem;->SignalDetect()V

    .line 145
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget v0, Lcom/ts/MainUI/R$layout;->activity_avin_main:I

    invoke-virtual {p0, v0}, Lcom/ts/main/avin/AvinMainActivity;->setContentView(I)V

    .line 49
    iget-object v1, p0, Lcom/ts/main/avin/AvinMainActivity;->AvinShow:Lcom/ts/main/avin/AvShowMainItem;

    sget v0, Lcom/ts/MainUI/R$id;->activity_avin_mainid:I

    invoke-virtual {p0, v0}, Lcom/ts/main/avin/AvinMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Lcom/ts/main/avin/AvShowMainItem;->Inint(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    .line 50
    iget-object v0, p0, Lcom/ts/main/avin/AvinMainActivity;->AvinShow:Lcom/ts/main/avin/AvShowMainItem;

    invoke-virtual {v0}, Lcom/ts/main/avin/AvShowMainItem;->InintCommonBtn()V

    .line 51
    iget-object v0, p0, Lcom/ts/main/avin/AvinMainActivity;->AvinShow:Lcom/ts/main/avin/AvShowMainItem;

    invoke-virtual {v0}, Lcom/ts/main/avin/AvShowMainItem;->GetVideoName()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$string;->title_activity_avin_main:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 77
    const-string v0, "scj"

    const-string v1, "av car onPause "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lcom/ts/main/common/ScreenSet;->GetInstance()Lcom/ts/main/common/ScreenSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/common/ScreenSet;->Hide()V

    .line 79
    iget-object v0, p0, Lcom/ts/main/avin/AvinMainActivity;->AvinShow:Lcom/ts/main/avin/AvShowMainItem;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ts/main/avin/AvShowMainItem;->ShowMode(IZ)I

    .line 80
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 81
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ts/main/common/MainSet;->TwShowTitle(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/ts/backcar/BackcarService;->getInstance()Lcom/ts/backcar/BackcarService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/backcar/BackcarService;->StopCamera()V

    .line 84
    invoke-static {}, Lcom/ts/MainUI/TsDisplay;->GetInstance()Lcom/ts/MainUI/TsDisplay;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/TsDisplay;->SetDispParat(I)V

    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 86
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 60
    const-string v0, "scj"

    const-string v1, "av car onResume "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/ts/main/avin/AvinMainActivity;->AvinShow:Lcom/ts/main/avin/AvShowMainItem;

    iput v3, v0, Lcom/ts/main/avin/AvShowMainItem;->nDelayNum:I

    .line 62
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 63
    iget-object v0, p0, Lcom/ts/main/avin/AvinMainActivity;->mEvc:Lcom/ts/MainUI/Evc;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 65
    iget-object v0, p0, Lcom/ts/main/avin/AvinMainActivity;->AvinShow:Lcom/ts/main/avin/AvShowMainItem;

    invoke-virtual {v0, v2, v2}, Lcom/ts/main/avin/AvShowMainItem;->ShowMode(IZ)I

    .line 66
    iget-object v0, p0, Lcom/ts/main/avin/AvinMainActivity;->AvinShow:Lcom/ts/main/avin/AvShowMainItem;

    iput v3, v0, Lcom/ts/main/avin/AvShowMainItem;->nShowMode:I

    .line 67
    invoke-static {}, Lcom/ts/MainUI/TsDisplay;->GetInstance()Lcom/ts/MainUI/TsDisplay;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ts/MainUI/TsDisplay;->SetDispParat(I)V

    .line 68
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ts/main/common/MainSet;->SetVideoChannel(I)V

    .line 69
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ts/main/avin/AvinMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->title_activity_avin_main:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/main/common/MainSet;->TwShowTitle(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/ts/backcar/BackcarService;->getInstance()Lcom/ts/backcar/BackcarService;

    move-result-object v1

    sget v0, Lcom/ts/MainUI/R$id;->textureView:I

    invoke-virtual {p0, v0}, Lcom/ts/main/avin/AvinMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ts/backcar/AutoFitTextureView;

    invoke-virtual {v1, v0}, Lcom/ts/backcar/BackcarService;->StartCamera(Lcom/ts/backcar/AutoFitTextureView;)V

    .line 72
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/ts/main/avin/AvinMainActivity;->AvinShow:Lcom/ts/main/avin/AvShowMainItem;

    invoke-virtual {v0}, Lcom/ts/main/avin/AvShowMainItem;->DealKeyTouch()V

    .line 118
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 115
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    goto :goto_0
.end method
