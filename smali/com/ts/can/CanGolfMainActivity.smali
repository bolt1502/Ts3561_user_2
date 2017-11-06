.class public Lcom/ts/can/CanGolfMainActivity;
.super Lcom/ts/can/CanGolfBaseActivity;
.source "CanGolfMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_CAR_TYPE:I = 0x1

.field public static final ITEM_CONVCONSUMP:I = 0x3

.field public static final ITEM_DR_DATA:I = 0x2

.field public static final ITEM_LANG:I = 0x6

.field public static final ITEM_SETUP:I = 0x5

.field public static final ITEM_STATUS:I = 0x4

.field public static final TAG:Ljava/lang/String; = "CanGolfMainActivity"

.field protected static final TOTAL_ITEM:I = 0x5

.field public static final mOptId:[I

.field public static final mOptTitle:[I


# instance fields
.field private mCarType:[I

.field private mItemCarType:Lcom/ts/canview/CanItemCarType;

.field protected mOpt:[Lcom/ts/canview/CanItemTextBtnList;

.field private mOutTemp:Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;

.field private mSpeed:Lcom/lgb/canmodule/CanDataInfo$CAN_Speed;

.field private mVer:Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x5

    .line 41
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 40
    sput-object v0, Lcom/ts/can/CanGolfMainActivity;->mOptId:[I

    .line 50
    new-array v0, v1, [I

    const/4 v1, 0x0

    .line 51
    sget v2, Lcom/ts/MainUI/R$string;->can_driving_data:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 52
    sget v2, Lcom/ts/MainUI/R$string;->can_conv_consumers:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 53
    sget v2, Lcom/ts/MainUI/R$string;->can_vehi_status:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 54
    sget v2, Lcom/ts/MainUI/R$string;->can_vehi_setup:I

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 55
    sget v2, Lcom/ts/MainUI/R$string;->can_lang_set:I

    aput v2, v0, v1

    .line 49
    sput-object v0, Lcom/ts/can/CanGolfMainActivity;->mOptTitle:[I

    .line 56
    return-void

    .line 41
    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ts/can/CanGolfBaseActivity;-><init>()V

    .line 36
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$CAN_Speed;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$CAN_Speed;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfMainActivity;->mSpeed:Lcom/lgb/canmodule/CanDataInfo$CAN_Speed;

    .line 37
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfMainActivity;->mOutTemp:Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;

    .line 38
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfMainActivity;->mVer:Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 59
    sget v2, Lcom/ts/MainUI/R$string;->can_golf_car_type_0:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 60
    sget v2, Lcom/ts/MainUI/R$string;->can_golf_car_type_1:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 61
    sget v2, Lcom/ts/MainUI/R$string;->can_golf_car_type_2:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 62
    sget v2, Lcom/ts/MainUI/R$string;->can_golf_car_type_3:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/CanGolfMainActivity;->mCarType:[I

    .line 22
    return-void
.end method

.method private TestData()V
    .locals 4

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "DEBUG":Z
    if-nez v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/ts/can/CanGolfMainActivity;->mVer:Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->GetVersion(Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;)V

    .line 158
    iget-object v1, p0, Lcom/ts/can/CanGolfMainActivity;->mVer:Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;->Update:I

    if-eqz v1, :cond_0

    .line 160
    const-string v1, "CanGolfMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can Version  = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/can/CanGolfMainActivity;->mVer:Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;

    iget-object v3, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;->VerData:[B

    invoke-static {v3}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public UserAll()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/ts/can/CanGolfMainActivity;->TestData()V

    .line 147
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 96
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 99
    :pswitch_0
    const-class v1, Lcom/ts/can/CanGolfDrivingDataActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanGolfMainActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 103
    :pswitch_1
    const-class v1, Lcom/ts/can/CanGolfConvConsumersActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanGolfMainActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 107
    :pswitch_2
    const-class v1, Lcom/ts/can/CanGolfVehicleStatusActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanGolfMainActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 111
    :pswitch_3
    const-class v1, Lcom/ts/can/CanGolfSetMainActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanGolfMainActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 115
    :pswitch_4
    const-class v1, Lcom/ts/can/CanGolfLangSetActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanGolfMainActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x5

    .line 70
    invoke-super {p0, p1}, Lcom/ts/can/CanGolfBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfMainActivity;->setContentView(I)V

    .line 74
    new-instance v7, Lcom/ts/canview/CanScrollList;

    invoke-direct {v7, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    .line 76
    .local v7, "sl":Lcom/ts/canview/CanScrollList;
    new-instance v0, Lcom/ts/canview/CanItemCarType;

    sget v2, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    iget-object v3, p0, Lcom/ts/can/CanGolfMainActivity;->mCarType:[I

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/ts/canview/CanItemCarType;-><init>(Landroid/content/Context;I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/CanGolfMainActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    .line 77
    iget-object v0, p0, Lcom/ts/can/CanGolfMainActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemCarType;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 79
    new-array v0, v8, [Lcom/ts/canview/CanItemTextBtnList;

    iput-object v0, p0, Lcom/ts/can/CanGolfMainActivity;->mOpt:[Lcom/ts/canview/CanItemTextBtnList;

    .line 81
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-lt v6, v8, :cond_0

    .line 89
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanGolfMainActivity;->mOpt:[Lcom/ts/canview/CanItemTextBtnList;

    new-instance v1, Lcom/ts/canview/CanItemTextBtnList;

    sget-object v2, Lcom/ts/can/CanGolfMainActivity;->mOptTitle:[I

    aget v2, v2, v6

    invoke-direct {v1, p0, v2}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    aput-object v1, v0, v6

    .line 84
    iget-object v0, p0, Lcom/ts/can/CanGolfMainActivity;->mOpt:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/ts/can/CanGolfMainActivity;->mOpt:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/ts/can/CanGolfMainActivity;->mOptId:[I

    aget v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/ts/can/CanGolfMainActivity;->mOpt:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 81
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 179
    packed-switch p1, :pswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 181
    :pswitch_0
    invoke-static {p2}, Lcom/yyw/ts70xhw/FtSet;->SetCanSubT(I)I

    .line 182
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 127
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onPause()V

    .line 128
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onResume()V

    .line 135
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 137
    iget-object v0, p0, Lcom/ts/can/CanGolfMainActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemCarType;->GetPopItem()Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 139
    return-void
.end method
