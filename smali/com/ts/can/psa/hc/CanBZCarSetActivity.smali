.class public Lcom/ts/can/psa/hc/CanBZCarSetActivity;
.super Lcom/ts/canview/CanScrollBaseActivity;
.source "CanBZCarSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field protected static final ITEM_CMJSFS:I = 0x7

.field protected static final ITEM_DDYCXM:I = 0x5

.field protected static final ITEM_HYSQ:I = 0x3

.field protected static final ITEM_MAX:I = 0xb

.field protected static final ITEM_MIN:I = 0x2

.field protected static final ITEM_RXD:I = 0x6

.field protected static final ITEM_SDZXDD:I = 0xa

.field protected static final ITEM_TPMS:I = 0xb

.field protected static final ITEM_XLXG:I = 0x4

.field protected static final ITEM_YBZM:I = 0x9

.field protected static final ITEM_ZCFZ:I = 0x2

.field protected static final ITEM_ZDZC:I = 0x8

.field public static final TAG:Ljava/lang/String; = "CanBZCarSetActivity"

.field protected static final mCmjsfsArr:[I

.field protected static final mDdycxmArr:[I

.field protected static final mHysqArr:[I

.field protected static final mTpmsArr:[I

.field protected static final mXlxgArr:[I

.field protected static final mYbzmArr:[I

.field protected static final mZcfzArr:[I

.field protected static final mZdzcArr:[I


# instance fields
.field private mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

.field protected mItemCmjsfs:Lcom/ts/canview/CanItemPopupList;

.field protected mItemDdycxm:Lcom/ts/canview/CanItemPopupList;

.field protected mItemHysq:Lcom/ts/canview/CanItemPopupList;

.field protected mItemRxd:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemSdzxdd:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemTpms:Lcom/ts/canview/CanItemPopupList;

.field protected mItemXlxg:Lcom/ts/canview/CanItemPopupList;

.field protected mItemYbzm:Lcom/ts/canview/CanItemPopupList;

.field protected mItemZcfz:Lcom/ts/canview/CanItemPopupList;

.field protected mItemZdzc:Lcom/ts/canview/CanItemPopupList;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

.field protected mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-array v0, v4, [I

    .line 45
    sget v1, Lcom/ts/MainUI/R$string;->can_set_disable:I

    aput v1, v0, v2

    .line 46
    sget v1, Lcom/ts/MainUI/R$string;->can_set_enable:I

    aput v1, v0, v3

    .line 43
    sput-object v0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mZcfzArr:[I

    .line 50
    new-array v0, v4, [I

    .line 51
    sget v1, Lcom/ts/MainUI/R$string;->can_set_disable:I

    aput v1, v0, v2

    .line 52
    sget v1, Lcom/ts/MainUI/R$string;->can_set_enable:I

    aput v1, v0, v3

    .line 49
    sput-object v0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mHysqArr:[I

    .line 56
    new-array v0, v4, [I

    .line 57
    sget v1, Lcom/ts/MainUI/R$string;->can_set_disable:I

    aput v1, v0, v2

    .line 58
    sget v1, Lcom/ts/MainUI/R$string;->can_set_enable:I

    aput v1, v0, v3

    .line 55
    sput-object v0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mXlxgArr:[I

    .line 62
    new-array v0, v6, [I

    .line 63
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    .line 64
    sget v1, Lcom/ts/MainUI/R$string;->can_15s:I

    aput v1, v0, v3

    .line 65
    sget v1, Lcom/ts/MainUI/R$string;->can_30s:I

    aput v1, v0, v4

    .line 66
    sget v1, Lcom/ts/MainUI/R$string;->can_60s:I

    aput v1, v0, v5

    .line 61
    sput-object v0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mDdycxmArr:[I

    .line 70
    new-array v0, v4, [I

    .line 71
    sget v1, Lcom/ts/MainUI/R$string;->can_sym:I

    aput v1, v0, v2

    .line 72
    sget v1, Lcom/ts/MainUI/R$string;->can_jsym:I

    aput v1, v0, v3

    .line 69
    sput-object v0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mCmjsfsArr:[I

    .line 76
    new-array v0, v4, [I

    .line 77
    sget v1, Lcom/ts/MainUI/R$string;->can_set_disable:I

    aput v1, v0, v2

    .line 78
    sget v1, Lcom/ts/MainUI/R$string;->can_set_enable:I

    aput v1, v0, v3

    .line 75
    sput-object v0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mZdzcArr:[I

    .line 82
    new-array v0, v6, [I

    .line 83
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    .line 84
    sget v1, Lcom/ts/MainUI/R$string;->can_15s:I

    aput v1, v0, v3

    .line 85
    sget v1, Lcom/ts/MainUI/R$string;->can_30s:I

    aput v1, v0, v4

    .line 86
    sget v1, Lcom/ts/MainUI/R$string;->can_60s:I

    aput v1, v0, v5

    .line 81
    sput-object v0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mYbzmArr:[I

    .line 89
    new-array v0, v4, [I

    .line 90
    sget v1, Lcom/ts/MainUI/R$string;->can_rpa_cancel_reset:I

    aput v1, v0, v2

    sget v1, Lcom/ts/MainUI/R$string;->can_rpa_reset:I

    aput v1, v0, v3

    .line 89
    sput-object v0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mTpmsArr:[I

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ts/canview/CanScrollBaseActivity;-><init>()V

    .line 39
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PeugSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    .line 40
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    .line 21
    return-void
.end method


# virtual methods
.method protected CarSet(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 416
    invoke-static {p1, p2}, Lcom/lgb/canmodule/CanJni;->BZCarSet(II)V

    .line 417
    return-void
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 117
    sget v0, Lcom/ts/MainUI/R$string;->can_car_zcfz:I

    sget-object v1, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mZcfzArr:[I

    const/4 v2, 0x2

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->AddPopup(Lcom/ts/canview/CanItemPopupList$onPopItemClick;I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemZcfz:Lcom/ts/canview/CanItemPopupList;

    .line 118
    sget v0, Lcom/ts/MainUI/R$string;->can_dcs_hys:I

    sget-object v1, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mHysqArr:[I

    const/4 v2, 0x3

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->AddPopup(Lcom/ts/canview/CanItemPopupList$onPopItemClick;I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemHysq:Lcom/ts/canview/CanItemPopupList;

    .line 119
    sget v0, Lcom/ts/MainUI/R$string;->can_xlxgsd:I

    sget-object v1, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mXlxgArr:[I

    const/4 v2, 0x4

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->AddPopup(Lcom/ts/canview/CanItemPopupList$onPopItemClick;I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemXlxg:Lcom/ts/canview/CanItemPopupList;

    .line 120
    sget v0, Lcom/ts/MainUI/R$string;->can_car_ddycxm:I

    sget-object v1, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mDdycxmArr:[I

    const/4 v2, 0x5

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->AddPopup(Lcom/ts/canview/CanItemPopupList$onPopItemClick;I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemDdycxm:Lcom/ts/canview/CanItemPopupList;

    .line 121
    sget v0, Lcom/ts/MainUI/R$string;->can_light_rxd:I

    const/4 v1, 0x6

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->AddSwitch(Landroid/view/View$OnClickListener;II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemRxd:Lcom/ts/canview/CanItemSwitchList;

    .line 122
    sget v0, Lcom/ts/MainUI/R$string;->can_cmjsfs:I

    sget-object v1, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mCmjsfsArr:[I

    const/4 v2, 0x7

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->AddPopup(Lcom/ts/canview/CanItemPopupList$onPopItemClick;I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemCmjsfs:Lcom/ts/canview/CanItemPopupList;

    .line 123
    sget v0, Lcom/ts/MainUI/R$string;->can_zdzc:I

    sget-object v1, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mZdzcArr:[I

    const/16 v2, 0x8

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->AddPopup(Lcom/ts/canview/CanItemPopupList$onPopItemClick;I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemZdzc:Lcom/ts/canview/CanItemPopupList;

    .line 124
    sget v0, Lcom/ts/MainUI/R$string;->can_ybzm:I

    sget-object v1, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mYbzmArr:[I

    const/16 v2, 0x9

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->AddPopup(Lcom/ts/canview/CanItemPopupList$onPopItemClick;I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemYbzm:Lcom/ts/canview/CanItemPopupList;

    .line 125
    sget v0, Lcom/ts/MainUI/R$string;->can_zxd:I

    const/16 v1, 0xa

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->AddSwitch(Landroid/view/View$OnClickListener;II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemSdzxdd:Lcom/ts/canview/CanItemSwitchList;

    .line 126
    sget v0, Lcom/ts/MainUI/R$string;->can_tpms_reset_notice:I

    sget-object v1, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mTpmsArr:[I

    const/16 v2, 0xb

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->AddPopup(Lcom/ts/canview/CanItemPopupList$onPopItemClick;I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemTpms:Lcom/ts/canview/CanItemPopupList;

    .line 127
    invoke-virtual {p0}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->LayoutUI()V

    .line 128
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 3
    .param p1, "item"    # I

    .prologue
    const/4 v2, 0x4

    .line 213
    const/4 v0, 0x1

    .line 214
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 272
    :goto_0
    invoke-static {v0}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 217
    :pswitch_0
    const/4 v0, 0x1

    .line 218
    goto :goto_0

    .line 221
    :pswitch_1
    const/4 v0, 0x1

    .line 222
    goto :goto_0

    .line 225
    :pswitch_2
    const/4 v0, 0x1

    .line 226
    goto :goto_0

    .line 229
    :pswitch_3
    const/4 v0, 0x1

    .line 230
    goto :goto_0

    .line 233
    :pswitch_4
    const/4 v0, 0x1

    .line 234
    goto :goto_0

    .line 237
    :pswitch_5
    const/4 v0, 0x1

    .line 238
    goto :goto_0

    .line 241
    :pswitch_6
    const/4 v0, 0x1

    .line 242
    goto :goto_0

    .line 245
    :pswitch_7
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 247
    const/4 v0, 0x1

    .line 248
    goto :goto_0

    .line 251
    :cond_0
    const/4 v0, 0x0

    .line 253
    goto :goto_0

    .line 256
    :pswitch_8
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 258
    const/4 v0, 0x1

    .line 259
    goto :goto_0

    .line 262
    :cond_1
    const/4 v0, 0x0

    .line 264
    goto :goto_0

    .line 266
    :pswitch_9
    const/4 v0, 0x1

    .line 267
    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 205
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 209
    return-void

    .line 207
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->ShowItem(I)V

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 153
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->BZGetSetup(Lcom/lgb/canmodule/CanDataInfo$PeugSet;)V

    .line 154
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->Update:I

    .line 159
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemZcfz:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->fgZcfz:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 160
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemHysq:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->fgRearWiper:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 161
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemXlxg:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->Xlxg:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 162
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemDdycxm:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->Bwhj:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 163
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemRxd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->fgRxd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 164
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemCmjsfs:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->DoorOpt:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 165
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemZdzc:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->Zdzc:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 166
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemYbzm:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->Ybzm:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 167
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemSdzxdd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->Sdzxdd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 172
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->IsHaveItem(I)Z

    move-result v0

    .line 280
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 325
    :goto_0
    return-void

    .line 283
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemZcfz:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 287
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemHysq:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 291
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemXlxg:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 295
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemDdycxm:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 299
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemRxd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 303
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemCmjsfs:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 307
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemZdzc:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 311
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemYbzm:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 315
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemSdzxdd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 319
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mItemTpms:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->ResetData(Z)V

    .line 334
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 407
    .line 412
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 342
    .local v0, "item":I
    sparse-switch v0, :sswitch_data_0

    .line 355
    :goto_0
    return-void

    .line 345
    :sswitch_0
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->fgRxd:I

    invoke-virtual {p0, v2}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->CarSet(II)V

    goto :goto_0

    .line 349
    :sswitch_1
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->Sdzxdd:I

    invoke-virtual {p0, v2}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->CarSet(II)V

    goto :goto_0

    .line 342
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/ts/canview/CanScrollBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->InitUI()V

    .line 113
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 364
    packed-switch p1, :pswitch_data_0

    .line 401
    :goto_0
    :pswitch_0
    return-void

    .line 367
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->CarSet(II)V

    goto :goto_0

    .line 371
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->CarSet(II)V

    goto :goto_0

    .line 375
    :pswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->CarSet(II)V

    goto :goto_0

    .line 379
    :pswitch_4
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->CarSet(II)V

    goto :goto_0

    .line 383
    :pswitch_5
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->CarSet(II)V

    goto :goto_0

    .line 387
    :pswitch_6
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->CarSet(II)V

    goto :goto_0

    .line 391
    :pswitch_7
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->CarSet(II)V

    goto :goto_0

    .line 395
    :pswitch_8
    invoke-static {p2}, Lcom/lgb/canmodule/CanJni;->BZTpmsSet(I)V

    goto :goto_0

    .line 364
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 195
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 196
    invoke-super {p0}, Lcom/ts/canview/CanScrollBaseActivity;->onPause()V

    .line 198
    const-string v0, "CanBZCarSetActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Lcom/ts/canview/CanScrollBaseActivity;->onResume()V

    .line 183
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->ResetData(Z)V

    .line 185
    invoke-virtual {p0}, Lcom/ts/can/psa/hc/CanBZCarSetActivity;->QueryData()V

    .line 187
    const-string v0, "CanBZCarSetActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method
