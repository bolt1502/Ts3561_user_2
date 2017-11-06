.class public final enum Lcom/txznet/sdk/TXZMusicManager$MusicToolType;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MusicToolType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/txznet/sdk/TXZMusicManager$MusicToolType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MUSIC_TOOL_KAOLA:Lcom/txznet/sdk/TXZMusicManager$MusicToolType;

.field public static final enum MUSIC_TOOL_KUWO:Lcom/txznet/sdk/TXZMusicManager$MusicToolType;

.field public static final enum MUSIC_TOOL_TXZ:Lcom/txznet/sdk/TXZMusicManager$MusicToolType;

.field private static final synthetic T:[Lcom/txznet/sdk/TXZMusicManager$MusicToolType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 428
    new-instance v0, Lcom/txznet/sdk/TXZMusicManager$MusicToolType;

    const-string v1, "MUSIC_TOOL_TXZ"

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZMusicManager$MusicToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZMusicManager$MusicToolType;->MUSIC_TOOL_TXZ:Lcom/txznet/sdk/TXZMusicManager$MusicToolType;

    .line 432
    new-instance v0, Lcom/txznet/sdk/TXZMusicManager$MusicToolType;

    const-string v1, "MUSIC_TOOL_KUWO"

    invoke-direct {v0, v1, v3}, Lcom/txznet/sdk/TXZMusicManager$MusicToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZMusicManager$MusicToolType;->MUSIC_TOOL_KUWO:Lcom/txznet/sdk/TXZMusicManager$MusicToolType;

    .line 436
    new-instance v0, Lcom/txznet/sdk/TXZMusicManager$MusicToolType;

    const-string v1, "MUSIC_TOOL_KAOLA"

    invoke-direct {v0, v1, v4}, Lcom/txznet/sdk/TXZMusicManager$MusicToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZMusicManager$MusicToolType;->MUSIC_TOOL_KAOLA:Lcom/txznet/sdk/TXZMusicManager$MusicToolType;

    .line 424
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/txznet/sdk/TXZMusicManager$MusicToolType;

    sget-object v1, Lcom/txznet/sdk/TXZMusicManager$MusicToolType;->MUSIC_TOOL_TXZ:Lcom/txznet/sdk/TXZMusicManager$MusicToolType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/txznet/sdk/TXZMusicManager$MusicToolType;->MUSIC_TOOL_KUWO:Lcom/txznet/sdk/TXZMusicManager$MusicToolType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/txznet/sdk/TXZMusicManager$MusicToolType;->MUSIC_TOOL_KAOLA:Lcom/txznet/sdk/TXZMusicManager$MusicToolType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/txznet/sdk/TXZMusicManager$MusicToolType;->T:[Lcom/txznet/sdk/TXZMusicManager$MusicToolType;

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
    .line 424
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txznet/sdk/TXZMusicManager$MusicToolType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 424
    const-class v0, Lcom/txznet/sdk/TXZMusicManager$MusicToolType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZMusicManager$MusicToolType;

    return-object v0
.end method

.method public static values()[Lcom/txznet/sdk/TXZMusicManager$MusicToolType;
    .locals 1

    .prologue
    .line 424
    sget-object v0, Lcom/txznet/sdk/TXZMusicManager$MusicToolType;->T:[Lcom/txznet/sdk/TXZMusicManager$MusicToolType;

    invoke-virtual {v0}, [Lcom/txznet/sdk/TXZMusicManager$MusicToolType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txznet/sdk/TXZMusicManager$MusicToolType;

    return-object v0
.end method
