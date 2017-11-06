.class public Lcom/ts/can/CanGolfSetDriveAssActivity;
.super Lcom/ts/can/CanGolfBaseActivity;
.source "CanGolfSetDriveAssActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_ACC_DISTANCE:I = 0x9

.field public static final ITEM_ACC_DRIVER_PROG:I = 0x7

.field public static final ITEM_ACC_LAST_SELECT:I = 0x8

.field public static final ITEM_ACC_TITLE:I = 0x6

.field public static final ITEM_ADAPTIVE_LANE:I = 0x3

.field public static final ITEM_DAS_TITLE:I = 0x4

.field public static final ITEM_DPHJ_SYSTEM:I = 0xf

.field public static final ITEM_DPHJ_TITLE:I = 0xe

.field public static final ITEM_DRIVER_ALERT_SYS:I = 0x5

.field public static final ITEM_FA_ACTIVE:I = 0xb

.field public static final ITEM_FA_ADVANCE_WARN:I = 0xc

.field public static final ITEM_FA_DISPLAY_WARN:I = 0xd

.field public static final ITEM_FA_TITLE:I = 0xa

.field public static final ITEM_LANE_ACTIVE:I = 0x2

.field public static final ITEM_LANE_TITLE:I = 0x1

.field private static final ITEM_MAX:I = 0xf

.field private static final ITEM_MIN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanGolfSetDriveAssActivity"

