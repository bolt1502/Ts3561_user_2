.class public Lcom/ts/can/CanHondaDAAcActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanHondaDAAcActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final ITEM_AC_OF:I = 0x2

.field private static final ITEM_AC_ON:I = 0x1

.field private static final ITEM_MODE_J:I = 0x5

.field private static final ITEM_MODE_JC:I = 0x6

.field private static final ITEM_MODE_PX:I = 0x3

.field private static final ITEM_MODE_PXJ:I = 0x4

.field private static final ITEM_MODE_WIND1:I = 0x7

.field private static final ITEM_MODE_WIND2:I = 0x8

.field private static final ITEM_MODE_WIND3:I = 0x9

.field private static final ITEM_MODE_WIND4:I = 0xa

.field private static final ITEM_MODE_WIND5:I = 0xb

.field private static final ITEM_MODE_WIND6:I = 0xc

.field private static final ITEM_MODE_WIND7:I = 0xd

.field public static final TAG:Ljava/lang/String; = "CanHondaDaAcActivity"

.field protected static mfgJump:Z


# instance fields
.field private mAcOf:Lcom/ts/other/ParamButton;

.field private mAcOn:Lcom/ts/other/ParamButton;

.field protected mAutoFinish:Z

.field private mLtTemp:Landroid/widget/TextView;

.field private mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mMode_Px:Lcom/ts/other/ParamButton;

.field private mMode_Pxj:Lcom/ts/other/ParamButton;

.field private mMode_j:Lcom/ts/other/ParamButton;

.field private mMode_jc:Lcom/ts/other/ParamButton;

.field private mRtTemp:Landroid/widget/TextView;

