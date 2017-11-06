.class public Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanDtT60CarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;


# static fields
.field public static final ITEM_BCLDSJ:I = 0x2

.field public static final ITEM_BWHJ:I = 0x1

.field public static final ITEM_CLSSFK:I = 0x6

.field public static final ITEM_FSET:I = 0x7

.field private static final ITEM_MAX:I = 0x7

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_XCFK:I = 0x3

.field public static final ITEM_XCZDLS:I = 0x4

.field public static final ITEM_XHZDLS:I = 0x5

.field public static final TAG:Ljava/lang/String; = "CanDtT60CarInfoActivity"

.field private static final mBcldsjArrays:[I

.field private static final mClssfkArrays:[I

.field private static final mXcfkArrays:[I


# instance fields
.field protected mItemBcldsj:Lcom/ts/canview/CanItemPopupList;

.field private mItemBwhj:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemClssfk:Lcom/ts/canview/CanItemPopupList;

.field protected mItemFactory:Lcom/ts/canview/CanItemTextBtnList;

.field protected mItemXcfk:Lcom/ts/canview/CanItemPopupList;

.field protected mItemXczdls:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemXhzdls:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-array v0, v5, [I

    .line 56
    sget v1, Lcom/ts/MainUI/R$string;->can_30s:I

    aput v1, v0, v2

    .line 57
    sget v1, Lcom/ts/MainUI/R$string;->can_60s:I

    aput v1, v0, v3

    .line 58
    sget v1, Lcom/ts/MainUI/R$string;->can_90s:I

    aput v1, v0, v4

    .line 55
    sput-object v0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mBcldsjArrays:[I

    .line 61
    new-array v0, v4, [I

    .line 62
    sget v1, Lcom/ts/MainUI/R$string;->can_shand:I

    aput v1, v0, v2

    .line 63
    sget v1, Lcom/ts/MainUI/R$string;->can_sdmd:I

    aput v1, v0, v3

    .line 61
    sput-object v0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mXcfkArrays:[I

    .line 66
    new-array v0, v5, [I

    .line 67
    sget v1, Lcom/ts/MainUI/R$string;->can_sdmd:I

    aput v1, v0, v2

    .line 68
    sget v1, Lcom/ts/MainUI/R$string;->can_shand:I

    aput v1, v0, v3

    .line 69
    sget v1, Lcom/ts/MainUI/R$string;->can_mingd:I

    aput v1, v0, v4

    .line 66
    sput-object v0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mClssfkArrays:[I

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 53
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;-><init>()V

    iput-object v0, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;

    .line 22
    return-void
.end method

.method private AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "id"    # I

    .prologue
    .line 274
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 275
    .local v0, "btn":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 276
    iget-object v1, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 278
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 279
    return-object v0
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 255
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 256
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 257
    iget-object v1, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 258
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 259
    return-object v0
.end method

.method protected AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;
    .locals 3
    .param p1, "ico"    # I
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 265
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    invoke-direct {v0, p0, p1, p2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    .line 266
    .local v0, "item":Lcom/ts/canview/CanItemIcoList;
    invoke-virtual {v0, p0, p3}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 267
    iget-object v1, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 268
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    .line 269
    return-object v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    .line 150
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 152
    sget v0, Lcom/ts/MainUI/R$string;->can_bwhj:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mItemBwhj:Lcom/ts/canview/CanItemSwitchList;

    .line 153
    sget v0, Lcom/ts/MainUI/R$string;->can_tigger7_auto_lock:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mItemXczdls:Lcom/ts/canview/CanItemSwitchList;

    .line 154
    sget v0, Lcom/ts/MainUI/R$string;->can_kaiyi_3x_xhjs:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mItemXhzdls:Lcom/ts/canview/CanItemSwitchList;

    .line 156
    iget-object v0, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_bcldsj:I

    sget-object v2, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mBcldsjArrays:[I

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mItemBcldsj:Lcom/ts/canview/CanItemPopupList;

    .line 157
    iget-object v0, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_xcfk:I

    sget-object v2, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mXcfkArrays:[I

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mItemXcfk:Lcom/ts/canview/CanItemPopupList;

    .line 158
    iget-object v0, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_clssfk:I

    sget-object v2, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mClssfkArrays:[I

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mItemClssfk:Lcom/ts/canview/CanItemPopupList;

    .line 160
    sget v0, Lcom/ts/MainUI/R$string;->can_factory_set:I

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mItemFactory:Lcom/ts/canview/CanItemTextBtnList;

    .line 161
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 209
    :goto_0
    invoke-static {v0}, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 179
    :pswitch_0
    const/4 v0, 0x1

    .line 180
    goto :goto_0

    .line 183
    :pswitch_1
    const/4 v0, 0x1

    .line 184
    goto :goto_0

    .line 187
    :pswitch_2
    const/4 v0, 0x1

    .line 188
    goto :goto_0

    .line 191
    :pswitch_3
    const/4 v0, 0x1

    .line 192
    goto :goto_0

    .line 195
    :pswitch_4
    const/4 v0, 0x1

    .line 196
    goto :goto_0

    .line 199
    :pswitch_5
    const/4 v0, 0x1

    .line 200
    goto :goto_0

    .line 203
    :pswitch_6
    const/4 v0, 0x1

    .line 204
    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 167
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 171
    return-void

    .line 169
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->ShowItem(I)V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected NegSwSet(I)I
    .locals 1
    .param p1, "val"    # I

    .prologue
    const/4 v0, 0x1

    .line 96
    if-ne v0, p1, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 101
    :cond_0
    return v0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 126
    const/16 v0, 0x43

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->DtT60Query(II)V

    .line 127
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->DtT60GetCarData(Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;)V

    .line 107
    iget-object v0, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;->Update:I

    invoke-static {v0}, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;->Update:I

    .line 112
    iget-object v0, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mItemXhzdls:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;->Xhzdjs:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 113
    iget-object v0, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mItemBwhj:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;->Bwhj:I

    invoke-virtual {p0, v1}, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->SwSet(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 114
    iget-object v0, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mItemXczdls:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;->Xczdls:I

    invoke-virtual {p0, v1}, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->SwSet(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 116
    iget-object v0, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mItemBcldsj:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;->Bcldsj:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 117
    iget-object v0, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mItemXcfk:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;->Xcfk:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 118
    iget-object v0, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mItemClssfk:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;->Clssfk:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 122
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 217
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 251
    :goto_0
    return-void

    .line 221
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mItemBwhj:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 225
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mItemBcldsj:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 229
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mItemXcfk:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 233
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mItemXczdls:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 237
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mItemXhzdls:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 241
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mItemClssfk:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 245
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mItemFactory:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected SwSet(I)I
    .locals 1
    .param p1, "val"    # I

    .prologue
    const/4 v0, 0x1

    .line 86
    if-ne v0, p1, :cond_0

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->ResetData(Z)V

    .line 319
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 288
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 310
    :goto_0
    :pswitch_0
    return-void

    .line 292
    :pswitch_1
    iget-object v2, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;->Bwhj:I

    invoke-virtual {p0, v2}, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->NegSwSet(I)I

    move-result v2

    invoke-static {v3, v3, v2}, Lcom/lgb/canmodule/CanJni;->DtT60CarSet(III)V

    goto :goto_0

    .line 296
    :pswitch_2
    iget-object v2, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;->Xczdls:I

    invoke-virtual {p0, v2}, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->NegSwSet(I)I

    move-result v2

    invoke-static {v4, v3, v2}, Lcom/lgb/canmodule/CanJni;->DtT60CarSet(III)V

    goto :goto_0

    .line 300
    :pswitch_3
    iget-object v2, p0, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;->Xhzdjs:I

    invoke-virtual {p0, v2}, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->NegSwSet(I)I

    move-result v2

    invoke-static {v4, v4, v2}, Lcom/lgb/canmodule/CanJni;->DtT60CarSet(III)V

    goto :goto_0

    .line 304
    :pswitch_4
    new-instance v1, Lcom/ts/canview/CanItemMsgBox;

    const/4 v2, 0x7

    sget v3, Lcom/ts/MainUI/R$string;->can_sure_setup:I

    invoke-direct {v1, v2, p0, v3, p0}, Lcom/ts/canview/CanItemMsgBox;-><init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V

    .line 305
    .local v1, "msgbox":Lcom/ts/canview/CanItemMsgBox;
    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->setContentView(I)V

    .line 79
    invoke-virtual {p0}, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->InitUI()V

    .line 80
    return-void
.end method

.method public onItem(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 325
    packed-switch p1, :pswitch_data_0

    .line 339
    :goto_0
    :pswitch_0
    return-void

    .line 328
    :pswitch_1
    invoke-static {v0, v1, p2}, Lcom/lgb/canmodule/CanJni;->DtT60CarSet(III)V

    goto :goto_0

    .line 332
    :pswitch_2
    invoke-static {v0, v2, p2}, Lcom/lgb/canmodule/CanJni;->DtT60CarSet(III)V

    goto :goto_0

    .line 336
    :pswitch_3
    invoke-static {v1, v2, p2}, Lcom/lgb/canmodule/CanJni;->DtT60CarSet(III)V

    goto :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onOK(I)V
    .locals 3
    .param p1, "param"    # I

    .prologue
    .line 346
    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lgb/canmodule/CanJni;->DtT60CarSet(III)V

    .line 347
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 144
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 145
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 146
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 133
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 134
    invoke-virtual {p0}, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->LayoutUI()V

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->ResetData(Z)V

    .line 136
    invoke-virtual {p0}, Lcom/ts/can/saic/dt/CanDtT60CarInfoActivity;->QueryData()V

    .line 138
    return-void
.end method
