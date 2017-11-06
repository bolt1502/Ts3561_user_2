.class public Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;
.super Lcom/ts/can/honda/accord_xbs/CanAccordXbsBaseActivity;
.source "CanAccordXbsCarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;


# static fields
.field public static final ITEM_CAR_TYPE:I = 0x1

.field public static final ITEM_CONSUMP:I = 0x3

.field public static final ITEM_DISTAMCE_SET:I = 0x4

.field public static final ITEM_DRIVE_ASS:I = 0x8

.field public static final ITEM_FACTORY:I = 0x7

.field public static final ITEM_LIGHT:I = 0x5

.field public static final ITEM_LOCK:I = 0x6

.field private static final ITEM_MAX:I = 0x8

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_SCREEN:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanAccordCarInfoActivity"


# instance fields
.field private mItemCarType:Lcom/ts/canview/CanItemIcoList;

.field private mItemConsump:Lcom/ts/canview/CanItemIcoList;

.field private mItemDistance:Lcom/ts/canview/CanItemIcoList;

.field private mItemDriveAss:Lcom/ts/canview/CanItemIcoList;

.field private mItemFactory:Lcom/ts/canview/CanItemIcoList;

.field private mItemLight:Lcom/ts/canview/CanItemIcoList;

.field private mItemLock:Lcom/ts/canview/CanItemIcoList;

.field private mItemScreen:Lcom/ts/canview/CanItemIcoList;

.field private mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 249
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 250
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 251
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 252
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 253
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 117
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 119
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_light2:I

    sget v2, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    invoke-direct {v0, p0, v1, v2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemIcoList;

    .line 120
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_light2:I

    sget v2, Lcom/ts/MainUI/R$string;->can_screen_setup:I

    invoke-direct {v0, p0, v1, v2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemScreen:Lcom/ts/canview/CanItemIcoList;

    .line 121
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_mfd:I

    sget v2, Lcom/ts/MainUI/R$string;->can_consumption:I

    invoke-direct {v0, p0, v1, v2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemConsump:Lcom/ts/canview/CanItemIcoList;

    .line 122
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_sudu:I

    sget v2, Lcom/ts/MainUI/R$string;->can_distance_sz:I

    invoke-direct {v0, p0, v1, v2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemDistance:Lcom/ts/canview/CanItemIcoList;

    .line 123
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_light:I

    sget v2, Lcom/ts/MainUI/R$string;->can_light_setup:I

    invoke-direct {v0, p0, v1, v2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    .line 124
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_lock2:I

    sget v2, Lcom/ts/MainUI/R$string;->can_car_lock_set:I

    invoke-direct {v0, p0, v1, v2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemLock:Lcom/ts/canview/CanItemIcoList;

    .line 125
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_service:I

    sget v2, Lcom/ts/MainUI/R$string;->can_jsfzxysz:I

    invoke-direct {v0, p0, v1, v2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemDriveAss:Lcom/ts/canview/CanItemIcoList;

    .line 126
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_setup:I

    sget v2, Lcom/ts/MainUI/R$string;->can_factory_set:I

    invoke-direct {v0, p0, v1, v2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemFactory:Lcom/ts/canview/CanItemIcoList;

    .line 128
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemIcoList;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 129
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemScreen:Lcom/ts/canview/CanItemIcoList;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 130
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemConsump:Lcom/ts/canview/CanItemIcoList;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 131
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemDistance:Lcom/ts/canview/CanItemIcoList;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 132
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 133
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemLock:Lcom/ts/canview/CanItemIcoList;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 134
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemDriveAss:Lcom/ts/canview/CanItemIcoList;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 135
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemFactory:Lcom/ts/canview/CanItemIcoList;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 137
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 138
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemScreen:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 139
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemConsump:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemDistance:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 142
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemLock:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 143
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemDriveAss:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 144
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemFactory:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 146
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 162
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 200
    :goto_0
    invoke-static {v0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 165
    :pswitch_0
    const/4 v0, 0x0

    .line 166
    goto :goto_0

    .line 169
    :pswitch_1
    const/4 v0, 0x1

    .line 170
    goto :goto_0

    .line 173
    :pswitch_2
    const/4 v0, 0x1

    .line 174
    goto :goto_0

    .line 177
    :pswitch_3
    const/4 v0, 0x1

    .line 178
    goto :goto_0

    .line 181
    :pswitch_4
    const/4 v0, 0x1

    .line 182
    goto :goto_0

    .line 185
    :pswitch_5
    const/4 v0, 0x1

    .line 186
    goto :goto_0

    .line 189
    :pswitch_6
    const/4 v0, 0x1

    .line 190
    goto :goto_0

    .line 193
    :pswitch_7
    const/4 v0, 0x1

    .line 194
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
        :pswitch_7
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 156
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->ShowItem(I)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 90
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->Query(II)V

    .line 91
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 86
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 208
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 245
    :goto_0
    return-void

    .line 211
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 215
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemScreen:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 219
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemConsump:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 223
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemDistance:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 227
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 231
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemLock:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 235
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemFactory:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 239
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->mItemDriveAss:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->ResetData(Z)V

    .line 304
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 262
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 296
    :goto_0
    return-void

    .line 266
    :pswitch_0
    const-class v2, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;

    invoke-virtual {p0, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 270
    :pswitch_1
    const-class v2, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;

    invoke-virtual {p0, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 274
    :pswitch_2
    const-class v2, Lcom/ts/can/honda/accord_xbs/CanAccordXbsDistanceActivity;

    invoke-virtual {p0, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 278
    :pswitch_3
    const-class v2, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLightActivity;

    invoke-virtual {p0, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 282
    :pswitch_4
    const-class v2, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;

    invoke-virtual {p0, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 286
    :pswitch_5
    new-instance v1, Lcom/ts/canview/CanItemMsgBox;

    const/4 v2, 0x7

    sget v3, Lcom/ts/MainUI/R$string;->can_sure_setup:I

    invoke-direct {v1, v2, p0, v3, p0}, Lcom/ts/canview/CanItemMsgBox;-><init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V

    .line 287
    .local v1, "msgbox":Lcom/ts/canview/CanItemMsgBox;
    goto :goto_0

    .line 290
    .end local v1    # "msgbox":Lcom/ts/canview/CanItemMsgBox;
    :pswitch_6
    const-class v2, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;

    invoke-virtual {p0, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->InitUI()V

    .line 54
    return-void
.end method

.method public onOK(I)V
    .locals 2
    .param p1, "param"    # I

    .prologue
    .line 310
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->CarSet(II)V

    .line 311
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 112
    invoke-super {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsBaseActivity;->onPause()V

    .line 113
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsBaseActivity;->onResume()V

    .line 97
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->ResetData(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->QueryData()V

    .line 103
    invoke-virtual {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsCarInfoActivity;->LayoutUI()V

    .line 105
    return-void
.end method
