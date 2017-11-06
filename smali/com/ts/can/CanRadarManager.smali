.class public Lcom/ts/can/CanRadarManager;
.super Ljava/lang/Object;
.source "CanRadarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/can/CanRadarManager$ManageData;
    }
.end annotation


# static fields
.field public static final Mode_CameraForeRadar:I = 0x4

.field public static final Mode_CameraOnly:I = 0x2

.field public static final Mode_CameraRearRadar:I = 0x3

.field public static final Mode_Null:I = 0x0

.field public static final Mode_RadarOnly:I = 0x1

.field public static final WaitStatus_ForeDelayBegin:I = 0x1

.field public static final WaitStatus_ForeDelayEnd:I = 0x2

.field public static final WaitStatus_Null:I

.field public static mInstance:Lcom/ts/can/CanRadarManager;


# instance fields
.field public mData:Lcom/ts/can/CanRadarManager$ManageData;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/ts/can/CanRadarManager$ManageData;

    invoke-direct {v0, p0}, Lcom/ts/can/CanRadarManager$ManageData;-><init>(Lcom/ts/can/CanRadarManager;)V

    iput-object v0, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    .line 41
    return-void
.end method

.method public static GetInstance()Lcom/ts/can/CanRadarManager;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/ts/can/CanRadarManager;->mInstance:Lcom/ts/can/CanRadarManager;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/ts/can/CanRadarManager;

    invoke-direct {v0}, Lcom/ts/can/CanRadarManager;-><init>()V

    sput-object v0, Lcom/ts/can/CanRadarManager;->mInstance:Lcom/ts/can/CanRadarManager;

    .line 55
    :cond_0
    sget-object v0, Lcom/ts/can/CanRadarManager;->mInstance:Lcom/ts/can/CanRadarManager;

    return-object v0
.end method

