.class public Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanBaicEC180DriveInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_CARSTA:I = 0x2

.field public static final ITEM_CO2VAL:I = 0x2

.field public static final ITEM_DISTANCE:I = 0x1

.field private static final ITEM_MAX:I = 0x2

.field private static final ITEM_MIN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanBaicEC180DriveInfoActivity"


# instance fields
.field protected mEcInfo:Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;

.field protected mItemCarSta:Lcom/ts/canview/CanItemIcoVal;

.field protected mItemCo2val:Lcom/ts/canview/CanItemIcoVal;

.field protected mItemDistance:Lcom/ts/canview/CanItemIcoVal;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field protected mStaArr:[Ljava/lang/String;

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 40
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->mEcInfo:Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 44
    const-string v2, "\u505c\u673a"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 45
    const-string v2, "\u5c31\u7eea"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 46
    const-string v2, "\u9a71\u52a8"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 47
    const-string v2, "\u80fd\u91cf\u56de\u6536"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->mStaArr:[Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method protected AddIcoValItem(III)Lcom/ts/canview/CanItemIcoVal;
    .locals 3
    .param p1, "ico"    # I
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 118
    new-instance v0, Lcom/ts/canview/CanItemIcoVal;

    invoke-direct {v0, p0, p1, p2}, Lcom/ts/canview/CanItemIcoVal;-><init>(Landroid/content/Context;II)V

    .line 119
    .local v0, "item":Lcom/ts/canview/CanItemIcoVal;
    iget-object v1, p0, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoVal;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 120
    return-object v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 108
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 110
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_tyres:I

    sget v1, Lcom/ts/MainUI/R$string;->can_yslc:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->AddIcoValItem(III)Lcom/ts/canview/CanItemIcoVal;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->mItemDistance:Lcom/ts/canview/CanItemIcoVal;

    .line 111
    sget v0, Lcom/ts/MainUI/R$drawable;->can_golf_icon05:I

    sget v1, Lcom/ts/MainUI/R$string;->can_jsco2_pfl:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->AddIcoValItem(III)Lcom/ts/canview/CanItemIcoVal;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->mItemCo2val:Lcom/ts/canview/CanItemIcoVal;

    .line 112
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_setup:I

    sget v1, Lcom/ts/MainUI/R$string;->can_vehi_status:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->AddIcoValItem(III)Lcom/ts/canview/CanItemIcoVal;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->mItemCarSta:Lcom/ts/canview/CanItemIcoVal;

    .line 113
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 142
    .local v0, "ret":I
    invoke-static {v0}, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->i2b(I)Z

    move-result v1

    return v1
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 127
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 131
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->ShowItem(I)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0x40

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->BaicEcQuery(I)V

    .line 82
    return-void
.end method

.method protected ResetData(Z)V
    .locals 6
    .param p1, "check"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 62
    iget-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->mEcInfo:Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->BaicEcGetCarInfo(Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;)V

    .line 63
    iget-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->mEcInfo:Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->mEcInfo:Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;->Update:I

    invoke-static {v0}, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->mEcInfo:Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;

    iput v5, v0, Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;->Update:I

    .line 69
    iget-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->mItemDistance:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "%d Km"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->mEcInfo:Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;->Distance:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->mItemCo2val:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "%d Kg"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->mEcInfo:Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;->Co2Val:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->mItemCarSta:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->mStaArr:[Ljava/lang/String;

    iget-object v4, p0, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->mEcInfo:Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;->CarSta:I

    and-int/lit8 v4, v4, 0x3

    aget-object v3, v3, v4

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    .line 77
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 157
    .local v0, "show":Z
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->ResetData(Z)V

    .line 180
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 172
    .local v0, "item":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->InitUI()V

    .line 58
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 101
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 103
    const-string v0, "CanBaicEC180DriveInfoActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 88
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->ResetData(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;->QueryData()V

    .line 92
    const-string v0, "CanBaicEC180DriveInfoActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method
