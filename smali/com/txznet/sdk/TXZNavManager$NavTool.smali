.class public interface abstract Lcom/txznet/sdk/TXZNavManager$NavTool;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZNavManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NavTool"
.end annotation


# virtual methods
.method public abstract enterNav()V
.end method

.method public abstract exitNav()V
.end method

.method public abstract isInNav()Z
.end method

.method public abstract navCompany()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract navHome()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract navToLoc(Lcom/txznet/sdk/bean/Poi;)V
.end method

.method public abstract setCompanyLoc(Lcom/txznet/sdk/bean/Poi;)V
.end method

.method public abstract setHomeLoc(Lcom/txznet/sdk/bean/Poi;)V
.end method

.method public abstract setStatusListener(Lcom/txznet/sdk/TXZNavManager$NavToolStatusListener;)V
.end method