.method public static GetTickCount()J
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected static i2b(I)Z
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 240
    if-nez p0, :cond_0

    .line 242
    const/4 v0, 0x0

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public GotoForeRadarWin()V
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/lgb/canmodule/Can;->mRadarForeInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;

    invoke-virtual {p0, v0}, Lcom/ts/can/CanRadarManager;->IsForeAvalid(Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/ts/can/CanRadarManager;->GotoRadarWin()V

    .line 224
    :cond_0
    return-void
.end method

.method public GotoRadarWin()V
    .locals 1

    .prologue
    .line 215
    const-class v0, Lcom/ts/can/CanRadarActivity;

    invoke-static {v0}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    .line 216
    return-void
.end method

.method public Init()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 61
    iget-object v0, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCamFix()I

    move-result v1

    invoke-static {v1}, Lcom/ts/can/CanRadarManager;->i2b(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/ts/can/CanRadarManager$ManageData;->fgHaveCamera:Z

    .line 62
    iget-object v0, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    const-wide/16 v1, 0x7d0

    iput-wide v1, v0, Lcom/ts/can/CanRadarManager$ManageData;->DelayTick:J

    .line 63
    iget-object v0, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->IsHaveRadar()Z

    move-result v1

    iput-boolean v1, v0, Lcom/ts/can/CanRadarManager$ManageData;->fgHaveRadar:Z

    .line 64
    iget-object v0, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->IsHaveForeRadar()Z

    move-result v1

    iput-boolean v1, v0, Lcom/ts/can/CanRadarManager$ManageData;->fgHaveForeRadar:Z

    .line 66
    iget-object v0, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    iget-boolean v0, v0, Lcom/ts/can/CanRadarManager$ManageData;->fgHaveRadar:Z

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    iget-boolean v0, v0, Lcom/ts/can/CanRadarManager$ManageData;->fgHaveCamera:Z

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    iget-boolean v0, v0, Lcom/ts/can/CanRadarManager$ManageData;->fgHaveForeRadar:Z

    if-eqz v0, :cond_1

    .line 72
    const/16 v0, 0xd

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    iput v3, v0, Lcom/ts/can/CanRadarManager$ManageData;->Mode:I

    .line 103
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    const/4 v1, 0x4

    iput v1, v0, Lcom/ts/can/CanRadarManager$ManageData;->Mode:I

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    iput v3, v0, Lcom/ts/can/CanRadarManager$ManageData;->Mode:I

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    const/4 v1, 0x1

    iput v1, v0, Lcom/ts/can/CanRadarManager$ManageData;->Mode:I

    goto :goto_0

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    iget-boolean v0, v0, Lcom/ts/can/CanRadarManager$ManageData;->fgHaveCamera:Z

    if-eqz v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    const/4 v1, 0x2

    iput v1, v0, Lcom/ts/can/CanRadarManager$ManageData;->Mode:I

    goto :goto_0

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ts/can/CanRadarManager$ManageData;->Mode:I

    goto :goto_0
.end method

.method public InvalidRadarWin()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public IsForeAvalid(Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;)Z
    .locals 1
    .param p1, "fore"    # Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;

    .prologue
    .line 228
    iget v0, p1, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->nLeftDis:I

    if-nez v0, :cond_0

    .line 229
    iget v0, p1, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->nRightDis:I

    if-nez v0, :cond_0

    .line 230
    iget v0, p1, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->nMidLtDis:I

    if-nez v0, :cond_0

    .line 231
    iget v0, p1, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->nMidRtDis:I

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    const/4 v0, 0x1

    .line 235
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsRadarWin()Z
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/ts/can/CanRadarActivity;->IsRadarWin()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ts/can/CanFunc;->IsCamMode()I

    move-result v0

    invoke-static {v0}, Lcom/ts/can/CanRadarManager;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    const/4 v0, 0x1

    .line 205
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Main()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 107
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    iget v3, v3, Lcom/ts/can/CanRadarManager$ManageData;->Mode:I

    if-eq v2, v3, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/ts/can/CanRadarManager;->IsRadarWin()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    iget-object v2, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    iput v6, v2, Lcom/ts/can/CanRadarManager$ManageData;->WaitStatus:I

    goto :goto_0

    .line 118
    :cond_2
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    iget v3, v3, Lcom/ts/can/CanRadarManager$ManageData;->WaitStatus:I

    if-ne v2, v3, :cond_0

    .line 120
    invoke-static {}, Lcom/ts/can/CanRadarManager;->GetTickCount()J

    move-result-wide v0

    .line 121
    .local v0, "curTick":J
    sget-object v2, Lcom/lgb/canmodule/Can;->mRadarForeInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->dwTick:I

    int-to-long v2, v2

    iget-object v4, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    iget-wide v4, v4, Lcom/ts/can/CanRadarManager$ManageData;->DelayTick:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 123
    iget-object v2, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    iput v6, v2, Lcom/ts/can/CanRadarManager$ManageData;->WaitStatus:I

    goto :goto_0

    .line 127
    :cond_3
    iget-object v2, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    iget-wide v2, v2, Lcom/ts/can/CanRadarManager$ManageData;->WaitStartTick:J

    iget-object v4, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    iget-wide v4, v4, Lcom/ts/can/CanRadarManager$ManageData;->DelayTick:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    iput v6, v2, Lcom/ts/can/CanRadarManager$ManageData;->WaitStatus:I

    .line 130
    invoke-virtual {p0}, Lcom/ts/can/CanRadarManager;->GotoForeRadarWin()V

    goto :goto_0
.end method

.method public ShowRadar()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    iget v0, v0, Lcom/ts/can/CanRadarManager$ManageData;->Mode:I

    packed-switch v0, :pswitch_data_0

    .line 197
    :goto_0
    :pswitch_0
    return-void

    .line 144
    :pswitch_1
    invoke-virtual {p0}, Lcom/ts/can/CanRadarManager;->GotoRadarWin()V

    goto :goto_0

    .line 151
    :pswitch_2
    invoke-virtual {p0}, Lcom/ts/can/CanRadarManager;->InvalidRadarWin()V

    goto :goto_0

    .line 155
    :pswitch_3
    sget-object v0, Lcom/lgb/canmodule/Can;->mRadarForeInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanRadarManager;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/ts/can/CanRadarManager;->InvalidRadarWin()V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/ts/can/CanRadarManager;->IsRadarWin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    iput v1, v0, Lcom/ts/can/CanRadarManager$ManageData;->WaitStatus:I

    .line 164
    invoke-virtual {p0}, Lcom/ts/can/CanRadarManager;->InvalidRadarWin()V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    iget v0, v0, Lcom/ts/can/CanRadarManager$ManageData;->WaitStatus:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 171
    :pswitch_4
    iget-object v0, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    invoke-static {}, Lcom/ts/can/CanRadarManager;->GetTickCount()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ts/can/CanRadarManager$ManageData;->WaitStartTick:J

    .line 172
    iget-object v0, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    const/4 v1, 0x1

    iput v1, v0, Lcom/ts/can/CanRadarManager$ManageData;->WaitStatus:I

    .line 173
    const-string v0, ""

    const-string v1, "WaitStatus_ForeDelayBegin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    :pswitch_5
    invoke-virtual {p0}, Lcom/ts/can/CanRadarManager;->GotoForeRadarWin()V

    .line 181
    iget-object v0, p0, Lcom/ts/can/CanRadarManager;->mData:Lcom/ts/can/CanRadarManager$ManageData;

    iput v1, v0, Lcom/ts/can/CanRadarManager$ManageData;->WaitStatus:I

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 168
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
