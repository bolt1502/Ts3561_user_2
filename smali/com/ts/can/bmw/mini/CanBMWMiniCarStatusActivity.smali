.class public Lcom/ts/can/bmw/mini/CanBMWMiniCarStatusActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanBMWMiniCarStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ITEM_CHECK_CONTROL:I = 0x3

.field public static final ITEM_OIL:I = 0x1

.field public static final ITEM_RPA:I = 0x0

.field public static final ITEM_SERVICE_NEED:I = 0x2


# instance fields
.field private mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method

.method private initUI()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarStatusActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 32
    sget v0, Lcom/ts/MainUI/R$string;->can_rpa:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarStatusActivity;->AddIcoItem(II)Lcom/ts/canview/CanItemTextBtnList;

    .line 33
    sget v0, Lcom/ts/MainUI/R$string;->can_oil:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarStatusActivity;->AddIcoItem(II)Lcom/ts/canview/CanItemTextBtnList;

    .line 34
    sget v0, Lcom/ts/MainUI/R$string;->can_by_service:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarStatusActivity;->AddIcoItem(II)Lcom/ts/canview/CanItemTextBtnList;

    .line 35
    sget v0, Lcom/ts/MainUI/R$string;->can_check_control:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarStatusActivity;->AddIcoItem(II)Lcom/ts/canview/CanItemTextBtnList;

    .line 36
    return-void
.end method


# virtual methods
.method protected AddIcoItem(II)Lcom/ts/canview/CanItemTextBtnList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "id"    # I

    .prologue
    .line 40
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 41
    .local v0, "item":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 42
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarStatusActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 43
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 44
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 50
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 52
    :pswitch_0
    const-class v1, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarStatusActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 55
    :pswitch_1
    const-class v1, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarStatusActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 58
    :pswitch_2
    const-class v1, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarStatusActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 61
    :pswitch_3
    const-class v1, Lcom/ts/can/bmw/mini/CanBMWMiniStatusCheckActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarStatusActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniCarStatusActivity;->setContentView(I)V

    .line 26
    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniCarStatusActivity;->initUI()V

    .line 27
    return-void
.end method
