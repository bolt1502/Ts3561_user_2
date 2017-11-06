.class public Lcom/ts/main/txz/Glsx;
.super Ljava/lang/Object;
.source "Glsx.java"


# static fields
.field public static final DDBX:I = 0x20

.field public static final DDDLJY:I = 0x1c

.field public static final DDHCZ:I = 0x28

.field public static final DDHCZDH:I = 0x32

.field public static final DDHFAV:I = 0x4

.field public static final DDHLOOP:I = 0x2

.field public static final DDHNEXT:I = 0x3

.field public static final DDHOPENFAV:I = 0x5

.field public static final DDHPAUSE:I = 0x1

.field public static final DDHPLAY:I = 0x0

.field public static final DDHPRE:I = 0x2

.field public static final DDHRADOM:I = 0x1

.field public static final DDHSLOOP:I = 0x3

.field public static final DDHUMNAVI:I = 0x5

.field public static final DDHWZCX:I = 0x19

.field public static final DDLK:I = 0x1e

.field public static final DDMUSIC:I = 0x3

.field static m_Gxsl:Lcom/ts/main/txz/Glsx;


# instance fields
.field private myContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/main/txz/Glsx;->m_Gxsl:Lcom/ts/main/txz/Glsx;

    .line 84
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/main/txz/Glsx;->myContext:Landroid/content/Context;

    .line 10
    return-void
.end method

.method public static GetInstance()Lcom/ts/main/txz/Glsx;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/ts/main/txz/Glsx;->m_Gxsl:Lcom/ts/main/txz/Glsx;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/ts/main/txz/Glsx;

    invoke-direct {v0}, Lcom/ts/main/txz/Glsx;-><init>()V

    sput-object v0, Lcom/ts/main/txz/Glsx;->m_Gxsl:Lcom/ts/main/txz/Glsx;

    .line 26
    :cond_0
    sget-object v0, Lcom/ts/main/txz/Glsx;->m_Gxsl:Lcom/ts/main/txz/Glsx;

    return-object v0
.end method


# virtual methods
.method public CheckLk(I)V
    .locals 3
    .param p1, "nMode"    # I

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.glsx.ddroad.action.MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "road_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-string v1, "road_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/ts/main/txz/Glsx;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 110
    return-void
.end method

.method public Dail(Lcom/txznet/sdk/TXZCallManager$Contact;)V
    .locals 3
    .param p1, "cot"    # Lcom/txznet/sdk/TXZCallManager$Contact;

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.glsx.ddbox.telephone.callByVoice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZCallManager$Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v1, "phoneNumber"

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZCallManager$Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/ts/main/txz/Glsx;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 125
    return-void
.end method

.method public Inint(Landroid/content/Context;)V
    .locals 0
    .param p1, "m_Context"    # Landroid/content/Context;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ts/main/txz/Glsx;->myContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public OpenApp(I)V
    .locals 2
    .param p1, "nID"    # I

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.glsx.ddbox.voice.action.OPENAPPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    iget-object v1, p0, Lcom/ts/main/txz/Glsx;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 44
    return-void
.end method

.method public OpenDDBOX()V
    .locals 3

    .prologue
    .line 48
    iget-object v1, p0, Lcom/ts/main/txz/Glsx;->myContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.glsx.ddbox"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 49
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "NaviMainActivity  PATH ="

    const-string v2, "com.glsx.ddbox"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/ts/main/txz/Glsx;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    :cond_0
    return-void
.end method

.method public PlayCmd(I)V
    .locals 2
    .param p1, "nCmd"    # I

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.glsx.ddmusic.action.PLAY_CONTROL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "play_command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/ts/main/txz/Glsx;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 81
    return-void
.end method

.method public PlayIndex(I)V
    .locals 2
    .param p1, "nIndex"    # I

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.glsx.ddmusic.voicesearch.appointplay"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lcom/ts/main/txz/Glsx;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 117
    return-void
.end method

.method public PlayMode(I)V
    .locals 2
    .param p1, "nMode"    # I

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.glsx.ddmusic.action.PLAY_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "play_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/ts/main/txz/Glsx;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    return-void
.end method

.method public PlayMusic(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "nMode"    # I
    .param p2, "Album"    # Ljava/lang/String;
    .param p3, "SongName"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.glsx.bootup.ddmusic"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    const-string v1, "artist"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v1, "musicName"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Lcom/ts/main/txz/Glsx;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public PlayMusicInfo(I)V
    .locals 2
    .param p1, "nInfo"    # I

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.glsx.ddmusic.action.PLAY_APPOINT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "play_command "

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    iget-object v1, p0, Lcom/ts/main/txz/Glsx;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    return-void
.end method
