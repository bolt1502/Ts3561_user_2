.class Lcom/txznet/sdk/bean/NavVoicePlugin$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/bean/NavVoicePlugin;->T(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/bean/NavVoicePlugin;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/bean/NavVoicePlugin;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$2;->T:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$2;->T:Lcom/txznet/sdk/bean/NavVoicePlugin;

    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$2;->T:Lcom/txznet/sdk/bean/NavVoicePlugin;

    iget v1, v1, Lcom/txznet/sdk/bean/NavVoicePlugin;->TN:I

    invoke-static {v0, v1}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;I)V

    .line 164
    return-void
.end method
