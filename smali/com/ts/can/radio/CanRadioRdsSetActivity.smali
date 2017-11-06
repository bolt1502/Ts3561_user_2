.class public Lcom/ts/can/radio/CanRadioRdsSetActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanRadioRdsSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_MAX:I = 0x5

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_PI:I = 0x2

.field public static final ITEM_REG:I = 0x1

.field public static final ITEM_RT:I = 0x5

.field public static final ITEM_TA:I = 0x3

.field public static final ITEM_VL:I = 0x4

.field public static final TAG:Ljava/lang/String; = "CanRadioRdsSetActivity"


# instance fields
.field private mItemPi:Lcom/ts/canview/CanItemPopupList;

.field private mItemReg:Lcom/ts/canview/CanItemPopupList;

.field private mItemRt:Lcom/ts/canview/CanItemPopupList;

.field private mItemTa:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mStrPi:[Ljava/lang/String;

.field private mStrReg:[Ljava/lang/String;

.field private mStrRt:[Ljava/lang/String;

.field private mStrTa:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 36
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Off"

    aput-object v1, v0, v2

    const-string v1, "On"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/ts/can/radio/CanRadioRdsSetActivity;->mStrReg:[Ljava/lang/String;

    .line 37
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Sound"

    aput-object v1, v0, v2

    const-string v1, "Mute"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/ts/can/radio/CanRadioRdsSetActivity;->mStrPi:[Ljava/lang/String;

    .line 38
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Alarm"

    aput-object v1, v0, v2

    const-string v1, "Seek"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/ts/can/radio/CanRadioRdsSetActivity;->mStrTa:[Ljava/lang/String;

    .line 39
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Short"

    aput-object v1, v0, v2

    const-string v1, "Long"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/ts/can/radio/CanRadioRdsSetActivity;->mStrRt:[Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method protected AddPopupItem(Ljava/lang/String;[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "val"    # [Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 83
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 84
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 85
    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetBtn()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lcom/ts/can/radio/CanRadioRdsSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 87
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/radio/CanRadioRdsSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 94
    const-string v0, "Region"

    iget-object v1, p0, Lcom/ts/can/radio/CanRadioRdsSetActivity;->mStrReg:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/radio/CanRadioRdsSetActivity;->AddPopupItem(Ljava/lang/String;[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/radio/CanRadioRdsSetActivity;->mItemReg:Lcom/ts/canview/CanItemPopupList;

    .line 95
    const-string v0, "PI"

    iget-object v1, p0, Lcom/ts/can/radio/CanRadioRdsSetActivity;->mStrPi:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/radio/CanRadioRdsSetActivity;->AddPopupItem(Ljava/lang/String;[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/radio/CanRadioRdsSetActivity;->mItemPi:Lcom/ts/canview/CanItemPopupList;

    .line 96
    const-string v0, "TA"

    iget-object v1, p0, Lcom/ts/can/radio/CanRadioRdsSetActivity;->mStrTa:[Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/radio/CanRadioRdsSetActivity;->AddPopupItem(Ljava/lang/String;[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/radio/CanRadioRdsSetActivity;->mItemTa:Lcom/ts/canview/CanItemPopupList;

    .line 97
    const-string v0, "Retune"

    iget-object v1, p0, Lcom/ts/can/radio/CanRadioRdsSetActivity;->mStrRt:[Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/radio/CanRadioRdsSetActivity;->AddPopupItem(Ljava/lang/String;[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/radio/CanRadioRdsSetActivity;->mItemRt:Lcom/ts/canview/CanItemPopupList;

    .line 98
    return-void
.end method

.method protected ResetData()V
    .locals 2

    .prologue
    .line 54
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 58
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/radio/CanRadioRdsSetActivity;->UpdateItem(I)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected UpdateItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 102
    invoke-static {p1}, Lcom/yyw/ts70xhw/Radio;->RdsGetSetting(I)I

    move-result v0

    .line 103
    .local v0, "val":I
    packed-switch p1, :pswitch_data_0

    .line 127
    :goto_0
    :pswitch_0
    return-void

    .line 106
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/radio/CanRadioRdsSetActivity;->mItemReg:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    goto :goto_0

    .line 110
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/radio/CanRadioRdsSetActivity;->mItemPi:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    goto :goto_0

    .line 114
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/radio/CanRadioRdsSetActivity;->mItemTa:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    goto :goto_0

    .line 121
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/radio/CanRadioRdsSetActivity;->mItemRt:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public UserAll()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/radio/CanRadioRdsSetActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/ts/can/radio/CanRadioRdsSetActivity;->InitUI()V

    .line 49
    return-void
.end method

.method public onItem(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 141
    invoke-static {p1, p2}, Lcom/yyw/ts70xhw/Radio;->RdsSetSetting(II)I

    .line 142
    invoke-virtual {p0, p1}, Lcom/ts/can/radio/CanRadioRdsSetActivity;->UpdateItem(I)V

    .line 143
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 75
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 77
    const-string v0, "CanRadioRdsSetActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 64
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 65
    invoke-virtual {p0}, Lcom/ts/can/radio/CanRadioRdsSetActivity;->ResetData()V

    .line 66
    const-string v0, "CanRadioRdsSetActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method
