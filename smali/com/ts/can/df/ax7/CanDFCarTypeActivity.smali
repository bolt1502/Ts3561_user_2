.class public Lcom/ts/can/df/ax7/CanDFCarTypeActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanDFCarTypeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_MAX:I = 0x1

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_TYPE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanDFCarTypeActivity"

.field private static final mTypeArr:[Ljava/lang/String;


# instance fields
.field private mItemCarType:Lcom/ts/canview/CanItemCarType;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 32
    const-string v2, "2015\u6b3e\u4e1c\u98ce\u98ce\u795eAX7"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 33
    const-string v2, "2016\uff0c2017\u6b3eAX5\uff0cAX7\uff0cMX5\u4f4e\u914d"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 34
    const-string v2, "2016\uff0c2017\u6b3eAX5\uff0cAX7\uff0cMX5\u4e2d\uff0c\u9ad8\u914d"

    aput-object v2, v0, v1

    .line 30
    sput-object v0, Lcom/ts/can/df/ax7/CanDFCarTypeActivity;->mTypeArr:[Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 140
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 141
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 142
    iget-object v1, p0, Lcom/ts/can/df/ax7/CanDFCarTypeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 143
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 144
    return-object v0
.end method

.method protected AddItemTitleVal(II)Lcom/ts/canview/CanItemTitleValList;
    .locals 4
    .param p1, "text"    # I
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 155
    new-instance v0, Lcom/ts/canview/CanItemTitleValList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTitleValList;-><init>(Landroid/content/Context;I)V

    .line 156
    .local v0, "item":Lcom/ts/canview/CanItemTitleValList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemTitleValList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 157
    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemTitleValList;->SetIconVisibility(I)V

    .line 158
    iget-object v1, p0, Lcom/ts/can/df/ax7/CanDFCarTypeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTitleValList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 159
    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemTitleValList;->ShowGone(Z)V

    .line 160
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetIconVisibility(I)V

    .line 161
    return-object v0
.end method

.method protected InitUI()V
    .locals 6

    .prologue
    .line 90
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/df/ax7/CanDFCarTypeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 92
    new-instance v0, Lcom/ts/canview/CanItemCarType;

    sget v2, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    sget-object v3, Lcom/ts/can/df/ax7/CanDFCarTypeActivity;->mTypeArr:[Ljava/lang/String;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/ts/canview/CanItemCarType;-><init>(Landroid/content/Context;I[Ljava/lang/String;ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/df/ax7/CanDFCarTypeActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    .line 93
    iget-object v0, p0, Lcom/ts/can/df/ax7/CanDFCarTypeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/df/ax7/CanDFCarTypeActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCarType;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 96
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 120
    :goto_0
    invoke-static {v0}, Lcom/ts/can/df/ax7/CanDFCarTypeActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 114
    :pswitch_0
    const/4 v0, 0x1

    .line 115
    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 102
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 106
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/df/ax7/CanDFCarTypeActivity;->ShowItem(I)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 58
    return-void
.end method

.method protected ShowItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/ts/can/df/ax7/CanDFCarTypeActivity;->IsHaveItem(I)Z

    move-result v0

    .line 128
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 136
    :pswitch_0
    return-void

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/df/ax7/CanDFCarTypeActivity;->ResetData(Z)V

    .line 184
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 176
    .local v0, "item":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/ax7/CanDFCarTypeActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/ts/can/df/ax7/CanDFCarTypeActivity;->InitUI()V

    .line 52
    return-void
.end method

.method public onItem(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 190
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 192
    const-string v0, "CanDFCarTypeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Select = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {p2}, Lcom/yyw/ts70xhw/FtSet;->SetCanSubT(I)I

    .line 194
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    .line 196
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 85
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 86
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 68
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 69
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 70
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ts/can/df/ax7/CanDFCarTypeActivity;->ResetData(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/ts/can/df/ax7/CanDFCarTypeActivity;->QueryData()V

    .line 72
    invoke-virtual {p0}, Lcom/ts/can/df/ax7/CanDFCarTypeActivity;->LayoutUI()V

    .line 74
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    .line 75
    .local v0, "sub":I
    const-string v1, "CanDFCarTypeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "subtype = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/ts/can/df/ax7/CanDFCarTypeActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCarType;->GetPopItem()Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 78
    return-void
.end method
