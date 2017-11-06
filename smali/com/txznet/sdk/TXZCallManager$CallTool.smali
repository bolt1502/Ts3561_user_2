.class public interface abstract Lcom/txznet/sdk/TXZCallManager$CallTool;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallTool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;
    }
.end annotation


# virtual methods
.method public abstract acceptIncoming()Z
.end method

.method public abstract getStatus()Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;
.end method

.method public abstract hangupCall()Z
.end method

.method public abstract makeCall(Lcom/txznet/sdk/TXZCallManager$Contact;)Z
.end method

.method public abstract rejectIncoming()Z
.end method

.method public abstract setStatusListener(Lcom/txznet/sdk/TXZCallManager$CallToolStatusListener;)V
.end method
