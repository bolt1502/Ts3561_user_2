.class public Lcom/ts/can/CanCarACActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanCarACActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CanCarACActivity"

.field public static mfgAcIconClick:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/CanCarACActivity;->mfgAcIconClick:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/16 v2, 0x1a

    .line 37
    sput-boolean v4, Lcom/ts/can/CanCarACActivity;->mfgAcIconClick:Z

    .line 40
    const-string v0, "CanCarACActivity"

    const-string v1, "-----onCreate-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 224
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ts/can/CanCarACActivity;->finish()V

    .line 229
    return-void

    .line 45
    :sswitch_0
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 46
    invoke-static {v2}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    const-class v0, Lcom/ts/can/gm/comm/CanGMACActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarACActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 51
    invoke-static {v2}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-class v0, Lcom/ts/can/gm/comm/CanGL8ACActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarACActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 58
    :sswitch_1
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 59
    :cond_2
    invoke-static {v2}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-class v0, Lcom/ts/can/psa/CanPSAACActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarACActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 66
    :sswitch_2
    invoke-static {v2}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const/16 v0, 0x26

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanFsTp()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 70
    const-class v0, Lcom/ts/can/chrysler/rz/CanRZygACActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarACActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 72
    :cond_3
    const/16 v0, 0x72

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanFsTp()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 74
    const-class v0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarACActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 78
    :cond_4
    const-class v0, Lcom/ts/can/chrysler/CanChrOthACActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarACActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 84
    :sswitch_3
    invoke-static {v2}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-eq v5, v0, :cond_5

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-eq v6, v0, :cond_5

    .line 87
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 89
    :cond_5
    const-class v0, Lcom/ts/can/CanHondaDAAcActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarACActivity;->enterSubWin(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 96
    :sswitch_4
    invoke-static {v2}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-ne v3, v0, :cond_0

    .line 100
    const-class v0, Lcom/ts/can/hm/CanHmV70AcActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarACActivity;->enterSubWin(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 106
    :sswitch_5
    invoke-static {v2}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 109
    const-class v0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarACActivity;->enterSubWin(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 115
    :sswitch_6
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 116
    invoke-static {v2}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v0

    if-eqz v0, :cond_6

    .line 118
    const-class v0, Lcom/ts/can/gm/sb/CanGMSBACActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarACActivity;->enterSubWin(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 121
    :cond_6
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 122
    invoke-static {v2}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-class v0, Lcom/ts/can/gm/sb/CanSBGL8ACActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarACActivity;->enterSubWin(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 128
    :sswitch_7
    invoke-static {v2}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-class v0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarACActivity;->enterSubWin(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 135
    :sswitch_8
    invoke-static {v2}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-class v0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarACActivity;->enterSubWin(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 142
    :sswitch_9
    invoke-static {v2}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 145
    const-class v0, Lcom/ts/can/df/t90/CanT90CarACActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarACActivity;->enterSubWin(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 151
    :sswitch_a
    invoke-static {v2}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 154
    const-class v0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarACActivity;->enterSubWin(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 160
    :sswitch_b
    invoke-static {v2}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 163
    const-class v0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarACActivity;->enterSubWin(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 169
    :sswitch_c
    invoke-static {v2}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 172
    const-class v0, Lcom/ts/can/CanGolfACActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarACActivity;->enterSubWin(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 173
    :cond_7
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 174
    const-class v0, Lcom/ts/can/CanTeramontACActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarACActivity;->enterSubWin(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 179
    :sswitch_d
    invoke-static {v2}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 182
    const-class v0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarACActivity;->enterSubWin(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 187
    :sswitch_e
    invoke-static {v2}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 190
    const-class v0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarACActivity;->enterSubWin(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 195
    :sswitch_f
    invoke-static {v2}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 198
    const-class v0, Lcom/ts/can/geely/yjx1/CanGeelyYjX1ACActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarACActivity;->enterSubWin(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 203
    :sswitch_10
    invoke-static {v2}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 206
    const-class v0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarACActivity;->enterSubWin(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 212
    :sswitch_11
    invoke-static {v2}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const-class v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCarACActivity;->enterSubWin(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_c
        0x5 -> :sswitch_3
        0x8 -> :sswitch_0
        0xb -> :sswitch_1
        0x11 -> :sswitch_d
        0x1d -> :sswitch_2
        0x2f -> :sswitch_9
        0x31 -> :sswitch_b
        0x32 -> :sswitch_4
        0x37 -> :sswitch_a
        0x39 -> :sswitch_5
        0x3a -> :sswitch_1
        0x3c -> :sswitch_10
        0x48 -> :sswitch_f
        0x4e -> :sswitch_e
        0x58 -> :sswitch_6
        0x59 -> :sswitch_7
        0x5b -> :sswitch_8
        0x73 -> :sswitch_11
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 236
    const-string v0, "CanCarACActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method