.field private mWindLevel:[Lcom/ts/other/ParamButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/CanHondaDAAcActivity;->mWindLevel:[Lcom/ts/other/ParamButton;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/can/CanHondaDAAcActivity;->mAutoFinish:Z

    .line 22
    return-void
.end method

.method private AddBtn(III)Lcom/ts/other/ParamButton;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "id"    # I

    .prologue
    .line 119
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 121
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 122
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 123
    return-object v0
.end method

.method protected static uint2Bool(I)I
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 187
    if-nez p0, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public UserAll()V
    .locals 6

    .prologue
    .line 165
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 166
    sget-object v2, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/ts/can/CanHondaDAAcActivity;->updateACUI()V

    .line 170
    :cond_0
    sget-boolean v2, Lcom/ts/can/CanHondaDAAcActivity;->mfgJump:Z

    if-eqz v2, :cond_1

    .line 172
    invoke-static {}, Lcom/ts/can/CanHondaDAAcActivity;->GetTickCount()J

    move-result-wide v0

    .line 173
    .local v0, "curTick":J
    sget-wide v2, Lcom/ts/can/CanFunc;->mLastACTick:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/ts/can/CanHondaDAAcActivity;->finish()V

    .line 176
    const-string v2, "CanHondaDaAcActivity"

    const-string v3, "UserAll Exit Ac"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ts/can/CanHondaDAAcActivity;->mAutoFinish:Z

    .line 182
    .end local v0    # "curTick":J
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, -0x1

    const/high16 v8, 0x42200000    # 40.0f

    const/4 v7, 0x7

    const/4 v6, 0x0

    const/16 v5, 0xc2

    .line 62
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget v1, Lcom/ts/MainUI/R$layout;->activity_can_hondda_sy_ac:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanHondaDAAcActivity;->setContentView(I)V

    .line 65
    invoke-static {p0}, Lcom/ts/can/CanFunc;->IsCanActivityJumped(Landroid/app/Activity;)Z

    move-result v1

    sput-boolean v1, Lcom/ts/can/CanHondaDAAcActivity;->mfgJump:Z

    .line 67
    new-instance v1, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->can_hondda_sy_ac_layout:I

    invoke-direct {v1, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 68
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x11

    const/16 v3, 0x83

    const/16 v4, 0x3b

    invoke-virtual {v1, v2, v7, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mLtTemp:Landroid/widget/TextView;

    .line 69
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mLtTemp:Landroid/widget/TextView;

    invoke-virtual {v1, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 70
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mLtTemp:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mLtTemp:Landroid/widget/TextView;

    const-string v2, "13\u2103"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mLtTemp:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 74
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x368

    const/16 v3, 0x83

    const/16 v4, 0x3b

    invoke-virtual {v1, v2, v7, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mRtTemp:Landroid/widget/TextView;

    .line 75
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mRtTemp:Landroid/widget/TextView;

    invoke-virtual {v1, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 76
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mRtTemp:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mRtTemp:Landroid/widget/TextView;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 78
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mRtTemp:Landroid/widget/TextView;

    const-string v2, "13\u2103"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const/16 v1, 0x10a

    const/16 v2, 0x62

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/ts/can/CanHondaDAAcActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mAcOn:Lcom/ts/other/ParamButton;

    .line 81
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mAcOn:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_syac_on_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_syac_on_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 83
    const/16 v1, 0x268

    const/16 v2, 0x62

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/ts/can/CanHondaDAAcActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mAcOf:Lcom/ts/other/ParamButton;

    .line 84
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mAcOf:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_syac_off_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_syac_off_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 86
    const/16 v1, 0x10a

    const/4 v2, 0x3

    invoke-direct {p0, v1, v5, v2}, Lcom/ts/can/CanHondaDAAcActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mMode_Px:Lcom/ts/other/ParamButton;

    .line 87
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mMode_Px:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_syac_bt01_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_syac_bt01_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 90
    const/16 v1, 0x1b9

    const/4 v2, 0x4

    invoke-direct {p0, v1, v5, v2}, Lcom/ts/can/CanHondaDAAcActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mMode_Pxj:Lcom/ts/other/ParamButton;

    .line 91
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mMode_Pxj:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_syac_bt02_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_syac_bt02_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 94
    const/16 v1, 0x268

    const/4 v2, 0x5

    invoke-direct {p0, v1, v5, v2}, Lcom/ts/can/CanHondaDAAcActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mMode_j:Lcom/ts/other/ParamButton;

    .line 95
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mMode_j:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_syac_bt03_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_syac_bt03_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 97
    const/16 v1, 0x317

    const/4 v2, 0x6

    invoke-direct {p0, v1, v5, v2}, Lcom/ts/can/CanHondaDAAcActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mMode_jc:Lcom/ts/other/ParamButton;

    .line 98
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mMode_jc:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_syac_bt04_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_syac_bt04_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v7, :cond_0

    .line 105
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mWindLevel:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v6

    sget v2, Lcom/ts/MainUI/R$drawable;->can_syac_fl01_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_syac_fl01_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 106
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mWindLevel:[Lcom/ts/other/ParamButton;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_syac_fl02_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_syac_fl02_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 107
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mWindLevel:[Lcom/ts/other/ParamButton;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_syac_fl03_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_syac_fl03_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 108
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mWindLevel:[Lcom/ts/other/ParamButton;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_syac_fl04_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_syac_fl04_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 109
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mWindLevel:[Lcom/ts/other/ParamButton;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_syac_fl05_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_syac_fl05_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 110
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mWindLevel:[Lcom/ts/other/ParamButton;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_syac_fl06_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_syac_fl06_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 111
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mWindLevel:[Lcom/ts/other/ParamButton;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_syac_fl07_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_syac_fl07_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 114
    return-void

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanHondaDAAcActivity;->mWindLevel:[Lcom/ts/other/ParamButton;

    mul-int/lit8 v2, v0, 0x64

    add-int/lit16 v2, v2, 0x10b

    const/16 v3, 0x151

    add-int/lit8 v4, v0, 0x7

    invoke-direct {p0, v2, v3, v4}, Lcom/ts/can/CanHondaDAAcActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v1, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 131
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 132
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 133
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 134
    const-string v0, "CanHondaDaAcActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-----onPause----- mAutoFinish = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/ts/can/CanHondaDAAcActivity;->mAutoFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-boolean v0, Lcom/ts/can/CanFunc;->mfgShowAC:Z

    if-nez v0, :cond_1

    .line 139
    iget-boolean v0, p0, Lcom/ts/can/CanHondaDAAcActivity;->mAutoFinish:Z

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/ts/can/CanHondaDAAcActivity;->finish()V

    .line 142
    const-string v0, "CanHondaDaAcActivity"

    const-string v1, "-----onPause finish-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    sput-boolean v3, Lcom/ts/can/CanHondaDAAcActivity;->mfgJump:Z

    .line 145
    iput-boolean v3, p0, Lcom/ts/can/CanHondaDAAcActivity;->mAutoFinish:Z

    .line 148
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 156
    invoke-virtual {p0}, Lcom/ts/can/CanHondaDAAcActivity;->updateACUI()V

    .line 157
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 158
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/CanFunc;->mfgShowAC:Z

    .line 159
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0xac

    const/16 v3, 0xad

    .line 261
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 262
    .local v1, "action":I
    if-nez v1, :cond_1

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 266
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 308
    :goto_0
    invoke-static {}, Lcom/ts/can/CanHondaDAAcActivity;->GetTickCount()J

    move-result-wide v2

    sput-wide v2, Lcom/ts/can/CanFunc;->mLastACTick:J

    .line 314
    .end local v0    # "Id":I
    :cond_0
    :goto_1
    const/4 v2, 0x0

    return v2

    .line 269
    .restart local v0    # "Id":I
    :pswitch_0
    invoke-static {v4, v5}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 272
    :pswitch_1
    invoke-static {v4, v6}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 275
    :pswitch_2
    invoke-static {v4, v7}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 278
    :pswitch_3
    const/4 v2, 0x4

    invoke-static {v4, v2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 281
    :pswitch_4
    const/4 v2, 0x5

    invoke-static {v4, v2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 284
    :pswitch_5
    const/4 v2, 0x6

    invoke-static {v4, v2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 287
    :pswitch_6
    invoke-static {v3, v5}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 290
    :pswitch_7
    invoke-static {v3, v6}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 293
    :pswitch_8
    invoke-static {v3, v7}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 296
    :pswitch_9
    const/4 v2, 0x4

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 299
    :pswitch_a
    const/4 v2, 0x5

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 302
    :pswitch_b
    const/4 v2, 0x6

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 305
    :pswitch_c
    const/4 v2, 0x7

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 310
    .end local v0    # "Id":I
    :cond_1
    if-ne v5, v1, :cond_0

    .line 312
    const-string v2, "CanHondaDaAcActivity"

    const-string v3, "****ACTION_UP*****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method protected updateACUI()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 197
    sget-object v2, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 198
    .local v2, "mACInfo":Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;
    sget-object v3, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput v5, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    .line 201
    iget-object v3, p0, Lcom/ts/can/CanHondaDAAcActivity;->mAcOn:Lcom/ts/other/ParamButton;

    iget v4, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 202
    iget-object v3, p0, Lcom/ts/can/CanHondaDAAcActivity;->mAcOf:Lcom/ts/other/ParamButton;

    iget v4, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    invoke-static {v4}, Lcom/ts/can/CanHondaDAAcActivity;->uint2Bool(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 204
    iget v3, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-static {v3}, Lcom/ts/can/CanHondaDAAcActivity;->int2Bool(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-static {v3}, Lcom/ts/can/CanHondaDAAcActivity;->int2Bool(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    iget-object v3, p0, Lcom/ts/can/CanHondaDAAcActivity;->mMode_Pxj:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v6}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 207
    iget-object v3, p0, Lcom/ts/can/CanHondaDAAcActivity;->mMode_jc:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 208
    iget-object v3, p0, Lcom/ts/can/CanHondaDAAcActivity;->mMode_Px:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 209
    iget-object v3, p0, Lcom/ts/can/CanHondaDAAcActivity;->mMode_j:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 234
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v3, 0x7

    if-lt v1, v3, :cond_4

    .line 247
    :try_start_0
    iget-object v3, p0, Lcom/ts/can/CanHondaDAAcActivity;->mLtTemp:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szLtTemp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v3, p0, Lcom/ts/can/CanHondaDAAcActivity;->mRtTemp:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szRtTemp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_2
    return-void

    .line 211
    .end local v1    # "i":I
    :cond_1
    iget v3, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgUpWind:I

    invoke-static {v3}, Lcom/ts/can/CanHondaDAAcActivity;->int2Bool(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-static {v3}, Lcom/ts/can/CanHondaDAAcActivity;->int2Bool(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 213
    iget-object v3, p0, Lcom/ts/can/CanHondaDAAcActivity;->mMode_jc:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v6}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 214
    iget-object v3, p0, Lcom/ts/can/CanHondaDAAcActivity;->mMode_Pxj:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 215
    iget-object v3, p0, Lcom/ts/can/CanHondaDAAcActivity;->mMode_Px:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 216
    iget-object v3, p0, Lcom/ts/can/CanHondaDAAcActivity;->mMode_j:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto :goto_0

    .line 218
    :cond_2
    iget v3, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-static {v3}, Lcom/ts/can/CanHondaDAAcActivity;->int2Bool(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 220
    iget-object v3, p0, Lcom/ts/can/CanHondaDAAcActivity;->mMode_Px:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v6}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 221
    iget-object v3, p0, Lcom/ts/can/CanHondaDAAcActivity;->mMode_Pxj:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 222
    iget-object v3, p0, Lcom/ts/can/CanHondaDAAcActivity;->mMode_jc:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 223
    iget-object v3, p0, Lcom/ts/can/CanHondaDAAcActivity;->mMode_j:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto :goto_0

    .line 225
    :cond_3
    iget v3, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-static {v3}, Lcom/ts/can/CanHondaDAAcActivity;->int2Bool(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    iget-object v3, p0, Lcom/ts/can/CanHondaDAAcActivity;->mMode_j:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v6}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 228
    iget-object v3, p0, Lcom/ts/can/CanHondaDAAcActivity;->mMode_Pxj:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 229
    iget-object v3, p0, Lcom/ts/can/CanHondaDAAcActivity;->mMode_jc:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 230
    iget-object v3, p0, Lcom/ts/can/CanHondaDAAcActivity;->mMode_Px:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto :goto_0

    .line 236
    .restart local v1    # "i":I
    :cond_4
    iget v3, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    if-ge v1, v3, :cond_5

    .line 238
    iget-object v3, p0, Lcom/ts/can/CanHondaDAAcActivity;->mWindLevel:[Lcom/ts/other/ParamButton;

    aget-object v3, v3, v1

    invoke-virtual {v3, v6}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 234
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 241
    :cond_5
    iget-object v3, p0, Lcom/ts/can/CanHondaDAAcActivity;->mWindLevel:[Lcom/ts/other/ParamButton;

    aget-object v3, v3, v1

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto :goto_3

    .line 250
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CanHondaDaAcActivity"

    const-string v4, "set Temp text Exception!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
