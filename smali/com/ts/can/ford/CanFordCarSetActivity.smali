.class public Lcom/ts/can/ford/CanFordCarSetActivity;
.super Lcom/ts/can/ford/CanFordBaseActivity;
.source "CanFordCarSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_JBTSY:I = 0x3

.field public static final ITEM_LCDW:I = 0x5

.field public static final ITEM_LDMS:I = 0x6

.field private static final ITEM_MAX:I = 0x7

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_QYLXT:I = 0x1

.field public static final ITEM_TPMS:I = 0x8

.field public static final ITEM_XXTSY:I = 0x2

.field public static final ITEM_YSGYKG:I = 0x7

.field public static final ITEM_ZXD:I = 0x4

.field public static final TAG:Ljava/lang/String; = "CanPSACarSetActivity"

.field private static final mLangArr:[I

.field private static final mLcdwArr:[Ljava/lang/String;

.field private static final mLdmsArr:[I


# instance fields
.field private mAdtData:Lcom/lgb/canmodule/CanDataInfo$FordAdt;

.field private mFwzmArr:[Ljava/lang/String;

.field private mItemJbtsy:Lcom/ts/canview/CanItemSwitchList;

.field private mItemLcdw:Lcom/ts/canview/CanItemPopupList;

.field private mItemLdms:Lcom/ts/canview/CanItemPopupList;

.field private mItemQylxt:Lcom/ts/canview/CanItemSwitchList;

.field private mItemTpms:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemTybd:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemXxtsy:Lcom/ts/canview/CanItemSwitchList;

.field private mItemYsgykg:Lcom/ts/canview/CanItemSwitchList;

.field private mItemZxd:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 42
    sget v1, Lcom/ts/MainUI/R$string;->lang_en_uk:I

    aput v1, v0, v3

    .line 43
    sget v1, Lcom/ts/MainUI/R$string;->lang_cn:I

    aput v1, v0, v4

    .line 44
    sget v1, Lcom/ts/MainUI/R$string;->lang_pyccknn:I

    aput v1, v0, v5

    const/4 v1, 0x3

    .line 45
    sget v2, Lcom/ts/MainUI/R$string;->lang_francais:I

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 46
    sget v2, Lcom/ts/MainUI/R$string;->lang_deutsch:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 47
    sget v2, Lcom/ts/MainUI/R$string;->lang_espanol:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 48
    sget v2, Lcom/ts/MainUI/R$string;->lang_itanliano:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 49
    sget v2, Lcom/ts/MainUI/R$string;->lang_nederlands:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 50
    sget v2, Lcom/ts/MainUI/R$string;->lang_portugues:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 51
    sget v2, Lcom/ts/MainUI/R$string;->lang_turkce:I

    aput v2, v0, v1

    .line 40
    sput-object v0, Lcom/ts/can/ford/CanFordCarSetActivity;->mLangArr:[I

    .line 55
    new-array v0, v5, [Ljava/lang/String;

    .line 56
    const-string v1, "km"

    aput-object v1, v0, v3

    .line 57
    const-string v1, "mi"

    aput-object v1, v0, v4

    .line 54
    sput-object v0, Lcom/ts/can/ford/CanFordCarSetActivity;->mLcdwArr:[Ljava/lang/String;

    .line 61
    new-array v0, v5, [I

    .line 62
    sget v1, Lcom/ts/MainUI/R$string;->can_shoudong:I

    aput v1, v0, v3

    .line 63
    sget v1, Lcom/ts/MainUI/R$string;->can_type_mode_auto:I

    aput v1, v0, v4

    .line 60
    sput-object v0, Lcom/ts/can/ford/CanFordCarSetActivity;->mLdmsArr:[I

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/ts/can/ford/CanFordBaseActivity;-><init>()V

    .line 89
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$FordSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$FordSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    .line 90
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$FordAdt;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$FordAdt;-><init>()V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$FordAdt;

    .line 23
    return-void
.end method

.method private AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "id"    # I

    .prologue
    .line 299
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 300
    .local v0, "btn":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 301
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 304
    return-object v0
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 272
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 273
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 274
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 275
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 276
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 281
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 282
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 283
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 284
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 285
    return-object v0
.end method

.method protected AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 290
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 291
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 292
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 293
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 294
    return-object v0
.end method

.method protected GetSWVal(III)I
    .locals 0
    .param p1, "cur"    # I
    .param p2, "on"    # I
    .param p3, "off"    # I

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 315
    .end local p2    # "on":I
    :goto_0
    return p2

    .restart local p2    # "on":I
    :cond_0
    move p2, p3

    goto :goto_0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    .line 160
    new-instance v1, Lcom/ts/canview/CanScrollList;

    invoke-direct {v1, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 162
    invoke-virtual {p0}, Lcom/ts/can/ford/CanFordCarSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$array;->can_fist_zxd:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "strZxdArr":[Ljava/lang/String;
    sget v1, Lcom/ts/MainUI/R$string;->can_traction_control_sys:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/ford/CanFordCarSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mItemQylxt:Lcom/ts/canview/CanItemSwitchList;

    .line 165
    sget v1, Lcom/ts/MainUI/R$string;->can_message_tone:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/ford/CanFordCarSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mItemXxtsy:Lcom/ts/canview/CanItemSwitchList;

    .line 166
    sget v1, Lcom/ts/MainUI/R$string;->can_alert_tone:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/ford/CanFordCarSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mItemJbtsy:Lcom/ts/canview/CanItemSwitchList;

    .line 167
    sget v1, Lcom/ts/MainUI/R$string;->can_rain_sensor:I

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/ford/CanFordCarSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mItemYsgykg:Lcom/ts/canview/CanItemSwitchList;

    .line 169
    sget v1, Lcom/ts/MainUI/R$string;->can_lcdw:I

    sget-object v2, Lcom/ts/can/ford/CanFordCarSetActivity;->mLcdwArr:[Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/ford/CanFordCarSetActivity;->AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mItemLcdw:Lcom/ts/canview/CanItemPopupList;

    .line 170
    sget v1, Lcom/ts/MainUI/R$string;->can_zxdsszs:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/ts/can/ford/CanFordCarSetActivity;->AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mItemZxd:Lcom/ts/canview/CanItemPopupList;

    .line 171
    sget v1, Lcom/ts/MainUI/R$string;->can_ldms:I

    sget-object v2, Lcom/ts/can/ford/CanFordCarSetActivity;->mLdmsArr:[I

    const/4 v3, 0x6

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/ford/CanFordCarSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mItemLdms:Lcom/ts/canview/CanItemPopupList;

    .line 173
    sget v1, Lcom/ts/MainUI/R$string;->can_tpms_set:I

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lcom/ts/can/ford/CanFordCarSetActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mItemTpms:Lcom/ts/canview/CanItemTextBtnList;

    .line 174
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mItemTpms:Lcom/ts/canview/CanItemTextBtnList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemTextBtnList;->ShowArrow(Z)V

    .line 176
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$FordAdt;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->FordGetAdt(Lcom/lgb/canmodule/CanDataInfo$FordAdt;)V

    .line 177
    invoke-virtual {p0}, Lcom/ts/can/ford/CanFordCarSetActivity;->LayoutUI()V

    .line 179
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 227
    :goto_0
    invoke-static {v0}, Lcom/ts/can/ford/CanFordCarSetActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 197
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$FordAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$FordAdt;->Qylxt:I

    .line 198
    goto :goto_0

    .line 201
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$FordAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$FordAdt;->Xytsy:I

    .line 202
    goto :goto_0

    .line 205
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$FordAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$FordAdt;->Jgtsy:I

    .line 206
    goto :goto_0

    .line 209
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$FordAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$FordAdt;->Zxd:I

    .line 210
    goto :goto_0

    .line 213
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$FordAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$FordAdt;->RangeDW:I

    .line 214
    goto :goto_0

    .line 217
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$FordAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$FordAdt;->LightMode:I

    .line 218
    goto :goto_0

    .line 221
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$FordAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$FordAdt;->Ysgyq:I

    .line 222
    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 185
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 189
    return-void

    .line 187
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/ford/CanFordCarSetActivity;->ShowItem(I)V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FordSet;->UpdateOnce:I

    if-nez v0, :cond_0

    .line 135
    const/16 v0, 0x24

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->FordQuery(II)V

    .line 138
    :cond_0
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->FordGetSetup(Lcom/lgb/canmodule/CanDataInfo$FordSet;)V

    .line 107
    iget-object v0, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FordSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/ford/CanFordCarSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FordSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/ford/CanFordCarSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$FordSet;->Update:I

    .line 112
    iget-object v0, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mItemQylxt:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FordSet;->Qylxt:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 113
    iget-object v0, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mItemXxtsy:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FordSet;->Xytsy:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 114
    iget-object v0, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mItemJbtsy:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FordSet;->Jgtsy:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 115
    iget-object v0, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mItemYsgykg:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FordSet;->Ysgyq:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 117
    iget-object v0, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mItemZxd:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FordSet;->Zxd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 118
    iget-object v0, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mItemLcdw:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FordSet;->RangeDW:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 119
    iget-object v0, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mItemLdms:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FordSet;->LightMode:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 121
    iget-object v0, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FordSet;->TpmsSet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 123
    sget v0, Lcom/ts/MainUI/R$string;->can_tpms_reset:I

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/ts/can/ford/CanFordCarSetActivity;->IsHaveItem(I)Z

    move-result v0

    .line 235
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 268
    :goto_0
    return-void

    .line 238
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mItemQylxt:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 242
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mItemXxtsy:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 246
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mItemJbtsy:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 250
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mItemZxd:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 254
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mItemLcdw:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 258
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mItemLdms:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 262
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mItemYsgykg:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/CanFordCarSetActivity;->ResetData(Z)V

    .line 371
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x1

    const/16 v3, 0xa3

    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 324
    .local v6, "item":I
    packed-switch v6, :pswitch_data_0

    .line 363
    :goto_0
    :pswitch_0
    return-void

    .line 327
    :pswitch_1
    iget-object v0, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FordSet;->Qylxt:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v4, v1}, Lcom/ts/can/ford/CanFordCarSetActivity;->GetSWVal(III)I

    move-result v0

    invoke-static {v3, v0}, Lcom/lgb/canmodule/CanJni;->FordCarSet(II)V

    goto :goto_0

    .line 331
    :pswitch_2
    iget-object v0, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FordSet;->Xytsy:I

    const/4 v1, 0x6

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/ford/CanFordCarSetActivity;->GetSWVal(III)I

    move-result v0

    invoke-static {v3, v0}, Lcom/lgb/canmodule/CanJni;->FordCarSet(II)V

    goto :goto_0

    .line 335
    :pswitch_3
    iget-object v0, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FordSet;->Jgtsy:I

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/ford/CanFordCarSetActivity;->GetSWVal(III)I

    move-result v0

    invoke-static {v3, v0}, Lcom/lgb/canmodule/CanJni;->FordCarSet(II)V

    goto :goto_0

    .line 339
    :pswitch_4
    const/16 v0, 0xa5

    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FordSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FordSet;->Ysgyq:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v4, v2}, Lcom/ts/can/ford/CanFordCarSetActivity;->GetSWVal(III)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->FordCarSet(II)V

    goto :goto_0

    .line 343
    :pswitch_5
    new-instance v0, Lcom/ts/canview/CanItemMsgBox;

    sget v3, Lcom/ts/MainUI/R$string;->can_tpms_notice:I

    new-instance v4, Lcom/ts/can/ford/CanFordCarSetActivity$1;

    invoke-direct {v4, p0}, Lcom/ts/can/ford/CanFordCarSetActivity$1;-><init>(Lcom/ts/can/ford/CanFordCarSetActivity;)V

    .line 357
    const/4 v5, 0x0

    move-object v2, p0

    .line 343
    invoke-direct/range {v0 .. v5}, Lcom/ts/canview/CanItemMsgBox;-><init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick2;)V

    goto :goto_0

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/ts/can/ford/CanFordBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/CanFordCarSetActivity;->setContentView(I)V

    .line 101
    invoke-virtual {p0}, Lcom/ts/can/ford/CanFordCarSetActivity;->InitUI()V

    .line 102
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    const/16 v1, 0xa3

    .line 377
    packed-switch p1, :pswitch_data_0

    .line 394
    :goto_0
    return-void

    .line 380
    :pswitch_0
    add-int/lit8 v0, p2, 0x3

    invoke-static {v1, v0}, Lcom/lgb/canmodule/CanJni;->FordCarSet(II)V

    goto :goto_0

    .line 384
    :pswitch_1
    add-int/lit8 v0, p2, 0xe

    invoke-static {v1, v0}, Lcom/lgb/canmodule/CanJni;->FordCarSet(II)V

    goto :goto_0

    .line 388
    :pswitch_2
    add-int/lit8 v0, p2, 0x10

    invoke-static {v1, v0}, Lcom/lgb/canmodule/CanJni;->FordCarSet(II)V

    goto :goto_0

    .line 377
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 154
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 155
    invoke-super {p0}, Lcom/ts/can/ford/CanFordBaseActivity;->onPause()V

    .line 156
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/ts/can/ford/CanFordBaseActivity;->onResume()V

    .line 144
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/CanFordCarSetActivity;->ResetData(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/ts/can/ford/CanFordCarSetActivity;->QueryData()V

    .line 148
    return-void
.end method
