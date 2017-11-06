.class public Lcom/ts/can/kaiyi/x3/CanKY3XSetOtherActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanKY3XSetOtherActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_TDJD:I

.field private static mTdjdArray:[Ljava/lang/String;


# instance fields
.field private mItemTdjd:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 23
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOtherActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    .line 13
    return-void
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/ts/can/kaiyi/x3/CanKY3XSetOtherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$array;->can_kaiyi_3x_tdjd:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOtherActivity;->mTdjdArray:[Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOtherActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 51
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOtherActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_kaiyi_3x_tdjd:I

    sget-object v2, Lcom/ts/can/kaiyi/x3/CanKY3XSetOtherActivity;->mTdjdArray:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[Ljava/lang/String;ILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOtherActivity;->mItemTdjd:Lcom/ts/canview/CanItemPopupList;

    .line 52
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOtherActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->KaiYi3xGetInfo(Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;)V

    .line 58
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOtherActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/kaiyi/x3/CanKY3XSetOtherActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOtherActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/kaiyi/x3/CanKY3XSetOtherActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOtherActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;->Update:I

    .line 64
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOtherActivity;->mItemTdjd:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOtherActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;->Tdjd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 67
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 28
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 32
    packed-switch p1, :pswitch_data_0

    .line 38
    :goto_0
    return-void

    .line 35
    :pswitch_0
    const/16 v0, 0xe

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->KaiYi3xCarSet(II)V

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
