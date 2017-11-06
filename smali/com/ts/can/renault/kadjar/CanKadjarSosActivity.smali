.class public Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanKadjarSosActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_VOL:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CanGqcqLinkSosActivity"

.field protected static mOldSos:I

.field public static mSos:Lcom/lgb/canmodule/CanDataInfo$KadjarSos;

.field public static mbCurWin:Z


# instance fields
.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mTxtCenter:Lcom/ts/other/CustomTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    sput-boolean v1, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->mbCurWin:Z

    .line 33
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSos;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$KadjarSos;-><init>()V

    sput-object v0, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->mSos:Lcom/lgb/canmodule/CanDataInfo$KadjarSos;

    .line 35
    sput v1, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->mOldSos:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method

.method public static DealStatus(Z)V
    .locals 2
    .param p0, "isCamMode"    # Z

    .prologue
    .line 100
    sget-object v0, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->mSos:Lcom/lgb/canmodule/CanDataInfo$KadjarSos;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->KadjarGetSos(Lcom/lgb/canmodule/CanDataInfo$KadjarSos;)V

    .line 101
    sget v0, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->mOldSos:I

    sget-object v1, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->mSos:Lcom/lgb/canmodule/CanDataInfo$KadjarSos;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$KadjarSos;->Sos:I

    if-ne v0, v1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 106
    :cond_0
    sget-object v0, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->mSos:Lcom/lgb/canmodule/CanDataInfo$KadjarSos;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSos;->Sos:I

    sput v0, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->mOldSos:I

    .line 107
    sget-object v0, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->mSos:Lcom/lgb/canmodule/CanDataInfo$KadjarSos;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSos;->Sos:I

    if-lez v0, :cond_2

    .line 109
    if-nez p0, :cond_1

    .line 111
    const-class v0, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;

    invoke-static {v0}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    .line 114
    :cond_1
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/MainUI/Evc;->evol_aux_hold()V

    goto :goto_0

    .line 118
    :cond_2
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/MainUI/Evc;->evol_aux_release()V

    goto :goto_0
.end method

.method private ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 81
    sget-object v0, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->mSos:Lcom/lgb/canmodule/CanDataInfo$KadjarSos;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSos;->UpdateOnce:I

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->mSos:Lcom/lgb/canmodule/CanDataInfo$KadjarSos;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSos;->Update:I

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->mSos:Lcom/lgb/canmodule/CanDataInfo$KadjarSos;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSos;->Update:I

    .line 86
    sget-object v0, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->mSos:Lcom/lgb/canmodule/CanDataInfo$KadjarSos;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSos;->Sos:I

    if-gtz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->finish()V

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->ResetData(Z)V

    .line 143
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 154
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 134
    .local v0, "id":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->setContentView(I)V

    .line 46
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 47
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x138

    const/16 v2, 0xf0

    const/16 v3, 0x190

    const/16 v4, 0x5a

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->mTxtCenter:Lcom/ts/other/CustomTextView;

    .line 48
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->mTxtCenter:Lcom/ts/other/CustomTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 49
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->mTxtCenter:Lcom/ts/other/CustomTextView;

    invoke-virtual {v0, v5, v5, v5, v5}, Lcom/ts/other/CustomTextView;->setPadding(IIII)V

    .line 50
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->mTxtCenter:Lcom/ts/other/CustomTextView;

    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 52
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->mTxtCenter:Lcom/ts/other/CustomTextView;

    const-string v1, "SoS"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 72
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->mbCurWin:Z

    .line 74
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 60
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->ResetData(Z)V

    .line 63
    const-string v0, "CanGqcqLinkSosActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->mbCurWin:Z

    .line 65
    return-void
.end method
