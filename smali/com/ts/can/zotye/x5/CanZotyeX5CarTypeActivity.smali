.class public Lcom/ts/can/zotye/x5/CanZotyeX5CarTypeActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanZotyeX5CarTypeActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_TYPE:I = 0x1

.field private static final mTypeArr:[I


# instance fields
.field private mItemCarType:Lcom/ts/canview/CanItemCarType;

.field private mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 24
    sget v2, Lcom/ts/MainUI/R$string;->can_car_X5:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 25
    sget v2, Lcom/ts/MainUI/R$string;->can_car_T600:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 26
    sget v2, Lcom/ts/MainUI/R$string;->can_car_X7:I

    aput v2, v0, v1

    .line 22
    sput-object v0, Lcom/ts/can/zotye/x5/CanZotyeX5CarTypeActivity;->mTypeArr:[I

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected InitUI()V
    .locals 6

    .prologue
    .line 39
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5CarTypeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 41
    new-instance v0, Lcom/ts/canview/CanItemCarType;

    sget v2, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    sget-object v3, Lcom/ts/can/zotye/x5/CanZotyeX5CarTypeActivity;->mTypeArr:[I

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/ts/canview/CanItemCarType;-><init>(Landroid/content/Context;I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5CarTypeActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    .line 43
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5CarTypeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5CarTypeActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCarType;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 45
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/x5/CanZotyeX5CarTypeActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/ts/can/zotye/x5/CanZotyeX5CarTypeActivity;->InitUI()V

    .line 35
    return-void
.end method

.method public onItem(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 58
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 60
    const-string v0, "CanBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Select = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {p2}, Lcom/yyw/ts70xhw/FtSet;->SetCanSubT(I)I

    .line 62
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    .line 64
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 49
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 51
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    .line 52
    .local v0, "sub":I
    const-string v1, "CanBaseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "subtype = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5CarTypeActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCarType;->GetPopItem()Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 54
    return-void
.end method
