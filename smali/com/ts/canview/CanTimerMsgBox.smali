.class public Lcom/ts/canview/CanTimerMsgBox;
.super Ljava/lang/Object;
.source "CanTimerMsgBox.java"


# instance fields
.field private mDlg:Landroid/app/AlertDialog;

.field private mMSec:J

.field private mTask:Ljava/util/TimerTask;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;JI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msec"    # J
    .param p4, "title"    # I

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v1, p0, Lcom/ts/canview/CanTimerMsgBox;->mTimer:Ljava/util/Timer;

    .line 16
    iput-object v1, p0, Lcom/ts/canview/CanTimerMsgBox;->mTask:Ljava/util/TimerTask;

    .line 22
    iput-wide p2, p0, Lcom/ts/canview/CanTimerMsgBox;->mMSec:J

    .line 23
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 24
    .local v0, "build":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/ts/MainUI/R$string;->str_fs_tip:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 25
    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 26
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 27
    sget v1, Lcom/ts/MainUI/R$string;->can_confirm:I

    new-instance v2, Lcom/ts/canview/CanTimerMsgBox$1;

    invoke-direct {v2, p0}, Lcom/ts/canview/CanTimerMsgBox$1;-><init>(Lcom/ts/canview/CanTimerMsgBox;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 36
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/canview/CanTimerMsgBox;->mDlg:Landroid/app/AlertDialog;

    .line 37
    iget-object v1, p0, Lcom/ts/canview/CanTimerMsgBox;->mDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 39
    iget-object v1, p0, Lcom/ts/canview/CanTimerMsgBox;->mDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 40
    invoke-direct {p0}, Lcom/ts/canview/CanTimerMsgBox;->StartTimer()V

    .line 41
    return-void
.end method

.method private StartTimer()V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ts/canview/CanTimerMsgBox;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ts/canview/CanTimerMsgBox;->mTimer:Ljava/util/Timer;

    .line 48
    new-instance v0, Lcom/ts/canview/CanTimerMsgBox$2;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanTimerMsgBox$2;-><init>(Lcom/ts/canview/CanTimerMsgBox;)V

    iput-object v0, p0, Lcom/ts/canview/CanTimerMsgBox;->mTask:Ljava/util/TimerTask;

    .line 58
    iget-object v0, p0, Lcom/ts/canview/CanTimerMsgBox;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/ts/canview/CanTimerMsgBox;->mTask:Ljava/util/TimerTask;

    iget-wide v2, p0, Lcom/ts/canview/CanTimerMsgBox;->mMSec:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 60
    :cond_0
    return-void
.end method

.method private StopTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lcom/ts/canview/CanTimerMsgBox;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/ts/canview/CanTimerMsgBox;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 67
    iget-object v0, p0, Lcom/ts/canview/CanTimerMsgBox;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 68
    iput-object v1, p0, Lcom/ts/canview/CanTimerMsgBox;->mTimer:Ljava/util/Timer;

    .line 69
    iget-object v0, p0, Lcom/ts/canview/CanTimerMsgBox;->mTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 70
    iput-object v1, p0, Lcom/ts/canview/CanTimerMsgBox;->mTask:Ljava/util/TimerTask;

    .line 71
    iget-object v0, p0, Lcom/ts/canview/CanTimerMsgBox;->mDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 73
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/ts/canview/CanTimerMsgBox;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/ts/canview/CanTimerMsgBox;->StopTimer()V

    return-void
.end method
