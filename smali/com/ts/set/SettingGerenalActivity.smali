.class public Lcom/ts/set/SettingGerenalActivity;
.super Landroid/app/Activity;
.source "SettingGerenalActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/set/setview/SetItemPopupList$onPopItemClick;
.implements Lcom/ts/set/setview/SettingNumInuptDlg$onInputOK;


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingGerenalActivity"


# instance fields
.field BackCarVolume:Lcom/ts/set/setview/SetItemPopupList;

.field BootDialog:Lcom/ts/set/setview/SetItemDialog;

.field BootLogoDialog:Lcom/ts/set/setview/SettingNumInuptDlg;

.field FtSetDialog:Lcom/ts/set/setview/SetItemDialog;

.field IdleDelayTime:Lcom/ts/set/setview/SetItemPopupList;

.field KeyTouchSW:Lcom/ts/set/setview/SetMainItemSw;

.field MyContext:Landroid/content/Context;

.field SystemBoot:Lcom/ts/set/setview/SetMainItemNoIcon;

.field SystemResume:Lcom/ts/set/setview/SetMainItemNoIcon;

.field SystemresumeDialog:Lcom/ts/set/setview/SettingNumInuptDlg;

.field VoiceDialog:Lcom/ts/set/setview/SetItemDialog;

.field VoiceLin:Lcom/ts/set/setview/SetItemPopupList;

.field VoiceState:Lcom/ts/set/setview/SetItemPopupList;

.field bootLogo:Lcom/ts/set/setview/SetMainItemNoIcon;

