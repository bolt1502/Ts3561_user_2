.class public final enum Lcom/txznet/sdk/TXZAudioManager$AudioTool;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioTool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/txznet/sdk/TXZAudioManager$AudioTool;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUDIO_KL:Lcom/txznet/sdk/TXZAudioManager$AudioTool;

.field public static final enum AUDIO_TT:Lcom/txznet/sdk/TXZAudioManager$AudioTool;

.field public static final enum AUDIO_TXZ:Lcom/txznet/sdk/TXZAudioManager$AudioTool;

.field public static final enum AUDIO_XMLY:Lcom/txznet/sdk/TXZAudioManager$AudioTool;

.field private static final synthetic T:[Lcom/txznet/sdk/TXZAudioManager$AudioTool;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    new-instance v0, Lcom/txznet/sdk/TXZAudioManager$AudioTool;

    const-string v1, "AUDIO_TXZ"

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZAudioManager$AudioTool;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZAudioManager$AudioTool;->AUDIO_TXZ:Lcom/txznet/sdk/TXZAudioManager$AudioTool;

    .line 140
    new-instance v0, Lcom/txznet/sdk/TXZAudioManager$AudioTool;

    const-string v1, "AUDIO_KL"

    invoke-direct {v0, v1, v3}, Lcom/txznet/sdk/TXZAudioManager$AudioTool;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZAudioManager$AudioTool;->AUDIO_KL:Lcom/txznet/sdk/TXZAudioManager$AudioTool;

    .line 144
    new-instance v0, Lcom/txznet/sdk/TXZAudioManager$AudioTool;

    const-string v1, "AUDIO_TT"

    invoke-direct {v0, v1, v4}, Lcom/txznet/sdk/TXZAudioManager$AudioTool;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZAudioManager$AudioTool;->AUDIO_TT:Lcom/txznet/sdk/TXZAudioManager$AudioTool;

    .line 148
    new-instance v0, Lcom/txznet/sdk/TXZAudioManager$AudioTool;

    const-string v1, "AUDIO_XMLY"

    invoke-direct {v0, v1, v5}, Lcom/txznet/sdk/TXZAudioManager$AudioTool;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZAudioManager$AudioTool;->AUDIO_XMLY:Lcom/txznet/sdk/TXZAudioManager$AudioTool;

    .line 132
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/txznet/sdk/TXZAudioManager$AudioTool;

    sget-object v1, Lcom/txznet/sdk/TXZAudioManager$AudioTool;->AUDIO_TXZ:Lcom/txznet/sdk/TXZAudioManager$AudioTool;

    aput-object v1, v0, v2

    sget-object v1, Lcom/txznet/sdk/TXZAudioManager$AudioTool;->AUDIO_KL:Lcom/txznet/sdk/TXZAudioManager$AudioTool;

    aput-object v1, v0, v3

    sget-object v1, Lcom/txznet/sdk/TXZAudioManager$AudioTool;->AUDIO_TT:Lcom/txznet/sdk/TXZAudioManager$AudioTool;

    aput-object v1, v0, v4

    sget-object v1, Lcom/txznet/sdk/TXZAudioManager$AudioTool;->AUDIO_XMLY:Lcom/txznet/sdk/TXZAudioManager$AudioTool;

    aput-object v1, v0, v5

    sput-object v0, Lcom/txznet/sdk/TXZAudioManager$AudioTool;->T:[Lcom/txznet/sdk/TXZAudioManager$AudioTool;

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
    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txznet/sdk/TXZAudioManager$AudioTool;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 132
    const-class v0, Lcom/txznet/sdk/TXZAudioManager$AudioTool;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZAudioManager$AudioTool;

    return-object v0
.end method

.method public static values()[Lcom/txznet/sdk/TXZAudioManager$AudioTool;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/txznet/sdk/TXZAudioManager$AudioTool;->T:[Lcom/txznet/sdk/TXZAudioManager$AudioTool;

    invoke-virtual {v0}, [Lcom/txznet/sdk/TXZAudioManager$AudioTool;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txznet/sdk/TXZAudioManager$AudioTool;

    return-object v0
.end method
