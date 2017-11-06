.class public Lcom/ts/can/hm/fml17/CanHmFml17CarInfoActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanHmFml17CarInfoActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_TYPE:I

.field private static final mTypeArrays:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 19
    const-string v2, "17\u6b3e\u798f\u7f8e\u6765"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "17\u6b3e\u6d77\u9a6cS7"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "17\u6b3e\u6d77\u9a6cS5 young"

    aput-object v2, v0, v1

    .line 18
    sput-object v0, Lcom/ts/can/hm/fml17/CanHmFml17CarInfoActivity;->mTypeArrays:[Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 5

    .prologue
    .line 44
    new-instance v1, Lcom/ts/canview/CanScrollList;

    invoke-direct {v1, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    .line 45
    .local v1, "manager":Lcom/ts/canview/CanScrollList;
    sget v2, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    sget-object v3, Lcom/ts/can/hm/fml17/CanHmFml17CarInfoActivity;->mTypeArrays:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/ts/canview/CanScrollList;->addItemCarType(I[Ljava/lang/String;ILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemCarType;

    move-result-object v0

    .line 47
    .local v0, "mItemType":Lcom/ts/canview/CanItemCarType;
    invoke-virtual {v0}, Lcom/ts/canview/CanItemCarType;->GetPopItem()Lcom/ts/canview/CanItemPopupList;

    move-result-object v2

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 48
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 54
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 26
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 30
    if-nez p1, :cond_0

    .line 32
    invoke-static {p2}, Lcom/yyw/ts70xhw/FtSet;->SetCanSubT(I)I

    .line 33
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    .line 35
    :cond_0
    return-void
.end method
