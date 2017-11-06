.class Lcom/txznet/sdk/TXZAudioManager$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZAudioManager$AudioToolStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZAudioManager;->setAudioTool(Lcom/txznet/sdk/TXZAudioManager$IAudioTool;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZAudioManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZAudioManager;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/txznet/sdk/TXZAudioManager$1;->T:Lcom/txznet/sdk/TXZAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 202
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.notifyMusicStatusChange"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 204
    return-void
.end method
