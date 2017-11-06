.class public Lcom/ts/can/CanCarDeviceActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanCarDeviceActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CanCarDeviceActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 99
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ts/can/CanCarDeviceActivity;->finish()V

    .line 102
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    return-void

    .line 30
    :sswitch_0
    const-class v0, Lcom/ts/can/CanHondaExdActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarDeviceActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 34
    :sswitch_1
    const/16 v0, 0x26

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanFsTp()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 36
    const-class v0, Lcom/ts/can/chrysler/rz/CanRZygCDActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarDeviceActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 38
    :cond_1
    const/16 v0, 0x72

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanFsTp()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 40
    const-class v0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarDeviceActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 44
    :cond_2
    const-class v0, Lcom/ts/can/chrysler/CanChrOthCDActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarDeviceActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 49
    :sswitch_2
    const-class v0, Lcom/ts/can/fiat/CanFiatAllExdActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarDeviceActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 53
    :sswitch_3
    const-class v0, Lcom/ts/can/fiat/CanFiatBravoExdActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarDeviceActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 57
    :sswitch_4
    const-class v0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarDeviceActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 61
    :sswitch_5
    const-class v0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarDeviceActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 65
    :sswitch_6
    const/4 v0, 0x5

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 67
    const-class v0, Lcom/ts/can/CanOdysseyExdActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarDeviceActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 72
    :sswitch_7
    const-class v0, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarDeviceActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 76
    :sswitch_8
    const-class v0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarDeviceActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 80
    :sswitch_9
    const/4 v0, 0x3

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 81
    const-class v0, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarDeviceActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 85
    :sswitch_a
    const/16 v0, 0x4f

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanFsTp()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 87
    const-class v0, Lcom/ts/can/jiangling/CanJlCarSetActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarDeviceActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 92
    :sswitch_b
    const-class v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarDeviceActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 27
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_6
        0x1c -> :sswitch_a
        0x1d -> :sswitch_1
        0x24 -> :sswitch_2
        0x25 -> :sswitch_3
        0x27 -> :sswitch_4
        0x45 -> :sswitch_5
        0x58 -> :sswitch_9
        0x65 -> :sswitch_7
        0x6b -> :sswitch_8
        0x73 -> :sswitch_b
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 111
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 118
    return-void
.end method
