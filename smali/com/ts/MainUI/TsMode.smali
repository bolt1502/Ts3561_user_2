.class public Lcom/ts/MainUI/TsMode;
.super Landroid/app/Activity;
.source "TsMode.java"


# static fields
.field public static final ACTION_QB_POWEROFF:Ljava/lang/String; = "autochips.intent.action.QB_POWEROFF"

.field public static final ACTION_QB_POWERON:Ljava/lang/String; = "autochips.intent.action.QB_POWERON"

.field static final TAG:Ljava/lang/String; = "TsModeActivity"

.field public static final UI_ATV_APORT:I = 0x3

.field public static final UI_ATV_VPORT:I = 0x3

.field public static final UI_AVIN_APORT:I = 0x1

.field public static final UI_AVIN_VPORT:I = 0x1

.field public static final UI_BCAM_APORT:I = 0x6

.field public static final UI_BCAM_VPORT:I = 0x6

.field public static final UI_CMMB_APORT:I = 0x2

.field public static final UI_CMMB_VPORT:I = 0x2

.field public static final UI_DVR_APORT:I = 0x4

.field public static final UI_DVR_VPORT:I = 0x4

.field public static final UI_FCAM_APORT:I = 0x5

.field public static final UI_FCAM_VPORT:I = 0x5

.field public static final V_BACK_MODE:I = 0x2

.field public static final V_FRONT_BACK_MODE:I = 0x3

.field public static final V_FRONT_MODE:I = 0x1


# instance fields
.field public FRmode:I

.field public aPort:I

.field displays:[Landroid/view/Display;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public nHeight:I

.field public nIsRearShow:I

.field public nWidth:I

.field nWorkMode:I

.field public vPort:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 17
    iput v0, p0, Lcom/ts/MainUI/TsMode;->vPort:I

    .line 18
    iput v0, p0, Lcom/ts/MainUI/TsMode;->aPort:I

    .line 19
    iput v0, p0, Lcom/ts/MainUI/TsMode;->nIsRearShow:I

    .line 20
    iput v0, p0, Lcom/ts/MainUI/TsMode;->FRmode:I

    .line 21
    iput v0, p0, Lcom/ts/MainUI/TsMode;->nWidth:I

    .line 22
    iput v0, p0, Lcom/ts/MainUI/TsMode;->nHeight:I

    .line 97
    iput v0, p0, Lcom/ts/MainUI/TsMode;->nWorkMode:I

    .line 14
    return-void
.end method


# virtual methods
.method public EnterAv()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public HideSurfaceView()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public IsHaveSignal()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public IsvideoForbiden()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 67
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetDriveVideo()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->GetBrake()I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public ShowSurfaceView()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    .line 123
    const-string v2, "TsModeActivity"

    const-string v3, "onDestroy "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v2, "TsModeActivity"

    const-string v3, "onDestroy end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :try_start_0
    iget-object v2, p0, Lcom/ts/MainUI/TsMode;->displays:[Landroid/view/Display;

    array-length v2, v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 128
    const-string v2, "TsModeActivity"

    const-string v3, "Hide Presentation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/ts/MainUI/TsMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 139
    .local v1, "mAudioManager":Landroid/media/AudioManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 141
    return-void

    .line 133
    .end local v1    # "mAudioManager":Landroid/media/AudioManager;
    :cond_0
    :try_start_1
    const-string v2, "TsModeActivity"

    const-string v3, "onDestroy Do not have rear display!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TsModeActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hide presentation exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 111
    const-string v0, "TsModeActivity"

    const-string v1, "onPause!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 113
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 89
    const-string v0, "TsModeActivity"

    const-string v1, "onRestart!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 104
    const-string v0, "TsModeActivity"

    const-string v1, "onResume!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 95
    const-string v0, "TsModeActivity"

    const-string v1, "onStart!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 118
    const-string v0, "TsModeActivity"

    const-string v1, "onStop!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method
