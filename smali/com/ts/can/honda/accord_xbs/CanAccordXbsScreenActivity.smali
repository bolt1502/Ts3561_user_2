.class public Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;
.super Lcom/ts/can/honda/accord_xbs/CanAccordXbsBaseActivity;
.source "CanAccordXbsScreenActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_MAX:I = 0x4

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_SCR_BRIGHT:I = 0x2

.field public static final ITEM_SCR_CON:I = 0x4

.field public static final ITEM_SCR_LIGHT:I = 0x1

.field public static final ITEM_SCR_SAT:I = 0x3

.field public static final TAG:Ljava/lang/String; = "CanAccordXbsScreenActivity"

.field private static final mLdmsArr:[I


# instance fields
.field protected mItemLight:Lcom/ts/canview/CanItemPopupList;

.field protected mItemScrBri:Lcom/ts/canview/CanItemProgressList;

.field protected mItemScrCon:Lcom/ts/canview/CanItemProgressList;

.field protected mItemScrSat:Lcom/ts/canview/CanItemProgressList;

.field protected mManager:Lcom/ts/canview/CanScrollList;

.field protected mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 44
    sget v2, Lcom/ts/MainUI/R$string;->can_scr_close:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 45
    sget v2, Lcom/ts/MainUI/R$string;->can_scr_day:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 46
    sget v2, Lcom/ts/MainUI/R$string;->can_scr_night:I

    aput v2, v0, v1

    .line 42
    sput-object v0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mLdmsArr:[I

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsBaseActivity;-><init>()V

    .line 35
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;-><init>()V

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;

    .line 18
    return-void
.end method

.method private ResetData(Z)V
    .locals 4
    .param p1, "check"    # Z

    .prologue
    const/4 v3, 0x5

    .line 122
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->Yg9XbsGetScrSta(Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;)V

    .line 123
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;->Update:I

    invoke-static {v0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;->Update:I

    .line 128
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemLight:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;->Mode:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 130
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemScrBri:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;->Bright:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 131
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;->Bright:I

    if-lt v0, v3, :cond_2

    .line 133
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemScrBri:Lcom/ts/canview/CanItemProgressList;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;->Bright:I

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 140
    :goto_0
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemScrSat:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;->Sat:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 141
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;->Sat:I

    if-lt v0, v3, :cond_3

    .line 143
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemScrSat:Lcom/ts/canview/CanItemProgressList;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;->Sat:I

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 150
    :goto_1
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemScrCon:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;->Con:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 151
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;->Con:I

    if-lt v0, v3, :cond_4

    .line 153
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemScrCon:Lcom/ts/canview/CanItemProgressList;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;->Con:I

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 164
    :cond_1
    :goto_2
    return-void

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemScrBri:Lcom/ts/canview/CanItemProgressList;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;->Bright:I

    add-int/lit8 v2, v2, -0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemScrSat:Lcom/ts/canview/CanItemProgressList;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;->Sat:I

    add-int/lit8 v2, v2, -0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    goto :goto_1

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemScrCon:Lcom/ts/canview/CanItemProgressList;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;->Con:I

    add-int/lit8 v2, v2, -0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 84
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 85
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 86
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 88
    return-object v0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 94
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->Query(II)V

    .line 95
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->ResetData(Z)V

    .line 183
    return-void
.end method

.method public onChanged(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 189
    packed-switch p1, :pswitch_data_0

    .line 206
    :goto_0
    return-void

    .line 192
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->CarBlkSet(II)V

    goto :goto_0

    .line 196
    :pswitch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->CarBlkSet(II)V

    goto :goto_0

    .line 200
    :pswitch_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->CarBlkSet(II)V

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 174
    .local v0, "id":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->setContentView(I)V

    .line 57
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 59
    sget v0, Lcom/ts/MainUI/R$string;->can_ldms:I

    sget-object v1, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mLdmsArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemLight:Lcom/ts/canview/CanItemPopupList;

    .line 61
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_drive_light:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemScrBri:Lcom/ts/canview/CanItemProgressList;

    .line 62
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemScrBri:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 63
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemScrBri:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemScrBri:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v3, v4}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 65
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemScrBri:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    .line 67
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    sget v1, Lcom/ts/MainUI/R$string;->can_sat:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemScrSat:Lcom/ts/canview/CanItemProgressList;

    .line 68
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemScrSat:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 69
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemScrSat:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 70
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemScrSat:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v3, v4}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 71
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemScrSat:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    .line 73
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    sget v1, Lcom/ts/MainUI/R$string;->can_con:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemScrCon:Lcom/ts/canview/CanItemProgressList;

    .line 74
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemScrCon:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 75
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemScrCon:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 76
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemScrCon:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v3, v4}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 77
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->mItemScrCon:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    .line 79
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 212
    packed-switch p1, :pswitch_data_0

    .line 218
    :goto_0
    return-void

    .line 215
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->CarBlkSet(II)V

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    invoke-super {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsBaseActivity;->onPause()V

    .line 115
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsBaseActivity;->onResume()V

    .line 103
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->ResetData(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsScreenActivity;->QueryData()V

    .line 106
    return-void
.end method
