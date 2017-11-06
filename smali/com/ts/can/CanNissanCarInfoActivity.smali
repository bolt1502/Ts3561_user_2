.class public Lcom/ts/can/CanNissanCarInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanNissanCarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_CARMERA:I = 0x1

.field private static final ITEM_MAX:I = 0x1

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_TYPE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanNissanCarInfoActivity"

.field private static final mTypeArr:[I


# instance fields
.field private mItemCamera:Lcom/ts/canview/CanItemSwitchList;

.field private mItemCarType:Lcom/ts/canview/CanItemCarType;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 38
    sget v2, Lcom/ts/MainUI/R$string;->can_type_other:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 39
    sget v2, Lcom/ts/MainUI/R$string;->can_type_qj360_xp:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 40
    sget v2, Lcom/ts/MainUI/R$string;->can_type_qj360_rzc:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 41
    sget v2, Lcom/ts/MainUI/R$string;->can_type_loulan:I

    aput v2, v0, v1

    .line 36
    sput-object v0, Lcom/ts/can/CanNissanCarInfoActivity;->mTypeArr:[I

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 170
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 171
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 172
    iget-object v1, p0, Lcom/ts/can/CanNissanCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 174
    return-object v0
.end method

.method protected InitUI()V
    .locals 6

    .prologue
    .line 123
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/CanNissanCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 128
    new-instance v0, Lcom/ts/canview/CanItemCarType;

    sget v2, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    sget-object v3, Lcom/ts/can/CanNissanCarInfoActivity;->mTypeArr:[I

    const/4 v4, 0x2

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/ts/canview/CanItemCarType;-><init>(Landroid/content/Context;I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/CanNissanCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    .line 129
    iget-object v0, p0, Lcom/ts/can/CanNissanCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanNissanCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCarType;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 131
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 152
    .local v0, "ret":I
    invoke-static {v0}, Lcom/ts/can/CanNissanCarInfoActivity;->i2b(I)Z

    move-result v1

    return v1
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 141
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/CanNissanCarInfoActivity;->ShowItem(I)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 92
    return-void
.end method

.method protected ShowItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/ts/can/CanNissanCarInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 166
    .local v0, "show":Z
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanNissanCarInfoActivity;->ResetData(Z)V

    .line 203
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 183
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 195
    :goto_0
    return-void

    .line 187
    :pswitch_0
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCanSubT()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ts/can/CanNissanCarInfoActivity;->Neg(I)I

    move-result v1

    invoke-static {v1}, Lcom/yyw/ts70xhw/FtSet;->SetCanSubT(I)I

    .line 188
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ts/can/CanNissanCarInfoActivity;->ResetData(Z)V

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanNissanCarInfoActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/ts/can/CanNissanCarInfoActivity;->InitUI()V

    .line 53
    return-void
.end method

.method public onItem(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 209
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 211
    const-string v0, "CanNissanCarInfoActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Select = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {p2}, Lcom/yyw/ts70xhw/FtSet;->SetCanSubT(I)I

    .line 213
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    .line 215
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 118
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 119
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 102
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 103
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 104
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ts/can/CanNissanCarInfoActivity;->ResetData(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/ts/can/CanNissanCarInfoActivity;->QueryData()V

    .line 107
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    .line 108
    .local v0, "sub":I
    const-string v1, "CanNissanCarInfoActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "subtype = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lcom/ts/can/CanNissanCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCarType;->GetPopItem()Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 111
    return-void
.end method
