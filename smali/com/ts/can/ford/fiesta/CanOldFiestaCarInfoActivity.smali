.class public Lcom/ts/can/ford/fiesta/CanOldFiestaCarInfoActivity;
.super Lcom/ts/canview/CanScrollBaseActivity;
.source "CanOldFiestaCarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field protected static final ITEM_INFO:I = 0x3

.field protected static final ITEM_MAX:I = 0x3

.field protected static final ITEM_MIN:I = 0x2

.field protected static final ITEM_SET:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanOldFiestaCarInfoActivity"


# instance fields
.field protected mItemInfo:Lcom/ts/canview/CanItemIcoList;

.field protected mItemSet:Lcom/ts/canview/CanItemIcoList;

.field protected mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/canview/CanScrollBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected CarSet(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 221
    return-void
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 47
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_setup:I

    sget v1, Lcom/ts/MainUI/R$string;->can_car_set:I

    const/4 v2, 0x2

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/ts/can/ford/fiesta/CanOldFiestaCarInfoActivity;->AddIcoItem(Landroid/view/View$OnClickListener;III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaCarInfoActivity;->mItemSet:Lcom/ts/canview/CanItemIcoList;

    .line 48
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_service:I

    sget v1, Lcom/ts/MainUI/R$string;->can_info_title:I

    const/4 v2, 0x3

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/ts/can/ford/fiesta/CanOldFiestaCarInfoActivity;->AddIcoItem(Landroid/view/View$OnClickListener;III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaCarInfoActivity;->mItemInfo:Lcom/ts/canview/CanItemIcoList;

    .line 50
    invoke-virtual {p0}, Lcom/ts/can/ford/fiesta/CanOldFiestaCarInfoActivity;->LayoutUI()V

    .line 51
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 125
    const/4 v0, 0x1

    .line 126
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 139
    :goto_0
    const/4 v0, 0x1

    .line 140
    invoke-static {v0}, Lcom/ts/can/ford/fiesta/CanOldFiestaCarInfoActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 129
    :pswitch_0
    const/4 v0, 0x0

    .line 130
    goto :goto_0

    .line 133
    :pswitch_1
    const/4 v0, 0x0

    .line 134
    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 117
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 121
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/ford/fiesta/CanOldFiestaCarInfoActivity;->ShowItem(I)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 84
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/ts/can/ford/fiesta/CanOldFiestaCarInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 148
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaCarInfoActivity;->mItemSet:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 155
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/ford/fiesta/CanOldFiestaCarInfoActivity;->mItemInfo:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/fiesta/CanOldFiestaCarInfoActivity;->ResetData(Z)V

    .line 170
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 211
    .line 216
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 178
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 181
    :pswitch_0
    const-class v1, Lcom/ts/can/ford/fiesta/CanOldFiestaSetActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/fiesta/CanOldFiestaCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 185
    :pswitch_1
    const-class v1, Lcom/ts/can/ford/fiesta/CanOldFiestaLogActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/fiesta/CanOldFiestaCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/ts/canview/CanScrollBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/ts/can/ford/fiesta/CanOldFiestaCarInfoActivity;->InitUI()V

    .line 43
    return-void
.end method

.method public onItem(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 200
    .line 205
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
    invoke-super {p0}, Lcom/ts/canview/CanScrollBaseActivity;->onPause()V

    .line 110
    const-string v0, "CanOldFiestaCarInfoActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/ts/canview/CanScrollBaseActivity;->onResume()V

    .line 95
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/fiesta/CanOldFiestaCarInfoActivity;->ResetData(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/ts/can/ford/fiesta/CanOldFiestaCarInfoActivity;->QueryData()V

    .line 99
    const-string v0, "CanOldFiestaCarInfoActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method
