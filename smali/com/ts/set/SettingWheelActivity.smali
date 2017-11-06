.class public Lcom/ts/set/SettingWheelActivity;
.super Landroid/app/Activity;
.source "SettingWheelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field private static final TAG:Ljava/lang/String; = "SetSWCActivity"

.field private static final mStudyId:[[I


# instance fields
.field private mBtnClear:Landroid/widget/Button;

.field private mBtnStudy:[Landroid/widget/Button;

.field private mCurKeyNow:I

.field private mCurSta:I

.field private mCurTick:J

.field private mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mOldKeyNow:I

.field private mOldSta:I

.field private mOldTick:J

.field private mfgFlashSel:Z

.field private mfgStudyNow:Z

.field topname:Lcom/ts/set/setview/SetMainItemTopName;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 26
    const/16 v0, 0xd

    new-array v0, v0, [[I

    .line 27
    new-array v1, v4, [I

    sget v2, Lcom/ts/MainUI/R$id;->btn_swc_poweroff:I

    aput v2, v1, v5

    aput-object v1, v0, v5

    .line 28
    new-array v1, v4, [I

    sget v2, Lcom/ts/MainUI/R$id;->btn_swc_vol_inc:I

    aput v2, v1, v5

    aput v6, v1, v6

    aput-object v1, v0, v6

    .line 29
    new-array v1, v4, [I

    sget v2, Lcom/ts/MainUI/R$id;->btn_swc_vol_dec:I

    aput v2, v1, v5

    aput v4, v1, v6

    aput-object v1, v0, v4

    .line 30
    new-array v1, v4, [I

    sget v2, Lcom/ts/MainUI/R$id;->btn_swc_next:I

    aput v2, v1, v5

    aput v3, v1, v6

    aput-object v1, v0, v3

    .line 31
    new-array v1, v4, [I

    sget v2, Lcom/ts/MainUI/R$id;->btn_swc_prev:I

    aput v2, v1, v5

    aput v7, v1, v6

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 32
    new-array v2, v4, [I

    sget v3, Lcom/ts/MainUI/R$id;->btn_swc_ch_dec:I

    aput v3, v2, v5

    const/4 v3, 0x5

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 33
    new-array v2, v4, [I

    sget v3, Lcom/ts/MainUI/R$id;->btn_swc_ch_inc:I

    aput v3, v2, v5

    const/4 v3, 0x6

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 34
    new-array v2, v4, [I

    sget v3, Lcom/ts/MainUI/R$id;->btn_swc_mute:I

    aput v3, v2, v5

    const/4 v3, 0x7

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 35
    new-array v2, v4, [I

    sget v3, Lcom/ts/MainUI/R$id;->btn_swc_mode:I

    aput v3, v2, v5

    const/16 v3, 0x8

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 36
    new-array v2, v4, [I

    sget v3, Lcom/ts/MainUI/R$id;->btn_swc_dial:I

    aput v3, v2, v5

    const/16 v3, 0x9

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 37
    new-array v2, v4, [I

    sget v3, Lcom/ts/MainUI/R$id;->btn_swc_hang:I

    aput v3, v2, v5

    const/16 v3, 0xa

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 38
    new-array v2, v4, [I

    sget v3, Lcom/ts/MainUI/R$id;->btn_swc_pp:I

    aput v3, v2, v5

    const/16 v3, 0xb

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 39
    new-array v2, v4, [I

    sget v3, Lcom/ts/MainUI/R$id;->btn_swc_gps:I

    aput v3, v2, v5

    const/16 v3, 0xc

    aput v3, v2, v6

    aput-object v2, v0, v1

    .line 25
    sput-object v0, Lcom/ts/set/SettingWheelActivity;->mStudyId:[[I

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static getTickCount()J
    .locals 2

    .prologue
    .line 125
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public UserAll()V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/ts/set/SettingWheelActivity;->onTimer()V

    .line 198
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/ts/set/SettingWheelActivity;->mBtnClear:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->SwKeyDelete()I

    .line 116
    const-string v0, "SetSWCActivity"

    const-string v1, "SwKeyDelete"

    invoke-static {v0, v1}, Lcom/ts/set/definition/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SwKeyStudy(I)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    sget v0, Lcom/ts/MainUI/R$layout;->activity_set_swc:I

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingWheelActivity;->setContentView(I)V

    .line 98
    invoke-virtual {p0}, Lcom/ts/set/SettingWheelActivity;->setupViews()V

    .line 100
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 107
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 108
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 84
    const/16 v0, 0xff

    iput v0, p0, Lcom/ts/set/SettingWheelActivity;->mOldKeyNow:I

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/set/SettingWheelActivity;->mOldSta:I

    .line 86
    invoke-virtual {p0}, Lcom/ts/set/SettingWheelActivity;->onTimer()V

    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 88
    return-void
.end method

.method protected onTimer()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 129
    const/4 v3, 0x0

    .line 130
    .local v3, "val":I
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->GetSwKeyState()I

    move-result v4

    iput v4, p0, Lcom/ts/set/SettingWheelActivity;->mCurSta:I

    .line 131
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->GetSwKeyNow()I

    move-result v4

    iput v4, p0, Lcom/ts/set/SettingWheelActivity;->mCurKeyNow:I

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "fgUpdate":Z
    iget v4, p0, Lcom/ts/set/SettingWheelActivity;->mCurKeyNow:I

    iget v7, p0, Lcom/ts/set/SettingWheelActivity;->mOldKeyNow:I

    if-eq v4, v7, :cond_0

    .line 135
    const/4 v0, 0x1

    .line 136
    iget v4, p0, Lcom/ts/set/SettingWheelActivity;->mCurKeyNow:I

    iput v4, p0, Lcom/ts/set/SettingWheelActivity;->mOldKeyNow:I

    .line 137
    const-string v4, "SetSWCActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "study  mCurKeyNow id = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/ts/set/SettingWheelActivity;->mCurKeyNow:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/16 v4, 0xff

    iget v7, p0, Lcom/ts/set/SettingWheelActivity;->mCurKeyNow:I

    if-eq v4, v7, :cond_4

    .line 140
    iput-boolean v6, p0, Lcom/ts/set/SettingWheelActivity;->mfgStudyNow:Z

    .line 141
    iput-boolean v6, p0, Lcom/ts/set/SettingWheelActivity;->mfgFlashSel:Z

    .line 142
    invoke-static {}, Lcom/ts/set/SettingWheelActivity;->getTickCount()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/ts/set/SettingWheelActivity;->mOldTick:J

    .line 150
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/ts/set/SettingWheelActivity;->mfgStudyNow:Z

    if-eqz v4, :cond_1

    .line 152
    invoke-static {}, Lcom/ts/set/SettingWheelActivity;->getTickCount()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/ts/set/SettingWheelActivity;->mCurTick:J

    .line 153
    iget-wide v7, p0, Lcom/ts/set/SettingWheelActivity;->mCurTick:J

    iget-wide v9, p0, Lcom/ts/set/SettingWheelActivity;->mOldTick:J

    const-wide/16 v11, 0x12c

    add-long/2addr v9, v11

    cmp-long v4, v7, v9

    if-lez v4, :cond_1

    .line 155
    iget-wide v7, p0, Lcom/ts/set/SettingWheelActivity;->mCurTick:J

    iput-wide v7, p0, Lcom/ts/set/SettingWheelActivity;->mOldTick:J

    .line 156
    iget-object v4, p0, Lcom/ts/set/SettingWheelActivity;->mBtnStudy:[Landroid/widget/Button;

    iget v7, p0, Lcom/ts/set/SettingWheelActivity;->mCurKeyNow:I

    aget-object v4, v4, v7

    iget-boolean v7, p0, Lcom/ts/set/SettingWheelActivity;->mfgFlashSel:Z

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setSelected(Z)V

    .line 157
    iget-boolean v4, p0, Lcom/ts/set/SettingWheelActivity;->mfgFlashSel:Z

    if-eqz v4, :cond_5

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/ts/set/SettingWheelActivity;->mfgFlashSel:Z

    .line 163
    :cond_1
    iget v4, p0, Lcom/ts/set/SettingWheelActivity;->mCurSta:I

    iget v7, p0, Lcom/ts/set/SettingWheelActivity;->mOldSta:I

    if-eq v4, v7, :cond_2

    .line 165
    const/4 v0, 0x1

    .line 166
    iget v4, p0, Lcom/ts/set/SettingWheelActivity;->mCurSta:I

    iput v4, p0, Lcom/ts/set/SettingWheelActivity;->mOldSta:I

    .line 167
    const-string v4, "SetSWCActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mCurSta = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/ts/set/SettingWheelActivity;->mCurSta:I

    invoke-static {v8}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_2
    if-eqz v0, :cond_3

    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, "keyCnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v4, Lcom/ts/set/SettingWheelActivity;->mStudyId:[[I

    array-length v4, v4

    if-lt v1, v4, :cond_6

    .line 190
    const-string v4, "SetSWCActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "KeyCnd = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v1    # "i":I
    .end local v2    # "keyCnt":I
    :cond_3
    return-void

    .line 146
    :cond_4
    iput-boolean v5, p0, Lcom/ts/set/SettingWheelActivity;->mfgStudyNow:Z

    goto :goto_0

    :cond_5
    move v4, v6

    .line 157
    goto :goto_1

    .line 175
    .restart local v1    # "i":I
    .restart local v2    # "keyCnt":I
    :cond_6
    iget v4, p0, Lcom/ts/set/SettingWheelActivity;->mCurSta:I

    shr-int/2addr v4, v1

    and-int/lit8 v3, v4, 0x1

    .line 176
    if-ne v6, v3, :cond_8

    .line 178
    iget-object v4, p0, Lcom/ts/set/SettingWheelActivity;->mBtnStudy:[Landroid/widget/Button;

    aget-object v4, v4, v1

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setSelected(Z)V

    .line 179
    add-int/lit8 v2, v2, 0x1

    .line 173
    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 183
    :cond_8
    iget v4, p0, Lcom/ts/set/SettingWheelActivity;->mCurKeyNow:I

    if-eq v1, v4, :cond_7

    .line 185
    iget-object v4, p0, Lcom/ts/set/SettingWheelActivity;->mBtnStudy:[Landroid/widget/Button;

    aget-object v4, v4, v1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_3
.end method

.method protected setupViews()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->wheel_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/set/SettingWheelActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 52
    invoke-virtual {p0}, Lcom/ts/set/SettingWheelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$array;->set_main_options:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    aget-object v7, v0, v1

    .line 53
    .local v7, "name":Ljava/lang/String;
    new-instance v0, Lcom/ts/set/setview/SetMainItemTopName;

    invoke-direct {v0, p0, v7}, Lcom/ts/set/setview/SetMainItemTopName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ts/set/SettingWheelActivity;->topname:Lcom/ts/set/setview/SetMainItemTopName;

    .line 54
    iget-object v0, p0, Lcom/ts/set/SettingWheelActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/set/SettingWheelActivity;->topname:Lcom/ts/set/setview/SetMainItemTopName;

    invoke-virtual {v1}, Lcom/ts/set/setview/SetMainItemTopName;->GetView()Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x400

    const/16 v5, 0x4b

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 55
    iget-object v0, p0, Lcom/ts/set/SettingWheelActivity;->topname:Lcom/ts/set/setview/SetMainItemTopName;

    iget-object v0, v0, Lcom/ts/set/setview/SetMainItemTopName;->iv:Landroid/widget/Button;

    new-instance v1, Lcom/ts/set/SettingWheelActivity$1;

    invoke-direct {v1, p0}, Lcom/ts/set/SettingWheelActivity$1;-><init>(Lcom/ts/set/SettingWheelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget-object v0, Lcom/ts/set/SettingWheelActivity;->mStudyId:[[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/set/SettingWheelActivity;->mBtnStudy:[Landroid/widget/Button;

    .line 64
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget-object v0, Lcom/ts/set/SettingWheelActivity;->mStudyId:[[I

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 71
    sget v0, Lcom/ts/MainUI/R$id;->btn_swc_clear:I

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingWheelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/set/SettingWheelActivity;->mBtnClear:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/ts/set/SettingWheelActivity;->mBtnClear:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/ts/set/SettingWheelActivity;->mBtnClear:Landroid/widget/Button;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 74
    iget-object v0, p0, Lcom/ts/set/SettingWheelActivity;->mBtnClear:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 76
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/ts/set/SettingWheelActivity;->mBtnStudy:[Landroid/widget/Button;

    sget-object v0, Lcom/ts/set/SettingWheelActivity;->mStudyId:[[I

    aget-object v0, v0, v6

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingWheelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v6

    .line 67
    iget-object v0, p0, Lcom/ts/set/SettingWheelActivity;->mBtnStudy:[Landroid/widget/Button;

    aget-object v0, v0, v6

    sget-object v1, Lcom/ts/set/SettingWheelActivity;->mStudyId:[[I

    aget-object v1, v1, v6

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/ts/set/SettingWheelActivity;->mBtnStudy:[Landroid/widget/Button;

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
