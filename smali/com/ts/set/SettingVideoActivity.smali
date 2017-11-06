.class public Lcom/ts/set/SettingVideoActivity;
.super Landroid/app/Activity;
.source "SettingVideoActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingVideoActivity"


# instance fields
.field SetCamMir:Lcom/ts/set/setview/SetItemDialog;

.field VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

.field nVideoFormat:[I

.field private setvideoOptions:[Ljava/lang/String;

.field topname:Lcom/ts/set/setview/SetMainItemTopName;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ts/set/setview/SetMainItemSw;

    iput-object v0, p0, Lcom/ts/set/SettingVideoActivity;->VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 35
    sget v2, Lcom/ts/MainUI/R$string;->set_video_ntsc:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 36
    sget v2, Lcom/ts/MainUI/R$string;->set_video_pal:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/set/SettingVideoActivity;->nVideoFormat:[I

    .line 23
    return-void
.end method

.method private initVideoOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 71
    invoke-virtual {p0}, Lcom/ts/set/SettingVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->set_main_options:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v0, v2, v3

    .line 72
    .local v0, "name":Ljava/lang/String;
    new-instance v2, Lcom/ts/set/setview/SetMainItemTopName;

    invoke-direct {v2, p0, v0}, Lcom/ts/set/setview/SetMainItemTopName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SettingVideoActivity;->topname:Lcom/ts/set/setview/SetMainItemTopName;

    .line 73
    iget-object v2, p0, Lcom/ts/set/SettingVideoActivity;->topname:Lcom/ts/set/setview/SetMainItemTopName;

    iget-object v2, v2, Lcom/ts/set/setview/SetMainItemTopName;->iv:Landroid/widget/Button;

    new-instance v3, Lcom/ts/set/SettingVideoActivity$1;

    invoke-direct {v3, p0}, Lcom/ts/set/SettingVideoActivity$1;-><init>(Lcom/ts/set/SettingVideoActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v2, p0, Lcom/ts/set/SettingVideoActivity;->topname:Lcom/ts/set/setview/SetMainItemTopName;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetMainItemTopName;->GetView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x400

    const/16 v4, 0x4b

    invoke-static {v2, v3, v4}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;II)V

    .line 82
    invoke-virtual {p0}, Lcom/ts/set/SettingVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->set_video_options:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/set/SettingVideoActivity;->setvideoOptions:[Ljava/lang/String;

    .line 83
    const/4 v1, 0x0

    .local v1, "setOpt":I
    :goto_0
    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    .line 122
    return-void

    .line 85
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 83
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :pswitch_0
    iget-object v2, p0, Lcom/ts/set/SettingVideoActivity;->VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

    new-instance v3, Lcom/ts/set/setview/SetMainItemSw;

    iget-object v4, p0, Lcom/ts/set/SettingVideoActivity;->setvideoOptions:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, p0, v4}, Lcom/ts/set/setview/SetMainItemSw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 89
    iget-object v2, p0, Lcom/ts/set/SettingVideoActivity;->VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

    aget-object v2, v2, v1

    invoke-virtual {v2, v1, p0}, Lcom/ts/set/setview/SetMainItemSw;->SetUserCallback(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetBrakeDef()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetBrakeDef()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/ts/set/SettingVideoActivity;->VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/ts/set/setview/SetMainItemSw;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;)V

    goto :goto_1

    .line 97
    :pswitch_1
    iget-object v2, p0, Lcom/ts/set/SettingVideoActivity;->VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

    new-instance v3, Lcom/ts/set/setview/SetMainItemSw;

    iget-object v4, p0, Lcom/ts/set/SettingVideoActivity;->setvideoOptions:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, p0, v4}, Lcom/ts/set/setview/SetMainItemSw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 98
    iget-object v2, p0, Lcom/ts/set/SettingVideoActivity;->VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

    aget-object v2, v2, v1

    invoke-virtual {v2, v1, p0}, Lcom/ts/set/setview/SetMainItemSw;->SetUserCallback(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    iget-object v2, p0, Lcom/ts/set/SettingVideoActivity;->VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/ts/set/setview/SetMainItemSw;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;)V

    goto :goto_1

    .line 109
    :pswitch_2
    iget-object v2, p0, Lcom/ts/set/SettingVideoActivity;->VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

    new-instance v3, Lcom/ts/set/setview/SetMainItemSw;

    iget-object v4, p0, Lcom/ts/set/SettingVideoActivity;->setvideoOptions:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, p0, v4}, Lcom/ts/set/setview/SetMainItemSw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 110
    iget-object v2, p0, Lcom/ts/set/SettingVideoActivity;->VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

    aget-object v2, v2, v1

    invoke-virtual {v2, v1, p0}, Lcom/ts/set/setview/SetMainItemSw;->SetUserCallback(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    if-eq v1, v5, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetRearVideoOutput()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 114
    :cond_3
    iget-object v2, p0, Lcom/ts/set/SettingVideoActivity;->VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/ts/set/setview/SetMainItemSw;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;)V

    goto :goto_1

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "bRet"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 128
    if-eqz p2, :cond_1

    move v0, v2

    .line 130
    .local v0, "nRet":I
    :goto_0
    const-string v1, "SettingVideoActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onCheckedChanged ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 203
    :cond_0
    :goto_1
    return-void

    .end local v0    # "nRet":I
    :cond_1
    move v0, v3

    .line 128
    goto :goto_0

    .line 134
    .restart local v0    # "nRet":I
    :pswitch_0
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetDriveVideo()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/ts/set/SettingVideoActivity;->VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Lcom/ts/set/setview/SetMainItemSw;->SetSwitch(I)V

    .line 137
    if-eqz p2, :cond_2

    :goto_2
    invoke-static {v2}, Lcom/yyw/ts70xhw/StSet;->SetDriveVideoSwitch(I)I

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    .line 141
    :pswitch_1
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCamTrack()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/ts/set/SettingVideoActivity;->VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/ts/set/setview/SetMainItemSw;->SetSwitch(I)V

    .line 144
    if-eqz p2, :cond_3

    .line 146
    iget-object v1, p0, Lcom/ts/set/SettingVideoActivity;->VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

    aget-object v1, v1, v4

    invoke-virtual {v1, v3}, Lcom/ts/set/setview/SetMainItemSw;->SetSwitch(I)V

    .line 147
    invoke-static {v3}, Lcom/yyw/ts70xhw/FtSet;->SetCamLine(I)I

    .line 149
    :cond_3
    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->SetCamTrack(I)I

    goto :goto_1

    .line 154
    :pswitch_2
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCamLine()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/ts/set/SettingVideoActivity;->VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

    aget-object v1, v1, v4

    invoke-virtual {v1, v0}, Lcom/ts/set/setview/SetMainItemSw;->SetSwitch(I)V

    .line 157
    if-eqz p2, :cond_4

    .line 159
    iget-object v1, p0, Lcom/ts/set/SettingVideoActivity;->VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/ts/set/setview/SetMainItemSw;->SetSwitch(I)V

    .line 160
    invoke-static {v3}, Lcom/yyw/ts70xhw/FtSet;->SetCamTrack(I)I

    .line 162
    :cond_4
    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->SetCamLine(I)I

    goto :goto_1

    .line 167
    :pswitch_3
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCamMir()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/ts/set/SettingVideoActivity;->VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/ts/set/setview/SetMainItemSw;->SetSwitch(I)V

    .line 170
    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->SetCamMir(I)I

    .line 171
    new-instance v1, Lcom/ts/set/setview/SetItemDialog;

    sget v2, Lcom/ts/MainUI/R$string;->set_general_cammir:I

    new-instance v3, Lcom/ts/set/SettingVideoActivity$2;

    invoke-direct {v3, p0}, Lcom/ts/set/SettingVideoActivity$2;-><init>(Lcom/ts/set/SettingVideoActivity;)V

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/set/setview/SetItemDialog;-><init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ts/set/SettingVideoActivity;->SetCamMir:Lcom/ts/set/setview/SetItemDialog;

    goto :goto_1

    .line 192
    :pswitch_4
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetAcDisplay()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 194
    iget-object v1, p0, Lcom/ts/set/SettingVideoActivity;->VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

    const/4 v3, 0x4

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Lcom/ts/set/setview/SetMainItemSw;->SetSwitch(I)V

    .line 195
    if-eqz p2, :cond_5

    :goto_3
    invoke-static {v2}, Lcom/yyw/ts70xhw/StSet;->SetAcDisplaySwitch(I)I

    goto/16 :goto_1

    :cond_5
    move v2, v4

    goto :goto_3

    .line 199
    :pswitch_5
    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->SetRearVideoOutput(I)I

    .line 200
    iget-object v1, p0, Lcom/ts/set/SettingVideoActivity;->VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/ts/set/setview/SetMainItemSw;->SetSwitch(I)V

    goto/16 :goto_1

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-static {p0}, Lcom/ts/set/setview/UISetSroView;->Inint(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0}, Lcom/ts/set/SettingVideoActivity;->initVideoOptions()V

    .line 48
    invoke-static {p0}, Lcom/ts/set/setview/UISetSroView;->Show(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 55
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetRearVideoOutput()I

    move-result v0

    .line 56
    .local v0, "n":I
    iget-object v1, p0, Lcom/ts/set/SettingVideoActivity;->VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetDriveVideo()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ts/set/setview/SetMainItemSw;->SetSwitch(I)V

    .line 57
    iget-object v1, p0, Lcom/ts/set/SettingVideoActivity;->VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCamTrack()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ts/set/setview/SetMainItemSw;->SetSwitch(I)V

    .line 58
    iget-object v1, p0, Lcom/ts/set/SettingVideoActivity;->VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCamLine()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ts/set/setview/SetMainItemSw;->SetSwitch(I)V

    .line 59
    iget-object v1, p0, Lcom/ts/set/SettingVideoActivity;->VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCamMir()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ts/set/setview/SetMainItemSw;->SetSwitch(I)V

    .line 60
    iget-object v1, p0, Lcom/ts/set/SettingVideoActivity;->VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetAcDisplay()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ts/set/setview/SetMainItemSw;->SetSwitch(I)V

    .line 61
    iget-object v1, p0, Lcom/ts/set/SettingVideoActivity;->VideoBtn:[Lcom/ts/set/setview/SetMainItemSw;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetRearVideoOutput()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ts/set/setview/SetMainItemSw;->SetSwitch(I)V

    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 65
    return-void
.end method
