.class public Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanRoeweCarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_MAX:I = 0x2

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_SCR_COLOR:I = 0x1

.field public static final ITEM_TYPE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanRoeweCarInfoActivity"

.field private static final mTypeArr:[I


# instance fields
.field private mAdtData:Lcom/lgb/canmodule/CanDataInfo$RoeweAdt;

.field private mColorArr:[Ljava/lang/String;

.field private mItemCarType:Lcom/ts/canview/CanItemCarType;

.field private mItemScrColor:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 35
    sget v2, Lcom/ts/MainUI/R$string;->can_roewe_key1:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 36
    sget v2, Lcom/ts/MainUI/R$string;->can_roewe_key2:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 37
    sget v2, Lcom/ts/MainUI/R$string;->can_roewe_360:I

    aput v2, v0, v1

    .line 33
    sput-object v0, Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;->mTypeArr:[I

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 42
    const-string v2, "\u65e0 "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 43
    const-string v2, "\u68a6\u5e7b\u84dd "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 44
    const-string v2, "\u6fc0\u60c5\u7ea2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 45
    const-string v2, "\u70ab\u5149\u91d1"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;->mColorArr:[Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$RoeweAdt;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$RoeweAdt;-><init>()V

    iput-object v0, p0, Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$RoeweAdt;

    .line 22
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 189
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 190
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 191
    iget-object v1, p0, Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 193
    return-object v0
.end method

.method protected AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 198
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 199
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 200
    iget-object v1, p0, Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 202
    return-object v0
.end method

.method protected InitUI()V
    .locals 6

    .prologue
    .line 136
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 139
    new-instance v0, Lcom/ts/canview/CanItemCarType;

    sget v2, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    sget-object v3, Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;->mTypeArr:[I

    const/4 v4, 0x2

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/ts/canview/CanItemCarType;-><init>(Landroid/content/Context;I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    .line 140
    iget-object v0, p0, Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCarType;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 143
    iget-object v0, p0, Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$RoeweAdt;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->RoeweGetAdt(Lcom/lgb/canmodule/CanDataInfo$RoeweAdt;)V

    .line 144
    iget-object v0, p0, Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$RoeweAdt;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$RoeweAdt;->ScrColor:I

    if-eqz v0, :cond_0

    .line 146
    sget v0, Lcom/ts/MainUI/R$string;->can_car_color:I

    iget-object v1, p0, Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;->mColorArr:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;->AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;->mItemScrColor:Lcom/ts/canview/CanItemPopupList;

    .line 150
    :cond_0
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 171
    .local v0, "ret":I
    invoke-static {v0}, Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;->i2b(I)Z

    move-result v1

    return v1
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 156
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 160
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;->ShowItem(I)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 105
    return-void
.end method

.method protected ShowItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 185
    .local v0, "show":Z
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;->ResetData(Z)V

    .line 227
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 219
    .local v0, "item":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;->InitUI()V

    .line 66
    return-void
.end method

.method public onItem(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 233
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 235
    const-string v0, "CanRoeweCarInfoActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Select = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {p2}, Lcom/yyw/ts70xhw/FtSet;->SetCanSubT(I)I

    .line 237
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    if-ne p1, v2, :cond_0

    .line 241
    invoke-static {v2, p2, v1, v1}, Lcom/lgb/canmodule/CanJni;->RoeweCarSet(IIII)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 131
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 132
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 115
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 116
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 117
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;->ResetData(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;->QueryData()V

    .line 120
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    .line 121
    .local v0, "sub":I
    const-string v1, "CanRoeweCarInfoActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "subtype = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lcom/ts/can/saic/roewe/CanRoeweCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCarType;->GetPopItem()Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 124
    return-void
.end method
