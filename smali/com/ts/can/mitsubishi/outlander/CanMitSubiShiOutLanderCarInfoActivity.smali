.class public Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderCarInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanMitSubiShiOutLanderCarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_AMP_SET:I = 0x2

.field public static final ITEM_TYPE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanMitSubiShiOutLanderCarInfoActivity"

.field private static final mTypeArr:[I


# instance fields
.field protected mItemAmpSet:Lcom/ts/canview/CanItemTextBtnList;

.field protected mItemCarType:Lcom/ts/canview/CanItemCarType;

.field protected mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 33
    sget v2, Lcom/ts/MainUI/R$string;->can_amp_type1:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 34
    sget v2, Lcom/ts/MainUI/R$string;->can_amp_type2:I

    aput v2, v0, v1

    .line 31
    sput-object v0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderCarInfoActivity;->mTypeArr:[I

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 83
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 86
    :pswitch_0
    const-class v1, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderAMPSetActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderCarInfoActivity;->setContentView(I)V

    .line 44
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 46
    new-instance v0, Lcom/ts/canview/CanItemCarType;

    sget v2, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    sget-object v3, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderCarInfoActivity;->mTypeArr:[I

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/ts/canview/CanItemCarType;-><init>(Landroid/content/Context;I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    .line 47
    iget-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCarType;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 49
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    sget v1, Lcom/ts/MainUI/R$string;->can_amp_set:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderCarInfoActivity;->mItemAmpSet:Lcom/ts/canview/CanItemTextBtnList;

    .line 50
    iget-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderCarInfoActivity;->mItemAmpSet:Lcom/ts/canview/CanItemTextBtnList;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 51
    iget-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderCarInfoActivity;->mItemAmpSet:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 53
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderCarInfoActivity;->mItemAmpSet:Lcom/ts/canview/CanItemTextBtnList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 58
    :cond_0
    return-void
.end method

.method public onItem(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 97
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 99
    const-string v0, "CanMitSubiShiOutLanderCarInfoActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Select = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {p2}, Lcom/yyw/ts70xhw/FtSet;->SetCanSubT(I)I

    .line 101
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    .line 103
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 65
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 71
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 73
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    .line 74
    .local v0, "sub":I
    const-string v1, "CanMitSubiShiOutLanderCarInfoActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "subtype = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcom/ts/can/mitsubishi/outlander/CanMitSubiShiOutLanderCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCarType;->GetPopItem()Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 76
    return-void
.end method
