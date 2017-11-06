.class public Lcom/ts/main/txz/Cyb;
.super Ljava/lang/Object;
.source "Cyb.java"


# static fields
.field static m_Cyb:Lcom/ts/main/txz/Cyb;


# instance fields
.field public mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

.field private myContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/main/txz/Cyb;->m_Cyb:Lcom/ts/main/txz/Cyb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/ts/main/txz/Cyb;->myContext:Landroid/content/Context;

    .line 12
    iput-object v0, p0, Lcom/ts/main/txz/Cyb;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    .line 9
    return-void
.end method

.method public static GetInstance()Lcom/ts/main/txz/Cyb;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/ts/main/txz/Cyb;->m_Cyb:Lcom/ts/main/txz/Cyb;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/ts/main/txz/Cyb;

    invoke-direct {v0}, Lcom/ts/main/txz/Cyb;-><init>()V

    sput-object v0, Lcom/ts/main/txz/Cyb;->m_Cyb:Lcom/ts/main/txz/Cyb;

    .line 17
    :cond_0
    sget-object v0, Lcom/ts/main/txz/Cyb;->m_Cyb:Lcom/ts/main/txz/Cyb;

    return-object v0
.end method


# virtual methods
.method public Inint(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hongfan_key"

    const-string v2, "H1TSDZ1611000000"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hongfan_appsecret"

    const-string v2, "hf6a5d41f90101c5c84f6b01b6a227225a"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hongfan_information"

    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v2

    iget-object v2, v2, Lcom/ts/main/common/MainSet;->seiid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 25
    iput-object p1, p0, Lcom/ts/main/txz/Cyb;->myContext:Landroid/content/Context;

    .line 26
    iget-object v0, p0, Lcom/ts/main/txz/Cyb;->myContext:Landroid/content/Context;

    const-string v1, "hongfans"

    invoke-static {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->createMediaAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/txz/Cyb;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    .line 27
    iget-object v0, p0, Lcom/ts/main/txz/Cyb;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->setIsDebug(Z)V

    .line 28
    return-void
.end method

.method public exitApp()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ts/main/txz/Cyb;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/ts/main/txz/Cyb;->myContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->exitAPP(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public playMusic(Ljava/lang/String;)V
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ts/main/txz/Cyb;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/ts/main/txz/Cyb;->myContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public playNext()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ts/main/txz/Cyb;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/ts/main/txz/Cyb;->myContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayNext(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public playPause()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ts/main/txz/Cyb;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/ts/main/txz/Cyb;->myContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayPause(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public playPrevious()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ts/main/txz/Cyb;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/ts/main/txz/Cyb;->myContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayPrevious(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public playResume()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ts/main/txz/Cyb;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/ts/main/txz/Cyb;->myContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayResume(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public startApp()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ts/main/txz/Cyb;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/ts/main/txz/Cyb;->myContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->startAPP(Landroid/content/Context;)V

    .line 34
    return-void
.end method
