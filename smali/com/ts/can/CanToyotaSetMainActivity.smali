.class public Lcom/ts/can/CanToyotaSetMainActivity;
.super Lcom/ts/can/CanToyotaBaseActivity;
.source "CanToyotaSetMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ITEM_AC:I = 0x2

.field public static final ITEM_LANG:I = 0x5

.field public static final ITEM_LIGHT:I = 0x3

.field public static final ITEM_LOCK:I = 0x1

.field public static final ITEM_OTHER:I = 0x4

.field protected static final TAG:Ljava/lang/String; = "CanToyotaSetMainActivity"


# instance fields
.field protected mItemAc:Lcom/ts/canview/CanItemIcoList;

.field protected mItemLang:Lcom/ts/canview/CanItemIcoList;

.field protected mItemLight:Lcom/ts/canview/CanItemIcoList;

.field protected mItemLock:Lcom/ts/canview/CanItemIcoList;

.field protected mItemOther:Lcom/ts/canview/CanItemIcoList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ts/can/CanToyotaBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 87
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 90
    :pswitch_0
    const-class v1, Lcom/ts/can/CanToyotaSetLockActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanToyotaSetMainActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 94
    :pswitch_1
    const-class v1, Lcom/ts/can/CanToyotaSetAcActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanToyotaSetMainActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 98
    :pswitch_2
    const-class v1, Lcom/ts/can/CanToyotaSetLightActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanToyotaSetMainActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 102
    :pswitch_3
    const-class v1, Lcom/ts/can/CanToyotaSetOtherActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanToyotaSetMainActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 106
    :pswitch_4
    const-class v1, Lcom/ts/can/CanToyotaSetLangActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanToyotaSetMainActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 33
    invoke-super {p0, p1}, Lcom/ts/can/CanToyotaBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget v1, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanToyotaSetMainActivity;->setContentView(I)V

    .line 36
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_icon_lock3:I

    sget v3, Lcom/ts/MainUI/R$string;->can_car_lock_set:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanToyotaSetMainActivity;->mItemLock:Lcom/ts/canview/CanItemIcoList;

    .line 37
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_icon_ac:I

    sget v3, Lcom/ts/MainUI/R$string;->can_ac_set:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanToyotaSetMainActivity;->mItemAc:Lcom/ts/canview/CanItemIcoList;

    .line 38
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_icon_light:I

    sget v3, Lcom/ts/MainUI/R$string;->can_light_set:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanToyotaSetMainActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    .line 39
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_icon_setup:I

    sget v3, Lcom/ts/MainUI/R$string;->can_other_set:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanToyotaSetMainActivity;->mItemOther:Lcom/ts/canview/CanItemIcoList;

    .line 40
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_icon_light2:I

    sget v3, Lcom/ts/MainUI/R$string;->can_car_lang:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanToyotaSetMainActivity;->mItemLang:Lcom/ts/canview/CanItemIcoList;

    .line 42
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetMainActivity;->mItemLock:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, p0, v4}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 43
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetMainActivity;->mItemAc:Lcom/ts/canview/CanItemIcoList;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 44
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetMainActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v2}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 45
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetMainActivity;->mItemOther:Lcom/ts/canview/CanItemIcoList;

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 46
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetMainActivity;->mItemLang:Lcom/ts/canview/CanItemIcoList;

    const/4 v2, 0x5

    invoke-virtual {v1, p0, v2}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 48
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    .line 49
    .local v0, "sl":Lcom/ts/canview/CanScrollList;
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetMainActivity;->mItemLock:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 50
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetMainActivity;->mItemAc:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 51
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetMainActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 52
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetMainActivity;->mItemOther:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 53
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetMainActivity;->mItemLang:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 60
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 62
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetMainActivity;->mItemLang:Lcom/ts/canview/CanItemIcoList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    .line 64
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onPause()V

    .line 71
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/ts/can/CanToyotaSetMainActivity;->GetAdaptData()V

    .line 78
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetMainActivity;->mItemOther:Lcom/ts/canview/CanItemIcoList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetMainActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;->TrackMode:I

    iget-object v2, p0, Lcom/ts/can/CanToyotaSetMainActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;->EDoor:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoList;->ShowGone(I)V

    .line 79
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onResume()V

    .line 80
    return-void
.end method
