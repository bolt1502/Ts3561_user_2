.class public Lcom/ts/set/SettingBtActivity;
.super Landroid/app/Activity;
.source "SettingBtActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/ts/set/setview/SettingNumInuptDlg$onInputOK;


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingBtActivity"


# instance fields
.field BtAudoAnswer:Lcom/ts/set/setview/SetMainItemSw;

.field BtAutoConnect:Lcom/ts/set/setview/SetMainItemSw;

.field BtCodeInput:Lcom/ts/set/setview/SettingNumInuptDlg;

.field BtPinCode:Lcom/ts/set/setview/SetMainItemNoIcon;

.field private mIsSetting:Z

.field private setBtOptions:[Ljava/lang/String;

.field topname:Lcom/ts/set/setview/SetMainItemTopName;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/set/SettingBtActivity;->mIsSetting:Z

    .line 22
    return-void
.end method

.method private initBtOptions()V
    .locals 6

    .prologue
    const/16 v5, 0x6f

    const/16 v4, 0x400

    .line 68
    invoke-virtual {p0}, Lcom/ts/set/SettingBtActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->set_main_options:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aget-object v0, v2, v3

    .line 69
    .local v0, "name":Ljava/lang/String;
    new-instance v2, Lcom/ts/set/setview/SetMainItemTopName;

    invoke-direct {v2, p0, v0}, Lcom/ts/set/setview/SetMainItemTopName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SettingBtActivity;->topname:Lcom/ts/set/setview/SetMainItemTopName;

    .line 70
    iget-object v2, p0, Lcom/ts/set/SettingBtActivity;->topname:Lcom/ts/set/setview/SetMainItemTopName;

    iget-object v2, v2, Lcom/ts/set/setview/SetMainItemTopName;->iv:Landroid/widget/Button;

    new-instance v3, Lcom/ts/set/SettingBtActivity$1;

    invoke-direct {v3, p0}, Lcom/ts/set/SettingBtActivity$1;-><init>(Lcom/ts/set/SettingBtActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v2, p0, Lcom/ts/set/SettingBtActivity;->topname:Lcom/ts/set/setview/SetMainItemTopName;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetMainItemTopName;->GetView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x4b

    invoke-static {v2, v4, v3}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;II)V

    .line 79
    invoke-virtual {p0}, Lcom/ts/set/SettingBtActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->set_bt_options:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/set/SettingBtActivity;->setBtOptions:[Ljava/lang/String;

    .line 80
    const/4 v1, 0x0

    .local v1, "setOpt":I
    :goto_0
    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 101
    return-void

    .line 82
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 80
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :pswitch_0
    new-instance v2, Lcom/ts/set/setview/SetMainItemNoIcon;

    iget-object v3, p0, Lcom/ts/set/SettingBtActivity;->setBtOptions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, p0, v3}, Lcom/ts/set/setview/SetMainItemNoIcon;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SettingBtActivity;->BtPinCode:Lcom/ts/set/setview/SetMainItemNoIcon;

    .line 86
    iget-object v2, p0, Lcom/ts/set/SettingBtActivity;->BtPinCode:Lcom/ts/set/setview/SetMainItemNoIcon;

    invoke-virtual {v2, v1, p0}, Lcom/ts/set/setview/SetMainItemNoIcon;->SetUserCallback(ILandroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 90
    :pswitch_1
    new-instance v2, Lcom/ts/set/setview/SetMainItemSw;

    iget-object v3, p0, Lcom/ts/set/SettingBtActivity;->setBtOptions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, p0, v3}, Lcom/ts/set/setview/SetMainItemSw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SettingBtActivity;->BtAutoConnect:Lcom/ts/set/setview/SetMainItemSw;

    .line 91
    iget-object v2, p0, Lcom/ts/set/SettingBtActivity;->BtAutoConnect:Lcom/ts/set/setview/SetMainItemSw;

    invoke-virtual {v2, v1, p0}, Lcom/ts/set/setview/SetMainItemSw;->SetUserCallback(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    iget-object v2, p0, Lcom/ts/set/SettingBtActivity;->BtAutoConnect:Lcom/ts/set/setview/SetMainItemSw;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetMainItemSw;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v4, v5}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;II)V

    goto :goto_1

    .line 95
    :pswitch_2
    new-instance v2, Lcom/ts/set/setview/SetMainItemSw;

    iget-object v3, p0, Lcom/ts/set/SettingBtActivity;->setBtOptions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, p0, v3}, Lcom/ts/set/setview/SetMainItemSw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SettingBtActivity;->BtAudoAnswer:Lcom/ts/set/setview/SetMainItemSw;

    .line 96
    iget-object v2, p0, Lcom/ts/set/SettingBtActivity;->BtAudoAnswer:Lcom/ts/set/setview/SetMainItemSw;

    invoke-virtual {v2, v1, p0}, Lcom/ts/set/setview/SetMainItemSw;->SetUserCallback(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    iget-object v2, p0, Lcom/ts/set/SettingBtActivity;->BtAudoAnswer:Lcom/ts/set/setview/SetMainItemSw;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetMainItemSw;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v4, v5}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;II)V

    goto :goto_1

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "bRet"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    iget-boolean v0, p0, Lcom/ts/set/SettingBtActivity;->mIsSetting:Z

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 124
    :pswitch_0
    iget-object v3, p0, Lcom/ts/set/SettingBtActivity;->BtAutoConnect:Lcom/ts/set/setview/SetMainItemSw;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ts/set/setview/SetMainItemSw;->SetSwitch(I)V

    .line 125
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->autoConnectSw()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 124
    goto :goto_1

    .line 128
    :pswitch_1
    iget-object v0, p0, Lcom/ts/set/SettingBtActivity;->BtAudoAnswer:Lcom/ts/set/setview/SetMainItemSw;

    if-eqz p2, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetMainItemSw;->SetSwitch(I)V

    .line 129
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->autoAnswerSw()V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 128
    goto :goto_2

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 109
    :pswitch_0
    new-instance v0, Lcom/ts/set/setview/SettingNumInuptDlg;

    invoke-direct {v0}, Lcom/ts/set/setview/SettingNumInuptDlg;-><init>()V

    iput-object v0, p0, Lcom/ts/set/SettingBtActivity;->BtCodeInput:Lcom/ts/set/setview/SettingNumInuptDlg;

    .line 110
    iget-object v0, p0, Lcom/ts/set/SettingBtActivity;->BtCodeInput:Lcom/ts/set/setview/SettingNumInuptDlg;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, p0, v1}, Lcom/ts/set/setview/SettingNumInuptDlg;->createDlg(Landroid/content/Context;Lcom/ts/set/setview/SettingNumInuptDlg$onInputOK;I)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {p0}, Lcom/ts/set/setview/UISetSroView;->Inint(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0}, Lcom/ts/set/SettingBtActivity;->initBtOptions()V

    .line 42
    invoke-static {p0}, Lcom/ts/set/setview/UISetSroView;->Show(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public onOK(Ljava/lang/String;)V
    .locals 4
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 140
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ts/bt/BtExe;->setDevPin(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->getDevPin()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "strPin":Ljava/lang/String;
    const-string v1, "SettingBtActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Pin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/ts/set/SettingBtActivity;->BtPinCode:Lcom/ts/set/setview/SetMainItemNoIcon;

    invoke-virtual {v1, p1}, Lcom/ts/set/setview/SetMainItemNoIcon;->ShowEndInfo(Ljava/lang/String;)V

    .line 146
    .end local v0    # "strPin":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->readDeviceNamePin()V

    .line 50
    iget-object v0, p0, Lcom/ts/set/SettingBtActivity;->BtPinCode:Lcom/ts/set/setview/SetMainItemNoIcon;

    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ts/bt/BtExe;->getDevPin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ts/set/setview/SetMainItemNoIcon;->ShowEndInfo(Ljava/lang/String;)V

    .line 53
    iput-boolean v1, p0, Lcom/ts/set/SettingBtActivity;->mIsSetting:Z

    .line 54
    const-string v0, "SettingBtActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isAutoConnect = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ts/bt/BtExe;->isAutoConnect()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isAutoAnswer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ts/bt/BtExe;->isAutoAnswer()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v3, p0, Lcom/ts/set/SettingBtActivity;->BtAutoConnect:Lcom/ts/set/setview/SetMainItemSw;

    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->isAutoConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/ts/set/setview/SetMainItemSw;->SetSwitch(I)V

    .line 56
    iget-object v0, p0, Lcom/ts/set/SettingBtActivity;->BtAudoAnswer:Lcom/ts/set/setview/SetMainItemSw;

    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ts/bt/BtExe;->isAutoAnswer()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetMainItemSw;->SetSwitch(I)V

    .line 57
    iput-boolean v2, p0, Lcom/ts/set/SettingBtActivity;->mIsSetting:Z

    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 59
    return-void

    :cond_0
    move v0, v2

    .line 55
    goto :goto_0

    :cond_1
    move v1, v2

    .line 56
    goto :goto_1
.end method
