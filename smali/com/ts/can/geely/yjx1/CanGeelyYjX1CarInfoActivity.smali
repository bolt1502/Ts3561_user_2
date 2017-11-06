.class public Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanGeelyYjX1CarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_BSHZDXMWZD:I = 0x5

.field public static final ITEM_KMZXDSXTS:I = 0x3

.field private static final ITEM_MAX:I = 0x5

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_SPEED_LOCK:I = 0x1

.field public static final ITEM_STOP_UNLOK:I = 0x2

.field public static final ITEM_YKLSFK:I = 0x4

.field public static final TAG:Ljava/lang/String; = "CanGeelyYjX1CarInfoActivity"


# instance fields
.field protected mItemBshzdxmwzd:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemKmzxdsxts:Lcom/ts/canview/CanItemSwitchList;

.field private mItemSpeedLock:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemStopUnlok:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemYklsfk:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 42
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;

    .line 18
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 205
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 206
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 207
    iget-object v1, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 208
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 209
    return-object v0
.end method

.method protected AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;
    .locals 3
    .param p1, "ico"    # I
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 215
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    invoke-direct {v0, p0, p1, p2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    .line 216
    .local v0, "item":Lcom/ts/canview/CanItemIcoList;
    invoke-virtual {v0, p0, p3}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 217
    iget-object v1, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 218
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    .line 219
    return-object v0
.end method

.method protected InitUI()V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 122
    sget v0, Lcom/ts/MainUI/R$string;->can_speed_lock:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mItemSpeedLock:Lcom/ts/canview/CanItemSwitchList;

    .line 123
    sget v0, Lcom/ts/MainUI/R$string;->can_stop_unlock:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mItemStopUnlok:Lcom/ts/canview/CanItemSwitchList;

    .line 124
    sget v0, Lcom/ts/MainUI/R$string;->can_kmzxdssts:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mItemKmzxdsxts:Lcom/ts/canview/CanItemSwitchList;

    .line 125
    sget v0, Lcom/ts/MainUI/R$string;->can_yklsts:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mItemYklsfk:Lcom/ts/canview/CanItemSwitchList;

    .line 126
    sget v0, Lcom/ts/MainUI/R$string;->can_geely_boy_zdxmwzdzt:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mItemBshzdxmwzd:Lcom/ts/canview/CanItemSwitchList;

    .line 128
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 168
    :goto_0
    invoke-static {v0}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 146
    :pswitch_0
    const/4 v0, 0x1

    .line 147
    goto :goto_0

    .line 150
    :pswitch_1
    const/4 v0, 0x1

    .line 151
    goto :goto_0

    .line 154
    :pswitch_2
    const/4 v0, 0x1

    .line 155
    goto :goto_0

    .line 158
    :pswitch_3
    const/4 v0, 0x1

    .line 159
    goto :goto_0

    .line 162
    :pswitch_4
    const/4 v0, 0x1

    .line 163
    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
    .line 134
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 138
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->ShowItem(I)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected NegSwSet(I)I
    .locals 1
    .param p1, "val"    # I

    .prologue
    const/4 v0, 0x1

    .line 68
    if-ne v0, p1, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 73
    :cond_0
    return v0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 96
    const/16 v0, 0x50

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GeelyCarQuery(II)V

    .line 97
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GeelyGetCarSet(Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;)V

    .line 79
    iget-object v0, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;->Update:I

    .line 84
    iget-object v0, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mItemSpeedLock:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;->Csszgn:I

    invoke-virtual {p0, v1}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->SwSet(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 85
    iget-object v0, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mItemStopUnlok:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;->Tcjs:I

    invoke-virtual {p0, v1}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->SwSet(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 86
    iget-object v0, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mItemKmzxdsxts:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;->Kmzxdssts:I

    invoke-virtual {p0, v1}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->SwSet(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 87
    iget-object v0, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mItemYklsfk:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;->Yklsfk:I

    invoke-virtual {p0, v1}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->SwSet(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 88
    iget-object v0, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mItemBshzdxmwzd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;->Bshzdxmwzd:I

    invoke-virtual {p0, v1}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->SwSet(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 92
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 176
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 201
    :goto_0
    return-void

    .line 179
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mItemSpeedLock:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 183
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mItemStopUnlok:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 187
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mItemKmzxdsxts:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 191
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mItemYklsfk:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 195
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mItemBshzdxmwzd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected SwSet(I)I
    .locals 1
    .param p1, "val"    # I

    .prologue
    const/4 v0, 0x1

    .line 58
    if-ne v0, p1, :cond_0

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->ResetData(Z)V

    .line 260
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 227
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 252
    :goto_0
    return-void

    .line 230
    :pswitch_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;->Csszgn:I

    invoke-virtual {p0, v2}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->NegSwSet(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyCarSet(II)V

    goto :goto_0

    .line 234
    :pswitch_1
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;->Tcjs:I

    invoke-virtual {p0, v2}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->NegSwSet(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyCarSet(II)V

    goto :goto_0

    .line 238
    :pswitch_2
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;->Kmzxdssts:I

    invoke-virtual {p0, v2}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->NegSwSet(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyCarSet(II)V

    goto :goto_0

    .line 242
    :pswitch_3
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;->Yklsfk:I

    invoke-virtual {p0, v2}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->NegSwSet(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyCarSet(II)V

    goto :goto_0

    .line 246
    :pswitch_4
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;->Bshzdxmwzd:I

    invoke-virtual {p0, v2}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->NegSwSet(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyCarSet(II)V

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->InitUI()V

    .line 52
    return-void
.end method

.method public onItem(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 266
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 115
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 116
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 103
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 104
    invoke-virtual {p0}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->LayoutUI()V

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->ResetData(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1CarInfoActivity;->QueryData()V

    .line 108
    return-void
.end method
