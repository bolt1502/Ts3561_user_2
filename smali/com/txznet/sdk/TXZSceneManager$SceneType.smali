.class public final enum Lcom/txznet/sdk/TXZSceneManager$SceneType;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZSceneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SceneType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/txznet/sdk/TXZSceneManager$SceneType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum SCENE_TYPE_ALL:Lcom/txznet/sdk/TXZSceneManager$SceneType;

.field public static final enum SCENE_TYPE_APP:Lcom/txznet/sdk/TXZSceneManager$SceneType;

.field public static final enum SCENE_TYPE_AUDIO:Lcom/txznet/sdk/TXZSceneManager$SceneType;

.field public static final enum SCENE_TYPE_CALL:Lcom/txznet/sdk/TXZSceneManager$SceneType;

.field public static final enum SCENE_TYPE_COMMAND:Lcom/txznet/sdk/TXZSceneManager$SceneType;

.field public static final enum SCENE_TYPE_EMPTY:Lcom/txznet/sdk/TXZSceneManager$SceneType;

.field public static final enum SCENE_TYPE_HELP:Lcom/txznet/sdk/TXZSceneManager$SceneType;

.field public static final enum SCENE_TYPE_LIMIT_NUMBER:Lcom/txznet/sdk/TXZSceneManager$SceneType;

.field public static final enum SCENE_TYPE_LOCATION:Lcom/txznet/sdk/TXZSceneManager$SceneType;

.field public static final enum SCENE_TYPE_MOVIE:Lcom/txznet/sdk/TXZSceneManager$SceneType;

.field public static final enum SCENE_TYPE_MUSIC:Lcom/txznet/sdk/TXZSceneManager$SceneType;

.field public static final enum SCENE_TYPE_NAV:Lcom/txznet/sdk/TXZSceneManager$SceneType;

.field public static final enum SCENE_TYPE_POI_CHOICE:Lcom/txznet/sdk/TXZSceneManager$SceneType;

.field public static final enum SCENE_TYPE_SELECTOR:Lcom/txznet/sdk/TXZSceneManager$SceneType;

.field public static final enum SCENE_TYPE_SET_USER_WAKEUP_KEYWORDS:Lcom/txznet/sdk/TXZSceneManager$SceneType;

.field public static final enum SCENE_TYPE_STOCK:Lcom/txznet/sdk/TXZSceneManager$SceneType;

.field public static final enum SCENE_TYPE_TRAFFIC:Lcom/txznet/sdk/TXZSceneManager$SceneType;

.field public static final enum SCENE_TYPE_UNKNOW:Lcom/txznet/sdk/TXZSceneManager$SceneType;

.field public static final enum SCENE_TYPE_UNSUPPORT:Lcom/txznet/sdk/TXZSceneManager$SceneType;

.field public static final enum SCENE_TYPE_WAKEUP:Lcom/txznet/sdk/TXZSceneManager$SceneType;

.field public static final enum SCENE_TYPE_WEATHER:Lcom/txznet/sdk/TXZSceneManager$SceneType;

.field public static final enum SCENE_TYPE_WECHAT:Lcom/txznet/sdk/TXZSceneManager$SceneType;

