.class public Lcom/ts/set/SettingBalanceActivity;
.super Landroid/app/Activity;
.source "SettingBalanceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/ts/set/setview/SettingBalanceView$onTouchBalanceChanged;
.implements Lcom/ts/set/setview/SettingSeekBar$onTouchPosChanged;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field private static final SB_ID_BASE:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "SettingBalanceActivity"


# instance fields
.field private mBal:I

.field private mBalOld:I

.field private mBkBot:I

.field private mBkRt:I

.field private mBkX:I

.field private mBkY:I

.field private mBtnCenter:Landroid/widget/Button;

.field private mBtnDn:Landroid/widget/Button;

.field private mBtnEQ:Landroid/widget/Button;

.field private mBtnLt:Landroid/widget/Button;

.field private mBtnRt:Landroid/widget/Button;

.field private mBtnUp:Landroid/widget/Button;

.field private mEvc:Lcom/ts/MainUI/Evc;

.field private mFad:I

.field private mFadOld:I

.field private mFbSb:[Lcom/ts/set/setview/SetItemVerticalSeekBar;

.field private mFbView:Lcom/ts/set/setview/SettingBalanceView;

.field private mLastX:I

.field private mLastY:I

.field public mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLud:I

.field private mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mRlLayout:Landroid/widget/RelativeLayout;

.field private mSbDrag:Z

.field private mSub:I

.field private mSwExamp:Landroid/widget/Switch;

.field private mTvLud:Landroid/widget/TextView;

.field private mTvSub:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mEvc:Lcom/ts/MainUI/Evc;

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ts/set/setview/SetItemVerticalSeekBar;

    iput-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mFbSb:[Lcom/ts/set/setview/SetItemVerticalSeekBar;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/set/SettingBalanceActivity;->mSbDrag:Z

    .line 30
    return-void
.end method

.method private SetCheck(Landroid/widget/Switch;I)V
    .locals 2
    .param p1, "sw"    # Landroid/widget/Switch;
    .param p2, "val"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 175
    if-eqz p2, :cond_0

    .line 178
    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setSelected(Z)V

    .line 179
    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 180
    sget v0, Lcom/ts/MainUI/R$drawable;->setup_switch_dn:I

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setThumbResource(I)V

    .line 189
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setSelected(Z)V

    .line 186
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 187
    sget v0, Lcom/ts/MainUI/R$drawable;->setup_switch_up:I

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setThumbResource(I)V

    goto :goto_0
.end method

.method protected static i2b(I)Z
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 141
    if-nez p0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetData()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mSwExamp:Landroid/widget/Switch;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetExAmp()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ts/set/SettingBalanceActivity;->SetCheck(Landroid/widget/Switch;I)V

    .line 168
    invoke-virtual {p0}, Lcom/ts/set/SettingBalanceActivity;->resetFb()V

    .line 169
    invoke-virtual {p0}, Lcom/ts/set/SettingBalanceActivity;->resetLud()V

    .line 170
    invoke-virtual {p0}, Lcom/ts/set/SettingBalanceActivity;->resetSub()V

    .line 171
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

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
    .line 244
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 245
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v0}, Lcom/ts/set/SettingBalanceActivity;->startActivity(Landroid/content/Intent;)V

    .line 248
    return-void
.end method

.method public onChanged(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pos"    # I

    .prologue
    .line 299
    const-string v3, "SettingBalanceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pos = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    .line 300
    check-cast v1, Lcom/ts/set/setview/SettingSeekBar;

    .line 301
    .local v1, "seekBar":Lcom/ts/set/setview/SettingSeekBar;
    const/16 v3, 0x3e8

    invoke-virtual {v1}, Lcom/ts/set/setview/SettingSeekBar;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 303
    move v0, p2

    .line 305
    .local v0, "lud":I
    iget-object v3, p0, Lcom/ts/set/SettingBalanceActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v3, v0}, Lcom/ts/MainUI/Evc;->evol_lud_set(I)V

    .line 306
    invoke-virtual {p0}, Lcom/ts/set/SettingBalanceActivity;->resetLud()V

    .line 315
    .end local v0    # "lud":I
    :goto_0
    return-void

    .line 310
    :cond_0
    move v2, p2

    .line 312
    .local v2, "sub":I
    iget-object v3, p0, Lcom/ts/set/SettingBalanceActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v3, v2}, Lcom/ts/MainUI/Evc;->evol_sub_set(I)V

    .line 313
    invoke-virtual {p0}, Lcom/ts/set/SettingBalanceActivity;->resetSub()V

    goto :goto_0
