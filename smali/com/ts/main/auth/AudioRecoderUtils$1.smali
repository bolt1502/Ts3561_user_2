.class Lcom/ts/main/auth/AudioRecoderUtils$1;
.super Ljava/lang/Object;
.source "AudioRecoderUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/main/auth/AudioRecoderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/auth/AudioRecoderUtils;


# direct methods
.method constructor <init>(Lcom/ts/main/auth/AudioRecoderUtils;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/auth/AudioRecoderUtils$1;->this$0:Lcom/ts/main/auth/AudioRecoderUtils;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ts/main/auth/AudioRecoderUtils$1;->this$0:Lcom/ts/main/auth/AudioRecoderUtils;

    # invokes: Lcom/ts/main/auth/AudioRecoderUtils;->updateMicStatus()V
    invoke-static {v0}, Lcom/ts/main/auth/AudioRecoderUtils;->access$0(Lcom/ts/main/auth/AudioRecoderUtils;)V

    .line 126
    return-void
.end method