.field private static final synthetic T:[Lcom/txznet/sdk/TXZSceneManager$SceneType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    const-string v1, "SCENE_TYPE_ALL"

    invoke-direct {v0, v1, v3}, Lcom/txznet/sdk/TXZSceneManager$SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_ALL:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    .line 52
    new-instance v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    const-string v1, "SCENE_TYPE_WAKEUP"

    invoke-direct {v0, v1, v4}, Lcom/txznet/sdk/TXZSceneManager$SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_WAKEUP:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    .line 57
    new-instance v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    const-string v1, "SCENE_TYPE_SET_USER_WAKEUP_KEYWORDS"

    invoke-direct {v0, v1, v5}, Lcom/txznet/sdk/TXZSceneManager$SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_SET_USER_WAKEUP_KEYWORDS:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    .line 62
    new-instance v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    const-string v1, "SCENE_TYPE_COMMAND"

    invoke-direct {v0, v1, v6}, Lcom/txznet/sdk/TXZSceneManager$SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_COMMAND:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    .line 67
    new-instance v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    const-string v1, "SCENE_TYPE_APP"

    invoke-direct {v0, v1, v7}, Lcom/txznet/sdk/TXZSceneManager$SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_APP:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    .line 72
    new-instance v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    const-string v1, "SCENE_TYPE_CALL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZSceneManager$SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_CALL:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    .line 76
    new-instance v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    const-string v1, "SCENE_TYPE_NAV"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZSceneManager$SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_NAV:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    .line 80
    new-instance v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    const-string v1, "SCENE_TYPE_POI_CHOICE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZSceneManager$SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_POI_CHOICE:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    .line 84
    new-instance v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    const-string v1, "SCENE_TYPE_MUSIC"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZSceneManager$SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_MUSIC:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    .line 88
    new-instance v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    const-string v1, "SCENE_TYPE_AUDIO"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZSceneManager$SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_AUDIO:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    .line 93
    new-instance v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    const-string v1, "SCENE_TYPE_WEATHER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZSceneManager$SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_WEATHER:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    .line 98
    new-instance v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    const-string v1, "SCENE_TYPE_STOCK"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZSceneManager$SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_STOCK:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    .line 103
    new-instance v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    const-string v1, "SCENE_TYPE_LOCATION"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZSceneManager$SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_LOCATION:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    .line 108
    new-instance v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    const-string v1, "SCENE_TYPE_TRAFFIC"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZSceneManager$SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_TRAFFIC:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    .line 113
    new-instance v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    const-string v1, "SCENE_TYPE_LIMIT_NUMBER"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZSceneManager$SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_LIMIT_NUMBER:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    .line 118
    new-instance v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    const-string v1, "SCENE_TYPE_UNKNOW"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZSceneManager$SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_UNKNOW:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    .line 122
    new-instance v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    const-string v1, "SCENE_TYPE_UNSUPPORT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZSceneManager$SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_UNSUPPORT:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    .line 126
    new-instance v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    const-string v1, "SCENE_TYPE_EMPTY"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZSceneManager$SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_EMPTY:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    .line 130
    new-instance v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    const-string v1, "SCENE_TYPE_HELP"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZSceneManager$SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_HELP:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    .line 134
    new-instance v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    const-string v1, "SCENE_TYPE_SELECTOR"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZSceneManager$SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_SELECTOR:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    .line 138
    new-instance v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    const-string v1, "SCENE_TYPE_MOVIE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZSceneManager$SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_MOVIE:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    .line 142
    new-instance v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    const-string v1, "SCENE_TYPE_WECHAT"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZSceneManager$SceneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_WECHAT:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    .line 44
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/txznet/sdk/TXZSceneManager$SceneType;

    sget-object v1, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_ALL:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_WAKEUP:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_SET_USER_WAKEUP_KEYWORDS:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_COMMAND:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_APP:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_CALL:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_NAV:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_POI_CHOICE:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_MUSIC:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_AUDIO:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_WEATHER:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_STOCK:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_LOCATION:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_TRAFFIC:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_LIMIT_NUMBER:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_UNKNOW:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_UNSUPPORT:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_EMPTY:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_HELP:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_SELECTOR:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_MOVIE:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_WECHAT:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;->T:[Lcom/txznet/sdk/TXZSceneManager$SceneType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txznet/sdk/TXZSceneManager$SceneType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;

    return-object v0
.end method

.method public static values()[Lcom/txznet/sdk/TXZSceneManager$SceneType;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/txznet/sdk/TXZSceneManager$SceneType;->T:[Lcom/txznet/sdk/TXZSceneManager$SceneType;

    invoke-virtual {v0}, [Lcom/txznet/sdk/TXZSceneManager$SceneType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txznet/sdk/TXZSceneManager$SceneType;

    return-object v0
.end method