.field private static final mMenuAccDistance:[I

.field private static final mMenuAccProgram:[I


# instance fields
.field private mAdtAss1:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist;

.field private mAdtAss2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;

.field private mAss1Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;

.field private mAss2Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;

.field private mItemACCTitle:Lcom/ts/canview/CanItemBlankTextList;

.field private mItemAccDistance:Lcom/ts/canview/CanItemPopupList;

.field private mItemAccDriverProg:Lcom/ts/canview/CanItemPopupList;

.field private mItemAccLastSelect:Lcom/ts/canview/CanItemCheckList;

.field private mItemAdaptiveLane:Lcom/ts/canview/CanItemCheckList;

.field private mItemDASTitle:Lcom/ts/canview/CanItemBlankTextList;

.field private mItemDphjSystem:Lcom/ts/canview/CanItemCheckList;

.field private mItemDphjTitle:Lcom/ts/canview/CanItemBlankTextList;

.field private mItemDriverAlertSys:Lcom/ts/canview/CanItemCheckList;

.field private mItemFAActive:Lcom/ts/canview/CanItemCheckList;

.field private mItemFAAdvanceWarn:Lcom/ts/canview/CanItemCheckList;

.field private mItemFADisplayWarn:Lcom/ts/canview/CanItemCheckList;

.field private mItemFATitle:Lcom/ts/canview/CanItemBlankTextList;

.field private mItemLaneActive:Lcom/ts/canview/CanItemCheckList;

.field private mItemLaneTitle:Lcom/ts/canview/CanItemBlankTextList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayouted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-array v0, v5, [I

    .line 47
    sget v1, Lcom/ts/MainUI/R$string;->can_mode_normal:I

    aput v1, v0, v2

    .line 48
    sget v1, Lcom/ts/MainUI/R$string;->can_sport:I

    aput v1, v0, v3

    .line 49
    sget v1, Lcom/ts/MainUI/R$string;->can_eco:I

    aput v1, v0, v4

    .line 45
    sput-object v0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mMenuAccProgram:[I

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 54
    sget v1, Lcom/ts/MainUI/R$string;->can_very_close:I

    aput v1, v0, v2

    .line 55
    sget v1, Lcom/ts/MainUI/R$string;->can_close:I

    aput v1, v0, v3

    .line 56
    sget v1, Lcom/ts/MainUI/R$string;->can_medium_z_d:I

    aput v1, v0, v4

    .line 57
    sget v1, Lcom/ts/MainUI/R$string;->can_far:I

    aput v1, v0, v5

    const/4 v1, 0x4

    .line 58
    sget v2, Lcom/ts/MainUI/R$string;->can_very_far:I

    aput v2, v0, v1

    .line 52
    sput-object v0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mMenuAccDistance:[I

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ts/can/CanGolfBaseActivity;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mbLayouted:Z

    .line 85
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss1Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;

    .line 86
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss2Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;

    .line 87
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss1:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist;

    .line 88
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;

    .line 22
    return-void
.end method

.method private InitUI()V
    .locals 2

    .prologue
    .line 201
    new-instance v1, Lcom/ts/canview/CanScrollList;

    invoke-direct {v1, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 202
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 206
    return-void

    .line 204
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->InitItem(I)V

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 443
    new-instance v0, Lcom/ts/canview/CanItemCheckList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemCheckList;-><init>(Landroid/content/Context;I)V

    .line 444
    .local v0, "item":Lcom/ts/canview/CanItemCheckList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemCheckList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 446
    return-object v0
.end method

.method protected AddItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 359
    invoke-virtual {p0, p1}, Lcom/ts/can/CanGolfSetDriveAssActivity;->IsHaveItem(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    const/4 v0, 0x0

    .line 430
    :goto_0
    return v0

    .line 364
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 430
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 367
    :pswitch_0
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemLaneTitle:Lcom/ts/canview/CanItemBlankTextList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemBlankTextList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_1

    .line 371
    :pswitch_1
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemLaneActive:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_1

    .line 375
    :pswitch_2
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemAdaptiveLane:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_1

    .line 379
    :pswitch_3
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemDASTitle:Lcom/ts/canview/CanItemBlankTextList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemBlankTextList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_1

    .line 383
    :pswitch_4
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemDriverAlertSys:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_1

    .line 387
    :pswitch_5
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemACCTitle:Lcom/ts/canview/CanItemBlankTextList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemBlankTextList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_1

    .line 391
    :pswitch_6
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemAccDriverProg:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_1

    .line 395
    :pswitch_7
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemAccLastSelect:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_1

    .line 399
    :pswitch_8
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemAccDistance:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_1

    .line 403
    :pswitch_9
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemFATitle:Lcom/ts/canview/CanItemBlankTextList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemBlankTextList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_1

    .line 407
    :pswitch_a
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemFAActive:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 411
    :pswitch_b
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemFAAdvanceWarn:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 415
    :pswitch_c
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemFADisplayWarn:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 419
    :pswitch_d
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemDphjTitle:Lcom/ts/canview/CanItemBlankTextList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemBlankTextList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 423
    :pswitch_e
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemDphjSystem:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 364
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method protected AddPopupItem(II[I)Lcom/ts/canview/CanItemPopupList;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "Id"    # I
    .param p3, "arry"    # [I

    .prologue
    .line 452
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p3, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 453
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p2}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 455
    return-object v0
.end method

.method protected AddTitleItem(I)Lcom/ts/canview/CanItemBlankTextList;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 435
    new-instance v0, Lcom/ts/canview/CanItemBlankTextList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemBlankTextList;-><init>(Landroid/content/Context;I)V

    .line 437
    .local v0, "item":Lcom/ts/canview/CanItemBlankTextList;
    return-object v0
.end method

.method protected InitItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 290
    packed-switch p1, :pswitch_data_0

    .line 355
    :goto_0
    return-void

    .line 293
    :pswitch_0
    sget v0, Lcom/ts/MainUI/R$string;->can_lane_assist:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->AddTitleItem(I)Lcom/ts/canview/CanItemBlankTextList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemLaneTitle:Lcom/ts/canview/CanItemBlankTextList;

    goto :goto_0

    .line 297
    :pswitch_1
    sget v0, Lcom/ts/MainUI/R$string;->can_active:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanGolfSetDriveAssActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemLaneActive:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 301
    :pswitch_2
    sget v0, Lcom/ts/MainUI/R$string;->can_adaptive_lang:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanGolfSetDriveAssActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemAdaptiveLane:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 305
    :pswitch_3
    sget v0, Lcom/ts/MainUI/R$string;->can_drive_alert_sys:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->AddTitleItem(I)Lcom/ts/canview/CanItemBlankTextList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemDASTitle:Lcom/ts/canview/CanItemBlankTextList;

    goto :goto_0

    .line 309
    :pswitch_4
    sget v0, Lcom/ts/MainUI/R$string;->can_drive_alert_sys:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanGolfSetDriveAssActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemDriverAlertSys:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 313
    :pswitch_5
    sget v0, Lcom/ts/MainUI/R$string;->can_acc_drive:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->AddTitleItem(I)Lcom/ts/canview/CanItemBlankTextList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemACCTitle:Lcom/ts/canview/CanItemBlankTextList;

    goto :goto_0

    .line 317
    :pswitch_6
    sget v0, Lcom/ts/MainUI/R$string;->can_drive_program:I

    sget-object v1, Lcom/ts/can/CanGolfSetDriveAssActivity;->mMenuAccProgram:[I

    invoke-virtual {p0, v0, p1, v1}, Lcom/ts/can/CanGolfSetDriveAssActivity;->AddPopupItem(II[I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemAccDriverProg:Lcom/ts/canview/CanItemPopupList;

    goto :goto_0

    .line 321
    :pswitch_7
    sget v0, Lcom/ts/MainUI/R$string;->can_last_dis_selected:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanGolfSetDriveAssActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemAccLastSelect:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 325
    :pswitch_8
    sget v0, Lcom/ts/MainUI/R$string;->can_distance_c_j:I

    sget-object v1, Lcom/ts/can/CanGolfSetDriveAssActivity;->mMenuAccDistance:[I

    invoke-virtual {p0, v0, p1, v1}, Lcom/ts/can/CanGolfSetDriveAssActivity;->AddPopupItem(II[I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemAccDistance:Lcom/ts/canview/CanItemPopupList;

    goto :goto_0

    .line 329
    :pswitch_9
    sget v0, Lcom/ts/MainUI/R$string;->can_front_assist:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->AddTitleItem(I)Lcom/ts/canview/CanItemBlankTextList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemFATitle:Lcom/ts/canview/CanItemBlankTextList;

    goto :goto_0

    .line 333
    :pswitch_a
    sget v0, Lcom/ts/MainUI/R$string;->can_active:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanGolfSetDriveAssActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemFAActive:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 337
    :pswitch_b
    sget v0, Lcom/ts/MainUI/R$string;->can_advance_warn:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanGolfSetDriveAssActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemFAAdvanceWarn:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 341
    :pswitch_c
    sget v0, Lcom/ts/MainUI/R$string;->can_dis_warning:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanGolfSetDriveAssActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemFADisplayWarn:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 345
    :pswitch_d
    sget v0, Lcom/ts/MainUI/R$string;->can_teramont_dphj_system:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->AddTitleItem(I)Lcom/ts/canview/CanItemBlankTextList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemDphjTitle:Lcom/ts/canview/CanItemBlankTextList;

    goto/16 :goto_0

    .line 349
    :pswitch_e
    sget v0, Lcom/ts/MainUI/R$string;->can_active:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanGolfSetDriveAssActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemDphjSystem:Lcom/ts/canview/CanItemCheckList;

    goto/16 :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method protected IsHaveItem(I)Z
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 285
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 223
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss1:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist;->LaneAssist:I

    iget-object v2, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss1:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist;->AssSystem:I

    add-int v0, v1, v2

    .line 224
    goto :goto_0

    .line 227
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss1:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist;->AssSystem:I

    .line 228
    goto :goto_0

    .line 231
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss1:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist;->LaneAssist:I

    .line 232
    goto :goto_0

    .line 235
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss1:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist;->DAS:I

    .line 236
    goto :goto_0

    .line 239
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss1:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist;->DAS:I

    .line 240
    goto :goto_0

    .line 243
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;->ACCDriveProgram:I

    iget-object v2, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;->LastDisSelected:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;->ACCDistance:I

    add-int v0, v1, v2

    .line 244
    goto :goto_0

    .line 247
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;->ACCDriveProgram:I

    .line 248
    goto :goto_0

    .line 251
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;->LastDisSelected:I

    .line 252
    goto :goto_0

    .line 255
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;->ACCDistance:I

    .line 256
    goto :goto_0

    .line 259
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;->FrontAssActive:I

    iget-object v2, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;->FrontAssAdvance:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;->FrontAssDisplay:I

    add-int v0, v1, v2

    .line 260
    goto :goto_0

    .line 263
    :pswitch_a
    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;->FrontAssActive:I

    .line 264
    goto :goto_0

    .line 267
    :pswitch_b
    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;->FrontAssAdvance:I

    .line 268
    goto :goto_0

    .line 271
    :pswitch_c
    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;->FrontAssDisplay:I

    .line 272
    goto :goto_0

    .line 276
    :pswitch_d
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 277
    const/4 v0, 0x1

    .line 278
    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 210
    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v1}, Lcom/ts/canview/CanScrollList;->RemoveAllViews()V

    .line 211
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 215
    return-void

    .line 213
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->AddItem(I)Z

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 7

    .prologue
    const/16 v6, 0x41

    const/16 v5, 0x40

    const/16 v4, 0x31

    const/16 v3, 0x30

    const-wide/16 v1, 0x5

    .line 164
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss1:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-static {v6, v3}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 167
    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanGolfSetDriveAssActivity;->Sleep(J)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    invoke-static {v6, v4}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 173
    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanGolfSetDriveAssActivity;->Sleep(J)V

    .line 176
    :cond_1
    invoke-static {v5, v3}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 177
    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanGolfSetDriveAssActivity;->Sleep(J)V

    .line 178
    invoke-static {v5, v4}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 179
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss1Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss2Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfGetDriverAss(Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;)V

    .line 103
    iget-boolean v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mbLayouted:Z

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss1:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfGetAdtDriverAssist(Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist;Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;)V

    .line 106
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss1:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 107
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAdtAss2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 108
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss1Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 109
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss2Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->LayoutUI()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mbLayouted:Z

    .line 113
    const/4 p1, 0x0

    .line 122
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss1Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss1Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;->Update:I

    .line 125
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->IsHaveItem(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemLaneActive:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss1Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;->Active:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 128
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemAdaptiveLane:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss1Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;->Active:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->ShowGone(I)V

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemAdaptiveLane:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss1Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;->fgLaneAssist:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 132
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemDriverAlertSys:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss1Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;->fgDriverAlertSystem:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 135
    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss2Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss2Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;->Update:I

    .line 138
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemAccDriverProg:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss2Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;->AccDriveProgram:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 139
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->IsHaveItem(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 141
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemAccLastSelect:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss2Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;->fgDistanceSelected:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 142
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemAccDistance:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss2Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;->fgDistanceSelected:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(I)V

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemAccDistance:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss2Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;->AccDistance:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 147
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->IsHaveItem(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 149
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemFAActive:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss2Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;->fgFAActive:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 150
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemFAAdvanceWarn:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss2Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;->fgFAActive:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->ShowGone(I)V

    .line 151
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemFADisplayWarn:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss2Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;->fgFAActive:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->ShowGone(I)V

    .line 154
    :cond_6
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemFAAdvanceWarn:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss2Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;->fgFAAdanceWarn:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 155
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemFADisplayWarn:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss2Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;->fgDisplayWarn:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 156
    iget-object v0, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mItemDphjSystem:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss2Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;->DphjSyatem:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 160
    :cond_7
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->ResetData(Z)V

    .line 527
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 462
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 463
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 501
    :goto_0
    :pswitch_0
    return-void

    .line 467
    :pswitch_1
    const/16 v1, 0x36

    iget-object v2, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss1Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;->Active:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetDriveAssActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 471
    :pswitch_2
    const/16 v1, 0x30

    iget-object v2, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss1Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;->fgLaneAssist:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetDriveAssActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 475
    :pswitch_3
    const/16 v1, 0x31

    iget-object v2, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss1Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;->fgDriverAlertSystem:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetDriveAssActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 479
    :pswitch_4
    const/16 v1, 0x32

    iget-object v2, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss2Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;->fgDistanceSelected:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetDriveAssActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 483
    :pswitch_5
    const/16 v1, 0x33

    iget-object v2, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss2Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;->fgFAActive:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetDriveAssActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 487
    :pswitch_6
    const/16 v1, 0x34

    iget-object v2, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss2Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;->fgFAAdanceWarn:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetDriveAssActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 491
    :pswitch_7
    const/16 v1, 0x35

    iget-object v2, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss2Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;->fgDisplayWarn:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetDriveAssActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 495
    :pswitch_8
    const/16 v1, 0x39

    iget-object v2, p0, Lcom/ts/can/CanGolfSetDriveAssActivity;->mAss2Data:Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;->DphjSyatem:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetDriveAssActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/ts/can/CanGolfBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->setContentView(I)V

    .line 97
    invoke-direct {p0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->InitUI()V

    .line 98
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "Id"    # I
    .param p2, "item"    # I

    .prologue
    .line 507
    packed-switch p1, :pswitch_data_0

    .line 520
    :goto_0
    :pswitch_0
    return-void

    .line 510
    :pswitch_1
    const/16 v0, 0x37

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 514
    :pswitch_2
    const/16 v0, 0x38

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 507
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
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
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onPause()V

    .line 197
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onResume()V

    .line 185
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->ResetData(Z)V

    .line 187
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetDriveAssActivity;->QueryData()V

    .line 189
    return-void
.end method
