.class public Lcom/ts/can/renault/kadjar/CanKadjarCarTypeActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanKadjarCarTypeActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_CAR_TYPE:I = 0x1

.field private static mCarTypeArrays:[Ljava/lang/String;


# instance fields
.field private mItemCarType:Lcom/ts/canview/CanItemCarType;


# direct methods
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
    .line 38
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarCarTypeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$array;->can_kadjar_car_type_array:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ts/can/renault/kadjar/CanKadjarCarTypeActivity;->mCarTypeArrays:[Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    .line 46
    .local v0, "manager":Lcom/ts/canview/CanScrollList;
    sget v1, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    sget-object v2, Lcom/ts/can/renault/kadjar/CanKadjarCarTypeActivity;->mCarTypeArrays:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemCarType(I[Ljava/lang/String;ILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemCarType;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarCarTypeActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    .line 48
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarCarTypeActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCarType;->GetPopItem()Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 49
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 55
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 25
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 29
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 31
    invoke-static {p2}, Lcom/yyw/ts70xhw/FtSet;->SetCanSubT(I)I

    .line 32
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    .line 34
    :cond_0
    return-void
.end method