.end method

.method public onChanged(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fad"    # I
    .param p3, "bal"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v0, p2}, Lcom/ts/MainUI/Evc;->evol_fad_set(I)V

    .line 290
    iget-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v0, p3}, Lcom/ts/MainUI/Evc;->evol_bal_set(I)V

    .line 291
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 254
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 255
    .local v0, "id":I
    sget v1, Lcom/ts/MainUI/R$id;->switch_ctrl:I

    if-ne v0, v1, :cond_2

    .line 257
    if-eqz p2, :cond_1

    .line 259
    iget-object v1, p0, Lcom/ts/set/SettingBalanceActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v1, v3}, Lcom/ts/MainUI/Evc;->evol_ch51_set(I)V

    .line 279
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ts/set/SettingBalanceActivity;->mSwExamp:Landroid/widget/Switch;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetExAmp()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/ts/set/SettingBalanceActivity;->SetCheck(Landroid/widget/Switch;I)V

    .line 282
    return-void

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/ts/set/SettingBalanceActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v1, v2}, Lcom/ts/MainUI/Evc;->evol_ch51_set(I)V

    goto :goto_0

    .line 267
    :cond_2
    sget v1, Lcom/ts/MainUI/R$id;->switch_ctrl2:I

    if-ne v0, v1, :cond_0

    .line 269
    if-eqz p2, :cond_3

    .line 271
    invoke-static {v3}, Lcom/yyw/ts70xhw/FtSet;->SetExAmp(I)I

    goto :goto_0

    .line 275
    :cond_3
    invoke-static {v2}, Lcom/yyw/ts70xhw/FtSet;->SetExAmp(I)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 206
    sget v2, Lcom/ts/MainUI/R$id;->set_balance_btn_sound:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 208
    const-class v2, Lcom/ts/set/SettingSoundActivity;

    invoke-virtual {p0, v2}, Lcom/ts/set/SettingBalanceActivity;->enterSubWin(Ljava/lang/Class;)V

    .line 240
    :goto_0
    return-void

    .line 212
    :cond_0
    const/4 v1, 0x0

    .line 213
    .local v1, "val":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 214
    .local v0, "id":I
    sget v2, Lcom/ts/MainUI/R$id;->set_balance_btn_center:I

    if-ne v0, v2, :cond_2

    .line 216
    iget-object v2, p0, Lcom/ts/set/SettingBalanceActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v2, v6}, Lcom/ts/MainUI/Evc;->evol_bal_set(I)V

    .line 217
    iget-object v2, p0, Lcom/ts/set/SettingBalanceActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v2, v6}, Lcom/ts/MainUI/Evc;->evol_fad_set(I)V

    .line 239
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/ts/set/SettingBalanceActivity;->resetFb()V

    goto :goto_0

    .line 219
    :cond_2
    sget v2, Lcom/ts/MainUI/R$id;->setting_balance_btn_up:I

    if-ne v0, v2, :cond_3

    .line 221
    iget-object v2, p0, Lcom/ts/set/SettingBalanceActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v2, v4}, Lcom/ts/MainUI/Evc;->evol_fad_tune(I)V

    goto :goto_1

    .line 223
    :cond_3
    sget v2, Lcom/ts/MainUI/R$id;->setting_balance_btn_down:I

    if-ne v0, v2, :cond_4

    .line 225
    iget-object v2, p0, Lcom/ts/set/SettingBalanceActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v2, v5}, Lcom/ts/MainUI/Evc;->evol_fad_tune(I)V

    goto :goto_1

    .line 227
    :cond_4
    sget v2, Lcom/ts/MainUI/R$id;->setting_balance_btn_left:I

    if-ne v0, v2, :cond_5

    .line 229
    iget-object v2, p0, Lcom/ts/set/SettingBalanceActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v2, v4}, Lcom/ts/MainUI/Evc;->evol_bal_tune(I)V

    goto :goto_1

    .line 231
    :cond_5
    sget v2, Lcom/ts/MainUI/R$id;->setting_balance_btn_right:I

    if-ne v0, v2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/ts/set/SettingBalanceActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v2, v5}, Lcom/ts/MainUI/Evc;->evol_bal_tune(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget v0, Lcom/ts/MainUI/R$layout;->activity_setup_balance:I

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingBalanceActivity;->setContentView(I)V

    .line 68
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->layout_set_balance:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 72
    sget v0, Lcom/ts/MainUI/R$id;->set_balance_btn_sound:I

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mBtnEQ:Landroid/widget/Button;

    .line 73
    sget v0, Lcom/ts/MainUI/R$id;->set_balance_btn_center:I

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mBtnCenter:Landroid/widget/Button;

    .line 75
    sget v0, Lcom/ts/MainUI/R$id;->setting_balance_btn_up:I

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mBtnUp:Landroid/widget/Button;

    .line 76
    sget v0, Lcom/ts/MainUI/R$id;->setting_balance_btn_down:I

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mBtnDn:Landroid/widget/Button;

    .line 77
    sget v0, Lcom/ts/MainUI/R$id;->setting_balance_btn_left:I

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mBtnLt:Landroid/widget/Button;

    .line 78
    sget v0, Lcom/ts/MainUI/R$id;->setting_balance_btn_right:I

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mBtnRt:Landroid/widget/Button;

    .line 79
    sget v0, Lcom/ts/MainUI/R$id;->switch_ctrl2:I

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mSwExamp:Landroid/widget/Switch;

    .line 80
    iget-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mSwExamp:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    sget v0, Lcom/ts/MainUI/R$id;->switch_value:I

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 84
    .local v7, "tv":Landroid/widget/TextView;
    sget v0, Lcom/ts/MainUI/R$string;->set_balance_center:I

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 86
    sget v0, Lcom/ts/MainUI/R$id;->switch_value2:I

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 87
    .local v8, "tv2":Landroid/widget/TextView;
    sget v0, Lcom/ts/MainUI/R$string;->set_balance_examp:I

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 89
    sget v0, Lcom/ts/MainUI/R$id;->setting_balance_img_seat:I

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingBalanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ts/set/setview/SettingBalanceView;

    iput-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mFbView:Lcom/ts/set/setview/SettingBalanceView;

    .line 90
    iget-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mFbView:Lcom/ts/set/setview/SettingBalanceView;

    invoke-virtual {v0, p0}, Lcom/ts/set/setview/SettingBalanceView;->setBalanceChangedListener(Lcom/ts/set/setview/SettingBalanceView$onTouchBalanceChanged;)V

    .line 92
    iget-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mBtnUp:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mBtnDn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mBtnLt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mBtnRt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mBtnEQ:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mBtnCenter:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/ts/set/SettingBalanceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$dimen;->x_setting_balance_seat:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/ts/set/SettingBalanceActivity;->mBkX:I

    .line 101
    invoke-virtual {p0}, Lcom/ts/set/SettingBalanceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$dimen;->y_setting_balance_seat:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ts/set/SettingBalanceActivity;->mBkY:I

    .line 102
    iget v0, p0, Lcom/ts/set/SettingBalanceActivity;->mBkX:I

    add-int/lit16 v0, v0, 0xfc

    iput v0, p0, Lcom/ts/set/SettingBalanceActivity;->mBkRt:I

    .line 103
    iget v0, p0, Lcom/ts/set/SettingBalanceActivity;->mBkY:I

    add-int/lit16 v0, v0, 0xfc

    iput v0, p0, Lcom/ts/set/SettingBalanceActivity;->mBkBot:I

    .line 106
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mFbSb:[Lcom/ts/set/setview/SetItemVerticalSeekBar;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mFbSb:[Lcom/ts/set/setview/SetItemVerticalSeekBar;

    aget-object v0, v0, v9

    invoke-virtual {p0}, Lcom/ts/set/SettingBalanceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->set_balance_loud:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetItemVerticalSeekBar;->SetTitle(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mFbSb:[Lcom/ts/set/setview/SetItemVerticalSeekBar;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcom/ts/set/SettingBalanceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->set_balance_subwoof:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetItemVerticalSeekBar;->SetTitle(Ljava/lang/String;)V

    .line 119
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mFbSb:[Lcom/ts/set/setview/SetItemVerticalSeekBar;

    new-instance v1, Lcom/ts/set/setview/SetItemVerticalSeekBar;

    invoke-direct {v1, p0, v9}, Lcom/ts/set/setview/SetItemVerticalSeekBar;-><init>(Landroid/content/Context;I)V

    aput-object v1, v0, v6

    .line 109
    iget-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/set/SettingBalanceActivity;->mFbSb:[Lcom/ts/set/setview/SetItemVerticalSeekBar;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/ts/set/setview/SetItemVerticalSeekBar;->GetView()Landroid/view/View;

    move-result-object v1

    mul-int/lit8 v2, v6, 0x6e

    add-int/lit8 v2, v2, 0x51

    const/16 v3, 0x6e

    const/16 v4, 0x50

    const/16 v5, 0x15e

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 110
    iget-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mFbSb:[Lcom/ts/set/setview/SetItemVerticalSeekBar;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/ts/set/setview/SetItemVerticalSeekBar;->GetSeekBar()Lcom/ts/set/setview/SettingSeekBar;

    move-result-object v0

    add-int/lit16 v1, v6, 0x3e8

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SettingSeekBar;->setId(I)V

    .line 111
    iget-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mFbSb:[Lcom/ts/set/setview/SetItemVerticalSeekBar;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/ts/set/setview/SetItemVerticalSeekBar;->GetSeekBar()Lcom/ts/set/setview/SettingSeekBar;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SettingSeekBar;->setMaxPos(I)V

    .line 112
    iget-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mFbSb:[Lcom/ts/set/setview/SetItemVerticalSeekBar;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/ts/set/setview/SetItemVerticalSeekBar;->GetSeekBar()Lcom/ts/set/setview/SettingSeekBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/set/setview/SettingSeekBar;->setOnTouchChangedListener(Lcom/ts/set/setview/SettingSeekBar$onTouchPosChanged;)V

    .line 106
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 137
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 127
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 128
    invoke-direct {p0}, Lcom/ts/set/SettingBalanceActivity;->resetData()V

    .line 130
    return-void
.end method

.method resetFb()V
    .locals 3

    .prologue
    .line 194
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetFad()I

    move-result v0

    iput v0, p0, Lcom/ts/set/SettingBalanceActivity;->mFad:I

    .line 195
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetBal()I

    move-result v0

    iput v0, p0, Lcom/ts/set/SettingBalanceActivity;->mBal:I

    .line 198
    iget-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mFbView:Lcom/ts/set/setview/SettingBalanceView;

    iget v1, p0, Lcom/ts/set/SettingBalanceActivity;->mFad:I

    iget v2, p0, Lcom/ts/set/SettingBalanceActivity;->mBal:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/set/setview/SettingBalanceView;->setBalance(II)V

    .line 200
    return-void
.end method

.method resetLud()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mFbSb:[Lcom/ts/set/setview/SetItemVerticalSeekBar;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/ts/set/setview/SetItemVerticalSeekBar;->GetSeekBar()Lcom/ts/set/setview/SettingSeekBar;

    move-result-object v0

    iget v1, p0, Lcom/ts/set/SettingBalanceActivity;->mLud:I

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SettingSeekBar;->setCurPos(I)V

    .line 152
    iget-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mFbSb:[Lcom/ts/set/setview/SetItemVerticalSeekBar;

    aget-object v0, v0, v2

    iget v1, p0, Lcom/ts/set/SettingBalanceActivity;->mLud:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetItemVerticalSeekBar;->SetVal(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method resetSub()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 158
    iget-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mFbSb:[Lcom/ts/set/setview/SetItemVerticalSeekBar;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/ts/set/setview/SetItemVerticalSeekBar;->GetSeekBar()Lcom/ts/set/setview/SettingSeekBar;

    move-result-object v0

    iget v1, p0, Lcom/ts/set/SettingBalanceActivity;->mSub:I

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SettingSeekBar;->setCurPos(I)V

    .line 159
    iget-object v0, p0, Lcom/ts/set/SettingBalanceActivity;->mFbSb:[Lcom/ts/set/setview/SetItemVerticalSeekBar;

    aget-object v0, v0, v2

    iget v1, p0, Lcom/ts/set/SettingBalanceActivity;->mSub:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetItemVerticalSeekBar;->SetVal(Ljava/lang/String;)V

    .line 160
    return-void
.end method
