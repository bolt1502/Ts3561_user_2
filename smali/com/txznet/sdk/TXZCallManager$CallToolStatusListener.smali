.class public interface abstract Lcom/txznet/sdk/TXZCallManager$CallToolStatusListener;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallToolStatusListener"
.end annotation


# virtual methods
.method public abstract onDisabled(Ljava/lang/String;)V
.end method

.method public abstract onEnabled()V
.end method

.method public abstract onIdle()V
.end method

.method public abstract onIncoming(Lcom/txznet/sdk/TXZCallManager$Contact;ZZ)V
.end method

.method public abstract onMakeCall(Lcom/txznet/sdk/TXZCallManager$Contact;)V
.end method

.method public abstract onOffhook()V
.end method
