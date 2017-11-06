.class public interface abstract Lcom/txznet/sdk/TXZWechatManager$WechatTool;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZWechatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WechatTool"
.end annotation


# virtual methods
.method public abstract QRScanned(Ljava/lang/String;)V
.end method

.method public abstract dismissNotify()V
.end method

.method public abstract dismissRecordWin(Z)V
.end method

.method public abstract launch()V
.end method

.method public abstract login()V
.end method

.method public abstract logout()V
.end method

.method public abstract showChat(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/txznet/sdk/bean/WechatMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showQR(Ljava/lang/String;)V
.end method

.method public abstract updateNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end method

.method public abstract updateNotifyStatus(Z)V
.end method

.method public abstract updateQR(Ljava/lang/String;)V
.end method

.method public abstract updateRecordWin(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateSelf(Ljava/lang/String;Ljava/lang/String;)V
.end method
