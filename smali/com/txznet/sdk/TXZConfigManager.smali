.class public Lcom/txznet/sdk/TXZConfigManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZConfigManager$UserKeywordsCallback;,
        Lcom/txznet/sdk/TXZConfigManager$T;,
        Lcom/txznet/sdk/TXZConfigManager$UserConfigListener;,
        Lcom/txznet/sdk/TXZConfigManager$UIConfigListener;,
        Lcom/txznet/sdk/TXZConfigManager$ConnectListener;,
        Lcom/txznet/sdk/TXZConfigManager$ActiveListener;,
        Lcom/txznet/sdk/TXZConfigManager$InitListener;,
        Lcom/txznet/sdk/TXZConfigManager$InitParam;,
        Lcom/txznet/sdk/TXZConfigManager$InterruptMode;,
        Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;,
        Lcom/txznet/sdk/TXZConfigManager$FloatToolType;,
        Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;,
        Lcom/txznet/sdk/TXZConfigManager$AsrMode;,
        Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;,
        Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;
    }
.end annotation


# static fields
.field public static final AEC_TYPE_MONO_BY_INNER:I = 0x4

.field public static final AEC_TYPE_MONO_COMPARE_WITH_UDP:I = 0x2

.field public static final AEC_TYPE_NONE:I = 0x0

.field public static final AEC_TYPE_STERO_COMPARE_WITH_LEFT:I = 0x3

.field public static final AEC_TYPE_STERO_COMPARE_WITH_RIGHT:I = 0x1

.field public static final EXT_AUDIOSOURCE_TYPE_MSD:I = 0x0

.field public static final EXT_AUDIOSOURCE_TYPE_TXZ:I = 0x1

.field public static final FME_DELAY:Ljava/lang/String; = "FMEDelay"

.field public static final FME_ENABLE:Ljava/lang/String; = "FMEEnable"

.field public static final FT_POSITION_BOTTOM:I = -0x3

.field public static final FT_POSITION_LEFT:I = -0x1

.field public static final FT_POSITION_MIDDLE:I = -0x2

.field public static final FT_POSITION_RIGHT:I = -0x3

.field public static final FT_POSITION_TOP:I = -0x1

.field public static final HAS_REF:Ljava/lang/String; = "HasRefSignal"

.field public static final INIT_ERROR_ASR:I = 0x2711

.field public static final INIT_ERROR_TTS:I = 0x2712

.field public static final INIT_ERROR_WAKEUP:I = 0x2713

.field public static final MAX_WAKEUP_KEYWORDS_COUNT:I = 0xa

.field private static TH:Lcom/txznet/sdk/TXZConfigManager; = null

.field public static final VERSION:Ljava/lang/String; = "20170427173905_29342"


# instance fields
.field T:Lcom/txznet/sdk/TXZConfigManager$ConnectListener;

.field private T0:Lcom/txznet/comm/T3/T2$T;

.field private T1:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field T2:Z

.field T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

.field private T5:Lcom/txznet/sdk/TXZService$T;

.field T7:I

.field TB:J

.field private TF:Z

.field TG:Ljava/lang/Boolean;

