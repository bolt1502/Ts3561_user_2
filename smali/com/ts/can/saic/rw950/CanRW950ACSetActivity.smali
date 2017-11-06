.class public Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;
.super Lcom/ts/can/saic/rw950/CanRW950BaseActivity;
.source "CanRW950ACSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_DCHYS:I = 0x5

.field public static final ITEM_FQWD:I = 0x3

.field public static final ITEM_HCCW:I = 0x4

.field public static final ITEM_KQZLCGQ:I = 0x2

.field private static final ITEM_MAX:I = 0x5

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_ZDMSFL:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanRW950ACSetActivity"

.field private static final mFqwdlArr:[I

.field private static final mKqzlcgqlArr:[I

.field private static final mZdmsflArr:[I


# instance fields
.field private mACSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;

.field private mItemDchys:Lcom/ts/canview/CanItemSwitchList;

.field private mItemFqwd:Lcom/ts/canview/CanItemPopupList;

.field private mItemHccw:Lcom/ts/canview/CanItemSwitchList;

.field private mItemKqzlcgq:Lcom/ts/canview/CanItemPopupList;

.field private mItemZdmsfl:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-array v0, v5, [I

    .line 35
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_low:I

    aput v1, v0, v2

    .line 36
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_mid:I

    aput v1, v0, v3

    .line 37
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_high:I

    aput v1, v0, v4

    .line 33
    sput-object v0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mZdmsflArr:[I

    .line 41
    new-array v0, v5, [I

    .line 42
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    .line 43
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_lo_sens:I

    aput v1, v0, v3

    .line 44
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_hi_sens:I

    aput v1, v0, v4

    .line 40
    sput-object v0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mKqzlcgqlArr:[I

    .line 48
    new-array v0, v5, [I

    .line 49
    sget v1, Lcom/ts/MainUI/R$string;->can_ty_set:I

    aput v1, v0, v2

    .line 50
    sget v1, Lcom/ts/MainUI/R$string;->can_fq_set:I

    aput v1, v0, v3

    .line 51
    sget v1, Lcom/ts/MainUI/R$string;->can_sc_set:I

    aput v1, v0, v4

    .line 47
    sput-object v0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mFqwdlArr:[I

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ts/can/saic/rw950/CanRW950BaseActivity;-><init>()V

    .line 61
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;-><init>()V

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;

    .line 17
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 129
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 130
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 131
    iget-object v1, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 132
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 139
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 140
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 141
    iget-object v1, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 142
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 118
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 119
    sget v0, Lcom/ts/MainUI/R$string;->can_ac_zdfl:I

    sget-object v1, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mZdmsflArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mItemZdmsfl:Lcom/ts/canview/CanItemPopupList;

    .line 120
    sget v0, Lcom/ts/MainUI/R$string;->can_ac_cgq:I

    sget-object v1, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mKqzlcgqlArr:[I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mItemKqzlcgq:Lcom/ts/canview/CanItemPopupList;

    .line 121
    sget v0, Lcom/ts/MainUI/R$string;->can_ac_fqwd:I

    sget-object v1, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mFqwdlArr:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mItemFqwd:Lcom/ts/canview/CanItemPopupList;

    .line 122
    sget v0, Lcom/ts/MainUI/R$string;->can_ac_hccw:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mItemHccw:Lcom/ts/canview/CanItemSwitchList;

    .line 123
    sget v0, Lcom/ts/MainUI/R$string;->can_dcyhszdqd:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mItemDchys:Lcom/ts/canview/CanItemSwitchList;

    .line 124
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->RW950GetACSetData(Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;)V

    .line 78
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;->Update:I

    invoke-static {v0}, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;->Update:I

    .line 83
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mItemZdmsfl:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;->ubAutoMode:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 84
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mItemKqzlcgq:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;->ubKQZLLMD:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 85
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mItemFqwd:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;->ubFQWD:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 86
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mItemHccw:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;->ubHCZDCW:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 87
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mItemDchys:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;->ubDcyhs:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 91
    :cond_1
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->ResetData(Z)V

    .line 171
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 150
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 163
    :goto_0
    return-void

    .line 153
    :pswitch_0
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;->ubHCZDCW:I

    invoke-virtual {p0, v2}, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->RW950ACSet(II)V

    goto :goto_0

    .line 157
    :pswitch_1
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;->ubDcyhs:I

    invoke-virtual {p0, v2}, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->RW950ACSet(II)V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/ts/can/saic/rw950/CanRW950BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->InitUI()V

    .line 73
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "Id"    # I
    .param p2, "item"    # I

    .prologue
    .line 177
    packed-switch p1, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 180
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->RW950ACSet(II)V

    goto :goto_0

    .line 184
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->RW950ACSet(II)V

    goto :goto_0

    .line 188
    :pswitch_2
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->RW950ACSet(II)V

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 113
    invoke-super {p0}, Lcom/ts/can/saic/rw950/CanRW950BaseActivity;->onPause()V

    .line 114
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/ts/can/saic/rw950/CanRW950BaseActivity;->onResume()V

    .line 102
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->ResetData(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;->QueryData()V

    .line 106
    return-void
.end method
