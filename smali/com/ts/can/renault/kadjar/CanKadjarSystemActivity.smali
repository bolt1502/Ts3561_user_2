.class public Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;
.super Lcom/ts/canview/CanScrollBaseActivity;
.source "CanKadjarSystemActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field protected static final ITEM_LANG:I = 0x1

.field protected static final ITEM_MAX:I = 0x4

.field protected static final ITEM_MIN:I = 0x1

.field protected static final ITEM_YBYS:I = 0x3

.field protected static final ITEM_YB_COLOR:I = 0x2

.field protected static final ITEM_YJLD:I = 0x4

.field public static final TAG:Ljava/lang/String; = "CanKadjarSystemActivity"

.field protected static final mLangArr:[I

.field protected static final mYbColorArr:[Ljava/lang/String;

.field protected static final mYbysArr:[Ljava/lang/String;


# instance fields
.field protected mItemLang:Lcom/ts/canview/CanItemPopupList;

.field protected mItemYbColor:Lcom/ts/canview/CanItemPopupList;

.field protected mItemYbys:Lcom/ts/canview/CanItemPopupList;

.field protected mItemYjld:Lcom/ts/canview/CanItemProgressList;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

.field protected mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-array v0, v5, [I

    .line 35
    sget v1, Lcom/ts/MainUI/R$string;->lang_cn:I

    aput v1, v0, v2

    .line 36
    sget v1, Lcom/ts/MainUI/R$string;->lang_en_us:I

    aput v1, v0, v3

    .line 37
    sget v1, Lcom/ts/MainUI/R$string;->can_yb_msg:I

    aput v1, v0, v4

    .line 33
    sput-object v0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mLangArr:[I

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 42
    const-string v1, "\u7eff\u8272"

    aput-object v1, v0, v2

    .line 43
    const-string v1, "\u7ea2\u8272"

    aput-object v1, v0, v3

    .line 44
    const-string v1, "\u84dd\u8272"

    aput-object v1, v0, v4

    .line 45
    const-string v1, "\u7d2b\u8272"

    aput-object v1, v0, v5

    .line 46
    const-string v1, "\u6a59\u8272"

    aput-object v1, v0, v6

    .line 40
    sput-object v0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mYbColorArr:[Ljava/lang/String;

    .line 50
    new-array v0, v6, [Ljava/lang/String;

    .line 51
    const-string v1, "1"

    aput-object v1, v0, v2

    .line 52
    const-string v1, "2"

    aput-object v1, v0, v3

    .line 53
    const-string v1, "3"

    aput-object v1, v0, v4

    .line 54
    const-string v1, "4"

    aput-object v1, v0, v5

    .line 49
    sput-object v0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mYbysArr:[Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ts/canview/CanScrollBaseActivity;-><init>()V

    .line 67
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    .line 19
    return-void
.end method


# virtual methods
.method protected CarSet(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 269
    return-void
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 79
    sget v0, Lcom/ts/MainUI/R$string;->can_language:I

    sget-object v1, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mLangArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->AddPopup(Lcom/ts/canview/CanItemPopupList$onPopItemClick;I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    .line 80
    sget v0, Lcom/ts/MainUI/R$string;->can_yb_color:I

    sget-object v1, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mYbColorArr:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->AddPopup(Lcom/ts/canview/CanItemPopupList$onPopItemClick;I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mItemYbColor:Lcom/ts/canview/CanItemPopupList;

    .line 81
    sget v0, Lcom/ts/MainUI/R$string;->can_ybxsys:I

    sget-object v1, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mYbysArr:[Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->AddPopup(Lcom/ts/canview/CanItemPopupList$onPopItemClick;I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mItemYbys:Lcom/ts/canview/CanItemPopupList;

    .line 82
    sget v0, Lcom/ts/MainUI/R$string;->can_ybyjld:I

    const/4 v1, 0x4

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->AddProgress(Lcom/ts/canview/CanItemProgressList$onPosChange;II)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mItemYjld:Lcom/ts/canview/CanItemProgressList;

    .line 84
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mItemYjld:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 85
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mItemYjld:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    .line 87
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->LayoutUI()V

    .line 88
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 149
    const/4 v0, 0x1

    .line 150
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 171
    :goto_0
    const/4 v0, 0x1

    .line 172
    invoke-static {v0}, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 153
    :pswitch_0
    const/4 v0, 0x0

    .line 154
    goto :goto_0

    .line 157
    :pswitch_1
    const/4 v0, 0x0

    .line 158
    goto :goto_0

    .line 161
    :pswitch_2
    const/4 v0, 0x0

    .line 162
    goto :goto_0

    .line 165
    :pswitch_3
    const/4 v0, 0x0

    .line 166
    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 141
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 145
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->ShowItem(I)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->KadjarGetCarSet(Lcom/lgb/canmodule/CanDataInfo$KadjarSet;)V

    .line 94
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Update:I

    .line 99
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Ybys:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Ybys:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mItemYbys:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Ybys:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mItemYjld:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Yjld:I

    div-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 105
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mItemYjld:Lcom/ts/canview/CanItemProgressList;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Yjld:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 108
    :cond_2
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->IsHaveItem(I)Z

    move-result v0

    .line 180
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 201
    :goto_0
    return-void

    .line 183
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mItemYbColor:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 191
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mItemYbys:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 195
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->mItemYjld:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->ResetData(Z)V

    .line 210
    return-void
.end method

.method public onChanged(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 255
    packed-switch p1, :pswitch_data_0

    .line 264
    :goto_0
    return-void

    .line 258
    :pswitch_0
    const/16 v0, 0xf

    mul-int/lit8 v1, p2, 0x5

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->KadjarCarSet(II)V

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 223
    .local v0, "item":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/ts/canview/CanScrollBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->InitUI()V

    .line 75
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 232
    packed-switch p1, :pswitch_data_0

    .line 249
    .end local p2    # "item":I
    :goto_0
    return-void

    .line 235
    .restart local p2    # "item":I
    :pswitch_0
    const/16 v0, 0xd

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    const/16 p2, 0x81

    .end local p2    # "item":I
    :cond_0
    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->KadjarCarSet(II)V

    goto :goto_0

    .line 239
    .restart local p2    # "item":I
    :pswitch_1
    const/16 v0, 0x10

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->KadjarCarSet(II)V

    goto :goto_0

    .line 243
    :pswitch_2
    const/16 v0, 0xe

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->KadjarCarSet(II)V

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 132
    invoke-super {p0}, Lcom/ts/canview/CanScrollBaseActivity;->onPause()V

    .line 134
    const-string v0, "CanKadjarSystemActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/ts/canview/CanScrollBaseActivity;->onResume()V

    .line 119
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->ResetData(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;->QueryData()V

    .line 123
    const-string v0, "CanKadjarSystemActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method
