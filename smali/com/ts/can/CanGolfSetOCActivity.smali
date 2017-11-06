.class public Lcom/ts/can/CanGolfSetOCActivity;
.super Lcom/ts/can/CanGolfBaseActivity;
.source "CanGolfSetOCActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_ACOUSTIC:I = 0x7

.field public static final ITEM_AUTO_LOCK:I = 0x5

.field public static final ITEM_CONV_OPEN:I = 0x2

.field public static final ITEM_DOOR_UNLOCK:I = 0x4

.field public static final ITEM_GYSHCXG:I = 0x6

.field public static final ITEM_LOCK_TITLE:I = 0x3

.field private static final ITEM_MAX:I = 0x7

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_OPEN_TITLE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanGolfSetOCActivity"

.field private static final mMenuConvOpen:[I

.field private static final mMenuDoorUnlock:[I


# instance fields
.field private mAdtOC:Lcom/lgb/canmodule/CanDataInfo$GolfAdtOpenAndC;

.field private mItemAcousticSW:Lcom/ts/canview/CanItemCheckList;

.field private mItemAutoLockSW:Lcom/ts/canview/CanItemCheckList;

.field private mItemConvOpen:Lcom/ts/canview/CanItemPopupList;

.field private mItemDoorLockTitle:Lcom/ts/canview/CanItemBlankTextList;

.field private mItemDoorUnlock:Lcom/ts/canview/CanItemPopupList;

.field private mItemGysSW:Lcom/ts/canview/CanItemCheckList;

.field private mItemWinOptTitle:Lcom/ts/canview/CanItemBlankTextList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mOCData:Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-array v0, v5, [I

    .line 38
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    .line 39
    sget v1, Lcom/ts/MainUI/R$string;->can_driver_window:I

    aput v1, v0, v3

    .line 40
    sget v1, Lcom/ts/MainUI/R$string;->can_all_windows:I

    aput v1, v0, v4

    .line 36
    sput-object v0, Lcom/ts/can/CanGolfSetOCActivity;->mMenuConvOpen:[I

    .line 44
    new-array v0, v5, [I

    .line 45
    sget v1, Lcom/ts/MainUI/R$string;->can_veh_side:I

    aput v1, v0, v2

    .line 46
    sget v1, Lcom/ts/MainUI/R$string;->can_single_door:I

    aput v1, v0, v3

    .line 47
    sget v1, Lcom/ts/MainUI/R$string;->can_sym:I

    aput v1, v0, v4

    .line 43
    sput-object v0, Lcom/ts/can/CanGolfSetOCActivity;->mMenuDoorUnlock:[I

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/ts/can/CanGolfBaseActivity;-><init>()V

    .line 60
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mOCData:Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;

    .line 61
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtOpenAndC;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfAdtOpenAndC;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mAdtOC:Lcom/lgb/canmodule/CanDataInfo$GolfAdtOpenAndC;

    .line 20
    return-void
.end method


# virtual methods
.method protected AddItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/ts/can/CanGolfSetOCActivity;->IsHaveItem(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 251
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 254
    :pswitch_0
    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetOCActivity;->mItemWinOptTitle:Lcom/ts/canview/CanItemBlankTextList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemBlankTextList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 258
    :pswitch_1
    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetOCActivity;->mItemConvOpen:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 262
    :pswitch_2
    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetOCActivity;->mItemDoorLockTitle:Lcom/ts/canview/CanItemBlankTextList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemBlankTextList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 266
    :pswitch_3
    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetOCActivity;->mItemDoorUnlock:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 270
    :pswitch_4
    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetOCActivity;->mItemAutoLockSW:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 274
    :pswitch_5
    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetOCActivity;->mItemGysSW:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 277
    :pswitch_6
    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetOCActivity;->mItemAcousticSW:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 251
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

.method protected InitItem(I)V
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 204
    packed-switch p1, :pswitch_data_0

    .line 242
    :goto_0
    return-void

    .line 207
    :pswitch_0
    new-instance v0, Lcom/ts/canview/CanItemBlankTextList;

    sget v1, Lcom/ts/MainUI/R$string;->can_win_opt:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemBlankTextList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mItemWinOptTitle:Lcom/ts/canview/CanItemBlankTextList;

    goto :goto_0

    .line 211
    :pswitch_1
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    sget v1, Lcom/ts/MainUI/R$string;->can_conv_opening:I

    sget-object v2, Lcom/ts/can/CanGolfSetOCActivity;->mMenuConvOpen:[I

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mItemConvOpen:Lcom/ts/canview/CanItemPopupList;

    .line 212
    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mItemConvOpen:Lcom/ts/canview/CanItemPopupList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    goto :goto_0

    .line 217
    :pswitch_2
    new-instance v0, Lcom/ts/canview/CanItemBlankTextList;

    sget v1, Lcom/ts/MainUI/R$string;->can_central_lock:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemBlankTextList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mItemDoorLockTitle:Lcom/ts/canview/CanItemBlankTextList;

    goto :goto_0

    .line 221
    :pswitch_3
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    sget v1, Lcom/ts/MainUI/R$string;->can_door_unlock:I

    sget-object v2, Lcom/ts/can/CanGolfSetOCActivity;->mMenuDoorUnlock:[I

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mItemDoorUnlock:Lcom/ts/canview/CanItemPopupList;

    .line 222
    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mItemDoorUnlock:Lcom/ts/canview/CanItemPopupList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    goto :goto_0

    .line 226
    :pswitch_4
    new-instance v0, Lcom/ts/canview/CanItemCheckList;

    sget v1, Lcom/ts/MainUI/R$string;->can_auto_lock:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mItemAutoLockSW:Lcom/ts/canview/CanItemCheckList;

    .line 227
    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mItemAutoLockSW:Lcom/ts/canview/CanItemCheckList;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    goto :goto_0

    .line 231
    :pswitch_5
    new-instance v0, Lcom/ts/canview/CanItemCheckList;

    sget v1, Lcom/ts/MainUI/R$string;->can_magoten_gyswxg:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mItemGysSW:Lcom/ts/canview/CanItemCheckList;

    .line 232
    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mItemGysSW:Lcom/ts/canview/CanItemCheckList;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    goto :goto_0

    .line 235
    :pswitch_6
    new-instance v0, Lcom/ts/canview/CanItemCheckList;

    sget v1, Lcom/ts/MainUI/R$string;->can_acoustic_confirm:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mItemAcousticSW:Lcom/ts/canview/CanItemCheckList;

    .line 236
    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mItemAcousticSW:Lcom/ts/canview/CanItemCheckList;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    goto :goto_0

    .line 204
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

.method protected InitUI()V
    .locals 2

    .prologue
    .line 140
    new-instance v1, Lcom/ts/canview/CanScrollList;

    invoke-direct {v1, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetOCActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 142
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 146
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetOCActivity;->InitItem(I)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected IsHaveItem(I)Z
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 199
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/ts/can/CanGolfSetOCActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 165
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/CanGolfSetOCActivity;->mAdtOC:Lcom/lgb/canmodule/CanDataInfo$GolfAdtOpenAndC;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtOpenAndC;->ConvOpening:I

    .line 166
    goto :goto_0

    .line 169
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/CanGolfSetOCActivity;->mAdtOC:Lcom/lgb/canmodule/CanDataInfo$GolfAdtOpenAndC;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtOpenAndC;->ConvOpening:I

    .line 170
    goto :goto_0

    .line 173
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/CanGolfSetOCActivity;->mAdtOC:Lcom/lgb/canmodule/CanDataInfo$GolfAdtOpenAndC;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtOpenAndC;->DoorUnlocking:I

    iget-object v2, p0, Lcom/ts/can/CanGolfSetOCActivity;->mAdtOC:Lcom/lgb/canmodule/CanDataInfo$GolfAdtOpenAndC;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfAdtOpenAndC;->AutomaticLocking:I

    add-int v0, v1, v2

    .line 174
    goto :goto_0

    .line 177
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/CanGolfSetOCActivity;->mAdtOC:Lcom/lgb/canmodule/CanDataInfo$GolfAdtOpenAndC;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtOpenAndC;->DoorUnlocking:I

    .line 178
    goto :goto_0

    .line 181
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/CanGolfSetOCActivity;->mAdtOC:Lcom/lgb/canmodule/CanDataInfo$GolfAdtOpenAndC;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtOpenAndC;->AutomaticLocking:I

    .line 182
    goto :goto_0

    .line 185
    :pswitch_5
    const/4 v1, 0x1

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 187
    const/4 v0, 0x1

    .line 189
    goto :goto_0

    .line 192
    :pswitch_6
    const/4 v0, 0x0

    .line 193
    goto :goto_0

    .line 162
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
    .line 150
    iget-object v1, p0, Lcom/ts/can/CanGolfSetOCActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v1}, Lcom/ts/canview/CanScrollList;->RemoveAllViews()V

    .line 153
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 157
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetOCActivity;->AddItem(I)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 3

    .prologue
    const/16 v2, 0x70

    .line 111
    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mAdtOC:Lcom/lgb/canmodule/CanDataInfo$GolfAdtOpenAndC;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtOpenAndC;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetOCActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const/16 v0, 0x41

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 114
    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanGolfSetOCActivity;->Sleep(J)V

    .line 118
    :cond_0
    const/16 v0, 0x40

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 119
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mOCData:Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GolfGetOpenClose(Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;)V

    .line 78
    iget-boolean v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mbLayout:Z

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mAdtOC:Lcom/lgb/canmodule/CanDataInfo$GolfAdtOpenAndC;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GolfGetAdtOC(Lcom/lgb/canmodule/CanDataInfo$GolfAdtOpenAndC;)V

    .line 81
    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mAdtOC:Lcom/lgb/canmodule/CanDataInfo$GolfAdtOpenAndC;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtOpenAndC;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetOCActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mOCData:Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetOCActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetOCActivity;->LayoutUI()V

    .line 85
    const/4 p1, 0x0

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mbLayout:Z

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mOCData:Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetOCActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mOCData:Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetOCActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mOCData:Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;->Update:I

    .line 100
    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mItemConvOpen:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetOCActivity;->mOCData:Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;->ConvOpening:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 101
    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mItemDoorUnlock:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetOCActivity;->mOCData:Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;->DoorUnlocking:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 102
    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mItemAutoLockSW:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetOCActivity;->mOCData:Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;->fgAutoLocking:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 103
    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mItemAcousticSW:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetOCActivity;->mOCData:Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;->fgAcousticConfirm:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 104
    iget-object v0, p0, Lcom/ts/can/CanGolfSetOCActivity;->mItemGysSW:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetOCActivity;->mOCData:Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;->fgGyshwxg:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 107
    :cond_2
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetOCActivity;->ResetData(Z)V

    .line 333
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 289
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 307
    :goto_0
    return-void

    .line 292
    :pswitch_0
    const/16 v1, 0x72

    iget-object v2, p0, Lcom/ts/can/CanGolfSetOCActivity;->mOCData:Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;->fgAutoLocking:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetOCActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 296
    :pswitch_1
    const/16 v1, 0xc9

    iget-object v2, p0, Lcom/ts/can/CanGolfSetOCActivity;->mOCData:Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;->fgAcousticConfirm:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetOCActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 300
    :pswitch_2
    const/16 v1, 0x73

    iget-object v2, p0, Lcom/ts/can/CanGolfSetOCActivity;->mOCData:Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;->fgGyshwxg:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetOCActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/ts/can/CanGolfBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetOCActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetOCActivity;->InitUI()V

    .line 73
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "Id"    # I
    .param p2, "item"    # I

    .prologue
    .line 313
    packed-switch p1, :pswitch_data_0

    .line 326
    :goto_0
    :pswitch_0
    return-void

    .line 316
    :pswitch_1
    const/16 v0, 0x70

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 320
    :pswitch_2
    const/16 v0, 0x71

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 134
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 135
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onPause()V

    .line 136
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onResume()V

    .line 125
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetOCActivity;->ResetData(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetOCActivity;->QueryData()V

    .line 128
    return-void
.end method
