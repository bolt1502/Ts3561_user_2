.class public Lcom/ts/factoryset/FsMainActivity;
.super Lcom/ts/factoryset/FsBaseActivity;
.source "FsMainActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FsMainActivity"

.field public static mbInit:Z


# instance fields
.field private handler:Landroid/os/Handler;

.field private mBtnAtv:Landroid/widget/Button;

.field private mBtnCan:Landroid/widget/Button;

.field private mBtnDisplay:Landroid/widget/Button;

.field private mBtnIcon:Landroid/widget/Button;

.field private mBtnKey:Landroid/widget/Button;

.field private mBtnLang:Landroid/widget/Button;

.field private mBtnMpMode:Landroid/widget/Button;

.field private mBtnOther:Landroid/widget/Button;

.field private mBtnRad:Landroid/widget/Button;

.field private mBtnVol:Landroid/widget/Button;

.field private mCurSyncSta:I

.field private mLastSyncSta:I

.field private mTaskCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/factoryset/FsMainActivity;->mbInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Lcom/ts/factoryset/FsBaseActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/factoryset/FsMainActivity;->handler:Landroid/os/Handler;

    .line 30
    iput v1, p0, Lcom/ts/factoryset/FsMainActivity;->mTaskCount:I

    .line 31
    iput v1, p0, Lcom/ts/factoryset/FsMainActivity;->mLastSyncSta:I

    .line 32
    iput v1, p0, Lcom/ts/factoryset/FsMainActivity;->mCurSyncSta:I

    .line 11
    return-void
.end method


