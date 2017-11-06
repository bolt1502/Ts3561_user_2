.class public interface abstract Lcom/txznet/sdk/TXZResourceManager$RecordWin;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecordWin"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;,
        Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract onProgressChanged(I)V
.end method

.method public abstract onStatusChange(Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;)V
.end method

.method public abstract onVolumeChange(I)V
.end method

.method public abstract open()V
.end method

.method public abstract setOperateListener(Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener;)V
.end method

.method public abstract showAddressChoice(Ljava/lang/String;)V
.end method

.method public abstract showAudioChoice(Ljava/lang/String;)V
.end method

.method public abstract showContactChoice(Ljava/lang/String;)V
.end method

.method public abstract showListChoice(ILjava/lang/String;)V
.end method

.method public abstract showStockInfo(Ljava/lang/String;)V
.end method

.method public abstract showSysText(Ljava/lang/String;)V
.end method

.method public abstract showUsrText(Ljava/lang/String;)V
.end method

.method public abstract showWheatherInfo(Ljava/lang/String;)V
.end method

.method public abstract showWxContactChoice(Ljava/lang/String;)V
.end method

.method public abstract snapPager(Z)V
.end method
