.class public Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanCadillacXt5ExdActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "CanCadillacXt5ExdActivity"

.field public static mfgAutoEnt:Z

.field public static mfgFinish:Z

.field public static mfgShow:Z


# instance fields
.field private mManager:Landroid/widget/RelativeLayout;

.field private wManager:Landroid/view/WindowManager;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    sput-boolean v0, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->mfgShow:Z

    .line 39
    sput-boolean v0, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->mfgFinish:Z

    .line 40
    sput-boolean v0, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->mfgAutoEnt:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 41
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 32
    return-void
.end method

.method public static IsCadillacXt5Win()Z
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->mfgShow:Z

    return v0
.end method

.method private ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 124
    return-void
.end method

.method public static finishCadillacXt5Win()V
    .locals 1

    .prologue
    .line 108
    sget-boolean v0, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->mfgShow:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->mfgAutoEnt:Z

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->mfgFinish:Z

    .line 112
    :cond_0
    return-void
.end method

.method public static showCadillacXt5Win()V
    .locals 1

    .prologue
    .line 99
    sget-boolean v0, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->mfgShow:Z

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->mfgAutoEnt:Z

    .line 102
    const-class v0, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;

    invoke-static {v0}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->ResetData(Z)V

    .line 132
    sget-boolean v0, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->mfgShow:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->mfgFinish:Z

    if-eqz v0, :cond_0

    .line 134
    sput-boolean v1, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->mfgFinish:Z

    .line 135
    sput-boolean v1, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->mfgShow:Z

    .line 137
    invoke-virtual {p0}, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->finish()V

    .line 140
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_cadillax_xt5_base:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->setContentView(I)V

    .line 49
    sget v0, Lcom/ts/MainUI/R$id;->can_cadillax_xt5_layout:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->mManager:Landroid/widget/RelativeLayout;

    .line 50
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->mManager:Landroid/widget/RelativeLayout;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_aode_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 51
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->mManager:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 52
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->mManager:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 56
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 88
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 90
    sput-boolean v2, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->mfgShow:Z

    .line 91
    sput-boolean v2, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->mfgAutoEnt:Z

    .line 92
    const-string v0, "CanCadillacXt5ExdActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lcom/ts/backcar/BackcarService;->getInstance()Lcom/ts/backcar/BackcarService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/backcar/BackcarService;->StopCamera()V

    .line 95
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 64
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 65
    invoke-direct {p0, v4}, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->ResetData(Z)V

    .line 66
    sget-boolean v2, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->mfgAutoEnt:Z

    if-nez v2, :cond_0

    .line 68
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 69
    const-string v2, "CanCadillacXt5ExdActivity"

    const-string v3, "WORKMODE_EXD"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->mfgShow:Z

    .line 72
    sput-boolean v4, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->mfgFinish:Z

    .line 73
    const-string v2, "CanCadillacXt5ExdActivity"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0}, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1204

    .line 77
    .local v1, "uiOptions":I
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 79
    invoke-static {}, Lcom/ts/MainUI/TsDisplay;->GetInstance()Lcom/ts/MainUI/TsDisplay;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/ts/MainUI/TsDisplay;->SetDispParat(I)V

    .line 80
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/ts/main/common/MainSet;->SetVideoChannel(I)V

    .line 81
    invoke-static {}, Lcom/ts/backcar/BackcarService;->getInstance()Lcom/ts/backcar/BackcarService;

    move-result-object v3

    sget v2, Lcom/ts/MainUI/R$id;->DevtextureView:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ts/backcar/AutoFitTextureView;

    invoke-virtual {v3, v2}, Lcom/ts/backcar/BackcarService;->StartCamera(Lcom/ts/backcar/AutoFitTextureView;)V

    .line 82
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 145
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 147
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1, v2}, Lcom/lgb/canmodule/CanJni;->GmSbCarTouchCtl(III)V

    .line 159
    :cond_0
    :goto_0
    return v4

    .line 149
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 151
    const-string v0, "CanCadillacXt5ExdActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTouch ACTION_MOVE event.getY() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v0, "CanCadillacXt5ExdActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTouch ACTION_MOVE event.getY() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const v3, 0x43d48000    # 425.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x43f00000    # 480.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1, v5}, Lcom/lgb/canmodule/CanJni;->GmSbCarTouchCtl(III)V

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 157
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1, v4}, Lcom/lgb/canmodule/CanJni;->GmSbCarTouchCtl(III)V

    goto :goto_0
.end method
