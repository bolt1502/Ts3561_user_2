.class public Lcom/ts/can/CanGolfSetTimeAndDateActivity;
.super Lcom/ts/can/CanGolfBaseActivity;
.source "CanGolfSetTimeAndDateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field private static final ITEM_DATE:I = 0x0

.field private static final ITEM_FMT:I = 0x2

.field private static final ITEM_MAX:I = 0x0

.field private static final ITEM_MIN:I = 0x0

.field private static final ITEM_TIME:I = 0x1

.field private static final ITEM_XLS:I = 0x3

.field public static final TAG:Ljava/lang/String; = "CanGolfSetTimeAndDateActivity"

.field private static final mDateFmt:[I


# instance fields
.field private mCurTime:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

.field private mDatelistener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mItemDate:Lcom/ts/canview/CanItemPopupList;

.field private mItemTime:Lcom/ts/canview/CanItemPopupList;

.field private mItemTimeFmt:Lcom/ts/canview/CanItemPopupList;

.field private mItemZdxls:Lcom/ts/canview/CanItemCheckList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

.field private mTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 36
    sget v2, Lcom/ts/MainUI/R$string;->can_df_d_m_y:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 37
    sget v2, Lcom/ts/MainUI/R$string;->can_df_y_m_d:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 38
    sget v2, Lcom/ts/MainUI/R$string;->can_df_m_d_y:I

    aput v2, v0, v1

    .line 34
    sput-object v0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mDateFmt:[I

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/ts/can/CanGolfBaseActivity;-><init>()V

    .line 47
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfTime;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    .line 48
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfTime;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mCurTime:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    .line 223
    new-instance v0, Lcom/ts/can/CanGolfSetTimeAndDateActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/can/CanGolfSetTimeAndDateActivity$1;-><init>(Lcom/ts/can/CanGolfSetTimeAndDateActivity;)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mDatelistener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 242
    new-instance v0, Lcom/ts/can/CanGolfSetTimeAndDateActivity$2;

    invoke-direct {v0, p0}, Lcom/ts/can/CanGolfSetTimeAndDateActivity$2;-><init>(Lcom/ts/can/CanGolfSetTimeAndDateActivity;)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/ts/can/CanGolfSetTimeAndDateActivity;)Lcom/lgb/canmodule/CanDataInfo$GolfTime;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mCurTime:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    return-object v0
.end method


# virtual methods
.method protected AddItem(I)V
    .locals 0
    .param p1, "item"    # I

    .prologue
    .line 158
    return-void
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 125
    new-instance v1, Lcom/ts/canview/CanScrollList;

    invoke-direct {v1, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "Arr":[Ljava/lang/String;
    new-instance v1, Lcom/ts/canview/CanItemPopupList;

    sget v2, Lcom/ts/MainUI/R$string;->can_date:I

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mItemDate:Lcom/ts/canview/CanItemPopupList;

    .line 129
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mItemDate:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mItemDate:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    new-instance v1, Lcom/ts/canview/CanItemPopupList;

    sget v2, Lcom/ts/MainUI/R$string;->can_time:I

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mItemTime:Lcom/ts/canview/CanItemPopupList;

    .line 133
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mItemTime:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mItemTime:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 136
    new-instance v1, Lcom/ts/canview/CanItemPopupList;

    sget v2, Lcom/ts/MainUI/R$string;->can_time_format:I

    sget-object v3, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mDateFmt:[I

    invoke-direct {v1, p0, v2, v3, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mItemTimeFmt:Lcom/ts/canview/CanItemPopupList;

    .line 137
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mItemTimeFmt:Lcom/ts/canview/CanItemPopupList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 139
    new-instance v1, Lcom/ts/canview/CanItemCheckList;

    sget v2, Lcom/ts/MainUI/R$string;->can_zdxls:I

    invoke-direct {v1, p0, v2}, Lcom/ts/canview/CanItemCheckList;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mItemZdxls:Lcom/ts/canview/CanItemCheckList;

    .line 140
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mItemZdxls:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 141
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mItemZdxls:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mItemDate:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v2}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 145
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mItemTime:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v2}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 146
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mItemTimeFmt:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v2}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 147
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mItemZdxls:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v2}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 148
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const/16 v0, 0x26

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 103
    :cond_0
    return-void
.end method

.method protected ResetData(Z)V
    .locals 7
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 64
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->GolfGetTime(Lcom/lgb/canmodule/CanDataInfo$GolfTime;)V

    .line 65
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->Update:I

    invoke-static {v1}, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iput v5, v1, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->Update:I

    .line 70
    const-string v0, ""

    .line 71
    .local v0, "strDate":Ljava/lang/String;
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->DateFormat:I

    packed-switch v1, :pswitch_data_0

    .line 89
    :goto_0
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mItemDate:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->SetVal(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mItemTime:Lcom/ts/canview/CanItemPopupList;

    const-string v2, "%02d:%02d"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->Hour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->Min:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetVal(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mItemTimeFmt:Lcom/ts/canview/CanItemPopupList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->DateFormat:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 92
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mItemZdxls:Lcom/ts/canview/CanItemCheckList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->AST:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 95
    .end local v0    # "strDate":Ljava/lang/String;
    :cond_1
    return-void

    .line 74
    .restart local v0    # "strDate":Ljava/lang/String;
    :pswitch_0
    const-string v1, "%d.%d.%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->Day:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->Month:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->Year:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75
    goto :goto_0

    .line 78
    :pswitch_1
    const-string v1, "%d.%d.%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->Year:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->Month:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->Day:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    goto/16 :goto_0

    .line 82
    :pswitch_2
    const-string v1, "%d.%d.%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->Month:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->Day:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->Year:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 83
    goto/16 :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->ResetData(Z)V

    .line 273
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 167
    .local v12, "Id":I
    packed-switch v12, :pswitch_data_0

    .line 221
    :goto_0
    :pswitch_0
    return-void

    .line 171
    :pswitch_1
    const/4 v3, 0x0

    .line 172
    .local v3, "year":I
    const/4 v4, 0x0

    .line 173
    .local v4, "month":I
    const/4 v5, 0x0

    .line 174
    .local v5, "day":I
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v3, v1, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->Year:I

    .line 177
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->Month:I

    add-int/lit8 v4, v1, -0x1

    .line 178
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v5, v1, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->Day:I

    .line 190
    :goto_1
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mDatelistener:Landroid/app/DatePickerDialog$OnDateSetListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 191
    .local v0, "dpd":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    goto :goto_0

    .line 182
    .end local v0    # "dpd":Landroid/app/DatePickerDialog;
    :cond_0
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 183
    .local v13, "t":Landroid/text/format/Time;
    invoke-virtual {v13}, Landroid/text/format/Time;->setToNow()V

    .line 185
    iget v3, v13, Landroid/text/format/Time;->year:I

    .line 186
    iget v4, v13, Landroid/text/format/Time;->month:I

    .line 187
    iget v5, v13, Landroid/text/format/Time;->monthDay:I

    goto :goto_1

    .line 196
    .end local v3    # "year":I
    .end local v4    # "month":I
    .end local v5    # "day":I
    .end local v13    # "t":Landroid/text/format/Time;
    :pswitch_2
    const/4 v9, 0x0

    .line 197
    .local v9, "hour":I
    const/4 v10, 0x0

    .line 198
    .local v10, "min":I
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v9, v1, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->Hour:I

    .line 201
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v10, v1, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->Min:I

    .line 210
    :goto_2
    new-instance v6, Landroid/app/TimePickerDialog;

    iget-object v8, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    const/4 v11, 0x1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 211
    .local v6, "tpd":Landroid/app/TimePickerDialog;
    invoke-virtual {v6}, Landroid/app/TimePickerDialog;->show()V

    goto :goto_0

    .line 205
    .end local v6    # "tpd":Landroid/app/TimePickerDialog;
    :cond_1
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 206
    .restart local v13    # "t":Landroid/text/format/Time;
    invoke-virtual {v13}, Landroid/text/format/Time;->setToNow()V

    .line 207
    iget v9, v13, Landroid/text/format/Time;->hour:I

    .line 208
    iget v10, v13, Landroid/text/format/Time;->minute:I

    goto :goto_2

    .line 215
    .end local v9    # "hour":I
    .end local v10    # "min":I
    .end local v13    # "t":Landroid/text/format/Time;
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mCurTime:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->GolfGetTime(Lcom/lgb/canmodule/CanDataInfo$GolfTime;)V

    .line 216
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mCurTime:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mCurTime:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->AST:I

    and-int/lit8 v2, v2, 0x1

    rsub-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->AST:I

    .line 217
    iget-object v1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mCurTime:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->GolfSetTime(Lcom/lgb/canmodule/CanDataInfo$GolfTime;)V

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/ts/can/CanGolfBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->InitUI()V

    .line 59
    const v0, 0x103012d

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->setTheme(I)V

    .line 60
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "Id"    # I
    .param p2, "item"    # I

    .prologue
    .line 260
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mCurTime:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GolfGetTime(Lcom/lgb/canmodule/CanDataInfo$GolfTime;)V

    .line 263
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mCurTime:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    iput p2, v0, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->DateFormat:I

    .line 264
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mCurTime:Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GolfSetTime(Lcom/lgb/canmodule/CanDataInfo$GolfTime;)V

    .line 266
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 120
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onPause()V

    .line 121
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onResume()V

    .line 109
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->ResetData(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->QueryData()V

    .line 113
    return-void
.end method
