.class public Lcom/txznet/sdk/bean/NaviInfo;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private T:Lcom/txznet/sdk/bean/NaviLatLng;

.field private T2:I

.field private T3:I

.field private T7:I

.field private TB:I

.field private TG:I

.field private TJ:I

.field private TN:Lcom/txznet/sdk/bean/NaviLatLng;

.field private TO:I

.field private TP:I

.field private TR:I

.field private TW:I

.field private Te:I

.field private Tn:I

.field private To:I

.field private Tr:Ljava/lang/String;

.field private Tw:I

.field private Ty:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraCoord()Lcom/txznet/sdk/bean/NaviLatLng;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->T:Lcom/txznet/sdk/bean/NaviLatLng;

    return-object v0
.end method

.method public getCameraDistance()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->T3:I

    return v0
.end method

.method public getCameraType()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->T2:I

    return v0
.end method

.method public getCoord()Lcom/txznet/sdk/bean/NaviLatLng;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->TN:Lcom/txznet/sdk/bean/NaviLatLng;

    return-object v0
.end method

.method public getCurrentLink()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->Te:I

    return v0
.end method

.method public getCurrentPoint()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->Tw:I

    return v0
.end method

.method public getCurrentRoadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->Ty:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentStep()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->Tn:I

    return v0
.end method

.method public getCurrentStepRemainDistance()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->TG:I

    return v0
.end method

.method public getCurrentStepRemainTime()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->TR:I

    return v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->TW:I

    return v0
.end method

.method public getIconType()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->TJ:I

    return v0
.end method

.method public getLimitSpeed()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->TB:I

    return v0
.end method

.method public getNaviType()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->TP:I

    return v0
.end method

.method public getNextRoadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->Tr:Ljava/lang/String;

    return-object v0
.end method

.method public getPathRemainDistance()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->T7:I

    return v0
.end method

.method public getPathRemainTime()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->TO:I

    return v0
.end method

.method public getServiceAreaDistance()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->To:I

    return v0
.end method

.method public setCameraCoord(Lcom/txznet/sdk/bean/NaviLatLng;)V
    .locals 0
    .param p1, "mCameraCoord"    # Lcom/txznet/sdk/bean/NaviLatLng;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->T:Lcom/txznet/sdk/bean/NaviLatLng;

    .line 106
    return-void
.end method

.method public setCameraDistance(I)V
    .locals 0
    .param p1, "mCameraDistance"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->T3:I

    .line 117
    return-void
.end method

.method public setCameraType(I)V
    .locals 0
    .param p1, "mCameraType"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->T2:I

    .line 128
    return-void
.end method

.method public setCoord(Lcom/txznet/sdk/bean/NaviLatLng;)V
    .locals 0
    .param p1, "mCoord"    # Lcom/txznet/sdk/bean/NaviLatLng;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->TN:Lcom/txznet/sdk/bean/NaviLatLng;

    .line 139
    return-void
.end method

.method public setCurrStepRemainDistance(I)V
    .locals 0
    .param p1, "mCurrStepRemainDistance"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->TG:I

    .line 194
    return-void
.end method

.method public setCurrentLink(I)V
    .locals 0
    .param p1, "mCurrentLink"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->Te:I

    .line 150
    return-void
.end method

.method public setCurrentPoint(I)V
    .locals 0
    .param p1, "mCurrentPoint"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->Tw:I

    .line 161
    return-void
.end method

.method public setCurrentRoadName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCurrentRoadName"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->Ty:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setCurrentStep(I)V
    .locals 0
    .param p1, "mCurrentStep"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->Tn:I

    .line 183
    return-void
.end method

.method public setCurrentStepRemainTime(I)V
    .locals 0
    .param p1, "mCurrentStepRemainTime"    # I

    .prologue
    .line 204
    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->TR:I

    .line 205
    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .param p1, "mDirection"    # I

    .prologue
    .line 215
    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->TW:I

    .line 216
    return-void
.end method

.method public setIconType(I)V
    .locals 0
    .param p1, "mIconType"    # I

    .prologue
    .line 226
    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->TJ:I

    .line 227
    return-void
.end method

.method public setLimitSpeed(I)V
    .locals 0
    .param p1, "mLimitSpeed"    # I

    .prologue
    .line 237
    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->TB:I

    .line 238
    return-void
.end method

.method public setNaviType(I)V
    .locals 0
    .param p1, "mNaviType"    # I

    .prologue
    .line 248
    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->TP:I

    .line 249
    return-void
.end method

.method public setNextRoadName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNextRoadName"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->Tr:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setPathRemainDistance(I)V
    .locals 0
    .param p1, "mPathRemainDistance"    # I

    .prologue
    .line 270
    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->T7:I

    .line 271
    return-void
.end method

.method public setPathRemainTime(I)V
    .locals 0
    .param p1, "mPathRemainTime"    # I

    .prologue
    .line 281
    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->TO:I

    .line 282
    return-void
.end method

.method public setServiceAreaDistance(I)V
    .locals 0
    .param p1, "mServiceAreaDistance"    # I

    .prologue
    .line 292
    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->To:I

    .line 293
    return-void
.end method
