.class public Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanGqcqCarSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_AC:I = 0x1

.field public static final ITEM_ATTACH:I = 0x3

.field public static final ITEM_CHAIR:I = 0x2

.field public static final ITEM_DRV_ASS:I = 0x4

.field public static final ITEM_LIGHT:I = 0x5

.field private static final ITEM_MAX:I = 0x6

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_OTHER:I = 0x6

.field public static final TAG:Ljava/lang/String; = "CanGqcqCarSetActivity"


# instance fields
.field private mItemAC:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemAttach:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemChair:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemDrvAss:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemLight:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemOther:Lcom/ts/canview/CanItemTextBtnList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method

.method private AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "id"    # I

    .prologue
    .line 183
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 184
    .local v0, "btn":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 185
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 187
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 188
    return-object v0
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 174
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 175
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 176
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 177
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 178
    return-object v0
.end method

.method protected InitUI()V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 110
    sget v0, Lcom/ts/MainUI/R$string;->can_ac_set:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->mItemAC:Lcom/ts/canview/CanItemTextBtnList;

    .line 111
    sget v0, Lcom/ts/MainUI/R$string;->can_chair_set:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->mItemChair:Lcom/ts/canview/CanItemTextBtnList;

    .line 112
    sget v0, Lcom/ts/MainUI/R$string;->can_jsfz:I

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->mItemDrvAss:Lcom/ts/canview/CanItemTextBtnList;

    .line 113
    sget v0, Lcom/ts/MainUI/R$string;->can_attachment:I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->mItemAttach:Lcom/ts/canview/CanItemTextBtnList;

    .line 114
    sget v0, Lcom/ts/MainUI/R$string;->can_light_set:I

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->mItemLight:Lcom/ts/canview/CanItemTextBtnList;

    .line 115
    sget v0, Lcom/ts/MainUI/R$string;->can_other_set:I

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->mItemOther:Lcom/ts/canview/CanItemTextBtnList;

    .line 117
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 138
    .local v0, "ret":I
    invoke-static {v0}, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->i2b(I)Z

    move-result v1

    return v1
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 127
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->ShowItem(I)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 81
    return-void
.end method

.method protected ShowItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->IsHaveItem(I)Z

    move-result v0

    .line 146
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 170
    :pswitch_0
    return-void

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->ResetData(Z)V

    .line 233
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 196
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 225
    :goto_0
    return-void

    .line 199
    :pswitch_0
    const-class v1, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 203
    :pswitch_1
    const-class v1, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 207
    :pswitch_2
    const-class v1, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 211
    :pswitch_3
    const-class v1, Lcom/ts/can/gac/trumpchi/CanGqcqSetDrvAssActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 215
    :pswitch_4
    const-class v1, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 219
    :pswitch_5
    const-class v1, Lcom/ts/can/gac/trumpchi/CanGqcqSetOtherActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->InitUI()V

    .line 49
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 103
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 104
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 92
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->ResetData(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqCarSetActivity;->QueryData()V

    .line 96
    return-void
.end method
