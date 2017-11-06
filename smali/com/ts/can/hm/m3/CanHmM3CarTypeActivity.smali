.class public Lcom/ts/can/hm/m3/CanHmM3CarTypeActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanHmM3CarTypeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_MAX:I = 0x1

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_TYPE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanHmM3CarTypeActivity"

.field private static final mTypeArr:[I


# instance fields
.field private mItemCarType:Lcom/ts/canview/CanItemCarType;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 31
    sget v2, Lcom/ts/MainUI/R$string;->can_car_hm_other:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 32
    sget v2, Lcom/ts/MainUI/R$string;->can_hms5_camera:I

    aput v2, v0, v1

    .line 29
    sput-object v0, Lcom/ts/can/hm/m3/CanHmM3CarTypeActivity;->mTypeArr:[I

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 159
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 160
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 161
    iget-object v1, p0, Lcom/ts/can/hm/m3/CanHmM3CarTypeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 162
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 163
    return-object v0
.end method

.method protected InitUI()V
    .locals 6

    .prologue
    .line 113
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/hm/m3/CanHmM3CarTypeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 115
    new-instance v0, Lcom/ts/canview/CanItemCarType;

    sget v2, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    sget-object v3, Lcom/ts/can/hm/m3/CanHmM3CarTypeActivity;->mTypeArr:[I

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/ts/canview/CanItemCarType;-><init>(Landroid/content/Context;I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/hm/m3/CanHmM3CarTypeActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    .line 117
    iget-object v0, p0, Lcom/ts/can/hm/m3/CanHmM3CarTypeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/hm/m3/CanHmM3CarTypeActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCarType;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 119
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 140
    .local v0, "ret":I
    invoke-static {v0}, Lcom/ts/can/hm/m3/CanHmM3CarTypeActivity;->i2b(I)Z

    move-result v1

    return v1
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 125
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 129
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/hm/m3/CanHmM3CarTypeActivity;->ShowItem(I)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 82
    return-void
.end method

.method protected ShowItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/ts/can/hm/m3/CanHmM3CarTypeActivity;->IsHaveItem(I)Z

    move-result v0

    .line 155
    .local v0, "show":Z
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/hm/m3/CanHmM3CarTypeActivity;->ResetData(Z)V

    .line 187
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 179
    .local v0, "item":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/hm/m3/CanHmM3CarTypeActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/ts/can/hm/m3/CanHmM3CarTypeActivity;->InitUI()V

    .line 50
    return-void
.end method

.method public onItem(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 193
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 195
    const-string v0, "CanHmM3CarTypeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Select = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {p2}, Lcom/yyw/ts70xhw/FtSet;->SetCanSubT(I)I

    .line 197
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    .line 199
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 108
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 109
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 92
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 93
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 94
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ts/can/hm/m3/CanHmM3CarTypeActivity;->ResetData(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/ts/can/hm/m3/CanHmM3CarTypeActivity;->QueryData()V

    .line 97
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    .line 98
    .local v0, "sub":I
    const-string v1, "CanHmM3CarTypeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "subtype = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v1, p0, Lcom/ts/can/hm/m3/CanHmM3CarTypeActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCarType;->GetPopItem()Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 101
    return-void
.end method