.field TJ:[Ljava/lang/Object;

.field TL:Ljava/lang/Boolean;

.field TN:Ljava/lang/Runnable;

.field TO:Ljava/lang/Integer;

.field TP:J

.field TQ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field TR:Ljava/lang/String;

.field TW:[Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

.field private Tc:Lcom/txznet/sdk/TXZConfigManager$InitListener;

.field Te:Ljava/lang/Boolean;

.field private Tf:Lcom/txznet/sdk/TXZConfigManager$UIConfigListener;

.field private Tk:Lcom/txznet/sdk/TXZConfigManager$ActiveListener;

.field Tn:Lcom/txznet/sdk/TXZConfigManager$T;

.field To:Ljava/lang/Integer;

.field Tr:J

.field private Tt:Ljava/lang/Boolean;

.field private Tu:Ljava/lang/Runnable;

.field Tw:Ljava/lang/Boolean;

.field Ty:Ljava/lang/Boolean;

.field public mHideSettingOptions:Ljava/lang/Integer;

.field public mSettingWkWordsEditable:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZConfigManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager;->TH:Lcom/txznet/sdk/TXZConfigManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    iput-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->T:Lcom/txznet/sdk/TXZConfigManager$ConnectListener;

    .line 1046
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$1;

    invoke-direct {v0, p0}, Lcom/txznet/sdk/TXZConfigManager$1;-><init>(Lcom/txznet/sdk/TXZConfigManager;)V

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T0:Lcom/txznet/comm/T3/T2$T;

    .line 1091
    iput-boolean v1, p0, Lcom/txznet/sdk/TXZConfigManager;->TF:Z

    .line 1102
    iput-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->Tt:Ljava/lang/Boolean;

    .line 1189
    iput-boolean v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T2:Z

    .line 1191
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$3;

    invoke-direct {v0, p0}, Lcom/txznet/sdk/TXZConfigManager$3;-><init>(Lcom/txznet/sdk/TXZConfigManager;)V

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TN:Ljava/lang/Runnable;

    .line 1211
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$4;

    invoke-direct {v0, p0}, Lcom/txznet/sdk/TXZConfigManager$4;-><init>(Lcom/txznet/sdk/TXZConfigManager;)V

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T5:Lcom/txznet/sdk/TXZService$T;

    .line 1258
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$5;

    invoke-direct {v0, p0}, Lcom/txznet/sdk/TXZConfigManager$5;-><init>(Lcom/txznet/sdk/TXZConfigManager;)V

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tu:Ljava/lang/Runnable;

    .line 1485
    iput-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->Te:Ljava/lang/Boolean;

    .line 1498
    iput-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->Tw:Ljava/lang/Boolean;

    .line 1599
    iput-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->Ty:Ljava/lang/Boolean;

    .line 1699
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$T;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZConfigManager$T;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tn:Lcom/txznet/sdk/TXZConfigManager$T;

    .line 1715
    iput-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->TG:Ljava/lang/Boolean;

    .line 1729
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T1:Ljava/util/Map;

    .line 1888
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TP:J

    .line 1950
    iput-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->TO:Ljava/lang/Integer;

    .line 1966
    iput-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->To:Ljava/lang/Integer;

    .line 2016
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TQ:Ljava/util/Set;

    .line 2045
    iput-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    .line 2074
    iput-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->mSettingWkWordsEditable:Ljava/lang/Boolean;

    .line 2082
    iput-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->TL:Ljava/lang/Boolean;

    .line 58
    return-void
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZConfigManager;)Lcom/txznet/sdk/TXZConfigManager$ActiveListener;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/sdk/TXZConfigManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tk:Lcom/txznet/sdk/TXZConfigManager$ActiveListener;

    return-object v0
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZConfigManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/txznet/sdk/TXZConfigManager;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager;->Tt:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZConfigManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/txznet/sdk/TXZConfigManager;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/txznet/sdk/TXZConfigManager;->TF:Z

    return p1
.end method

.method static synthetic T2(Lcom/txznet/sdk/TXZConfigManager;)Lcom/txznet/sdk/TXZService$T;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/sdk/TXZConfigManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T5:Lcom/txznet/sdk/TXZService$T;

    return-object v0
.end method

.method static synthetic T3(Lcom/txznet/sdk/TXZConfigManager;)Lcom/txznet/sdk/TXZConfigManager$InitListener;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/sdk/TXZConfigManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tc:Lcom/txznet/sdk/TXZConfigManager$InitListener;

    return-object v0
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZConfigManager;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/txznet/sdk/TXZConfigManager;->TH:Lcom/txznet/sdk/TXZConfigManager;

    return-object v0
.end method


# virtual methods
.method T()V
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 70
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tt:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tt:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Ty:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Ty:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZConfigManager;->enableWakeup(Z)V

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TG:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZConfigManager;->enableChangeWakeupKeywords(Z)V

    .line 78
    :cond_3
    iget-wide v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TB:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 79
    iget-wide v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TB:J

    invoke-virtual {p0, v0, v1}, Lcom/txznet/sdk/TXZConfigManager;->setPoiSearchActivityFinishDelay(J)V

    .line 81
    :cond_4
    iget-wide v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TP:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    .line 82
    iget-wide v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TP:J

    invoke-virtual {p0, v0, v1}, Lcom/txznet/sdk/TXZConfigManager;->setPoiSearchActivityStartNavFinishDelay(J)V

    .line 84
    :cond_5
    iget-wide v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 85
    iget-wide v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tr:J

    invoke-virtual {p0, v0, v1}, Lcom/txznet/sdk/TXZConfigManager;->setConfirAsrWinDismissDelay(J)V

    .line 87
    :cond_6
    iget v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T7:I

    if-lez v0, :cond_7

    .line 88
    iget v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T7:I

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZConfigManager;->setDisplayLvCount(I)V

    .line 90
    :cond_7
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TR:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 91
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZConfigManager;->setVersionConfig(Ljava/lang/String;)V

    .line 93
    :cond_8
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TW:[Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    if-eqz v0, :cond_9

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TJ:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->TW:[Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    invoke-virtual {p0, v0, v1}, Lcom/txznet/sdk/TXZConfigManager;->setPreferenceConfig([Ljava/lang/Object;[Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tw:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 101
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZConfigManager;->enableCoverDefaultKeywords(Z)V

    .line 103
    :cond_a
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Te:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 104
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Te:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZConfigManager;->enableWinAnim(Z)V

    .line 106
    :cond_b
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T1:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 107
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/txznet/sdk/TXZConfigManager;->setLogLevel(Ljava/lang/String;I)V

    goto :goto_2

    .line 96
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v7

    .line 97
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    goto :goto_1

    .line 110
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZConfigManager;->disableChangeWakeupKeywordsStyle(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TL:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 112
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TL:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZConfigManager;->setStyleBindWithWakeupKeywords(Z)V

    .line 115
    :cond_d
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TO:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 116
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZConfigManager;->setChatMaxEmpty(I)V

    .line 119
    :cond_e
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->To:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    .line 120
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->To:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZConfigManager;->setChatMaxEmpty(I)V

    .line 123
    :cond_f
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    .line 124
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v6, :cond_12

    move v1, v6

    :goto_3
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v6, :cond_13

    move v2, v6

    :goto_4
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v6, :cond_14

    move v3, v6

    :goto_5
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v6, :cond_15

    move v4, v6

    :goto_6
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v6, :cond_16

    move v5, v6

    :goto_7
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x20

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v6, :cond_17

    :goto_8
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/txznet/sdk/TXZConfigManager;->hideSettingOptions(ZZZZZZ)V

    .line 128
    :cond_10
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mSettingWkWordsEditable:Ljava/lang/Boolean;

    if-eqz v0, :cond_11

    .line 129
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mSettingWkWordsEditable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZConfigManager;->enableSettingWkWordsEditable(Z)V

    .line 132
    :cond_11
    invoke-static {}, Lcom/txznet/comm/T3/T/T3;->T()V

    .line 133
    invoke-static {}, Lcom/txznet/comm/T3/T/T3;->T3()V

    .line 134
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZAsrManager;->T()V

    .line 135
    invoke-static {}, Lcom/txznet/sdk/TXZCallManager;->getInstance()Lcom/txznet/sdk/TXZCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZCallManager;->T()V

    .line 136
    invoke-static {}, Lcom/txznet/sdk/TXZCameraManager;->getInstance()Lcom/txznet/sdk/TXZCameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZCameraManager;->T()V

    .line 137
    invoke-static {}, Lcom/txznet/sdk/TXZLocationManager;->getInstance()Lcom/txznet/sdk/TXZLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZLocationManager;->T()V

    .line 138
    invoke-static {}, Lcom/txznet/sdk/TXZMusicManager;->getInstance()Lcom/txznet/sdk/TXZMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZMusicManager;->T()V

    .line 139
    invoke-static {}, Lcom/txznet/sdk/TXZAudioManager;->getInstance()Lcom/txznet/sdk/TXZAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZAudioManager;->T()V

    .line 140
    invoke-static {}, Lcom/txznet/sdk/TXZNavManager;->getInstance()Lcom/txznet/sdk/TXZNavManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZNavManager;->T()V

    .line 141
    invoke-static {}, Lcom/txznet/sdk/TXZPoiSearchManager;->getInstance()Lcom/txznet/sdk/TXZPoiSearchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZPoiSearchManager;->T()V

    .line 142
    invoke-static {}, Lcom/txznet/sdk/TXZSenceManager;->getInstance()Lcom/txznet/sdk/TXZSenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZSenceManager;->T()V

    .line 143
    invoke-static {}, Lcom/txznet/sdk/TXZSceneManager;->getInstance()Lcom/txznet/sdk/TXZSceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZSceneManager;->T()V

    .line 144
    invoke-static {}, Lcom/txznet/sdk/TXZStatusManager;->getInstance()Lcom/txznet/sdk/TXZStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZStatusManager;->T()V

    .line 145
    invoke-static {}, Lcom/txznet/sdk/TXZTtsManager;->getInstance()Lcom/txznet/sdk/TXZTtsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZTtsManager;->T()V

    .line 146
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZResourceManager;->T()V

    .line 147
    invoke-static {}, Lcom/txznet/sdk/TXZSysManager;->getInstance()Lcom/txznet/sdk/TXZSysManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZSysManager;->T()V

    .line 148
    invoke-static {}, Lcom/txznet/comm/T3/T/T;->TN()V

    .line 149
    invoke-static {}, Lcom/txznet/sdk/TXZPowerManager;->getInstance()Lcom/txznet/sdk/TXZPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZPowerManager;->T()V

    .line 150
    invoke-static {}, Lcom/txznet/sdk/TXZWechatManager;->getInstance()Lcom/txznet/sdk/TXZWechatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZWechatManager;->T()V

    .line 151
    invoke-static {}, Lcom/txznet/sdk/TXZAsrKeyManager;->getInstance()Lcom/txznet/sdk/TXZAsrKeyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZAsrKeyManager;->T()V

    .line 152
    invoke-static {}, Lcom/txznet/sdk/TXZRecordWinManager;->getInstance()Lcom/txznet/sdk/TXZRecordWinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZRecordWinManager;->T()V

    .line 153
    invoke-static {}, Lcom/txznet/sdk/TXZSimManager;->getInstance()Lcom/txznet/sdk/TXZSimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZSimManager;->onReconnectTXZ()V

    .line 154
    invoke-static {}, Lcom/txznet/sdk/TXZWheelControlManager;->getInstance()Lcom/txznet/sdk/TXZWheelControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZWheelControlManager;->T()V

    goto/16 :goto_0

    :cond_12
    move v1, v10

    .line 124
    goto/16 :goto_3

    :cond_13
    move v2, v10

    goto/16 :goto_4

    :cond_14
    move v3, v10

    goto/16 :goto_5

    :cond_15
    move v4, v10

    goto/16 :goto_6

    :cond_16
    move v5, v10

    goto/16 :goto_7

    :cond_17
    move v6, v10

    goto/16 :goto_8
.end method

.method T2()V
    .locals 3

    .prologue
    .line 1411
    sget-boolean v0, Lcom/txznet/sdk/TXZService;->T:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/txznet/sdk/TXZPowerManager;->T:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/txznet/sdk/TXZPowerManager;->T:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1416
    :cond_0
    :goto_0
    return-void

    .line 1414
    :cond_1
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->Tu:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;)V

    .line 1415
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->Tu:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method T3()V
    .locals 0

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/txznet/sdk/TXZConfigManager;->T2()V

    .line 162
    return-void
.end method

.method public disableChangeWakeupKeywordsStyle(Ljava/lang/String;)V
    .locals 7
    .param p1, "style"    # Ljava/lang/String;

    .prologue
    .line 2026
    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager;->TQ:Ljava/util/Set;

    monitor-enter v3

    .line 2027
    if-eqz p1, :cond_0

    .line 2028
    :try_start_0
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->TQ:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2030
    :cond_0
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->TQ:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2031
    monitor-exit v3

    .line 2043
    :goto_0
    return-void

    .line 2033
    :cond_1
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->TQ:Ljava/util/Set;

    iget-object v4, p0, Lcom/txznet/sdk/TXZConfigManager;->TQ:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 2036
    .local v1, "ss":[Ljava/lang/String;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2037
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 2038
    .local v0, "json":Lcom/txznet/comm/TN/T;
    const-string v2, "style"

    invoke-virtual {v0, v2, v1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 2039
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const-string v3, "com.txznet.txz"

    const-string v4, "txz.config.disableChangeWakeupKeywordsStyle"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    .line 2036
    .end local v0    # "json":Lcom/txznet/comm/TN/T;
    .end local v1    # "ss":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public enableChangeWakeupKeywords(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 1723
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TG:Ljava/lang/Boolean;

    .line 1724
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.wakeup.enableChangeWakeupKeywords"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1727
    return-void
.end method

.method public enableCloseWin(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TXZConfigManager::enableCloseWin, enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 1777
    invoke-static {p1}, Lcom/txznet/comm/T3/T/T3;->T2(Z)V

    .line 1778
    invoke-static {}, Lcom/txznet/comm/T3/T/T3;->T()V

    .line 1779
    return-void
.end method

.method public enableCoverDefaultKeywords(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 1507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TXZConfigManager::enableCoverDefaultKeywords, enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 1508
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tw:Ljava/lang/Boolean;

    .line 1509
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.wakeup.enableCoverDefaultKeywords"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1512
    return-void
.end method

.method public enableSettingWkWordsEditable(Z)V
    .locals 5
    .param p1, "editable"    # Z

    .prologue
    .line 2076
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mSettingWkWordsEditable:Ljava/lang/Boolean;

    .line 2077
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.config.setting.wkwordsEditable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/txznet/sdk/TXZConfigManager;->mSettingWkWordsEditable:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 2079
    return-void
.end method

.method public enableSettings(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TXZConfigManager::enableSettings, enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 1480
    invoke-static {p1}, Lcom/txznet/comm/T3/T/T3;->T3(Z)V

    .line 1481
    invoke-static {}, Lcom/txznet/comm/T3/T/T3;->T()V

    .line 1482
    return-void
.end method

.method public enableWakeup(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1609
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Ty:Ljava/lang/Boolean;

    .line 1610
    if-eqz p1, :cond_0

    .line 1611
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.wakeup.start"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1617
    :goto_0
    return-void

    .line 1614
    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.wakeup.stop"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public enableWinAnim(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 1492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableWinAnim enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 1493
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Te:Ljava/lang/Boolean;

    .line 1494
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.win.enableAnim"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1496
    return-void
.end method

.method public forceStopWkWhenTts(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    .line 2009
    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v1, :cond_0

    .line 2010
    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v1, p1}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->forceStopWkWhenTts(Z)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    .line 2012
    :cond_0
    const-string v0, "txz.wakeup.forceStopWkWhenTts"

    .line 2013
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 2014
    return-void
.end method

.method public getUserWakeupKeywords(Lcom/txznet/sdk/TXZConfigManager$UserKeywordsCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/txznet/sdk/TXZConfigManager$UserKeywordsCallback;

    .prologue
    .line 2118
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "com.wakeup.getkeywords"

    const/4 v3, 0x0

    new-instance v4, Lcom/txznet/sdk/TXZConfigManager$6;

    invoke-direct {v4, p0, p1}, Lcom/txznet/sdk/TXZConfigManager$6;-><init>(Lcom/txznet/sdk/TXZConfigManager;Lcom/txznet/sdk/TXZConfigManager$UserKeywordsCallback;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 2133
    return-void
.end method

.method public hideSettingOptions(ZZZZZZ)V
    .locals 5
    .param p1, "voiceWake"    # Z
    .param p2, "floatTool"    # Z
    .param p3, "wakeUpWords"    # Z
    .param p4, "sensitivity"    # Z
    .param p5, "ttsSpeed"    # Z
    .param p6, "reset"    # Z

    .prologue
    .line 2064
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    .line 2065
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    .line 2066
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    .line 2067
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    .line 2068
    if-eqz p4, :cond_3

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    .line 2069
    if-eqz p5, :cond_4

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    .line 2070
    if-eqz p6, :cond_5

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x20

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    .line 2071
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.config.setting.hideOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 2072
    return-void

    .line 2065
    :cond_0
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_0

    .line 2066
    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 2067
    :cond_2
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    .line 2068
    :cond_3
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    .line 2069
    :cond_4
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    .line 2070
    :cond_5
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5
.end method

.method public initialize(Landroid/content/Context;Lcom/txznet/sdk/TXZConfigManager$InitListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/txznet/sdk/TXZConfigManager$InitListener;

    .prologue
    .line 1122
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/txznet/sdk/TXZConfigManager;->initialize(Landroid/content/Context;Lcom/txznet/sdk/TXZConfigManager$InitParam;Lcom/txznet/sdk/TXZConfigManager$InitListener;)V

    .line 1123
    return-void
.end method

.method public initialize(Landroid/content/Context;Lcom/txznet/sdk/TXZConfigManager$InitParam;Lcom/txznet/sdk/TXZConfigManager$InitListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .param p3, "listener"    # Lcom/txznet/sdk/TXZConfigManager$InitListener;

    .prologue
    .line 1137
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/txznet/sdk/TXZConfigManager;->initialize(Landroid/content/Context;Lcom/txznet/sdk/TXZConfigManager$InitParam;Lcom/txznet/sdk/TXZConfigManager$InitListener;Lcom/txznet/sdk/TXZConfigManager$ActiveListener;)V

    .line 1138
    return-void
.end method

.method public initialize(Landroid/content/Context;Lcom/txznet/sdk/TXZConfigManager$InitParam;Lcom/txznet/sdk/TXZConfigManager$InitListener;Lcom/txznet/sdk/TXZConfigManager$ActiveListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # Lcom/txznet/sdk/TXZConfigManager$InitParam;
    .param p3, "listener"    # Lcom/txznet/sdk/TXZConfigManager$InitListener;
    .param p4, "activeListener"    # Lcom/txznet/sdk/TXZConfigManager$ActiveListener;

    .prologue
    const/4 v3, 0x0

    .line 1153
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tc:Lcom/txznet/sdk/TXZConfigManager$InitListener;

    if-eqz v0, :cond_0

    .line 1187
    :goto_0
    return-void

    .line 1157
    :cond_0
    iput-object p2, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    .line 1158
    iput-object p3, p0, Lcom/txznet/sdk/TXZConfigManager;->Tc:Lcom/txznet/sdk/TXZConfigManager$InitListener;

    .line 1159
    iput-object p4, p0, Lcom/txznet/sdk/TXZConfigManager;->Tk:Lcom/txznet/sdk/TXZConfigManager$ActiveListener;

    .line 1160
    invoke-static {p1}, Lcom/txznet/comm/T3/T;->T(Landroid/content/Context;)V

    .line 1163
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/txznet/sdk/TXZService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1164
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T0:Lcom/txznet/comm/T3/T2$T;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/T3/T2;->T(Lcom/txznet/comm/T3/T2$T;)V

    .line 1167
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    new-instance v2, Lcom/txznet/sdk/TXZConfigManager$2;

    invoke-direct {v2, p0}, Lcom/txznet/sdk/TXZConfigManager$2;-><init>(Lcom/txznet/sdk/TXZConfigManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1176
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    invoke-virtual {v0, v1}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;)Lcom/txznet/txz/T3/T;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1177
    invoke-virtual {p0}, Lcom/txznet/sdk/TXZConfigManager;->T2()V

    goto :goto_0

    .line 1182
    :cond_1
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1186
    invoke-static {}, Lcom/txznet/comm/T3/T/T3;->T3()V

    goto :goto_0
.end method

.method public isInitedSuccess()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1110
    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->Tt:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->Tt:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAsrServiceMode(Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;)V
    .locals 5
    .param p1, "asrServiceMode"    # Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    .prologue
    .line 1990
    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v1, :cond_0

    .line 1991
    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v1, p1}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setAsrServiceMode(Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    .line 1993
    :cond_0
    if-nez p1, :cond_1

    .line 1994
    sget-object p1, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;->ASR_SVR_MODE_MIX:Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    .line 1996
    :cond_1
    const-string v0, "comm.asr.set.asrsrvmode"

    .line 1997
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1999
    return-void
.end method

.method public setAsrWakeupThreshhold(F)V
    .locals 5
    .param p1, "threshHold"    # F

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v0, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v0, p1}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setAsrWakeupThreshhold(F)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    .line 1806
    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.wakeup.set.asrwkscore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1809
    return-void
.end method

.method public setBeepTimeOut(I)V
    .locals 5
    .param p1, "timeOut"    # I

    .prologue
    .line 1942
    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v1, :cond_0

    .line 1943
    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v1, p1}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setBeepTimeOut(I)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    .line 1945
    :cond_0
    const-string v0, "comm.asr.set.beeptimeout"

    .line 1946
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1948
    return-void
.end method

.method public setChatMaxEmpty(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    .line 1960
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->TO:Ljava/lang/Integer;

    .line 1961
    const-string v0, "comm.asr.set.MaxEmpty"

    .line 1962
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1964
    return-void
.end method

.method public setChatMaxUnknow(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    .line 1976
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->To:Ljava/lang/Integer;

    .line 1977
    const-string v0, "comm.asr.set.MaxUnknow"

    .line 1978
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1980
    return-void
.end method

.method public setConfirAsrWinDismissDelay(J)V
    .locals 6
    .param p1, "delay"    # J

    .prologue
    .line 1921
    iput-wide p1, p0, Lcom/txznet/sdk/TXZConfigManager;->Tr:J

    .line 1922
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.wx.dismiss"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/txznet/sdk/TXZConfigManager;->Tr:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1924
    return-void
.end method

.method public setConnectListener(Lcom/txznet/sdk/TXZConfigManager$ConnectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/txznet/sdk/TXZConfigManager$ConnectListener;

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager;->T:Lcom/txznet/sdk/TXZConfigManager$ConnectListener;

    .line 1041
    return-void
.end method

.method public setDefaultConfig(Ljava/lang/String;)Z
    .locals 5
    .param p1, "jsonConfig"    # Ljava/lang/String;

    .prologue
    .line 1819
    if-eqz p1, :cond_2

    .line 1821
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1822
    .local v0, "data":Lorg/json/JSONObject;
    const-string v2, "wakeupThreshold"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "voiceSpeed"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "wakeupKeywords"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1824
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid config msg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1828
    .end local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1829
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid config msg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1827
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "data":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/txznet/comm/T3/T/T3;->T(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1835
    .end local v0    # "data":Lorg/json/JSONObject;
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 1833
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/txznet/comm/T3/T/T3;->T(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public setDisplayLvCount(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    .line 1929
    iput p1, p0, Lcom/txznet/sdk/TXZConfigManager;->T7:I

    .line 1930
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.selector.show.count"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/txznet/sdk/TXZConfigManager;->T7:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1932
    return-void
.end method

.method public setFloatToolClickInterval(J)V
    .locals 6
    .param p1, "interval"    # J

    .prologue
    .line 1442
    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v1, :cond_0

    .line 1443
    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v1, p1, p2}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setFloatToolClickInterval(J)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    .line 1445
    :cond_0
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 1446
    .local v0, "doc":Lcom/txznet/comm/TN/T;
    const-string v1, "ftInterval"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 1447
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.sdk.ft.status.interval"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1449
    return-void
.end method

.method public setFloatToolIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "ftUrl_N"    # Ljava/lang/String;
    .param p2, "ftUrl_P"    # Ljava/lang/String;

    .prologue
    .line 1460
    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v1, :cond_0

    .line 1461
    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v1, p1, p2}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setFloatToolIcon(Ljava/lang/String;Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    .line 1464
    :cond_0
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 1465
    .local v0, "doc":Lcom/txznet/comm/TN/T;
    const-string v1, "floatToolUrl_N"

    invoke-virtual {v0, v1, p1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 1466
    const-string v1, "floatToolUrl_P"

    invoke-virtual {v0, v1, p2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 1467
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.sdk.ft.status.icon"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1469
    return-void
.end method

.method public setInstantAsrEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v0, :cond_0

    .line 1565
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v0, p1}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setInstantAsrEnabled(Z)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    .line 1568
    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.wakeup.setInstantAsrEnable"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1571
    return-void
.end method

.method public setLogLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 1752
    invoke-static {p1}, Lcom/txznet/comm/T3/T/Te;->T(I)V

    .line 1753
    const-string v0, "com.txznet.txz"

    invoke-virtual {p0, v0, p1}, Lcom/txznet/sdk/TXZConfigManager;->setLogLevel(Ljava/lang/String;I)V

    .line 1754
    const-string v0, "com.txznet.bluetooth"

    invoke-virtual {p0, v0, p1}, Lcom/txznet/sdk/TXZConfigManager;->setLogLevel(Ljava/lang/String;I)V

    .line 1755
    const-string v0, "com.txznet.nav"

    invoke-virtual {p0, v0, p1}, Lcom/txznet/sdk/TXZConfigManager;->setLogLevel(Ljava/lang/String;I)V

    .line 1756
    const-string v0, "com.txznet.music"

    invoke-virtual {p0, v0, p1}, Lcom/txznet/sdk/TXZConfigManager;->setLogLevel(Ljava/lang/String;I)V

    .line 1757
    const-string v0, "com.txznet.record"

    invoke-virtual {p0, v0, p1}, Lcom/txznet/sdk/TXZConfigManager;->setLogLevel(Ljava/lang/String;I)V

    .line 1758
    const-string v0, "com.txznet.webchat"

    invoke-virtual {p0, v0, p1}, Lcom/txznet/sdk/TXZConfigManager;->setLogLevel(Ljava/lang/String;I)V

    .line 1759
    return-void
.end method

.method public setLogLevel(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T1:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1741
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "comm.log.setConsoleLogLevel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1743
    return-void
.end method

.method public setPoiSearchActivityFinishDelay(J)V
    .locals 6
    .param p1, "finishDelay"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1883
    iput-wide p1, p0, Lcom/txznet/sdk/TXZConfigManager;->TB:J

    .line 1884
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.poi.finish"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/txznet/sdk/TXZConfigManager;->TB:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1886
    return-void
.end method

.method public setPoiSearchActivityStartNavFinishDelay(J)V
    .locals 6
    .param p1, "finishDelay"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1897
    iput-wide p1, p0, Lcom/txznet/sdk/TXZConfigManager;->TP:J

    .line 1898
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.poi.afterStartNav.finish"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/txznet/sdk/TXZConfigManager;->TP:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1901
    return-void
.end method

.method public varargs setPreferenceConfig([Ljava/lang/Object;[Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;)V
    .locals 12
    .param p1, "vals"    # [Ljava/lang/Object;
    .param p2, "keys"    # [Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1855
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v7, p1

    array-length v8, p2

    if-eq v7, v8, :cond_1

    .line 1856
    :cond_0
    new-instance v7, Ljava/lang/IllegalAccessException;

    const-string v8, "ConfigJsonKey and values should be same count ,or should not null!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1860
    :cond_1
    iput-object p2, p0, Lcom/txznet/sdk/TXZConfigManager;->TW:[Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    .line 1861
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager;->TJ:[Ljava/lang/Object;

    .line 1862
    iget-object v7, p0, Lcom/txznet/sdk/TXZConfigManager;->TW:[Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    if-eqz v7, :cond_3

    .line 1863
    new-instance v5, Lcom/txznet/comm/TN/T;

    invoke-direct {v5}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 1864
    .local v5, "jb":Lcom/txznet/comm/TN/T;
    const/4 v3, 0x0

    .line 1865
    .local v3, "index":I
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TW:[Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    .local v0, "arr$":[Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v4, v3

    .end local v3    # "index":I
    .local v4, "index":I
    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v1, v0, v2

    .line 1866
    .local v1, "cjk":Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;
    invoke-virtual {v1}, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;->name()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    aget-object v8, p1, v4

    invoke-virtual {v5, v7, v8}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 1865
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_0

    .line 1869
    .end local v1    # "cjk":Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;
    :cond_2
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v7

    const-string v8, "com.txznet.txz"

    const-string v9, "txz.config.version.prefer"

    invoke-virtual {v5}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1872
    .end local v0    # "arr$":[Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;
    .end local v2    # "i$":I
    .end local v4    # "index":I
    .end local v5    # "jb":Lcom/txznet/comm/TN/T;
    .end local v6    # "len$":I
    :cond_3
    return-void
.end method

.method public setSelectListTimeout(J)V
    .locals 6
    .param p1, "delay"    # J

    .prologue
    .line 1908
    iput-wide p1, p0, Lcom/txznet/sdk/TXZConfigManager;->TB:J

    .line 1909
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.poi.finish"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/txznet/sdk/TXZConfigManager;->TB:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1911
    return-void
.end method

.method public setStyleBindWithWakeupKeywords(Z)V
    .locals 6
    .param p1, "bind"    # Z

    .prologue
    .line 2088
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->TL:Ljava/lang/Boolean;

    .line 2089
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 2090
    .local v0, "json":Lcom/txznet/comm/TN/T;
    const-string v1, "bind"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 2091
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.config.setStyleBindWithWakeupKeywords"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 2094
    return-void
.end method

.method public setUIConfigListener(Lcom/txznet/sdk/TXZConfigManager$UIConfigListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/txznet/sdk/TXZConfigManager$UIConfigListener;

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tf:Lcom/txznet/sdk/TXZConfigManager$UIConfigListener;

    if-eqz v0, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tf:Lcom/txznet/sdk/TXZConfigManager$UIConfigListener;

    invoke-static {v0}, Lcom/txznet/comm/T3/T/T3;->T3(Lcom/txznet/comm/T3/T/T3$T;)V

    .line 1639
    :cond_0
    if-eqz p1, :cond_1

    .line 1640
    invoke-static {p1}, Lcom/txznet/comm/T3/T/T3;->T(Lcom/txznet/comm/T3/T/T3$T;)V

    .line 1642
    :cond_1
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager;->Tf:Lcom/txznet/sdk/TXZConfigManager$UIConfigListener;

    .line 1643
    return-void
.end method

.method public setUseHQualityWakeupModel(Z)V
    .locals 6
    .param p1, "useHQualityWakeupModel"    # Z

    .prologue
    .line 2107
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v2, :cond_0

    .line 2108
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v2, p1}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setUseHQualityWakeupModel(Z)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    .line 2110
    :cond_0
    const-string v0, "comm.asr.set.useHQualityWakeupModel"

    .line 2111
    .local v0, "cmd":Ljava/lang/String;
    new-instance v1, Lcom/txznet/comm/TN/T;

    invoke-direct {v1}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 2112
    .local v1, "json":Lcom/txznet/comm/TN/T;
    const-string v2, "useHQualityWakeupModel"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 2113
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const-string v3, "com.txznet.txz"

    invoke-virtual {v1}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 2115
    return-void
.end method

.method public setUserConfigListener(Lcom/txznet/sdk/TXZConfigManager$UserConfigListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/txznet/sdk/TXZConfigManager$UserConfigListener;

    .prologue
    .line 1707
    const/4 v0, 0x0

    .line 1708
    .local v0, "p":Lcom/txznet/sdk/TXZService$T;
    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->Tn:Lcom/txznet/sdk/TXZConfigManager$T;

    iput-object p1, v1, Lcom/txznet/sdk/TXZConfigManager$T;->T:Lcom/txznet/sdk/TXZConfigManager$UserConfigListener;

    .line 1709
    if-eqz p1, :cond_0

    .line 1710
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tn:Lcom/txznet/sdk/TXZConfigManager$T;

    .line 1712
    :cond_0
    const-string v1, "userconfig."

    invoke-static {v1, v0}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    .line 1713
    return-void
.end method

.method public setVersionConfig(Ljava/lang/String;)V
    .locals 5
    .param p1, "jsonConfig"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1842
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager;->TR:Ljava/lang/String;

    .line 1843
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1844
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.config.version.prefer"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1847
    :cond_0
    return-void
.end method

.method public setWakeupKeyWordsThreshold(Ljava/lang/String;)V
    .locals 5
    .param p1, "jsonScoreKws"    # Ljava/lang/String;

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v0, :cond_0

    .line 1552
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v0, p1}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setWakeupKeyWordsThreshold(Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    .line 1554
    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.wakeup.setKwsThreshold"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1557
    return-void
.end method

.method public varargs setWakeupKeywordsNew([Ljava/lang/String;)V
    .locals 10
    .param p1, "keywords"    # [Ljava/lang/String;

    .prologue
    .line 1521
    if-nez p1, :cond_0

    .line 1522
    const/4 v5, 0x0

    new-array p1, v5, [Ljava/lang/String;

    .line 1524
    :cond_0
    iget-object v5, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v5, :cond_1

    .line 1525
    iget-object v5, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v5, p1}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setWakeupKeywordsNew([Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    .line 1529
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1530
    .local v2, "json":Lorg/json/JSONArray;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_3

    aget-object v3, v0, v1

    .line 1531
    .local v3, "kw":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1532
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1530
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1535
    .end local v3    # "kw":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_4

    .line 1542
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "json":Lorg/json/JSONArray;
    .end local v4    # "len$":I
    :goto_1
    return-void

    .line 1538
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "json":Lorg/json/JSONArray;
    .restart local v4    # "len$":I
    :cond_4
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v5

    const-string v6, "com.txznet.txz"

    const-string v7, "txz.wakeup.update"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1540
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "json":Lorg/json/JSONArray;
    .end local v4    # "len$":I
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public setWakeupThreshhold(F)V
    .locals 5
    .param p1, "threshHold"    # F

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v0, :cond_0

    .line 1789
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v0, p1}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setWakeupThreshhold(F)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    .line 1791
    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.wakeup.set.wkscore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1794
    return-void
.end method

.method public showFloatTool(Lcom/txznet/sdk/TXZConfigManager$FloatToolType;)V
    .locals 6
    .param p1, "type"    # Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

    .prologue
    .line 1427
    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v1, :cond_0

    .line 1428
    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v1, p1}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setFloatToolType(Lcom/txznet/sdk/TXZConfigManager$FloatToolType;)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    .line 1431
    :cond_0
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 1432
    .local v0, "doc":Lcom/txznet/comm/TN/T;
    const-string v1, "floatToolType"

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZConfigManager$FloatToolType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 1433
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.sdk.ft.status.type"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1435
    return-void
.end method

.method public showHelpInfos(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 1768
    invoke-static {p1}, Lcom/txznet/comm/T3/T/T3;->T(Z)V

    .line 1769
    invoke-static {}, Lcom/txznet/comm/T3/T/T3;->T()V

    .line 1770
    return-void
.end method