# virtual methods
.method enterSubWin(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 72
    .local v0, "id":I
    sget v1, Lcom/ts/MainUI/R$id;->fsmain_btn_rad:I

    if-ne v0, v1, :cond_1

    .line 74
    const-class v1, Lcom/ts/factoryset/FsRadioActivity;

    invoke-virtual {p0, v1}, Lcom/ts/factoryset/FsMainActivity;->enterSubWin(Ljava/lang/Class;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    sget v1, Lcom/ts/MainUI/R$id;->fsmain_btn_can:I

    if-ne v0, v1, :cond_2

    .line 78
    const-class v1, Lcom/ts/factoryset/FsCanActivity;

    invoke-virtual {p0, v1}, Lcom/ts/factoryset/FsMainActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 80
    :cond_2
    sget v1, Lcom/ts/MainUI/R$id;->fsmain_btn_vol:I

    if-ne v0, v1, :cond_3

    .line 82
    const-class v1, Lcom/ts/factoryset/FsVolActivity;

    invoke-virtual {p0, v1}, Lcom/ts/factoryset/FsMainActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 84
    :cond_3
    sget v1, Lcom/ts/MainUI/R$id;->fsmain_btn_ico:I

    if-ne v0, v1, :cond_4

    .line 86
    const-class v1, Lcom/ts/factoryset/FsIconActivity;

    invoke-virtual {p0, v1}, Lcom/ts/factoryset/FsMainActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 88
    :cond_4
    sget v1, Lcom/ts/MainUI/R$id;->fsmain_btn_display:I

    if-ne v0, v1, :cond_5

    .line 90
    const-class v1, Lcom/ts/factoryset/FsDisplayActivity;

    invoke-virtual {p0, v1}, Lcom/ts/factoryset/FsMainActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 92
    :cond_5
    sget v1, Lcom/ts/MainUI/R$id;->fsmain_btn_atv:I

    if-ne v0, v1, :cond_6

    .line 94
    const-class v1, Lcom/ts/factoryset/FsTVActivity;

    invoke-virtual {p0, v1}, Lcom/ts/factoryset/FsMainActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 96
    :cond_6
    sget v1, Lcom/ts/MainUI/R$id;->fsmain_btn_key:I

    if-ne v0, v1, :cond_7

    .line 98
    const-class v1, Lcom/ts/factoryset/FsKeyActivity;

    invoke-virtual {p0, v1}, Lcom/ts/factoryset/FsMainActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 100
    :cond_7
    sget v1, Lcom/ts/MainUI/R$id;->fsmain_btn_lang:I

    if-ne v0, v1, :cond_8

    .line 102
    const-class v1, Lcom/ts/factoryset/FsLangActivity;

    invoke-virtual {p0, v1}, Lcom/ts/factoryset/FsMainActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 104
    :cond_8
    sget v1, Lcom/ts/MainUI/R$id;->fsmain_btn_other:I

    if-ne v0, v1, :cond_9

    .line 106
    const-class v1, Lcom/ts/factoryset/FsOtherActivity;

    invoke-virtual {p0, v1}, Lcom/ts/factoryset/FsMainActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 108
    :cond_9
    sget v1, Lcom/ts/MainUI/R$id;->fsmain_btn_mpmode:I

    if-ne v0, v1, :cond_0

    .line 110
    const-class v1, Lcom/ts/factoryset/FsMPModeActivity;

    invoke-virtual {p0, v1}, Lcom/ts/factoryset/FsMainActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/ts/factoryset/FsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget v0, Lcom/ts/MainUI/R$layout;->activity_fs_main:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsMainActivity;->setContentView(I)V

    .line 41
    sget v0, Lcom/ts/MainUI/R$string;->str_fs_title:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsMainActivity;->topBtnInit(I)V

    .line 43
    sget v0, Lcom/ts/MainUI/R$id;->fsmain_btn_rad:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/factoryset/FsMainActivity;->mBtnRad:Landroid/widget/Button;

    .line 44
    sget v0, Lcom/ts/MainUI/R$id;->fsmain_btn_can:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/factoryset/FsMainActivity;->mBtnCan:Landroid/widget/Button;

    .line 45
    sget v0, Lcom/ts/MainUI/R$id;->fsmain_btn_vol:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/factoryset/FsMainActivity;->mBtnVol:Landroid/widget/Button;

    .line 46
    sget v0, Lcom/ts/MainUI/R$id;->fsmain_btn_ico:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/factoryset/FsMainActivity;->mBtnIcon:Landroid/widget/Button;

    .line 47
    sget v0, Lcom/ts/MainUI/R$id;->fsmain_btn_display:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/factoryset/FsMainActivity;->mBtnDisplay:Landroid/widget/Button;

    .line 48
    sget v0, Lcom/ts/MainUI/R$id;->fsmain_btn_atv:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/factoryset/FsMainActivity;->mBtnAtv:Landroid/widget/Button;

    .line 49
    sget v0, Lcom/ts/MainUI/R$id;->fsmain_btn_key:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/factoryset/FsMainActivity;->mBtnKey:Landroid/widget/Button;

    .line 50
    sget v0, Lcom/ts/MainUI/R$id;->fsmain_btn_lang:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/factoryset/FsMainActivity;->mBtnLang:Landroid/widget/Button;

    .line 51
    sget v0, Lcom/ts/MainUI/R$id;->fsmain_btn_other:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/factoryset/FsMainActivity;->mBtnOther:Landroid/widget/Button;

    .line 52
    sget v0, Lcom/ts/MainUI/R$id;->fsmain_btn_mpmode:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/factoryset/FsMainActivity;->mBtnMpMode:Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lcom/ts/factoryset/FsMainActivity;->mBtnRad:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/ts/factoryset/FsMainActivity;->mBtnCan:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/ts/factoryset/FsMainActivity;->mBtnVol:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/ts/factoryset/FsMainActivity;->mBtnIcon:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/ts/factoryset/FsMainActivity;->mBtnDisplay:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/ts/factoryset/FsMainActivity;->mBtnAtv:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/ts/factoryset/FsMainActivity;->mBtnKey:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/ts/factoryset/FsMainActivity;->mBtnLang:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/ts/factoryset/FsMainActivity;->mBtnOther:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/ts/factoryset/FsMainActivity;->mBtnMpMode:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method
