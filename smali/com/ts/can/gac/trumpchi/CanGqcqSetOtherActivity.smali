.class public Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;
.super Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;
.source "CanGqcqSetOtherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;


# static fields
.field public static final ITEM_FSET:I = 0x2

.field public static final ITEM_LANG:I = 0x1

.field private static final ITEM_MAX:I = 0x2

.field private static final ITEM_MIN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanGqcqSetOtherActivity"


# instance fields
.field private mItemFactory:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemLang:Lcom/ts/canview/CanItemPopupList;

.field protected mLangArr:[Ljava/lang/String;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;-><init>()V

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 32
    const-string v2, "\u4e2d\u6587"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 33
    const-string v2, "English"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->mLangArr:[Ljava/lang/String;

    .line 20
    return-void
.end method

.method private AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "id"    # I

    .prologue
    .line 165
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 166
    .local v0, "btn":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 167
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 169
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 170
    return-object v0
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 147
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 148
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 149
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 150
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 151
    return-object v0
.end method

.method protected AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 156
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 157
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 158
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 159
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 160
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 96
    sget v0, Lcom/ts/MainUI/R$string;->can_lang_set:I

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->mLangArr:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    .line 97
    sget v0, Lcom/ts/MainUI/R$string;->can_factory_set:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->mItemFactory:Lcom/ts/canview/CanItemTextBtnList;

    .line 99
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->LayoutUI()V

    .line 100
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 121
    .local v0, "ret":I
    const/4 v0, 0x1

    .line 122
    invoke-static {v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->i2b(I)Z

    move-result v1

    return v1
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 106
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 110
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->ShowItem(I)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->GetSetData()V

    .line 57
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Update:I

    invoke-static {v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Lang:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 62
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Update:I

    .line 65
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->IsHaveItem(I)Z

    move-result v0

    .line 130
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 133
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->mItemFactory:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->ResetData(Z)V

    .line 197
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 179
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 189
    :goto_0
    return-void

    .line 183
    :pswitch_0
    new-instance v1, Lcom/ts/canview/CanItemMsgBox;

    const/4 v2, 0x2

    sget v3, Lcom/ts/MainUI/R$string;->can_sure_setup:I

    invoke-direct {v1, v2, p0, v3, p0}, Lcom/ts/canview/CanItemMsgBox;-><init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V

    .line 184
    .local v1, "msgbox":Lcom/ts/canview/CanItemMsgBox;
    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->InitUI()V

    .line 52
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 203
    packed-switch p1, :pswitch_data_0

    .line 215
    :goto_0
    :pswitch_0
    return-void

    .line 206
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->CarSet(II)V

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOK(I)V
    .locals 2
    .param p1, "param"    # I

    .prologue
    .line 221
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GqcqCarSet(II)V

    .line 222
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 89
    invoke-super {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;->onPause()V

    .line 90
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;->onResume()V

    .line 76
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->ResetData(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;->QueryData()V

    .line 80
    const-string v0, "CanGqcqSetOtherActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method