.field nBackCarValue:[I

.field nIdleTimeValue:[I

.field nVmcdValue:[I

.field nVoiceState:[I

.field private setGeneraOptions:[Ljava/lang/String;

.field topname:Lcom/ts/set/setview/SetMainItemTopName;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    new-array v0, v6, [I

    .line 74
    sget v1, Lcom/ts/MainUI/R$string;->set_general_backcarvol_none:I

    aput v1, v0, v2

    .line 75
    sget v1, Lcom/ts/MainUI/R$string;->set_general_backcarvol_min:I

    aput v1, v0, v3

    .line 76
    sget v1, Lcom/ts/MainUI/R$string;->set_general_backcarvol_mid:I

    aput v1, v0, v4

    .line 77
    sget v1, Lcom/ts/MainUI/R$string;->set_general_backcarvol_high:I

    aput v1, v0, v5

    iput-object v0, p0, Lcom/ts/set/SettingGerenalActivity;->nBackCarValue:[I

    .line 81
    new-array v0, v6, [I

    .line 82
    sget v1, Lcom/ts/MainUI/R$string;->set_general_voice_wakeup_all:I

    aput v1, v0, v2

    .line 83
    sget v1, Lcom/ts/MainUI/R$string;->set_general_voice_wakeup_v:I

    aput v1, v0, v3

    .line 84
    sget v1, Lcom/ts/MainUI/R$string;->set_general_voice_wakeup_b:I

    aput v1, v0, v4

    .line 85
    sget v1, Lcom/ts/MainUI/R$string;->set_general_voice_wakeup_off:I

    aput v1, v0, v5

    iput-object v0, p0, Lcom/ts/set/SettingGerenalActivity;->nVoiceState:[I

    .line 89
    new-array v0, v5, [I

    .line 90
    sget v1, Lcom/ts/MainUI/R$string;->set_general_voice_min:I

    aput v1, v0, v2

    .line 91
    sget v1, Lcom/ts/MainUI/R$string;->set_general_voice_mid:I

    aput v1, v0, v3

    .line 92
    sget v1, Lcom/ts/MainUI/R$string;->set_general_voice_high:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/ts/set/SettingGerenalActivity;->nVmcdValue:[I

    .line 96
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 97
    sget v1, Lcom/ts/MainUI/R$string;->set_general_idletime_0:I

    aput v1, v0, v2

    .line 98
    sget v1, Lcom/ts/MainUI/R$string;->set_general_idletime_10M:I

    aput v1, v0, v3

    .line 99
    sget v1, Lcom/ts/MainUI/R$string;->set_general_idletime_20M:I

    aput v1, v0, v4

    .line 100
    sget v1, Lcom/ts/MainUI/R$string;->set_general_idletime_30M:I

    aput v1, v0, v5

    .line 101
    sget v1, Lcom/ts/MainUI/R$string;->set_general_idletime_60M:I

    aput v1, v0, v6

    iput-object v0, p0, Lcom/ts/set/SettingGerenalActivity;->nIdleTimeValue:[I

    .line 35
    return-void
.end method

.method private initSetGeneraOptions()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/ts/set/SettingGerenalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->set_main_options:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v5

    .line 143
    .local v0, "name":Ljava/lang/String;
    new-instance v2, Lcom/ts/set/setview/SetMainItemTopName;

    invoke-direct {v2, p0, v0}, Lcom/ts/set/setview/SetMainItemTopName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->topname:Lcom/ts/set/setview/SetMainItemTopName;

    .line 144
    iget-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->topname:Lcom/ts/set/setview/SetMainItemTopName;

    iget-object v2, v2, Lcom/ts/set/setview/SetMainItemTopName;->iv:Landroid/widget/Button;

    new-instance v3, Lcom/ts/set/SettingGerenalActivity$1;

    invoke-direct {v3, p0}, Lcom/ts/set/SettingGerenalActivity$1;-><init>(Lcom/ts/set/SettingGerenalActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->topname:Lcom/ts/set/setview/SetMainItemTopName;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetMainItemTopName;->GetView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x400

    const/16 v4, 0x4b

    invoke-static {v2, v3, v4}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;II)V

    .line 153
    invoke-virtual {p0}, Lcom/ts/set/SettingGerenalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->set_genera_options:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->setGeneraOptions:[Ljava/lang/String;

    .line 154
    const/4 v1, 0x0

    .local v1, "setOpt":I
    :goto_0
    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 218
    return-void

    .line 156
    :cond_0
    invoke-direct {p0, v1}, Lcom/ts/set/SettingGerenalActivity;->isHaveOption(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    packed-switch v1, :pswitch_data_0

    .line 154
    :cond_1
    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :pswitch_1
    new-instance v2, Lcom/ts/set/setview/SetItemPopupList;

    iget-object v3, p0, Lcom/ts/set/SettingGerenalActivity;->nIdleTimeValue:[I

    invoke-direct {v2, p0, v5, v3, p0}, Lcom/ts/set/setview/SetItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/set/setview/SetItemPopupList$onPopItemClick;)V

    iput-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->IdleDelayTime:Lcom/ts/set/setview/SetItemPopupList;

    .line 163
    iget-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->IdleDelayTime:Lcom/ts/set/setview/SetItemPopupList;

    invoke-virtual {v2, v1}, Lcom/ts/set/setview/SetItemPopupList;->SetId(I)V

    .line 164
    iget-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->IdleDelayTime:Lcom/ts/set/setview/SetItemPopupList;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetItemPopupList;->GetBtn()Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/ts/set/SettingGerenalActivity;->setGeneraOptions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->IdleDelayTime:Lcom/ts/set/setview/SetItemPopupList;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;)V

    goto :goto_1

    .line 170
    :pswitch_2
    new-instance v2, Lcom/ts/set/setview/SetMainItemSw;

    iget-object v3, p0, Lcom/ts/set/SettingGerenalActivity;->setGeneraOptions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, p0, v3}, Lcom/ts/set/setview/SetMainItemSw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->KeyTouchSW:Lcom/ts/set/setview/SetMainItemSw;

    .line 171
    iget-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->KeyTouchSW:Lcom/ts/set/setview/SetMainItemSw;

    invoke-virtual {v2, v1, p0}, Lcom/ts/set/setview/SetMainItemSw;->SetUserCallback(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 172
    iget-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->KeyTouchSW:Lcom/ts/set/setview/SetMainItemSw;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetMainItemSw;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;)V

    goto :goto_1

    .line 175
    :pswitch_3
    new-instance v2, Lcom/ts/set/setview/SetItemPopupList;

    iget-object v3, p0, Lcom/ts/set/SettingGerenalActivity;->nVoiceState:[I

    invoke-direct {v2, p0, v5, v3, p0}, Lcom/ts/set/setview/SetItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/set/setview/SetItemPopupList$onPopItemClick;)V

    iput-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->VoiceState:Lcom/ts/set/setview/SetItemPopupList;

    .line 176
    iget-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->VoiceState:Lcom/ts/set/setview/SetItemPopupList;

    invoke-virtual {v2, v1}, Lcom/ts/set/setview/SetItemPopupList;->SetId(I)V

    .line 177
    iget-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->VoiceState:Lcom/ts/set/setview/SetItemPopupList;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetItemPopupList;->GetBtn()Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/ts/set/SettingGerenalActivity;->setGeneraOptions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 180
    new-instance v2, Lcom/ts/set/setview/SetItemPopupList;

    iget-object v3, p0, Lcom/ts/set/SettingGerenalActivity;->nVmcdValue:[I

    invoke-direct {v2, p0, v5, v3, p0}, Lcom/ts/set/setview/SetItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/set/setview/SetItemPopupList$onPopItemClick;)V

    iput-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->VoiceLin:Lcom/ts/set/setview/SetItemPopupList;

    .line 181
    iget-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->VoiceLin:Lcom/ts/set/setview/SetItemPopupList;

    invoke-virtual {v2, v6}, Lcom/ts/set/setview/SetItemPopupList;->SetId(I)V

    .line 182
    iget-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->VoiceLin:Lcom/ts/set/setview/SetItemPopupList;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetItemPopupList;->GetBtn()Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/ts/set/SettingGerenalActivity;->setGeneraOptions:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-direct {p0}, Lcom/ts/set/SettingGerenalActivity;->isZh()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v2

    const-string v3, "com.txznet.txz"

    invoke-virtual {v2, v3}, Lcom/ts/main/common/MainSet;->IsHaveApk(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    iget-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->VoiceState:Lcom/ts/set/setview/SetItemPopupList;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;)V

    .line 186
    iget-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->VoiceLin:Lcom/ts/set/setview/SetItemPopupList;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 190
    :pswitch_4
    new-instance v2, Lcom/ts/set/setview/SetItemPopupList;

    iget-object v3, p0, Lcom/ts/set/SettingGerenalActivity;->nBackCarValue:[I

    invoke-direct {v2, p0, v5, v3, p0}, Lcom/ts/set/setview/SetItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/set/setview/SetItemPopupList$onPopItemClick;)V

    iput-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->BackCarVolume:Lcom/ts/set/setview/SetItemPopupList;

    .line 191
    iget-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->BackCarVolume:Lcom/ts/set/setview/SetItemPopupList;

    invoke-virtual {v2, v1}, Lcom/ts/set/setview/SetItemPopupList;->SetId(I)V

    .line 192
    iget-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->BackCarVolume:Lcom/ts/set/setview/SetItemPopupList;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetItemPopupList;->GetBtn()Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/ts/set/SettingGerenalActivity;->setGeneraOptions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->BackCarVolume:Lcom/ts/set/setview/SetItemPopupList;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 197
    :pswitch_5
    new-instance v2, Lcom/ts/set/setview/SetMainItemNoIcon;

    iget-object v3, p0, Lcom/ts/set/SettingGerenalActivity;->setGeneraOptions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, p0, v3}, Lcom/ts/set/setview/SetMainItemNoIcon;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->bootLogo:Lcom/ts/set/setview/SetMainItemNoIcon;

    .line 198
    iget-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->bootLogo:Lcom/ts/set/setview/SetMainItemNoIcon;

    invoke-virtual {v2, v1, p0}, Lcom/ts/set/setview/SetMainItemNoIcon;->SetUserCallback(ILandroid/view/View$OnClickListener;)V

    .line 199
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetOptionLogo()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 201
    iget-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->bootLogo:Lcom/ts/set/setview/SetMainItemNoIcon;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetMainItemNoIcon;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 206
    :pswitch_6
    new-instance v2, Lcom/ts/set/setview/SetMainItemNoIcon;

    iget-object v3, p0, Lcom/ts/set/SettingGerenalActivity;->setGeneraOptions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, p0, v3}, Lcom/ts/set/setview/SetMainItemNoIcon;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->SystemResume:Lcom/ts/set/setview/SetMainItemNoIcon;

    .line 207
    iget-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->SystemResume:Lcom/ts/set/setview/SetMainItemNoIcon;

    invoke-virtual {v2, v1, p0}, Lcom/ts/set/setview/SetMainItemNoIcon;->SetUserCallback(ILandroid/view/View$OnClickListener;)V

    .line 208
    iget-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->SystemResume:Lcom/ts/set/setview/SetMainItemNoIcon;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetMainItemNoIcon;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 211
    :pswitch_7
    new-instance v2, Lcom/ts/set/setview/SetMainItemNoIcon;

    iget-object v3, p0, Lcom/ts/set/SettingGerenalActivity;->setGeneraOptions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, p0, v3}, Lcom/ts/set/setview/SetMainItemNoIcon;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->SystemBoot:Lcom/ts/set/setview/SetMainItemNoIcon;

    .line 212
    iget-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->SystemBoot:Lcom/ts/set/setview/SetMainItemNoIcon;

    invoke-virtual {v2, v1, p0}, Lcom/ts/set/setview/SetMainItemNoIcon;->SetUserCallback(ILandroid/view/View$OnClickListener;)V

    .line 213
    iget-object v2, p0, Lcom/ts/set/SettingGerenalActivity;->SystemBoot:Lcom/ts/set/setview/SetMainItemNoIcon;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetMainItemNoIcon;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private isHaveOption(I)Z
    .locals 1
    .param p1, "setOption"    # I

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method private isZh()Z
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/ts/set/SettingGerenalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 133
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "language":Ljava/lang/String;
    const-string v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    const/4 v2, 0x1

    .line 137
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method bIsBeep()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 107
    invoke-virtual {p0}, Lcom/ts/set/SettingGerenalActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_effects_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "bRet"    # Z

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "nRet":I
    if-eqz p2, :cond_0

    .line 225
    const/4 v1, 0x1

    .line 227
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 236
    :pswitch_0
    if-eqz p2, :cond_2

    .line 238
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 239
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.ts.mytouch.TouchService"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0, v0}, Lcom/ts/set/SettingGerenalActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 249
    :goto_1
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetTouchBall()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 251
    invoke-static {v1}, Lcom/yyw/ts70xhw/FtSet;->SetTouchBall(I)I

    .line 253
    :cond_1
    iget-object v3, p0, Lcom/ts/set/SettingGerenalActivity;->KeyTouchSW:Lcom/ts/set/setview/SetMainItemSw;

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v3, v2}, Lcom/ts/set/setview/SetMainItemSw;->SetSwitch(I)V

    goto :goto_0

    .line 244
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 245
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.ts.mytouch.TouchService"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v0}, Lcom/ts/set/SettingGerenalActivity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1

    .line 253
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 323
    :goto_0
    :pswitch_0
    return-void

    .line 268
    :pswitch_1
    new-instance v0, Lcom/ts/set/setview/SettingNumInuptDlg;

    invoke-direct {v0}, Lcom/ts/set/setview/SettingNumInuptDlg;-><init>()V

    iput-object v0, p0, Lcom/ts/set/SettingGerenalActivity;->BootLogoDialog:Lcom/ts/set/setview/SettingNumInuptDlg;

    .line 269
    iget-object v0, p0, Lcom/ts/set/SettingGerenalActivity;->BootLogoDialog:Lcom/ts/set/setview/SettingNumInuptDlg;

    invoke-virtual {v0, p0, p0, v2}, Lcom/ts/set/setview/SettingNumInuptDlg;->createDlg(Landroid/content/Context;Lcom/ts/set/setview/SettingNumInuptDlg$onInputOK;I)V

    goto :goto_0

    .line 273
    :pswitch_2
    new-instance v0, Lcom/ts/set/setview/SetItemDialog;

    sget v1, Lcom/ts/MainUI/R$string;->set_general_Recovery:I

    new-instance v2, Lcom/ts/set/SettingGerenalActivity$2;

    invoke-direct {v2, p0}, Lcom/ts/set/SettingGerenalActivity$2;-><init>(Lcom/ts/set/SettingGerenalActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/ts/set/setview/SetItemDialog;-><init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/ts/set/SettingGerenalActivity;->FtSetDialog:Lcom/ts/set/setview/SetItemDialog;

    goto :goto_0

    .line 296
    :pswitch_3
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    const-string v1, "XPH"

    invoke-virtual {v0, v1}, Lcom/ts/main/common/MainSet;->IsCustom(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    new-instance v0, Lcom/ts/set/setview/SettingNumInuptDlg;

    invoke-direct {v0}, Lcom/ts/set/setview/SettingNumInuptDlg;-><init>()V

    iput-object v0, p0, Lcom/ts/set/SettingGerenalActivity;->SystemresumeDialog:Lcom/ts/set/setview/SettingNumInuptDlg;

    .line 298
    iget-object v0, p0, Lcom/ts/set/SettingGerenalActivity;->SystemresumeDialog:Lcom/ts/set/setview/SettingNumInuptDlg;

    invoke-virtual {v0, p0, p0, v2}, Lcom/ts/set/setview/SettingNumInuptDlg;->createDlg(Landroid/content/Context;Lcom/ts/set/setview/SettingNumInuptDlg$onInputOK;I)V

    goto :goto_0

    .line 301
    :cond_0
    new-instance v0, Lcom/ts/set/setview/SetItemDialog;

    sget v1, Lcom/ts/MainUI/R$string;->set_general_boot:I

    new-instance v2, Lcom/ts/set/SettingGerenalActivity$3;

    invoke-direct {v2, p0}, Lcom/ts/set/SettingGerenalActivity$3;-><init>(Lcom/ts/set/SettingGerenalActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/ts/set/setview/SetItemDialog;-><init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/ts/set/SettingGerenalActivity;->BootDialog:Lcom/ts/set/setview/SetItemDialog;

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-static {p0}, Lcom/ts/set/setview/UISetSroView;->Inint(Landroid/content/Context;)V

    .line 65
    invoke-direct {p0}, Lcom/ts/set/SettingGerenalActivity;->initSetGeneraOptions()V

    .line 66
    invoke-static {p0}, Lcom/ts/set/setview/UISetSroView;->Show(Landroid/content/Context;)V

    .line 67
    iput-object p0, p0, Lcom/ts/set/SettingGerenalActivity;->MyContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method public onItem(II)V
    .locals 3
    .param p1, "Id"    # I
    .param p2, "item"    # I

    .prologue
    .line 330
    packed-switch p1, :pswitch_data_0

    .line 355
    :goto_0
    :pswitch_0
    return-void

    .line 333
    :pswitch_1
    invoke-static {p2}, Lcom/yyw/ts70xhw/FtSet;->SetStandByTime(I)I

    .line 334
    iget-object v0, p0, Lcom/ts/set/SettingGerenalActivity;->IdleDelayTime:Lcom/ts/set/setview/SetItemPopupList;

    invoke-virtual {v0, p2}, Lcom/ts/set/setview/SetItemPopupList;->SetSel(I)V

    goto :goto_0

    .line 337
    :pswitch_2
    invoke-static {p2}, Lcom/yyw/ts70xhw/StSet;->SetParkMute(I)I

    .line 338
    iget-object v0, p0, Lcom/ts/set/SettingGerenalActivity;->BackCarVolume:Lcom/ts/set/setview/SetItemPopupList;

    invoke-virtual {v0, p2}, Lcom/ts/set/setview/SetItemPopupList;->SetSel(I)V

    .line 339
    const-string v0, "SettingGerenalActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "item="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    :pswitch_3
    invoke-static {p2}, Lcom/yyw/ts70xhw/FtSet;->SetXuNiDisc(I)I

    .line 343
    iget-object v0, p0, Lcom/ts/set/SettingGerenalActivity;->VoiceLin:Lcom/ts/set/setview/SetItemPopupList;

    invoke-virtual {v0, p2}, Lcom/ts/set/setview/SetItemPopupList;->SetSel(I)V

    .line 344
    invoke-static {}, Lcom/ts/main/txz/TxzReg;->GetInstance()Lcom/ts/main/txz/TxzReg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/txz/TxzReg;->InintLinMin()V

    goto :goto_0

    .line 347
    :pswitch_4
    invoke-static {p2}, Lcom/yyw/ts70xhw/FtSet;->SetSpeechMode(I)I

    .line 348
    iget-object v0, p0, Lcom/ts/set/SettingGerenalActivity;->VoiceState:Lcom/ts/set/setview/SetItemPopupList;

    invoke-virtual {v0, p2}, Lcom/ts/set/setview/SetItemPopupList;->SetSel(I)V

    .line 349
    invoke-static {}, Lcom/ts/main/txz/TxzReg;->GetInstance()Lcom/ts/main/txz/TxzReg;

    move-result-object v0

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetSpeechMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/main/txz/TxzReg;->SetTXZState(I)V

    goto :goto_0

    .line 330
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onOK(Ljava/lang/String;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/ts/set/SettingGerenalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$string;->custom_bootlogo_num:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    const-string v0, "2648"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingGerenalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ts/set/SettingGerenalActivity;->IdleDelayTime:Lcom/ts/set/setview/SetItemPopupList;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetStandByTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetItemPopupList;->SetSel(I)V

    .line 116
    iget-object v0, p0, Lcom/ts/set/SettingGerenalActivity;->KeyTouchSW:Lcom/ts/set/setview/SetMainItemSw;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetTouchBall()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetMainItemSw;->SetSwitch(I)V

    .line 118
    const-string v0, "SettingGerenalActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StSet.GetParkMute()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetParkMute()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v0, "SettingGerenalActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StSet.GetSpeechMode()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetSpeechMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/ts/set/SettingGerenalActivity;->VoiceState:Lcom/ts/set/setview/SetItemPopupList;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetSpeechMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetItemPopupList;->SetSel(I)V

    .line 122
    iget-object v0, p0, Lcom/ts/set/SettingGerenalActivity;->BackCarVolume:Lcom/ts/set/setview/SetItemPopupList;

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetParkMute()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetItemPopupList;->SetSel(I)V

    .line 123
    iget-object v0, p0, Lcom/ts/set/SettingGerenalActivity;->VoiceLin:Lcom/ts/set/setview/SetItemPopupList;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetXuNiDisc()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetItemPopupList;->SetSel(I)V

    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 125
    return-void
.end method
