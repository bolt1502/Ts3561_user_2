.class public Lcom/ts/can/CanGolfConvConsumersActivity;
.super Lcom/ts/can/CanGolfBaseActivity;
.source "CanGolfConvConsumersActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final TAG:Ljava/lang/String; = "CanGolfConvConsumersActivity"


# instance fields
.field private mConCenter:Landroid/widget/TextView;

.field private mConDW:Landroid/widget/TextView;

.field private mConMax:Landroid/widget/TextView;

.field private mConMin:Landroid/widget/TextView;

.field private mConProgress:Lcom/ts/canview/MyProgressBar;

.field private mConTitle:Landroid/widget/TextView;

.field private mConsumersData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;

.field private mInfo:[Landroid/widget/TextView;

.field private mInfoData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumersInfo;

.field private mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mStrTip:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/CanGolfBaseActivity;-><init>()V

    .line 33
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConsumersData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;

    .line 34
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumersInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumersInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumersInfo;

    .line 18
    return-void
.end method

.method private QueryData()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConsumersData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfConvConsumersActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    const/16 v0, 0x50

    const/16 v1, 0x60

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 186
    const-wide/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanGolfConvConsumersActivity;->Sleep(J)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumersInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumersInfo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfConvConsumersActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    const/16 v0, 0x62

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 193
    :cond_1
    return-void
.end method

.method private ResetData(Z)V
    .locals 9
    .param p1, "check"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 99
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumersInfo;

    invoke-static {v4}, Lcom/lgb/canmodule/CanJni;->GolfGetConvConsumersInfo(Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumersInfo;)V

    .line 100
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConsumersData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;

    invoke-static {v4}, Lcom/lgb/canmodule/CanJni;->GolfGetDrivingConvConsumers(Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;)V

    .line 101
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumersInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumersInfo;->Update:I

    invoke-static {v4}, Lcom/ts/can/CanGolfConvConsumersActivity;->i2b(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 103
    :cond_0
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumersInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumersInfo;->UpdateOnce:I

    invoke-static {v4}, Lcom/ts/can/CanGolfConvConsumersActivity;->i2b(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 105
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumersInfo;

    iput v7, v4, Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumersInfo;->Update:I

    .line 107
    const/4 v3, 0x3

    .line 108
    .local v3, "num":I
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumersInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumersInfo;->Num:I

    if-ge v4, v3, :cond_1

    .line 110
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumersInfo;

    iget v3, v4, Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumersInfo;->Num:I

    .line 113
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_7

    .line 126
    move v1, v3

    :goto_1
    const/4 v4, 0x3

    if-lt v1, v4, :cond_9

    .line 140
    .end local v1    # "i":I
    .end local v3    # "num":I
    :cond_2
    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConsumersData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;->Update:I

    invoke-static {v4}, Lcom/ts/can/CanGolfConvConsumersActivity;->i2b(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 142
    :cond_3
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConsumersData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;->UpdateOnce:I

    invoke-static {v4}, Lcom/ts/can/CanGolfConvConsumersActivity;->i2b(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 144
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConsumersData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;

    iput v7, v4, Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;->Update:I

    .line 145
    const/4 v2, 0x0

    .line 146
    .local v2, "max":I
    const/4 v0, 0x0

    .line 147
    .local v0, "cur":I
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConsumersData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;->DW:I

    if-ne v8, v4, :cond_b

    .line 149
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConDW:Landroid/widget/TextView;

    const-string v5, "l/h"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConCenter:Landroid/widget/TextView;

    const-string v5, "1/2"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConMax:Landroid/widget/TextView;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    const/16 v2, 0x3e8

    .line 163
    :goto_2
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConsumersData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;

    iget v0, v4, Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;->Value:I

    .line 164
    if-le v0, v2, :cond_4

    .line 166
    move v0, v2

    .line 169
    :cond_4
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConProgress:Lcom/ts/canview/MyProgressBar;

    invoke-virtual {v4, v7, v2}, Lcom/ts/canview/MyProgressBar;->SetMinMax(II)V

    .line 170
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConProgress:Lcom/ts/canview/MyProgressBar;

    invoke-virtual {v4, v0}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    .line 173
    .end local v0    # "cur":I
    .end local v2    # "max":I
    :cond_5
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConProgress:Lcom/ts/canview/MyProgressBar;

    iget-object v5, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConsumersData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;->UpdateOnce:I

    invoke-virtual {v4, v5}, Lcom/ts/canview/MyProgressBar;->Show(I)V

    .line 174
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConMin:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConsumersData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;->UpdateOnce:I

    invoke-virtual {p0, v4, v5}, Lcom/ts/can/CanGolfConvConsumersActivity;->setViewShow(Landroid/view/View;I)V

    .line 175
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConCenter:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConsumersData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;->UpdateOnce:I

    invoke-virtual {p0, v4, v5}, Lcom/ts/can/CanGolfConvConsumersActivity;->setViewShow(Landroid/view/View;I)V

    .line 176
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConMax:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConsumersData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;->UpdateOnce:I

    invoke-virtual {p0, v4, v5}, Lcom/ts/can/CanGolfConvConsumersActivity;->setViewShow(Landroid/view/View;I)V

    .line 177
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConDW:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConsumersData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;->UpdateOnce:I

    invoke-virtual {p0, v4, v5}, Lcom/ts/can/CanGolfConvConsumersActivity;->setViewShow(Landroid/view/View;I)V

    .line 179
    :cond_6
    return-void

    .line 115
    .restart local v1    # "i":I
    .restart local v3    # "num":I
    :cond_7
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mInfo:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4, v8}, Lcom/ts/can/CanGolfConvConsumersActivity;->setViewShow(Landroid/view/View;Z)V

    .line 116
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumersInfo;

    iget-object v4, v4, Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumersInfo;->Info:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mStrTip:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_8

    .line 118
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mInfo:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mStrTip:[Ljava/lang/String;

    iget-object v6, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumersInfo;

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumersInfo;->Info:[I

    aget v6, v6, v1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 122
    :cond_8
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mInfo:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 128
    :cond_9
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mInfo:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4, v7}, Lcom/ts/can/CanGolfConvConsumersActivity;->setViewShow(Landroid/view/View;Z)V

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 133
    .end local v1    # "i":I
    .end local v3    # "num":I
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mInfo:[Landroid/widget/TextView;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 135
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mInfo:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4, v7}, Lcom/ts/can/CanGolfConvConsumersActivity;->setViewShow(Landroid/view/View;Z)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 157
    .end local v1    # "i":I
    .restart local v0    # "cur":I
    .restart local v2    # "max":I
    :cond_b
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConDW:Landroid/widget/TextView;

    const-string v5, "gal/h"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConCenter:Landroid/widget/TextView;

    const-string v5, "1/8"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v4, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConMax:Landroid/widget/TextView;

    const-string v5, "1/4"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const/16 v2, 0xfa

    goto/16 :goto_2
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/CanGolfConvConsumersActivity;->ResetData(Z)V

    .line 219
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x13

    const/high16 v9, 0x41c80000    # 25.0f

    const/16 v8, 0x64

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 42
    invoke-super {p0, p1}, Lcom/ts/can/CanGolfBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v1, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanGolfConvConsumersActivity;->setContentView(I)V

    .line 45
    new-instance v1, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v1, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 47
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mInfo:[Landroid/widget/TextView;

    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mInfo:[Landroid/widget/TextView;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x190

    const/16 v3, 0x12c

    const/16 v4, 0x32

    invoke-virtual {v1, v8, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConTitle:Landroid/widget/TextView;

    .line 58
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConTitle:Landroid/widget/TextView;

    sget v2, Lcom/ts/MainUI/R$string;->can_consumption:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 59
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 60
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConTitle:Landroid/widget/TextView;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v1, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    new-instance v1, Lcom/ts/canview/MyProgressBar;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_bar_dn:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_bar_up:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/MyProgressBar;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConProgress:Lcom/ts/canview/MyProgressBar;

    .line 64
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v2, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConProgress:Lcom/ts/canview/MyProgressBar;

    const/16 v3, 0x213

    const/16 v4, 0x1a4

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    .line 68
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x213

    const/16 v3, 0x1b8

    const/16 v4, 0x1e

    invoke-virtual {v1, v2, v3, v8, v4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConMin:Landroid/widget/TextView;

    .line 69
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConMin:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConMin:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 71
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConMin:Landroid/widget/TextView;

    invoke-virtual {v1, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 72
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConMin:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x2bc

    const/16 v3, 0x1b8

    const/16 v4, 0x1e

    invoke-virtual {v1, v2, v3, v8, v4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConCenter:Landroid/widget/TextView;

    .line 75
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConCenter:Landroid/widget/TextView;

    const-string v2, "1/2"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConCenter:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 77
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConCenter:Landroid/widget/TextView;

    invoke-virtual {v1, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 78
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConCenter:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x36d

    const/16 v3, 0x1b8

    const/16 v4, 0x1e

    invoke-virtual {v1, v2, v3, v8, v4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConMax:Landroid/widget/TextView;

    .line 81
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConMax:Landroid/widget/TextView;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConMax:Landroid/widget/TextView;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConMax:Landroid/widget/TextView;

    invoke-virtual {v1, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 84
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConMax:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x36d

    const/16 v3, 0x172

    const/16 v4, 0x28

    invoke-virtual {v1, v2, v3, v8, v4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConDW:Landroid/widget/TextView;

    .line 87
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConDW:Landroid/widget/TextView;

    const-string v2, "km/h"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConDW:Landroid/widget/TextView;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 89
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConDW:Landroid/widget/TextView;

    invoke-virtual {v1, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 90
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mConDW:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    invoke-virtual {p0}, Lcom/ts/can/CanGolfConvConsumersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$array;->can_conv_tips:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mStrTip:[Ljava/lang/String;

    .line 95
    return-void

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mInfo:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit8 v3, v0, 0x5a

    add-int/lit8 v3, v3, 0x32

    const/16 v4, 0x320

    const/16 v5, 0x32

    invoke-virtual {v2, v8, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 51
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mInfo:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const-string v2, "123"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mInfo:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 53
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mInfo:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v1, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 54
    iget-object v1, p0, Lcom/ts/can/CanGolfConvConsumersActivity;->mInfo:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 209
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 210
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onPause()V

    .line 211
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onResume()V

    .line 200
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/CanGolfConvConsumersActivity;->ResetData(Z)V

    .line 202
    invoke-direct {p0}, Lcom/ts/can/CanGolfConvConsumersActivity;->QueryData()V

    .line 203
    return-void
.end method
