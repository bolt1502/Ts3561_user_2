.class public Lcom/ts/can/gm/sb/CanGMSBCarTypeActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanGMSBCarTypeActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_TYPE:I

.field private static final mTypeArray:[I


# instance fields
.field private mItemType:Lcom/ts/canview/CanItemCarType;

.field private mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 23
    sget v2, Lcom/ts/MainUI/R$string;->can_ty:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 24
    sget v2, Lcom/ts/MainUI/R$string;->can_yl15:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 25
    sget v2, Lcom/ts/MainUI/R$string;->can_gl8_2017:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 26
    sget v2, Lcom/ts/MainUI/R$string;->can_cadillac_xt5:I

    aput v2, v0, v1

    .line 22
    sput-object v0, Lcom/ts/can/gm/sb/CanGMSBCarTypeActivity;->mTypeArray:[I

    .line 27
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
    .line 45
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    .line 50
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarTypeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 52
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarTypeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    sget-object v2, Lcom/ts/can/gm/sb/CanGMSBCarTypeActivity;->mTypeArray:[I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemCarType(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemCarType;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarTypeActivity;->mItemType:Lcom/ts/canview/CanItemCarType;

    .line 53
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarTypeActivity;->mItemType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemCarType;->GetPopItem()Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 54
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 59
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 32
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 36
    if-nez p1, :cond_0

    .line 38
    invoke-static {p2}, Lcom/yyw/ts70xhw/FtSet;->SetCanSubT(I)I

    .line 39
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    .line 41
    :cond_0
    return-void
.end method
