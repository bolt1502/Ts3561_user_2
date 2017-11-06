.class public Lcom/ts/set/SetVolumeActivity;
.super Landroid/app/Activity;
.source "SetVolumeActivity.java"

# interfaces
.implements Lcom/ts/set/setview/SetItemProgressList$onPosChange;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SetVolumeActivity"


# instance fields
.field AlarmVolume:Lcom/ts/set/setview/SetItemProgressList;

.field BtVolume:Lcom/ts/set/setview/SetItemProgressList;

.field MediaVolume:Lcom/ts/set/setview/SetItemProgressList;

.field NaviVolume:Lcom/ts/set/setview/SetItemProgressList;

.field RingVolume:Lcom/ts/set/setview/SetItemProgressList;

.field SystemVolume:Lcom/ts/set/setview/SetItemProgressList;

.field mEvc:Lcom/ts/MainUI/Evc;

.field nAvol:I

.field nBvol:I

.field nMvol:I

.field nNvol:I

.field nRvol:I

.field nSvol:I

.field private setVolumeOptions:[Ljava/lang/String;

.field topname:Lcom/ts/set/setview/SetMainItemTopName;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/set/SetVolumeActivity;->mEvc:Lcom/ts/MainUI/Evc;

    .line 35
    iput v1, p0, Lcom/ts/set/SetVolumeActivity;->nMvol:I

    .line 36
    iput v1, p0, Lcom/ts/set/SetVolumeActivity;->nBvol:I

    .line 37
    iput v1, p0, Lcom/ts/set/SetVolumeActivity;->nNvol:I

    .line 38
    iput v1, p0, Lcom/ts/set/SetVolumeActivity;->nRvol:I

    .line 39
    iput v1, p0, Lcom/ts/set/SetVolumeActivity;->nAvol:I

    .line 40
    iput v1, p0, Lcom/ts/set/SetVolumeActivity;->nSvol:I

    .line 23
    return-void
.end method

.method private initSetVolumeOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/ts/set/SetVolumeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->set_main_options:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v0, v2, v3

    .line 92
    .local v0, "name":Ljava/lang/String;
    new-instance v2, Lcom/ts/set/setview/SetMainItemTopName;

    invoke-direct {v2, p0, v0}, Lcom/ts/set/setview/SetMainItemTopName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SetVolumeActivity;->topname:Lcom/ts/set/setview/SetMainItemTopName;

    .line 93
    iget-object v2, p0, Lcom/ts/set/SetVolumeActivity;->topname:Lcom/ts/set/setview/SetMainItemTopName;

    iget-object v2, v2, Lcom/ts/set/setview/SetMainItemTopName;->iv:Landroid/widget/Button;

    new-instance v3, Lcom/ts/set/SetVolumeActivity$1;

    invoke-direct {v3, p0}, Lcom/ts/set/SetVolumeActivity$1;-><init>(Lcom/ts/set/SetVolumeActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v2, p0, Lcom/ts/set/SetVolumeActivity;->topname:Lcom/ts/set/setview/SetMainItemTopName;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetMainItemTopName;->GetView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x400

    const/16 v4, 0x4b

    invoke-static {v2, v3, v4}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;II)V

    .line 102
    invoke-virtual {p0}, Lcom/ts/set/SetVolumeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->set_volume_options:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/set/SetVolumeActivity;->setVolumeOptions:[Ljava/lang/String;

    .line 103
    const/4 v1, 0x0

    .local v1, "setOpt":I
    :goto_0
    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    .line 148
    return-void

    .line 106
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 103
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :pswitch_0
    new-instance v2, Lcom/ts/set/setview/SetItemProgressList;

    iget-object v3, p0, Lcom/ts/set/SetVolumeActivity;->setVolumeOptions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, p0, v3}, Lcom/ts/set/setview/SetItemProgressList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SetVolumeActivity;->NaviVolume:Lcom/ts/set/setview/SetItemProgressList;

    .line 110
    iget-object v2, p0, Lcom/ts/set/SetVolumeActivity;->NaviVolume:Lcom/ts/set/setview/SetItemProgressList;

    iget-object v3, p0, Lcom/ts/set/SetVolumeActivity;->mEvc:Lcom/ts/MainUI/Evc;

    iget v3, v3, Lcom/ts/MainUI/Evc;->Gis_vol_max:I

    invoke-virtual {v2, v5, v3}, Lcom/ts/set/setview/SetItemProgressList;->SetMinMax(II)V

    .line 111
    iget-object v2, p0, Lcom/ts/set/SetVolumeActivity;->NaviVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-virtual {v2, v1, p0}, Lcom/ts/set/setview/SetItemProgressList;->SetIdCallBack(ILandroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 112
    iget-object v2, p0, Lcom/ts/set/SetVolumeActivity;->NaviVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetItemProgressList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;)V

    goto :goto_1

    .line 115
    :pswitch_1
    new-instance v2, Lcom/ts/set/setview/SetItemProgressList;

    iget-object v3, p0, Lcom/ts/set/SetVolumeActivity;->setVolumeOptions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, p0, v3}, Lcom/ts/set/setview/SetItemProgressList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SetVolumeActivity;->MediaVolume:Lcom/ts/set/setview/SetItemProgressList;

    .line 116
    iget-object v2, p0, Lcom/ts/set/SetVolumeActivity;->MediaVolume:Lcom/ts/set/setview/SetItemProgressList;

    iget-object v3, p0, Lcom/ts/set/SetVolumeActivity;->mEvc:Lcom/ts/MainUI/Evc;

    iget v3, v3, Lcom/ts/MainUI/Evc;->volume_max:I

    invoke-virtual {v2, v5, v3}, Lcom/ts/set/setview/SetItemProgressList;->SetMinMax(II)V

    .line 117
    iget-object v2, p0, Lcom/ts/set/SetVolumeActivity;->MediaVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-virtual {v2, v1, p0}, Lcom/ts/set/setview/SetItemProgressList;->SetIdCallBack(ILandroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 118
    iget-object v2, p0, Lcom/ts/set/SetVolumeActivity;->MediaVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetItemProgressList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;)V

    goto :goto_1

    .line 121
    :pswitch_2
    new-instance v2, Lcom/ts/set/setview/SetItemProgressList;

    iget-object v3, p0, Lcom/ts/set/SetVolumeActivity;->setVolumeOptions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, p0, v3}, Lcom/ts/set/setview/SetItemProgressList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SetVolumeActivity;->BtVolume:Lcom/ts/set/setview/SetItemProgressList;

    .line 122
    iget-object v2, p0, Lcom/ts/set/SetVolumeActivity;->BtVolume:Lcom/ts/set/setview/SetItemProgressList;

    iget-object v3, p0, Lcom/ts/set/SetVolumeActivity;->mEvc:Lcom/ts/MainUI/Evc;

    iget v3, v3, Lcom/ts/MainUI/Evc;->Other_vol_max:I

    invoke-virtual {v2, v5, v3}, Lcom/ts/set/setview/SetItemProgressList;->SetMinMax(II)V

    .line 123
    iget-object v2, p0, Lcom/ts/set/SetVolumeActivity;->BtVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-virtual {v2, v1, p0}, Lcom/ts/set/setview/SetItemProgressList;->SetIdCallBack(ILandroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 124
    iget-object v2, p0, Lcom/ts/set/SetVolumeActivity;->BtVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetItemProgressList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;)V

    goto :goto_1

    .line 127
    :pswitch_3
    new-instance v2, Lcom/ts/set/setview/SetItemProgressList;

    iget-object v3, p0, Lcom/ts/set/SetVolumeActivity;->setVolumeOptions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, p0, v3}, Lcom/ts/set/setview/SetItemProgressList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SetVolumeActivity;->RingVolume:Lcom/ts/set/setview/SetItemProgressList;

    .line 128
    iget-object v2, p0, Lcom/ts/set/SetVolumeActivity;->RingVolume:Lcom/ts/set/setview/SetItemProgressList;

    iget-object v3, p0, Lcom/ts/set/SetVolumeActivity;->mEvc:Lcom/ts/MainUI/Evc;

    iget v3, v3, Lcom/ts/MainUI/Evc;->Ring_vol_max:I

    invoke-virtual {v2, v5, v3}, Lcom/ts/set/setview/SetItemProgressList;->SetMinMax(II)V

    .line 129
    iget-object v2, p0, Lcom/ts/set/SetVolumeActivity;->RingVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-virtual {v2, v1, p0}, Lcom/ts/set/setview/SetItemProgressList;->SetIdCallBack(ILandroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 130
    iget-object v2, p0, Lcom/ts/set/SetVolumeActivity;->RingVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetItemProgressList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 133
    :pswitch_4
    new-instance v2, Lcom/ts/set/setview/SetItemProgressList;

    iget-object v3, p0, Lcom/ts/set/SetVolumeActivity;->setVolumeOptions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, p0, v3}, Lcom/ts/set/setview/SetItemProgressList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SetVolumeActivity;->AlarmVolume:Lcom/ts/set/setview/SetItemProgressList;

    .line 134
    iget-object v2, p0, Lcom/ts/set/SetVolumeActivity;->AlarmVolume:Lcom/ts/set/setview/SetItemProgressList;

    iget-object v3, p0, Lcom/ts/set/SetVolumeActivity;->mEvc:Lcom/ts/MainUI/Evc;

    iget v3, v3, Lcom/ts/MainUI/Evc;->Alarm_vol_max:I

    invoke-virtual {v2, v5, v3}, Lcom/ts/set/setview/SetItemProgressList;->SetMinMax(II)V

    .line 135
    iget-object v2, p0, Lcom/ts/set/SetVolumeActivity;->AlarmVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-virtual {v2, v1, p0}, Lcom/ts/set/setview/SetItemProgressList;->SetIdCallBack(ILandroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 136
    iget-object v2, p0, Lcom/ts/set/SetVolumeActivity;->AlarmVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetItemProgressList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 139
    :pswitch_5
    new-instance v2, Lcom/ts/set/setview/SetItemProgressList;

    iget-object v3, p0, Lcom/ts/set/SetVolumeActivity;->setVolumeOptions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, p0, v3}, Lcom/ts/set/setview/SetItemProgressList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ts/set/SetVolumeActivity;->SystemVolume:Lcom/ts/set/setview/SetItemProgressList;

    .line 140
    iget-object v2, p0, Lcom/ts/set/SetVolumeActivity;->SystemVolume:Lcom/ts/set/setview/SetItemProgressList;

    iget-object v3, p0, Lcom/ts/set/SetVolumeActivity;->mEvc:Lcom/ts/MainUI/Evc;

    iget v3, v3, Lcom/ts/MainUI/Evc;->Sys_vol_max:I

    invoke-virtual {v2, v5, v3}, Lcom/ts/set/setview/SetItemProgressList;->SetMinMax(II)V

    .line 141
    iget-object v2, p0, Lcom/ts/set/SetVolumeActivity;->SystemVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-virtual {v2, v1, p0}, Lcom/ts/set/setview/SetItemProgressList;->SetIdCallBack(ILandroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 142
    iget-object v2, p0, Lcom/ts/set/SetVolumeActivity;->SystemVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-virtual {v2}, Lcom/ts/set/setview/SetItemProgressList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private isHaveOption(I)Z
    .locals 1
    .param p1, "setOption"    # I

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public UserAll()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 184
    iget v0, p0, Lcom/ts/set/SetVolumeActivity;->nMvol:I

    invoke-static {v2}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 186
    invoke-static {v2}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v0

    iput v0, p0, Lcom/ts/set/SetVolumeActivity;->nMvol:I

    .line 187
    iget-object v0, p0, Lcom/ts/set/SetVolumeActivity;->MediaVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-static {v2}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetItemProgressList;->SetCurVal(I)V

    .line 189
    :cond_0
    iget v0, p0, Lcom/ts/set/SetVolumeActivity;->nNvol:I

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetNvol()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 191
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetNvol()I

    move-result v0

    iput v0, p0, Lcom/ts/set/SetVolumeActivity;->nNvol:I

    .line 192
    iget-object v0, p0, Lcom/ts/set/SetVolumeActivity;->NaviVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetNvol()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetItemProgressList;->SetCurVal(I)V

    .line 194
    :cond_1
    iget v0, p0, Lcom/ts/set/SetVolumeActivity;->nBvol:I

    invoke-static {v3}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 196
    invoke-static {v3}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v0

    iput v0, p0, Lcom/ts/set/SetVolumeActivity;->nBvol:I

    .line 197
    iget-object v0, p0, Lcom/ts/set/SetVolumeActivity;->BtVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-static {v3}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetItemProgressList;->SetCurVal(I)V

    .line 199
    :cond_2
    iget v0, p0, Lcom/ts/set/SetVolumeActivity;->nRvol:I

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetRvol()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 201
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetRvol()I

    move-result v0

    iput v0, p0, Lcom/ts/set/SetVolumeActivity;->nRvol:I

    .line 202
    iget-object v0, p0, Lcom/ts/set/SetVolumeActivity;->RingVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetRvol()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetItemProgressList;->SetCurVal(I)V

    .line 204
    :cond_3
    iget v0, p0, Lcom/ts/set/SetVolumeActivity;->nAvol:I

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetAvol()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 206
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetAvol()I

    move-result v0

    iput v0, p0, Lcom/ts/set/SetVolumeActivity;->nAvol:I

    .line 207
    iget-object v0, p0, Lcom/ts/set/SetVolumeActivity;->AlarmVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetAvol()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetItemProgressList;->SetCurVal(I)V

    .line 209
    :cond_4
    iget v0, p0, Lcom/ts/set/SetVolumeActivity;->nSvol:I

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetSvol()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 211
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetSvol()I

    move-result v0

    iput v0, p0, Lcom/ts/set/SetVolumeActivity;->nSvol:I

    .line 212
    iget-object v0, p0, Lcom/ts/set/SetVolumeActivity;->SystemVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetSvol()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetItemProgressList;->SetCurVal(I)V

    .line 215
    :cond_5
    return-void
.end method

.method public onChanged(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 152
    packed-switch p1, :pswitch_data_0

    .line 180
    :goto_0
    return-void

    .line 155
    :pswitch_0
    iget-object v0, p0, Lcom/ts/set/SetVolumeActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v0, p2}, Lcom/ts/MainUI/Evc;->evol_mediavol_set(I)V

    .line 156
    iget-object v0, p0, Lcom/ts/set/SetVolumeActivity;->MediaVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-virtual {v0, p2}, Lcom/ts/set/setview/SetItemProgressList;->SetCurVal(I)V

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v0, p0, Lcom/ts/set/SetVolumeActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v0, p2}, Lcom/ts/MainUI/Evc;->evol_navivol_set(I)V

    .line 160
    iget-object v0, p0, Lcom/ts/set/SetVolumeActivity;->NaviVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-virtual {v0, p2}, Lcom/ts/set/setview/SetItemProgressList;->SetCurVal(I)V

    goto :goto_0

    .line 163
    :pswitch_2
    iget-object v0, p0, Lcom/ts/set/SetVolumeActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v0, p2}, Lcom/ts/MainUI/Evc;->evol_btvol_set(I)V

    .line 164
    iget-object v0, p0, Lcom/ts/set/SetVolumeActivity;->BtVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-virtual {v0, p2}, Lcom/ts/set/setview/SetItemProgressList;->SetCurVal(I)V

    goto :goto_0

    .line 167
    :pswitch_3
    iget-object v0, p0, Lcom/ts/set/SetVolumeActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v0, p2}, Lcom/ts/MainUI/Evc;->evol_ringvol_set(I)V

    .line 168
    iget-object v0, p0, Lcom/ts/set/SetVolumeActivity;->RingVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-virtual {v0, p2}, Lcom/ts/set/setview/SetItemProgressList;->SetCurVal(I)V

    goto :goto_0

    .line 171
    :pswitch_4
    iget-object v0, p0, Lcom/ts/set/SetVolumeActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v0, p2}, Lcom/ts/MainUI/Evc;->evol_Alarmvol_set(I)V

    .line 172
    iget-object v0, p0, Lcom/ts/set/SetVolumeActivity;->AlarmVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-virtual {v0, p2}, Lcom/ts/set/setview/SetItemProgressList;->SetCurVal(I)V

    goto :goto_0

    .line 175
    :pswitch_5
    iget-object v0, p0, Lcom/ts/set/SetVolumeActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v0, p2}, Lcom/ts/MainUI/Evc;->evol_systemvol_set(I)V

    .line 176
    iget-object v0, p0, Lcom/ts/set/SetVolumeActivity;->SystemVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-virtual {v0, p2}, Lcom/ts/set/setview/SetItemProgressList;->SetCurVal(I)V

    goto :goto_0

    .line 152
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

    .line 45
    invoke-static {p0}, Lcom/ts/set/setview/UISetSroView;->Inint(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0}, Lcom/ts/set/SetVolumeActivity;->initSetVolumeOptions()V

    .line 47
    invoke-static {p0}, Lcom/ts/set/setview/UISetSroView;->Show(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 79
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 223
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 224
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 252
    :goto_0
    return-void

    .line 227
    :pswitch_0
    iget-object v1, p0, Lcom/ts/set/SetVolumeActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v1, p2}, Lcom/ts/MainUI/Evc;->evol_mediavol_set(I)V

    .line 228
    iget-object v1, p0, Lcom/ts/set/SetVolumeActivity;->MediaVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-virtual {v1, p2}, Lcom/ts/set/setview/SetItemProgressList;->SetCurVal(I)V

    goto :goto_0

    .line 231
    :pswitch_1
    iget-object v1, p0, Lcom/ts/set/SetVolumeActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v1, p2}, Lcom/ts/MainUI/Evc;->evol_navivol_set(I)V

    .line 232
    iget-object v1, p0, Lcom/ts/set/SetVolumeActivity;->NaviVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-virtual {v1, p2}, Lcom/ts/set/setview/SetItemProgressList;->SetCurVal(I)V

    goto :goto_0

    .line 235
    :pswitch_2
    iget-object v1, p0, Lcom/ts/set/SetVolumeActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v1, p2}, Lcom/ts/MainUI/Evc;->evol_btvol_set(I)V

    .line 236
    iget-object v1, p0, Lcom/ts/set/SetVolumeActivity;->BtVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-virtual {v1, p2}, Lcom/ts/set/setview/SetItemProgressList;->SetCurVal(I)V

    goto :goto_0

    .line 239
    :pswitch_3
    iget-object v1, p0, Lcom/ts/set/SetVolumeActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v1, p2}, Lcom/ts/MainUI/Evc;->evol_ringvol_set(I)V

    .line 240
    iget-object v1, p0, Lcom/ts/set/SetVolumeActivity;->RingVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-virtual {v1, p2}, Lcom/ts/set/setview/SetItemProgressList;->SetCurVal(I)V

    goto :goto_0

    .line 243
    :pswitch_4
    iget-object v1, p0, Lcom/ts/set/SetVolumeActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v1, p2}, Lcom/ts/MainUI/Evc;->evol_Alarmvol_set(I)V

    .line 244
    iget-object v1, p0, Lcom/ts/set/SetVolumeActivity;->AlarmVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-virtual {v1, p2}, Lcom/ts/set/setview/SetItemProgressList;->SetCurVal(I)V

    goto :goto_0

    .line 247
    :pswitch_5
    iget-object v1, p0, Lcom/ts/set/SetVolumeActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v1, p2}, Lcom/ts/MainUI/Evc;->evol_systemvol_set(I)V

    .line 248
    iget-object v1, p0, Lcom/ts/set/SetVolumeActivity;->SystemVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-virtual {v1, p2}, Lcom/ts/set/setview/SetItemProgressList;->SetCurVal(I)V

    goto :goto_0

    .line 224
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

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/MainUI/Evc;->ChechNaviStream()V

    .line 56
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 57
    invoke-static {v3}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v0

    iput v0, p0, Lcom/ts/set/SetVolumeActivity;->nMvol:I

    .line 58
    invoke-static {v4}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v0

    iput v0, p0, Lcom/ts/set/SetVolumeActivity;->nBvol:I

    .line 59
    const-string v0, "SetVolumeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Iop.GetVolume(0)=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v0, "SetVolumeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Iop.GetVolume(1)=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/ts/set/SetVolumeActivity;->MediaVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-static {v3}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetItemProgressList;->SetCurVal(I)V

    .line 62
    iget-object v0, p0, Lcom/ts/set/SetVolumeActivity;->BtVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-static {v4}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetItemProgressList;->SetCurVal(I)V

    .line 63
    iget-object v0, p0, Lcom/ts/set/SetVolumeActivity;->RingVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetRvol()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetItemProgressList;->SetCurVal(I)V

    .line 64
    iget-object v0, p0, Lcom/ts/set/SetVolumeActivity;->AlarmVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetAvol()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetItemProgressList;->SetCurVal(I)V

    .line 65
    iget-object v0, p0, Lcom/ts/set/SetVolumeActivity;->SystemVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetSvol()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetItemProgressList;->SetCurVal(I)V

    .line 66
    iget-object v0, p0, Lcom/ts/set/SetVolumeActivity;->NaviVolume:Lcom/ts/set/setview/SetItemProgressList;

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetNvol()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetItemProgressList;->SetCurVal(I)V

    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 68
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 260
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 268
    return-void
.end method
