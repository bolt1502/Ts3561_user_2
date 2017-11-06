.class public Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;
.super Landroid/app/Activity;
.source "CanCadillacXt5UpdateActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CanCadillacXt5UpdateActivity"

.field private static handler:Landroid/os/Handler;


# instance fields
.field private McuUpdateClick:Landroid/view/View$OnClickListener;

.field private mCanMsg1:Landroid/widget/TextView;

.field private mCanMsg2:Landroid/widget/TextView;

.field private mCanMsgVal:I

.field private mCanVer:Landroid/widget/TextView;

.field private mMsg:Landroid/widget/TextView;

.field private mMsgVal:I

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressVal:I

.field private mReset:Landroid/widget/Button;

.field private mStart:Landroid/widget/Button;

.field private final mStrCanErr:[Ljava/lang/String;

.field private final mStrCanSta:[Ljava/lang/String;

.field private final mStrMsg:[Ljava/lang/String;

.field private mUpdater:Lcom/ts/can/gm/xt5/McuUpdater;

.field private m_CanVer:Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;

.field private m_IapPro:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapPro;

.field private m_IapSta:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapSta;

.field private mcheck:Ljava/lang/Boolean;

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->handler:Landroid/os/Handler;

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

    .line 51
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 52
    const-string v1, "\u534f\u8bae\u76d2\u72b6\u6001\uff1a\u4e0d\u5141\u8bb8\u5347\u7ea7"

    aput-object v1, v0, v3

    .line 53
    const-string v1, "\u534f\u8bae\u76d2\u72b6\u6001\uff1a\u51c6\u5907\u4e2d"

    aput-object v1, v0, v4

    .line 54
    const-string v1, "\u534f\u8bae\u76d2\u72b6\u6001\uff1a\u64e6\u9664\u4e2d"

    aput-object v1, v0, v5

    .line 55
    const-string v1, "\u534f\u8bae\u76d2\u72b6\u6001\uff1a\u5f00\u59cb\u5347\u7ea7"

    aput-object v1, v0, v6

    .line 56
    const-string v1, "\u534f\u8bae\u76d2\u72b6\u6001\uff1a\u5b8c\u6210"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 57
    const-string v2, "\u534f\u8bae\u76d2\u72b6\u6001\uff1a\u9519\u8bef"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 58
    const-string v2, "\u534f\u8bae\u76d2\u72b6\u6001\uff1aID\u9519\u8bef"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 59
    const-string v2, "\u534f\u8bae\u76d2\u72b6\u6001\uff1a\u6587\u4ef6\u5927\u5c0f\u9519\u8bef"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 60
    const-string v2, "\u534f\u8bae\u76d2\u72b6\u6001\uff1a\u957f\u65f6\u95f4\u6ca1\u6709\u6536\u5230\u7b2c\u4e00\u5e27\u6570\u636e"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 61
    const-string v2, "\u534f\u8bae\u76d2\u72b6\u6001\uff1aCAN\u8bf7\u6c42\u8fdb\u5165CAN\u5347\u7ea7APP"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mStrCanSta:[Ljava/lang/String;

    .line 65
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 66
    const-string v1, " "

    aput-object v1, v0, v3

    .line 67
    const-string v1, "\u65e0\u5e94\u7b54"

    aput-object v1, v0, v4

    .line 68
    const-string v1, "\u6587\u4ef6\u8fc7\u5927"

    aput-object v1, v0, v5

    .line 69
    const-string v1, "\u64e6\u9664\u5931\u8d25"

    aput-object v1, v0, v6

    .line 70
    const-string v1, "\u6821\u9a8c\u51fa\u9519"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 71
    const-string v2, "\u5199\u5165\u51fa\u9519"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 72
    const-string v2, "\u6570\u636e\u8d85\u65f6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 73
    const-string v2, "\u6570\u636e\u4f20\u8f93\u51fa\u9519"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 74
    const-string v2, "\u6587\u4ef6\u4fe1\u606f\u9519\u8bef"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 75
    const-string v2, "\u5176\u4ed6\u51fa\u9519"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mStrCanErr:[Ljava/lang/String;

    .line 79
    new-array v0, v6, [Ljava/lang/String;

    .line 80
    const-string v1, "\u672a\u8fdb\u5165\u5347\u7ea7\u6d41\u7a0b"

    aput-object v1, v0, v3

    .line 81
    const-string v1, "\u5347\u7ea7\u6587\u4ef6\u6253\u5f00\u5931\u8d25!"

    aput-object v1, v0, v4

    .line 82
    const-string v1, "\u5347\u7ea7\u4e2d\uff0c\u5347\u7ea7\u5b8c\u6210\u4e4b\u524d\u8bf7\u4e0d\u8981\u65ad\u7535!"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mStrMsg:[Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_IapSta;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GmSb_IapSta;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->m_IapSta:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapSta;

    .line 88
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_IapPro;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GmSb_IapPro;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->m_IapPro:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapPro;

    .line 89
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->m_CanVer:Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;

    .line 93
    new-instance v0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity$1;-><init>(Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;)V

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->runnable:Ljava/lang/Runnable;

    .line 245
    new-instance v0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity$2;

    invoke-direct {v0, p0}, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity$2;-><init>(Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;)V

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->McuUpdateClick:Landroid/view/View$OnClickListener;

    .line 31
    return-void
.end method

.method static synthetic access$0()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;)Lcom/ts/can/gm/xt5/McuUpdater;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mUpdater:Lcom/ts/can/gm/xt5/McuUpdater;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;)Lcom/lgb/canmodule/CanDataInfo$GmSb_IapSta;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->m_IapSta:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapSta;

    return-object v0
.end method

.method protected static i2b(I)Z
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 169
    if-nez p0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_xt5_update:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->setContentView(I)V

    .line 111
    invoke-static {}, Lcom/ts/can/gm/xt5/McuUpdater;->getInstance()Lcom/ts/can/gm/xt5/McuUpdater;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mUpdater:Lcom/ts/can/gm/xt5/McuUpdater;

    .line 113
    sget v0, Lcom/ts/MainUI/R$id;->xt5_update_msg:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mMsg:Landroid/widget/TextView;

    .line 114
    sget v0, Lcom/ts/MainUI/R$id;->xt5_can_update_msg:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mCanMsg1:Landroid/widget/TextView;

    .line 115
    sget v0, Lcom/ts/MainUI/R$id;->xt5_can_update_err:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mCanMsg2:Landroid/widget/TextView;

    .line 116
    sget v0, Lcom/ts/MainUI/R$id;->xt5_update_progress:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 117
    sget v0, Lcom/ts/MainUI/R$id;->xt5_update_start:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mStart:Landroid/widget/Button;

    .line 118
    sget v0, Lcom/ts/MainUI/R$id;->xt5_update_reset:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mReset:Landroid/widget/Button;

    .line 120
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mStart:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->McuUpdateClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mReset:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->McuUpdateClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 124
    sget v0, Lcom/ts/MainUI/R$id;->xt5_can_ver:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mCanVer:Landroid/widget/TextView;

    .line 126
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 135
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mUpdater:Lcom/ts/can/gm/xt5/McuUpdater;

    invoke-virtual {v0}, Lcom/ts/can/gm/xt5/McuUpdater;->IsUpdating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    sget-object v0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    const-string v0, "CanCadillacXt5UpdateActivity"

    const-string v1, "onPause !mUpdater.IsUpdating, removeCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 151
    iput v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mProgressVal:I

    .line 152
    iput v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mMsgVal:I

    .line 153
    iput v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mCanMsgVal:I

    .line 156
    sget-object v0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->handler:Landroid/os/Handler;

    .line 160
    :cond_0
    sget-object v0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mcheck:Ljava/lang/Boolean;

    .line 164
    return-void
.end method

.method public onTimer()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 180
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mUpdater:Lcom/ts/can/gm/xt5/McuUpdater;

    invoke-virtual {v2}, Lcom/ts/can/gm/xt5/McuUpdater;->main()I

    .line 181
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mUpdater:Lcom/ts/can/gm/xt5/McuUpdater;

    invoke-virtual {v2}, Lcom/ts/can/gm/xt5/McuUpdater;->getProgress()I

    move-result v1

    .line 182
    .local v1, "pos":I
    iget v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mProgressVal:I

    if-eq v1, v2, :cond_0

    .line 184
    iput v1, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mProgressVal:I

    .line 185
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mUpdater:Lcom/ts/can/gm/xt5/McuUpdater;

    invoke-virtual {v2}, Lcom/ts/can/gm/xt5/McuUpdater;->getSta()I

    move-result v0

    .line 189
    .local v0, "msg":I
    iget v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mMsgVal:I

    if-eq v2, v0, :cond_1

    .line 191
    iput v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mMsgVal:I

    .line 192
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mStrMsg:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mMsg:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mStrMsg:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_1
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->m_IapSta:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapSta;

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->GmSbIapGetSta(Lcom/lgb/canmodule/CanDataInfo$GmSb_IapSta;)V

    .line 199
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->m_IapSta:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapSta;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GmSb_IapSta;->UpdateOnce:I

    invoke-static {v2}, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->i2b(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 201
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->m_IapSta:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapSta;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GmSb_IapSta;->Update:I

    invoke-static {v2}, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->i2b(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mcheck:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 203
    :cond_2
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->m_IapSta:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapSta;

    iput v5, v2, Lcom/lgb/canmodule/CanDataInfo$GmSb_IapSta;->Update:I

    .line 204
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->m_IapSta:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapSta;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GmSb_IapSta;->Sta:I

    iget-object v3, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mStrCanSta:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 206
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mCanMsg1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mStrCanSta:[Ljava/lang/String;

    iget-object v4, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->m_IapSta:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapSta;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$GmSb_IapSta;->Sta:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :cond_3
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->m_IapSta:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapSta;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GmSb_IapSta;->Sta:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 210
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mUpdater:Lcom/ts/can/gm/xt5/McuUpdater;

    invoke-virtual {v2, v5}, Lcom/ts/can/gm/xt5/McuUpdater;->sendFileData(I)V

    .line 215
    :cond_4
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->m_IapPro:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapPro;

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->GmSbIapGetPro(Lcom/lgb/canmodule/CanDataInfo$GmSb_IapPro;)V

    .line 216
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->m_IapPro:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapPro;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GmSb_IapPro;->UpdateOnce:I

    invoke-static {v2}, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->i2b(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 218
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->m_IapPro:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapPro;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GmSb_IapPro;->Update:I

    invoke-static {v2}, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->i2b(I)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mcheck:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 220
    :cond_5
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->m_IapPro:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapPro;

    iput v5, v2, Lcom/lgb/canmodule/CanDataInfo$GmSb_IapPro;->Update:I

    .line 221
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->m_IapPro:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapPro;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GmSb_IapPro;->Pro:I

    iget-object v3, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mStrCanErr:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 223
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mCanMsg2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mStrCanErr:[Ljava/lang/String;

    iget-object v4, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->m_IapPro:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapPro;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$GmSb_IapPro;->Pro:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :cond_6
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->m_CanVer:Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->GetVersion(Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;)V

    .line 229
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->m_CanVer:Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;->UpdateOnce:I

    invoke-static {v2}, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->i2b(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 231
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->m_CanVer:Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;->Update:I

    invoke-static {v2}, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->i2b(I)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mcheck:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 233
    :cond_7
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->m_CanVer:Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;

    iput v5, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;->Update:I

    .line 234
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mCanVer:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->m_CanVer:Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;

    iget-object v3, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;->VerData:[B

    invoke-static {v3}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_8
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->mcheck:Ljava/lang/Boolean;

    .line 240
    return-void
.end method
