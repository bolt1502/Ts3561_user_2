.class public Lcom/txznet/sdk/TXZConfigManager$InitParam;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitParam"
.end annotation


# instance fields
.field T:Ljava/lang/String;

.field T0:Ljava/lang/Float;

.field T1:Ljava/lang/Boolean;

.field T2:Ljava/lang/String;

.field T3:Ljava/lang/String;

.field T5:Ljava/lang/Integer;

.field T6:Ljava/lang/String;

.field T7:Ljava/lang/Boolean;

.field T8:Ljava/lang/Integer;

.field T9:Ljava/lang/Integer;

.field TA:Ljava/lang/Boolean;

.field TB:Ljava/lang/Integer;

.field TD:Ljava/lang/Boolean;

.field TF:Ljava/lang/Integer;

.field TG:Ljava/lang/String;

.field TH:Ljava/lang/Boolean;

.field TI:Ljava/lang/Boolean;

.field TJ:Ljava/lang/Integer;

.field TL:Lcom/txznet/sdk/TXZConfigManager$AsrMode;

.field TM:Ljava/lang/Boolean;

.field TN:Ljava/lang/String;

.field TO:Ljava/lang/Boolean;

.field TP:[Ljava/lang/String;

.field TQ:Ljava/lang/String;

.field TR:Ljava/lang/String;

.field TU:Ljava/lang/Boolean;

.field TW:Ljava/lang/Long;

.field TY:Ljava/lang/Boolean;

.field TZ:Ljava/lang/Boolean;

.field Ta:Ljava/lang/Float;

.field Tc:Ljava/lang/Float;

.field Td:Lcom/txznet/sdk/TXZConfigManager$InterruptMode;

.field Te:Ljava/lang/String;

.field Tf:Ljava/lang/Integer;

.field Tg:Ljava/lang/Integer;

.field Tk:Ljava/lang/Integer;

.field Tn:Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

.field To:Ljava/lang/Boolean;

.field Tr:Ljava/lang/String;

.field Tt:Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

.field Tu:Ljava/lang/String;

.field Tw:Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

.field Tx:Ljava/lang/Integer;

.field Ty:Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;

.field Tz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appToken"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T:Ljava/lang/String;

    .line 319
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T3:Ljava/lang/String;

    .line 320
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T2:Ljava/lang/String;

    .line 321
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TN:Ljava/lang/String;

    .line 322
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Te:Ljava/lang/String;

    .line 323
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tw:Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

    .line 324
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Ty:Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;

    .line 325
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tn:Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

    .line 326
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TG:Ljava/lang/String;

    .line 327
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TR:Ljava/lang/String;

    .line 328
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TW:Ljava/lang/Long;

    .line 329
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TJ:Ljava/lang/Integer;

    .line 330
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TB:Ljava/lang/Integer;

    .line 331
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TP:[Ljava/lang/String;

    .line 332
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tr:Ljava/lang/String;

    .line 338
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T7:Ljava/lang/Boolean;

    .line 340
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TO:Ljava/lang/Boolean;

    .line 341
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->To:Ljava/lang/Boolean;

    .line 342
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TQ:Ljava/lang/String;

    .line 343
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TL:Lcom/txznet/sdk/TXZConfigManager$AsrMode;

    .line 344
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TH:Ljava/lang/Boolean;

    .line 345
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T0:Ljava/lang/Float;

    .line 346
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tc:Ljava/lang/Float;

    .line 347
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tk:Ljava/lang/Integer;

    .line 348
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TF:Ljava/lang/Integer;

    .line 349
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tt:Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    .line 350
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T5:Ljava/lang/Integer;

    .line 351
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tu:Ljava/lang/String;

    .line 352
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tf:Ljava/lang/Integer;

    .line 353
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T1:Ljava/lang/Boolean;

    .line 354
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tg:Ljava/lang/Integer;

    .line 355
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TY:Ljava/lang/Boolean;

    .line 356
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TZ:Ljava/lang/Boolean;

    .line 357
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TM:Ljava/lang/Boolean;

    .line 358
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TU:Ljava/lang/Boolean;

    .line 359
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tx:Ljava/lang/Integer;

    .line 360
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T9:Ljava/lang/Integer;

    .line 361
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TA:Ljava/lang/Boolean;

    .line 362
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TD:Ljava/lang/Boolean;

    .line 363
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T6:Ljava/lang/String;

    .line 365
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tz:Ljava/lang/String;

    .line 366
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TI:Ljava/lang/Boolean;

    .line 367
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Td:Lcom/txznet/sdk/TXZConfigManager$InterruptMode;

    .line 368
    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Ta:Ljava/lang/Float;

    .line 378
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T:Ljava/lang/String;

    .line 379
    iput-object p2, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T3:Ljava/lang/String;

    .line 380
    return-void
.end method


# virtual methods
.method public enableBlackHole(Z)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 902
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TZ:Ljava/lang/Boolean;

    .line 903
    return-object p0
.end method

.method public enableProtectWakeup(Z)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 927
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TU:Ljava/lang/Boolean;

    .line 928
    return-object p0
.end method

.method public enableZeroVolToast(Z)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 843
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T1:Ljava/lang/Boolean;

    .line 844
    return-object p0
.end method

.method public forceStopWkWhenTts(Z)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 914
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TM:Ljava/lang/Boolean;

    .line 915
    return-object p0
.end method

.method public forceUseUI1(Z)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 1
    .param p1, "use"    # Z

    .prologue
    .line 419
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TI:Ljava/lang/Boolean;

    .line 420
    return-object p0
.end method

.method public setAddDefaultMusicType(Ljava/lang/Boolean;)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 0
    .param p1, "defaultMusicType"    # Ljava/lang/Boolean;

    .prologue
    .line 818
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TA:Ljava/lang/Boolean;

    .line 819
    return-object p0
.end method

.method public setAppCustomId(Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 0
    .param p1, "appCustomId"    # Ljava/lang/String;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T2:Ljava/lang/String;

    .line 415
    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T:Ljava/lang/String;

    .line 391
    return-object p0
.end method

.method public setAppToken(Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 0
    .param p1, "appToken"    # Ljava/lang/String;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T3:Ljava/lang/String;

    .line 403
    return-object p0
.end method

.method public setAsrMode(Lcom/txznet/sdk/TXZConfigManager$AsrMode;)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 0
    .param p1, "mode"    # Lcom/txznet/sdk/TXZConfigManager$AsrMode;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TL:Lcom/txznet/sdk/TXZConfigManager$AsrMode;

    .line 708
    return-object p0
.end method

.method public setAsrServiceMode(Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 0
    .param p1, "asrServiceMode"    # Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    .prologue
    .line 805
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tt:Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    .line 806
    return-object p0
.end method

.method public setAsrType(Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 0
    .param p1, "asrType"    # Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 551
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Ty:Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;

    .line 552
    return-object p0
.end method

.method public setAsrWakeupThreshhold(F)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 1
    .param p1, "threshHold"    # F

    .prologue
    .line 740
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tc:Ljava/lang/Float;

    .line 741
    return-object p0
.end method

.method public setAudioSourceForRecord(I)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 1
    .param p1, "audioSource"    # I

    .prologue
    .line 939
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tx:Ljava/lang/Integer;

    .line 940
    return-object p0
.end method

.method public setBeepTimeOut(I)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 1
    .param p1, "timeOut"    # I

    .prologue
    .line 781
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tk:Ljava/lang/Integer;

    .line 782
    return-object p0
.end method

.method public setCoexistAsrAndWakeup(Z)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 718
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TH:Ljava/lang/Boolean;

    .line 719
    return-object p0
.end method

.method public setDefaultConfig(Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 0
    .param p1, "mDefaultDoc"    # Ljava/lang/String;

    .prologue
    .line 767
    if-eqz p1, :cond_0

    .line 768
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tu:Ljava/lang/String;

    .line 770
    :cond_0
    return-object p0
.end method

.method public setDefaultNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 1
    .param p1, "toolType"    # Lcom/txznet/sdk/TXZNavManager$NavToolType;

    .prologue
    .line 687
    invoke-static {p1}, Lcom/txznet/sdk/TXZNavManager;->T(Lcom/txznet/sdk/TXZNavManager$NavToolType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TQ:Ljava/lang/String;

    .line 688
    return-object p0
.end method

.method public setEnableServiceContact(Z)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 1
    .param p1, "en"    # Z

    .prologue
    .line 699
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TO:Ljava/lang/Boolean;

    .line 700
    return-object p0
.end method

.method public setExtAudioSourcePkg(Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 959
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T6:Ljava/lang/String;

    .line 960
    return-object p0
.end method

.method public setExtAudioSourceType(I)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 890
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T9:Ljava/lang/Integer;

    .line 891
    return-object p0
.end method

.method public setFilterNoiseType(I)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 1
    .param p1, "filterNoiseType"    # I

    .prologue
    .line 793
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TF:Ljava/lang/Integer;

    .line 794
    return-object p0
.end method

.method public setFixCallFunction(Z)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 1
    .param p1, "fix"    # Z

    .prologue
    .line 676
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->To:Ljava/lang/Boolean;

    .line 677
    return-object p0
.end method

.method public setFloatToolClickInterval(J)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 1
    .param p1, "interval"    # J

    .prologue
    .line 600
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TW:Ljava/lang/Long;

    .line 601
    return-object p0
.end method

.method public setFloatToolIcon(Ljava/lang/String;Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 0
    .param p1, "ftUrl_N"    # Ljava/lang/String;
    .param p2, "ftUrl_P"    # Ljava/lang/String;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TG:Ljava/lang/String;

    .line 590
    iput-object p2, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TR:Ljava/lang/String;

    .line 591
    return-object p0
.end method

.method public setFloatToolPosition(II)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 574
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TJ:Ljava/lang/Integer;

    .line 575
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TB:Ljava/lang/Integer;

    .line 576
    return-object p0
.end method

.method public setFloatToolType(Lcom/txznet/sdk/TXZConfigManager$FloatToolType;)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 0
    .param p1, "ftType"    # Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tn:Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

    .line 564
    return-object p0
.end method

.method public setInstantAsrEnabled(Z)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 629
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T7:Ljava/lang/Boolean;

    .line 630
    return-object p0
.end method

.method public setInterruptMode(Lcom/txznet/sdk/TXZConfigManager$InterruptMode;)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 0
    .param p1, "interruptMode"    # Lcom/txznet/sdk/TXZConfigManager$InterruptMode;

    .prologue
    .line 980
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Td:Lcom/txznet/sdk/TXZConfigManager$InterruptMode;

    .line 981
    return-object p0
.end method

.method public setMaxAsrRecordTime(I)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 1
    .param p1, "maxTime"    # I

    .prologue
    .line 830
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tf:Ljava/lang/Integer;

    .line 831
    return-object p0
.end method

.method public setNeverFormatRoot(Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 0
    .param p1, "root"    # Ljava/lang/String;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Te:Ljava/lang/String;

    .line 458
    return-object p0
.end method

.method public setResApkPath(Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 864
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tz:Ljava/lang/String;

    .line 865
    return-object p0
.end method

.method public setTtsType(Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 0
    .param p1, "ttsType"    # Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tw:Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

    .line 470
    return-object p0
.end method

.method public setTtsVoiceSpeed(I)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 1
    .param p1, "ttsVoiceSpeed"    # I

    .prologue
    .line 751
    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    .line 752
    const/16 p1, 0x14

    .line 756
    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T5:Ljava/lang/Integer;

    .line 757
    return-object p0

    .line 753
    :cond_1
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 754
    const/16 p1, 0x64

    goto :goto_0
.end method

.method public setTxzStream(I)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 854
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tg:Ljava/lang/Integer;

    .line 855
    return-object p0
.end method

.method public setUUID(Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TN:Ljava/lang/String;

    .line 446
    return-object p0
.end method

.method public setUseHQualityWakeupModel(Z)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 1
    .param p1, "useHQualityWakeupModel"    # Z

    .prologue
    .line 949
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TD:Ljava/lang/Boolean;

    .line 950
    return-object p0
.end method

.method public setWakeupKeyWordsThreshold(Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 0
    .param p1, "jsonScoreKws"    # Ljava/lang/String;

    .prologue
    .line 640
    if-nez p1, :cond_0

    .line 641
    const-string p1, ""

    .line 643
    :cond_0
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tr:Ljava/lang/String;

    .line 644
    return-object p0
.end method

.method public varargs setWakeupKeywordsNew([Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 7
    .param p1, "wakeupKeywords"    # [Ljava/lang/String;

    .prologue
    .line 612
    if-nez p1, :cond_0

    .line 613
    const/4 v5, 0x0

    new-array p1, v5, [Ljava/lang/String;

    .line 615
    :cond_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 616
    .local v4, "setKws":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 617
    .local v2, "kw":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 618
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 621
    .end local v2    # "kw":Ljava/lang/String;
    :cond_2
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_3

    .line 625
    :goto_1
    return-object p0

    .line 624
    :cond_3
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TP:[Ljava/lang/String;

    goto :goto_1
.end method

.method public setWakeupThreshhold(F)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 1
    .param p1, "threshHold"    # F

    .prologue
    .line 729
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T0:Ljava/lang/Float;

    .line 730
    return-object p0
.end method

.method public setWinBgAlpha(F)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 433
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Ta:Ljava/lang/Float;

    .line 434
    return-object p0
.end method

.method public setWinType(Ljava/lang/Integer;)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 0
    .param p1, "winType"    # Ljava/lang/Integer;

    .prologue
    .line 969
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T8:Ljava/lang/Integer;

    .line 970
    return-object p0
.end method

.method public useExternalAudioSource(Z)Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 877
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TY:Ljava/lang/Boolean;

    .line 878
    return-object p0
.end method
