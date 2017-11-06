.class public Lcom/ts/set/SettingGpsActivity;
.super Landroid/app/Activity;
.source "SettingGpsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingGpsActivity"


# instance fields
.field AudoNavi:Lcom/ts/set/setview/SetMainItemSw;

.field Name:[B

.field NaviPathChoose:Lcom/ts/set/setview/SetMainItemNoIcon;

.field private setNaviOptions:[Ljava/lang/String;

.field topname:Lcom/ts/set/setview/SetMainItemTopName;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ts/set/SettingGpsActivity;->Name:[B

    .line 20
    return-void
.end method

.method private initGpsOptions()V
    .locals 6

    .prologue
    const/16 v5, 0x6f

    const/16 v4, 0x400

    .line 52
    invoke-virtual {p0}, Lcom/ts/set/SettingGpsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->set_main_options:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v0, v2, v3

    .line 53
    .local v0, "name":Ljava/lang/String;
    new-instance v2, Lcom/ts/set/setview/SetMainItemTopName;

    invoke-direct {v2, p0, v0}, Lcom/ts/set/setview/SetMainItemTopName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SettingGpsActivity;->topname:Lcom/ts/set/setview/SetMainItemTopName;

    .line 54
    iget-object v2, p0, Lcom/ts/set/SettingGpsActivity;->topname:Lcom/ts/set/setview/SetMainItemTopName;

    iget-object v2, v2, Lcom/ts/set/setview/SetMainItemTopName;->iv:Landroid/widget/Button;

    new-instance v3, Lcom/ts/set/SettingGpsActivity$1;

    invoke-direct {v3, p0}, Lcom/ts/set/SettingGpsActivity$1;-><init>(Lcom/ts/set/SettingGpsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v2, p0, Lcom/ts/set/SettingGpsActivity;->topname:Lcom/ts/set/setview/SetMainItemTopName;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetMainItemTopName;->GetView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x4b

    invoke-static {v2, v4, v3}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;II)V

    .line 63
    invoke-virtual {p0}, Lcom/ts/set/SettingGpsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->set_navi_options:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/set/SettingGpsActivity;->setNaviOptions:[Ljava/lang/String;

    .line 64
    const/4 v1, 0x0

    .local v1, "setOpt":I
    :goto_0
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 81
    return-void

    .line 66
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 64
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :pswitch_0
    new-instance v2, Lcom/ts/set/setview/SetMainItemSw;

    iget-object v3, p0, Lcom/ts/set/SettingGpsActivity;->setNaviOptions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, p0, v3}, Lcom/ts/set/setview/SetMainItemSw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SettingGpsActivity;->AudoNavi:Lcom/ts/set/setview/SetMainItemSw;

    .line 70
    iget-object v2, p0, Lcom/ts/set/SettingGpsActivity;->AudoNavi:Lcom/ts/set/setview/SetMainItemSw;

    invoke-virtual {v2, v1, p0}, Lcom/ts/set/setview/SetMainItemSw;->SetUserCallback(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 71
    iget-object v2, p0, Lcom/ts/set/SettingGpsActivity;->AudoNavi:Lcom/ts/set/setview/SetMainItemSw;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetMainItemSw;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v4, v5}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;II)V

    goto :goto_1

    .line 74
    :pswitch_1
    new-instance v2, Lcom/ts/set/setview/SetMainItemNoIcon;

    iget-object v3, p0, Lcom/ts/set/SettingGpsActivity;->setNaviOptions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, p0, v3}, Lcom/ts/set/setview/SetMainItemNoIcon;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SettingGpsActivity;->NaviPathChoose:Lcom/ts/set/setview/SetMainItemNoIcon;

    .line 75
    iget-object v2, p0, Lcom/ts/set/SettingGpsActivity;->NaviPathChoose:Lcom/ts/set/setview/SetMainItemNoIcon;

    invoke-virtual {v2, v1, p0}, Lcom/ts/set/setview/SetMainItemNoIcon;->SetUserCallback(ILandroid/view/View$OnClickListener;)V

    .line 76
    iget-object v2, p0, Lcom/ts/set/SettingGpsActivity;->NaviPathChoose:Lcom/ts/set/setview/SetMainItemNoIcon;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetMainItemNoIcon;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v4, v5}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;II)V

    goto :goto_1

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "bRet"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v3, p0, Lcom/ts/set/SettingGpsActivity;->AudoNavi:Lcom/ts/set/setview/SetMainItemSw;

    if-eqz p2, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ts/set/setview/SetMainItemSw;->SetSwitch(I)V

    .line 92
    if-eqz p2, :cond_1

    :goto_2
    invoke-static {v1}, Lcom/yyw/ts70xhw/StSet;->SetAutoNaviSwitch(I)I

    goto :goto_0

    :cond_0
    move v0, v2

    .line 91
    goto :goto_1

    :cond_1
    move v1, v2

    .line 92
    goto :goto_2

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 108
    :pswitch_0
    const/16 v0, 0xb

    const/16 v1, 0x63

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {p0}, Lcom/ts/set/setview/UISetSroView;->Inint(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/ts/set/SettingGpsActivity;->initGpsOptions()V

    .line 34
    invoke-static {p0}, Lcom/ts/set/setview/UISetSroView;->Show(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ts/set/SettingGpsActivity;->AudoNavi:Lcom/ts/set/setview/SetMainItemSw;

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetAutoNavi()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetMainItemSw;->SetSwitch(I)V

    .line 40
    iget-object v0, p0, Lcom/ts/set/SettingGpsActivity;->Name:[B

    invoke-static {v0}, Lcom/yyw/ts70xhw/StSet;->GetNaviName([B)I

    .line 41
    iget-object v0, p0, Lcom/ts/set/SettingGpsActivity;->NaviPathChoose:Lcom/ts/set/setview/SetMainItemNoIcon;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/ts/set/SettingGpsActivity;->Name:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetMainItemNoIcon;->ShowEndInfo(Ljava/lang/String;)V

    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 43
    return-void
.end method
