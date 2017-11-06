.class public Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanGqcqLinkSosActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_VOL:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CanGqcqLinkSosActivity"

.field public static mLinkSos:Lcom/lgb/canmodule/CanDataInfo$GCLinkSos;

.field public static mbCurWin:Z


# instance fields
.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mTxtCenter:Lcom/ts/other/CustomTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GCLinkSos;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GCLinkSos;-><init>()V

    sput-object v0, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->mLinkSos:Lcom/lgb/canmodule/CanDataInfo$GCLinkSos;

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->mbCurWin:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method

.method public static DealStatus(Z)V
    .locals 1
    .param p0, "isCamMode"    # Z

    .prologue
    .line 124
    sget-object v0, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->mLinkSos:Lcom/lgb/canmodule/CanDataInfo$GCLinkSos;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GqcqGetLinkSos(Lcom/lgb/canmodule/CanDataInfo$GCLinkSos;)V

    .line 125
    sget-object v0, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->mLinkSos:Lcom/lgb/canmodule/CanDataInfo$GCLinkSos;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GCLinkSos;->Sta:I

    if-lez v0, :cond_1

    .line 127
    if-nez p0, :cond_0

    .line 129
    const-class v0, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;

    invoke-static {v0}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    .line 132
    :cond_0
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/MainUI/Evc;->evol_aux_hold()V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/MainUI/Evc;->evol_aux_release()V

    goto :goto_0
.end method

.method private ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 88
    sget-object v0, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->mLinkSos:Lcom/lgb/canmodule/CanDataInfo$GCLinkSos;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GCLinkSos;->UpdateOnce:I

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->mLinkSos:Lcom/lgb/canmodule/CanDataInfo$GCLinkSos;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GCLinkSos;->Update:I

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->mLinkSos:Lcom/lgb/canmodule/CanDataInfo$GCLinkSos;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GCLinkSos;->Update:I

    .line 93
    sget-object v0, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->mLinkSos:Lcom/lgb/canmodule/CanDataInfo$GCLinkSos;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GCLinkSos;->Sta:I

    packed-switch v0, :pswitch_data_0

    .line 106
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->mTxtCenter:Lcom/ts/other/CustomTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_0
    sget-object v0, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->mLinkSos:Lcom/lgb/canmodule/CanDataInfo$GCLinkSos;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GCLinkSos;->Sta:I

    if-gtz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->finish()V

    .line 119
    :cond_0
    return-void

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->mTxtCenter:Lcom/ts/other/CustomTextView;

    const-string v1, "Link"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->mTxtCenter:Lcom/ts/other/CustomTextView;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    goto :goto_0

    .line 101
    :pswitch_1
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->mTxtCenter:Lcom/ts/other/CustomTextView;

    const-string v1, "SoS"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->mTxtCenter:Lcom/ts/other/CustomTextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->ResetData(Z)V

    .line 161
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 172
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 152
    .local v0, "id":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->setContentView(I)V

    .line 43
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 44
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x138

    const/16 v2, 0xf0

    const/16 v3, 0x190

    const/16 v4, 0x50

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->mTxtCenter:Lcom/ts/other/CustomTextView;

    .line 45
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->mTxtCenter:Lcom/ts/other/CustomTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 46
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->mTxtCenter:Lcom/ts/other/CustomTextView;

    invoke-virtual {v0, v5, v5, v5, v5}, Lcom/ts/other/CustomTextView;->setPadding(IIII)V

    .line 47
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->mTxtCenter:Lcom/ts/other/CustomTextView;

    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 49
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 68
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->mbCurWin:Z

    .line 70
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 56
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->ResetData(Z)V

    .line 59
    const-string v0, "CanGqcqLinkSosActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->mbCurWin:Z

    .line 61
    return-void
.end method
