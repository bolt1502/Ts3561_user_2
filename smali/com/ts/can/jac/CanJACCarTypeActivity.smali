.class public Lcom/ts/can/jac/CanJACCarTypeActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanJACCarTypeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_MAX:I = 0x2

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_TPMS:I = 0x2

.field public static final ITEM_TYPE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanJACCarTypeActivity"

.field private static final mTypeArr:[I


# instance fields
.field private mItemCarType:Lcom/ts/canview/CanItemCarType;

.field private mItemTpms:Lcom/ts/canview/CanItemTextBtnList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 34
    sget v2, Lcom/ts/MainUI/R$string;->can_type_other:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 35
    sget v2, Lcom/ts/MainUI/R$string;->can_jac_s2Mini:I

    aput v2, v0, v1

    .line 32
    sput-object v0, Lcom/ts/can/jac/CanJACCarTypeActivity;->mTypeArr:[I

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 152
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 153
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 154
    iget-object v1, p0, Lcom/ts/can/jac/CanJACCarTypeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 155
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 156
    return-object v0
.end method

.method protected AddItemTitleVal(II)Lcom/ts/canview/CanItemTitleValList;
    .locals 4
    .param p1, "text"    # I
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 167
    new-instance v0, Lcom/ts/canview/CanItemTitleValList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTitleValList;-><init>(Landroid/content/Context;I)V

    .line 168
    .local v0, "item":Lcom/ts/canview/CanItemTitleValList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemTitleValList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 169
    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemTitleValList;->SetIconVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/ts/can/jac/CanJACCarTypeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTitleValList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 171
    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemTitleValList;->ShowGone(Z)V

    .line 172
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetIconVisibility(I)V

    .line 173
    return-object v0
.end method

.method protected InitUI()V
    .locals 6

    .prologue
    .line 93
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/jac/CanJACCarTypeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 95
    new-instance v0, Lcom/ts/canview/CanItemCarType;

    sget v2, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    sget-object v3, Lcom/ts/can/jac/CanJACCarTypeActivity;->mTypeArr:[I

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/ts/canview/CanItemCarType;-><init>(Landroid/content/Context;I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/jac/CanJACCarTypeActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    .line 96
    iget-object v0, p0, Lcom/ts/can/jac/CanJACCarTypeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/jac/CanJACCarTypeActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCarType;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 98
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    sget v1, Lcom/ts/MainUI/R$string;->can_tyres_tpms:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/jac/CanJACCarTypeActivity;->mItemTpms:Lcom/ts/canview/CanItemTextBtnList;

    .line 99
    iget-object v0, p0, Lcom/ts/can/jac/CanJACCarTypeActivity;->mItemTpms:Lcom/ts/canview/CanItemTextBtnList;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 100
    iget-object v0, p0, Lcom/ts/can/jac/CanJACCarTypeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/jac/CanJACCarTypeActivity;->mItemTpms:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 102
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 129
    :goto_0
    invoke-static {v0}, Lcom/ts/can/jac/CanJACCarTypeActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 120
    :pswitch_0
    const/4 v0, 0x1

    .line 121
    goto :goto_0

    .line 124
    :pswitch_1
    const/4 v0, 0x1

    .line 125
    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 112
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/jac/CanJACCarTypeActivity;->ShowItem(I)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 61
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/ts/can/jac/CanJACCarTypeActivity;->IsHaveItem(I)Z

    move-result v0

    .line 137
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 148
    :goto_0
    :pswitch_0
    return-void

    .line 143
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/jac/CanJACCarTypeActivity;->mItemTpms:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/jac/CanJACCarTypeActivity;->ResetData(Z)V

    .line 199
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 182
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 185
    :pswitch_0
    const-class v1, Lcom/ts/can/jac/CanJACRefineTpmsActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/jac/CanJACCarTypeActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/jac/CanJACCarTypeActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/ts/can/jac/CanJACCarTypeActivity;->InitUI()V

    .line 55
    return-void
.end method

.method public onItem(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 205
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 207
    const-string v0, "CanJACCarTypeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Select = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {p2}, Lcom/yyw/ts70xhw/FtSet;->SetCanSubT(I)I

    .line 209
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    .line 211
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 88
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 89
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 71
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 72
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 73
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ts/can/jac/CanJACCarTypeActivity;->ResetData(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/ts/can/jac/CanJACCarTypeActivity;->QueryData()V

    .line 75
    invoke-virtual {p0}, Lcom/ts/can/jac/CanJACCarTypeActivity;->LayoutUI()V

    .line 77
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    .line 78
    .local v0, "sub":I
    const-string v1, "CanJACCarTypeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "subtype = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v1, p0, Lcom/ts/can/jac/CanJACCarTypeActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCarType;->GetPopItem()Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 81
    return-void
.end method
