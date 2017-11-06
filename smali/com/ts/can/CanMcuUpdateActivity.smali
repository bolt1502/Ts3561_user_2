.class public Lcom/ts/can/CanMcuUpdateActivity;
.super Landroid/app/Activity;
.source "CanMcuUpdateActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CanMcuUpdateActivity"

.field private static handler:Landroid/os/Handler;


# instance fields
.field private McuUpdateClick:Landroid/view/View$OnClickListener;

.field private mMsg:Landroid/widget/TextView;

.field private mMsgVal:I

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressVal:I

.field private mReset:Landroid/widget/Button;

.field private mStart:Landroid/widget/Button;

.field private mStrMsg:[Ljava/lang/String;

.field private mUpdater:Lcom/ts/can/McuUpdater;

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/can/CanMcuUpdateActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    new-instance v0, Lcom/ts/can/CanMcuUpdateActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/can/CanMcuUpdateActivity$1;-><init>(Lcom/ts/can/CanMcuUpdateActivity;)V

    iput-object v0, p0, Lcom/ts/can/CanMcuUpdateActivity;->runnable:Ljava/lang/Runnable;

    .line 137
    new-instance v0, Lcom/ts/can/CanMcuUpdateActivity$2;

    invoke-direct {v0, p0}, Lcom/ts/can/CanMcuUpdateActivity$2;-><init>(Lcom/ts/can/CanMcuUpdateActivity;)V

    iput-object v0, p0, Lcom/ts/can/CanMcuUpdateActivity;->McuUpdateClick:Landroid/view/View$OnClickListener;

    .line 25
    return-void
.end method

.method static synthetic access$0()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/ts/can/CanMcuUpdateActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ts/can/CanMcuUpdateActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ts/can/CanMcuUpdateActivity;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ts/can/CanMcuUpdateActivity;)Lcom/ts/can/McuUpdater;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ts/can/CanMcuUpdateActivity;->mUpdater:Lcom/ts/can/McuUpdater;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_mcu_update:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanMcuUpdateActivity;->setContentView(I)V

    .line 59
    invoke-static {}, Lcom/ts/can/McuUpdater;->getInstance()Lcom/ts/can/McuUpdater;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanMcuUpdateActivity;->mUpdater:Lcom/ts/can/McuUpdater;

    .line 61
    sget v0, Lcom/ts/MainUI/R$id;->mcu_update_msg:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanMcuUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/can/CanMcuUpdateActivity;->mMsg:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/ts/MainUI/R$id;->mcu_update_progress:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanMcuUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ts/can/CanMcuUpdateActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 63
    sget v0, Lcom/ts/MainUI/R$id;->mcu_update_start:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanMcuUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/can/CanMcuUpdateActivity;->mStart:Landroid/widget/Button;

    .line 64
    sget v0, Lcom/ts/MainUI/R$id;->mcu_update_reset:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanMcuUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/can/CanMcuUpdateActivity;->mReset:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/ts/can/CanMcuUpdateActivity;->mStart:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ts/can/CanMcuUpdateActivity;->McuUpdateClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/ts/can/CanMcuUpdateActivity;->mReset:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ts/can/CanMcuUpdateActivity;->McuUpdateClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/ts/can/CanMcuUpdateActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 70
    invoke-virtual {p0}, Lcom/ts/can/CanMcuUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$array;->mcu_update_msg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanMcuUpdateActivity;->mStrMsg:[Ljava/lang/String;

    .line 74
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 83
    iget-object v0, p0, Lcom/ts/can/CanMcuUpdateActivity;->mUpdater:Lcom/ts/can/McuUpdater;

    invoke-virtual {v0}, Lcom/ts/can/McuUpdater;->IsUpdating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    sget-object v0, Lcom/ts/can/CanMcuUpdateActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ts/can/CanMcuUpdateActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    const-string v0, "CanMcuUpdateActivity"

    const-string v1, "onPause !mUpdater.IsUpdating, removeCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 99
    iput v0, p0, Lcom/ts/can/CanMcuUpdateActivity;->mProgressVal:I

    .line 100
    iput v0, p0, Lcom/ts/can/CanMcuUpdateActivity;->mMsgVal:I

    .line 103
    sget-object v0, Lcom/ts/can/CanMcuUpdateActivity;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/ts/can/CanMcuUpdateActivity;->handler:Landroid/os/Handler;

    .line 107
    :cond_0
    sget-object v0, Lcom/ts/can/CanMcuUpdateActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ts/can/CanMcuUpdateActivity;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    return-void
.end method

.method public onTimer()V
    .locals 4

    .prologue
    .line 114
    iget-object v2, p0, Lcom/ts/can/CanMcuUpdateActivity;->mUpdater:Lcom/ts/can/McuUpdater;

    invoke-virtual {v2}, Lcom/ts/can/McuUpdater;->main()I

    .line 115
    iget-object v2, p0, Lcom/ts/can/CanMcuUpdateActivity;->mUpdater:Lcom/ts/can/McuUpdater;

    invoke-virtual {v2}, Lcom/ts/can/McuUpdater;->getProgress()I

    move-result v1

    .line 116
    .local v1, "pos":I
    iget-object v2, p0, Lcom/ts/can/CanMcuUpdateActivity;->mUpdater:Lcom/ts/can/McuUpdater;

    invoke-virtual {v2}, Lcom/ts/can/McuUpdater;->getSta()I

    move-result v0

    .line 117
    .local v0, "msg":I
    iget v2, p0, Lcom/ts/can/CanMcuUpdateActivity;->mProgressVal:I

    if-eq v1, v2, :cond_0

    .line 119
    iput v1, p0, Lcom/ts/can/CanMcuUpdateActivity;->mProgressVal:I

    .line 120
    iget-object v2, p0, Lcom/ts/can/CanMcuUpdateActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 123
    :cond_0
    iget v2, p0, Lcom/ts/can/CanMcuUpdateActivity;->mMsgVal:I

    if-eq v2, v0, :cond_1

    .line 125
    iput v0, p0, Lcom/ts/can/CanMcuUpdateActivity;->mMsgVal:I

    .line 126
    iget-object v2, p0, Lcom/ts/can/CanMcuUpdateActivity;->mStrMsg:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/ts/can/CanMcuUpdateActivity;->mMsg:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ts/can/CanMcuUpdateActivity;->mStrMsg:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_1
    return-void
.end method
