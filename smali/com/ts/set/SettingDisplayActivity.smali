.class public Lcom/ts/set/SettingDisplayActivity;
.super Landroid/app/Activity;
.source "SettingDisplayActivity.java"

# interfaces
.implements Lcom/ts/set/setview/SetItemProgressList$onPosChange;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingDisplayActivity"


# instance fields
.field KeyColor:Lcom/ts/set/setview/SetMainItemNoIcon;

.field autolight:Lcom/ts/set/setview/SetMainItemSw;

.field daylight:Lcom/ts/set/setview/SetDisplayItemProgressList;

.field nightlight:Lcom/ts/set/setview/SetDisplayItemProgressList;

.field private setDisplayOptions:[Ljava/lang/String;

.field topname:Lcom/ts/set/setview/SetMainItemTopName;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initSetDisplayOptions()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    const/16 v5, 0x6f

    const/16 v4, 0x400

    .line 90
    invoke-virtual {p0}, Lcom/ts/set/SettingDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->set_main_options:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 91
    .local v0, "name":Ljava/lang/String;
    new-instance v2, Lcom/ts/set/setview/SetMainItemTopName;

    invoke-direct {v2, p0, v0}, Lcom/ts/set/setview/SetMainItemTopName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SettingDisplayActivity;->topname:Lcom/ts/set/setview/SetMainItemTopName;

    .line 92
    iget-object v2, p0, Lcom/ts/set/SettingDisplayActivity;->topname:Lcom/ts/set/setview/SetMainItemTopName;

    iget-object v2, v2, Lcom/ts/set/setview/SetMainItemTopName;->iv:Landroid/widget/Button;

    new-instance v3, Lcom/ts/set/SettingDisplayActivity$1;

    invoke-direct {v3, p0}, Lcom/ts/set/SettingDisplayActivity$1;-><init>(Lcom/ts/set/SettingDisplayActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v2, p0, Lcom/ts/set/SettingDisplayActivity;->topname:Lcom/ts/set/setview/SetMainItemTopName;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetMainItemTopName;->GetView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x4b

    invoke-static {v2, v4, v3}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;II)V

    .line 101
    invoke-virtual {p0}, Lcom/ts/set/SettingDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->set_display_options:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/set/SettingDisplayActivity;->setDisplayOptions:[Ljava/lang/String;

    .line 102
    const/4 v1, 0x0

    .local v1, "setOpt":I
    :goto_0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 138
    return-void

    .line 104
    :cond_0
    invoke-direct {p0, v1}, Lcom/ts/set/SettingDisplayActivity;->isHaveOption(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    packed-switch v1, :pswitch_data_0

    .line 102
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :pswitch_0
    new-instance v2, Lcom/ts/set/setview/SetDisplayItemProgressList;

    iget-object v3, p0, Lcom/ts/set/SettingDisplayActivity;->setDisplayOptions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, p0, v3}, Lcom/ts/set/setview/SetDisplayItemProgressList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SettingDisplayActivity;->daylight:Lcom/ts/set/setview/SetDisplayItemProgressList;

    .line 110
    iget-object v2, p0, Lcom/ts/set/SettingDisplayActivity;->daylight:Lcom/ts/set/setview/SetDisplayItemProgressList;

    invoke-virtual {v2, v6, v7}, Lcom/ts/set/setview/SetDisplayItemProgressList;->SetMinMax(II)V

    .line 111
    iget-object v2, p0, Lcom/ts/set/SettingDisplayActivity;->daylight:Lcom/ts/set/setview/SetDisplayItemProgressList;

    invoke-virtual {v2, v1, p0}, Lcom/ts/set/setview/SetDisplayItemProgressList;->SetIdCallBack(ILandroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 112
    iget-object v2, p0, Lcom/ts/set/SettingDisplayActivity;->daylight:Lcom/ts/set/setview/SetDisplayItemProgressList;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetDisplayItemProgressList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v4, v5}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;II)V

    goto :goto_1

    .line 115
    :pswitch_1
    new-instance v2, Lcom/ts/set/setview/SetDisplayItemProgressList;

    iget-object v3, p0, Lcom/ts/set/SettingDisplayActivity;->setDisplayOptions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, p0, v3}, Lcom/ts/set/setview/SetDisplayItemProgressList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SettingDisplayActivity;->nightlight:Lcom/ts/set/setview/SetDisplayItemProgressList;

    .line 116
    iget-object v2, p0, Lcom/ts/set/SettingDisplayActivity;->nightlight:Lcom/ts/set/setview/SetDisplayItemProgressList;

    invoke-virtual {v2, v6, v7}, Lcom/ts/set/setview/SetDisplayItemProgressList;->SetMinMax(II)V

    .line 117
    iget-object v2, p0, Lcom/ts/set/SettingDisplayActivity;->nightlight:Lcom/ts/set/setview/SetDisplayItemProgressList;

    invoke-virtual {v2, v1, p0}, Lcom/ts/set/setview/SetDisplayItemProgressList;->SetIdCallBack(ILandroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 118
    iget-object v2, p0, Lcom/ts/set/SettingDisplayActivity;->nightlight:Lcom/ts/set/setview/SetDisplayItemProgressList;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetDisplayItemProgressList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v4, v5}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;II)V

    goto :goto_1

    .line 121
    :pswitch_2
    new-instance v2, Lcom/ts/set/setview/SetMainItemSw;

    iget-object v3, p0, Lcom/ts/set/SettingDisplayActivity;->setDisplayOptions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, p0, v3}, Lcom/ts/set/setview/SetMainItemSw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SettingDisplayActivity;->autolight:Lcom/ts/set/setview/SetMainItemSw;

    .line 122
    iget-object v2, p0, Lcom/ts/set/SettingDisplayActivity;->autolight:Lcom/ts/set/setview/SetMainItemSw;

    invoke-virtual {v2, v1, p0}, Lcom/ts/set/setview/SetMainItemSw;->SetUserCallback(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    iget-object v2, p0, Lcom/ts/set/SettingDisplayActivity;->autolight:Lcom/ts/set/setview/SetMainItemSw;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetMainItemSw;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v4, v5}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;II)V

    goto :goto_1

    .line 126
    :pswitch_3
    new-instance v2, Lcom/ts/set/setview/SetMainItemNoIcon;

    iget-object v3, p0, Lcom/ts/set/SettingDisplayActivity;->setDisplayOptions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, p0, v3}, Lcom/ts/set/setview/SetMainItemNoIcon;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SettingDisplayActivity;->KeyColor:Lcom/ts/set/setview/SetMainItemNoIcon;

    .line 127
    iget-object v2, p0, Lcom/ts/set/SettingDisplayActivity;->KeyColor:Lcom/ts/set/setview/SetMainItemNoIcon;

    invoke-virtual {v2, v1, p0}, Lcom/ts/set/setview/SetMainItemNoIcon;->SetUserCallback(ILandroid/view/View$OnClickListener;)V

    .line 128
    invoke-direct {p0, v1}, Lcom/ts/set/SettingDisplayActivity;->isHaveOption(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/ts/set/SettingDisplayActivity;->KeyColor:Lcom/ts/set/setview/SetMainItemNoIcon;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetMainItemNoIcon;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v4, v5}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;II)V

    goto :goto_1

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isHaveOption(I)Z
    .locals 2
    .param p1, "setOption"    # I

    .prologue
    const/4 v0, 0x1

    .line 70
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 72
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetOptionIll()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onChanged(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 145
    packed-switch p1, :pswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 148
    :pswitch_0
    iget-object v0, p0, Lcom/ts/set/SettingDisplayActivity;->daylight:Lcom/ts/set/setview/SetDisplayItemProgressList;

    invoke-virtual {v0, p2}, Lcom/ts/set/setview/SetDisplayItemProgressList;->SetCurVal(I)V

    .line 149
    invoke-static {p2}, Lcom/yyw/ts70xhw/StSet;->SetBLDay(I)I

    goto :goto_0

    .line 152
    :pswitch_1
    iget-object v0, p0, Lcom/ts/set/SettingDisplayActivity;->nightlight:Lcom/ts/set/setview/SetDisplayItemProgressList;

    invoke-virtual {v0, p2}, Lcom/ts/set/setview/SetDisplayItemProgressList;->SetCurVal(I)V

    .line 153
    invoke-static {p2}, Lcom/yyw/ts70xhw/StSet;->SetBLNight(I)I

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "bRet"    # Z

    .prologue
    const/4 v1, 0x1

    .line 169
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_0
    return-void

    .line 172
    :pswitch_0
    const-string v0, "SettingDisplayActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bRet="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    if-eqz p2, :cond_0

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/yyw/ts70xhw/StSet;->SetBLIllSwitch(I)I

    .line 174
    iget-object v0, p0, Lcom/ts/set/SettingDisplayActivity;->autolight:Lcom/ts/set/setview/SetMainItemSw;

    if-eqz p2, :cond_1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetMainItemSw;->SetSwitch(I)V

    goto :goto_0

    .line 173
    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    .line 174
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 195
    :goto_0
    return-void

    .line 190
    :pswitch_0
    const-string v0, "SettingDisplayActivity"

    const-string v1, "onClick="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.set.SetColorKeyMainActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static {p0}, Lcom/ts/set/setview/UISetSroView;->Inint(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0}, Lcom/ts/set/SettingDisplayActivity;->initSetDisplayOptions()V

    .line 46
    invoke-static {p0}, Lcom/ts/set/setview/UISetSroView;->Show(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 58
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 206
    .local v0, "nId":I
    packed-switch v0, :pswitch_data_0

    .line 218
    :goto_0
    return-void

    .line 209
    :pswitch_0
    iget-object v1, p0, Lcom/ts/set/SettingDisplayActivity;->daylight:Lcom/ts/set/setview/SetDisplayItemProgressList;

    invoke-virtual {v1, p2}, Lcom/ts/set/setview/SetDisplayItemProgressList;->SetCurVal(I)V

    .line 210
    invoke-static {p2}, Lcom/yyw/ts70xhw/StSet;->SetBLDay(I)I

    goto :goto_0

    .line 213
    :pswitch_1
    iget-object v1, p0, Lcom/ts/set/SettingDisplayActivity;->nightlight:Lcom/ts/set/setview/SetDisplayItemProgressList;

    invoke-virtual {v1, p2}, Lcom/ts/set/setview/SetDisplayItemProgressList;->SetCurVal(I)V

    .line 214
    invoke-static {p2}, Lcom/yyw/ts70xhw/StSet;->SetBLNight(I)I

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ts/set/SettingDisplayActivity;->daylight:Lcom/ts/set/setview/SetDisplayItemProgressList;

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetBLDay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetDisplayItemProgressList;->SetCurVal(I)V

    .line 64
    iget-object v0, p0, Lcom/ts/set/SettingDisplayActivity;->nightlight:Lcom/ts/set/setview/SetDisplayItemProgressList;

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetBLNight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetDisplayItemProgressList;->SetCurVal(I)V

    .line 65
    iget-object v0, p0, Lcom/ts/set/SettingDisplayActivity;->autolight:Lcom/ts/set/setview/SetMainItemSw;

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetBLIll()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetMainItemSw;->SetSwitch(I)V

    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 67
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 228
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 238
    return-void
.end method
