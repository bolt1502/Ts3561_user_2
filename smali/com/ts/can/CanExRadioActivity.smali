.class public Lcom/ts/can/CanExRadioActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanExRadioActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CanExRadioActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 43
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ts/can/CanExRadioActivity;->finish()V

    .line 45
    return-void

    .line 25
    :sswitch_0
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 27
    const-class v0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanExRadioActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 32
    :sswitch_1
    const-class v0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanExRadioActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 36
    :sswitch_2
    const-class v0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsRadioActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanExRadioActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 22
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x14 -> :sswitch_1
        0x60 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 52
    const-string v0, "CanExRadioActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method
