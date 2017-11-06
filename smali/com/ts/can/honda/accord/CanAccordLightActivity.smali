.class public Lcom/ts/can/honda/accord/CanAccordLightActivity;
.super Lcom/ts/can/honda/accord/CanAccordBaseActivity;
.source "CanAccordLightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_HEDALIGHT_TIMER:I = 0x2

.field public static final ITEM_INTERIOR_TIME:I = 0x3

.field public static final ITEM_LIGHT_SENS:I = 0x1

.field private static final ITEM_MAX:I = 0x3

.field private static final ITEM_MIN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanAccordLightActivity"

.field private static final mHeadLightsArr:[I

.field private static final mInteriorArr:[I

.field private static final mLightSensArr:[I


# instance fields
.field private mItemHeadlight:Lcom/ts/canview/CanItemPopupList;

.field private mItemInterior:Lcom/ts/canview/CanItemPopupList;

.field private mItemLightSens:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 28
    sget v1, Lcom/ts/MainUI/R$string;->can_cdzd:I

    aput v1, v0, v2

    .line 29
    sget v1, Lcom/ts/MainUI/R$string;->can_cdjd:I

    aput v1, v0, v3

    .line 30
    sget v1, Lcom/ts/MainUI/R$string;->can_cdzj:I

    aput v1, v0, v4

    .line 31
    sget v1, Lcom/ts/MainUI/R$string;->can_cdjg:I

    aput v1, v0, v5

    .line 32
    sget v1, Lcom/ts/MainUI/R$string;->can_cdzg:I

    aput v1, v0, v6

    .line 26
    sput-object v0, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mLightSensArr:[I

    .line 36
    new-array v0, v6, [I

    .line 37
    sget v1, Lcom/ts/MainUI/R$string;->can_0s:I

    aput v1, v0, v2

    .line 38
    sget v1, Lcom/ts/MainUI/R$string;->can_15s:I

    aput v1, v0, v3

    .line 39
    sget v1, Lcom/ts/MainUI/R$string;->can_30s:I

    aput v1, v0, v4

    .line 40
    sget v1, Lcom/ts/MainUI/R$string;->can_60s:I

    aput v1, v0, v5

    .line 35
    sput-object v0, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mHeadLightsArr:[I

    .line 44
    new-array v0, v5, [I

    .line 45
    sget v1, Lcom/ts/MainUI/R$string;->can_15s:I

    aput v1, v0, v2

    .line 46
    sget v1, Lcom/ts/MainUI/R$string;->can_30s:I

    aput v1, v0, v3

    .line 47
    sget v1, Lcom/ts/MainUI/R$string;->can_60s:I

    aput v1, v0, v4

    .line 43
    sput-object v0, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mInteriorArr:[I

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ts/can/honda/accord/CanAccordBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 182
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 183
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 184
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 185
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 186
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 191
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 192
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 193
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 194
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 195
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 115
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 116
    sget v0, Lcom/ts/MainUI/R$string;->can_zdddlmd:I

    sget-object v1, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mLightSensArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/honda/accord/CanAccordLightActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mItemLightSens:Lcom/ts/canview/CanItemPopupList;

    .line 117
    sget v0, Lcom/ts/MainUI/R$string;->can_ddzdxmsj:I

    sget-object v1, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mHeadLightsArr:[I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/honda/accord/CanAccordLightActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mItemHeadlight:Lcom/ts/canview/CanItemPopupList;

    .line 118
    sget v0, Lcom/ts/MainUI/R$string;->can_cndgjgsj:I

    sget-object v1, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mInteriorArr:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/honda/accord/CanAccordLightActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mItemInterior:Lcom/ts/canview/CanItemPopupList;

    .line 119
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 152
    :goto_0
    invoke-static {v0}, Lcom/ts/can/honda/accord/CanAccordLightActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 137
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->AutoLightSen:I

    .line 138
    goto :goto_0

    .line 141
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->HeadlightAutoOffTime:I

    .line 142
    goto :goto_0

    .line 145
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->InteriorTime:I

    .line 146
    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/ts/can/honda/accord/CanAccordLightActivity;->GetAdtData()V

    .line 125
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 129
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord/CanAccordLightActivity;->ShowItem(I)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/ts/can/honda/accord/CanAccordLightActivity;->GetSetData()V

    .line 76
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/honda/accord/CanAccordLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Update:I

    invoke-static {v0}, Lcom/ts/can/honda/accord/CanAccordLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Update:I

    .line 81
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mItemLightSens:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->AutoLightSen:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 82
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mItemHeadlight:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->HeadlightAutoOffTime:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 83
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mItemInterior:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->InteriorTime:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 88
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/ts/can/honda/accord/CanAccordLightActivity;->IsHaveItem(I)Z

    move-result v0

    .line 160
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 163
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mItemLightSens:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 167
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mItemHeadlight:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 171
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLightActivity;->mItemInterior:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord/CanAccordLightActivity;->ResetData(Z)V

    .line 226
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 204
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 218
    :pswitch_0
    return-void

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/ts/can/honda/accord/CanAccordBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord/CanAccordLightActivity;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/ts/can/honda/accord/CanAccordLightActivity;->InitUI()V

    .line 68
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 232
    packed-switch p1, :pswitch_data_0

    .line 249
    :goto_0
    return-void

    .line 235
    :pswitch_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord/CanAccordLightActivity;->CarSet(II)V

    goto :goto_0

    .line 239
    :pswitch_1
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord/CanAccordLightActivity;->CarSet(II)V

    goto :goto_0

    .line 243
    :pswitch_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord/CanAccordLightActivity;->CarSet(II)V

    goto :goto_0

    .line 232
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
    .line 109
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 110
    invoke-super {p0}, Lcom/ts/can/honda/accord/CanAccordBaseActivity;->onPause()V

    .line 111
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/ts/can/honda/accord/CanAccordBaseActivity;->onResume()V

    .line 99
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord/CanAccordLightActivity;->ResetData(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/ts/can/honda/accord/CanAccordLightActivity;->QueryData()V

    .line 102
    invoke-virtual {p0}, Lcom/ts/can/honda/accord/CanAccordLightActivity;->LayoutUI()V

    .line 103
    return-void
.end method
