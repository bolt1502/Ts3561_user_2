.class public Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;
.super Lcom/ts/canview/CanScrollBaseActivity;
.source "CanOldFiestaSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field protected static final ITEM_HJD:I = 0x6

.field protected static final ITEM_INFO:I = 0x5

.field protected static final ITEM_LCDW:I = 0x2

.field protected static final ITEM_MAX:I = 0x6

.field protected static final ITEM_MIN:I = 0x2

.field protected static final ITEM_WARN:I = 0x4

.field protected static final ITEM_ZXD:I = 0x3

.field public static final TAG:Ljava/lang/String; = "CanOldFiestaSetActivity"

.field protected static final mHjdArr:[I

.field protected static final mInfoArr:[I

.field protected static final mLcdwArr:[I

.field protected static final mWarnArr:[I

.field protected static final mZxdArr:[I


# instance fields
.field protected mItemHjd:Lcom/ts/canview/CanItemPopupList;

.field protected mItemInfo:Lcom/ts/canview/CanItemPopupList;

.field protected mItemLcdw:Lcom/ts/canview/CanItemPopupList;

.field protected mItemWarn:Lcom/ts/canview/CanItemPopupList;

.field protected mItemZxd:Lcom/ts/canview/CanItemPopupList;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$FiestaSet;

.field protected mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-array v0, v2, [I

    .line 33
    sput-object v0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mLcdwArr:[I

    .line 39
    new-array v0, v2, [I

    .line 38
    sput-object v0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mZxdArr:[I

    .line 44
    new-array v0, v4, [I

    .line 45
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    .line 46
    sget v1, Lcom/ts/MainUI/R$string;->can_on:I

    aput v1, v0, v3

    .line 43
    sput-object v0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mWarnArr:[I

    .line 50
    new-array v0, v4, [I

    .line 51
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    .line 52
    sget v1, Lcom/ts/MainUI/R$string;->can_on:I

    aput v1, v0, v3

    .line 49
    sput-object v0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mInfoArr:[I

    .line 56
    new-array v0, v4, [I

    .line 57
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    .line 58
    sget v1, Lcom/ts/MainUI/R$string;->can_on:I

    aput v1, v0, v3

    .line 55
    sput-object v0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mHjdArr:[I

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/canview/CanScrollBaseActivity;-><init>()V

    .line 71
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$FiestaSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$FiestaSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FiestaSet;

    .line 18
    return-void
.end method


# virtual methods
.method protected CarSet(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 290
    invoke-static {p1, p2}, Lcom/lgb/canmodule/CanJni;->OldFiestaCarSet(II)V

    .line 291
    return-void
.end method

.method protected InitUI()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$array;->can_fist_l_c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p0, v3, v1, v4}, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->AddPopup(Lcom/ts/canview/CanItemPopupList$onPopItemClick;I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mItemLcdw:Lcom/ts/canview/CanItemPopupList;

    .line 85
    invoke-virtual {p0}, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$array;->can_fist_zxd:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p0, v3, v1, v5}, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->AddPopup(Lcom/ts/canview/CanItemPopupList$onPopItemClick;I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mItemZxd:Lcom/ts/canview/CanItemPopupList;

    .line 86
    sget-object v1, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mWarnArr:[I

    invoke-virtual {p0, p0, v3, v1, v6}, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->AddPopup(Lcom/ts/canview/CanItemPopupList$onPopItemClick;I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mItemWarn:Lcom/ts/canview/CanItemPopupList;

    .line 87
    sget-object v1, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mInfoArr:[I

    const/4 v2, 0x5

    invoke-virtual {p0, p0, v3, v1, v2}, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->AddPopup(Lcom/ts/canview/CanItemPopupList$onPopItemClick;I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mItemInfo:Lcom/ts/canview/CanItemPopupList;

    .line 88
    sget-object v1, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mHjdArr:[I

    const/4 v2, 0x6

    invoke-virtual {p0, p0, v3, v1, v2}, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->AddPopup(Lcom/ts/canview/CanItemPopupList$onPopItemClick;I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mItemHjd:Lcom/ts/canview/CanItemPopupList;

    .line 90
    invoke-virtual {p0}, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->LayoutUI()V

    .line 92
    invoke-virtual {p0}, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$array;->can_fist_set_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "strArry":[Ljava/lang/String;
    iget-object v1, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mItemLcdw:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetBtn()Landroid/widget/Button;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mItemZxd:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetBtn()Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mItemWarn:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetBtn()Landroid/widget/Button;

    move-result-object v1

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mItemInfo:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetBtn()Landroid/widget/Button;

    move-result-object v1

    aget-object v2, v0, v5

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mItemHjd:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetBtn()Landroid/widget/Button;

    move-result-object v1

    aget-object v2, v0, v6

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 159
    const/4 v0, 0x1

    .line 160
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 185
    :goto_0
    const/4 v0, 0x1

    .line 186
    invoke-static {v0}, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 163
    :pswitch_0
    const/4 v0, 0x0

    .line 164
    goto :goto_0

    .line 167
    :pswitch_1
    const/4 v0, 0x0

    .line 168
    goto :goto_0

    .line 171
    :pswitch_2
    const/4 v0, 0x0

    .line 172
    goto :goto_0

    .line 175
    :pswitch_3
    const/4 v0, 0x0

    .line 176
    goto :goto_0

    .line 179
    :pswitch_4
    const/4 v0, 0x0

    .line 180
    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 151
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 155
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->ShowItem(I)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FiestaSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->OldFiestaGetSetData(Lcom/lgb/canmodule/CanDataInfo$FiestaSet;)V

    .line 105
    iget-object v0, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FiestaSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FiestaSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FiestaSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FiestaSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FiestaSet;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$FiestaSet;->Update:I

    .line 110
    iget-object v0, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mItemLcdw:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FiestaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FiestaSet;->ubLCDW:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 111
    iget-object v0, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mItemZxd:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FiestaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FiestaSet;->ubZXD:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 112
    iget-object v0, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mItemWarn:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FiestaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FiestaSet;->fgWarn:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 113
    iget-object v0, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mItemInfo:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FiestaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FiestaSet;->fgInfo:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 114
    iget-object v0, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mItemHjd:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FiestaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FiestaSet;->fgHJD:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 118
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->IsHaveItem(I)Z

    move-result v0

    .line 194
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 197
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mItemLcdw:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 201
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mItemZxd:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 205
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mItemWarn:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 209
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mItemInfo:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 213
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->mItemHjd:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->ResetData(Z)V

    .line 228
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 281
    .line 286
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 241
    .local v0, "item":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/ts/canview/CanScrollBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->InitUI()V

    .line 80
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 250
    packed-switch p1, :pswitch_data_0

    .line 275
    :goto_0
    return-void

    .line 253
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->CarSet(II)V

    goto :goto_0

    .line 257
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->CarSet(II)V

    goto :goto_0

    .line 261
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->CarSet(II)V

    goto :goto_0

    .line 265
    :pswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->CarSet(II)V

    goto :goto_0

    .line 269
    :pswitch_4
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->CarSet(II)V

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 142
    invoke-super {p0}, Lcom/ts/canview/CanScrollBaseActivity;->onPause()V

    .line 144
    const-string v0, "CanOldFiestaSetActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Lcom/ts/canview/CanScrollBaseActivity;->onResume()V

    .line 129
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->ResetData(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;->QueryData()V

    .line 133
    const-string v0, "CanOldFiestaSetActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method
