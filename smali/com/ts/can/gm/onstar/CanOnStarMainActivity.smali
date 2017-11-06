.class public Lcom/ts/can/gm/onstar/CanOnStarMainActivity;
.super Lcom/ts/can/gm/onstar/CanOnStarBaseActivity;
.source "CanOnStarMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_GPS:I = 0x0

.field public static final ITEM_SPK:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanOnStarMainActivity"

.field protected static final TOTAL_ITEM:I = 0x2

.field public static final mOptIco:[I

.field public static final mOptId:[I

.field public static final mOptTitle:[I


# instance fields
.field protected mOpt:[Lcom/ts/canview/CanItemIcoList;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 26
    new-array v0, v3, [I

    .line 28
    aput v2, v0, v2

    .line 25
    sput-object v0, Lcom/ts/can/gm/onstar/CanOnStarMainActivity;->mOptId:[I

    .line 33
    new-array v0, v3, [I

    .line 34
    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_gps:I

    aput v1, v0, v4

    .line 35
    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_onstar:I

    aput v1, v0, v2

    .line 32
    sput-object v0, Lcom/ts/can/gm/onstar/CanOnStarMainActivity;->mOptIco:[I

    .line 39
    new-array v0, v3, [I

    .line 40
    sget v1, Lcom/ts/MainUI/R$string;->can_gps:I

    aput v1, v0, v4

    .line 41
    sget v1, Lcom/ts/MainUI/R$string;->can_onstar:I

    aput v1, v0, v2

    .line 38
    sput-object v0, Lcom/ts/can/gm/onstar/CanOnStarMainActivity;->mOptTitle:[I

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ts/can/gm/onstar/CanOnStarBaseActivity;-><init>()V

    return-void
.end method

.method private ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 117
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/gm/onstar/CanOnStarMainActivity;->ResetData(Z)V

    .line 124
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 80
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 83
    :pswitch_0
    const-class v1, Lcom/ts/can/gm/onstar/CanOnStarNaviActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/onstar/CanOnStarMainActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 87
    :pswitch_1
    const-class v1, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/onstar/CanOnStarMainActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x58

    const/4 v7, 0x2

    .line 47
    invoke-super {p0, p1}, Lcom/ts/can/gm/onstar/CanOnStarBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/16 v3, 0x8

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v4

    if-eq v3, v4, :cond_1

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v3

    if-eq v5, v3, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/ts/can/gm/onstar/CanOnStarMainActivity;->finish()V

    .line 73
    :cond_0
    return-void

    .line 54
    :cond_1
    sget v3, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v3}, Lcom/ts/can/gm/onstar/CanOnStarMainActivity;->setContentView(I)V

    .line 57
    new-instance v1, Lcom/ts/canview/CanScrollList;

    invoke-direct {v1, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    .line 58
    .local v1, "sl":Lcom/ts/canview/CanScrollList;
    new-array v3, v7, [Lcom/ts/canview/CanItemIcoList;

    iput-object v3, p0, Lcom/ts/can/gm/onstar/CanOnStarMainActivity;->mOpt:[Lcom/ts/canview/CanItemIcoList;

    .line 60
    const/4 v2, 0x0

    .line 62
    .local v2, "startItem":I
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v3

    if-ne v5, v3, :cond_2

    .line 63
    const/4 v2, 0x1

    .line 66
    :cond_2
    move v0, v2

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_0

    .line 68
    iget-object v3, p0, Lcom/ts/can/gm/onstar/CanOnStarMainActivity;->mOpt:[Lcom/ts/canview/CanItemIcoList;

    new-instance v4, Lcom/ts/canview/CanItemIcoList;

    sget-object v5, Lcom/ts/can/gm/onstar/CanOnStarMainActivity;->mOptIco:[I

    aget v5, v5, v0

    sget-object v6, Lcom/ts/can/gm/onstar/CanOnStarMainActivity;->mOptTitle:[I

    aget v6, v6, v0

    invoke-direct {v4, p0, v5, v6}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    aput-object v4, v3, v0

    .line 69
    iget-object v3, p0, Lcom/ts/can/gm/onstar/CanOnStarMainActivity;->mOpt:[Lcom/ts/canview/CanItemIcoList;

    aget-object v3, v3, v0

    sget-object v4, Lcom/ts/can/gm/onstar/CanOnStarMainActivity;->mOptId:[I

    aget v4, v4, v0

    invoke-virtual {v3, p0, v4}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 70
    iget-object v3, p0, Lcom/ts/can/gm/onstar/CanOnStarMainActivity;->mOpt:[Lcom/ts/canview/CanItemIcoList;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 99
    invoke-super {p0}, Lcom/ts/can/gm/onstar/CanOnStarBaseActivity;->onPause()V

    .line 100
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/ts/can/gm/onstar/CanOnStarBaseActivity;->onResume()V

    .line 107
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/gm/onstar/CanOnStarMainActivity;->ResetData(Z)V

    .line 112
    return-void
.end method
