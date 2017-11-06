.class Lcom/ts/main/auth/FactorytestAudioActivity$3;
.super Ljava/lang/Object;
.source "FactorytestAudioActivity.java"

# interfaces
.implements Lcom/ts/main/auth/AudioRecoderUtils$OnAudioStatusUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/auth/FactorytestAudioActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/auth/FactorytestAudioActivity;


# direct methods
.method constructor <init>(Lcom/ts/main/auth/FactorytestAudioActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/auth/FactorytestAudioActivity$3;->this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity$3;->this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f55\u97f3\u4fdd\u5b58\u5728\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 133
    return-void
.end method

.method public onUpdate(DJ)V
    .locals 7
    .param p1, "db"    # D
    .param p3, "time"    # J

    .prologue
    .line 111
    const-wide v1, 0x40a7700000000000L    # 3000.0

    const-wide v3, 0x40b7700000000000L    # 6000.0

    mul-double/2addr v3, p1

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    div-int/lit8 v0, v1, 0x64

    .line 112
    .local v0, "fenbei":I
    iget-object v1, p0, Lcom/ts/main/auth/FactorytestAudioActivity$3;->this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

    iget-object v1, v1, Lcom/ts/main/auth/FactorytestAudioActivity;->showTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u5206\u8d1d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const/16 v1, 0x50

    if-le v0, v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/ts/main/auth/FactorytestAudioActivity$3;->this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

    iget-object v1, v1, Lcom/ts/main/auth/FactorytestAudioActivity;->mAudioRecoderUtils:Lcom/ts/main/auth/AudioRecoderUtils;

    invoke-virtual {v1}, Lcom/ts/main/auth/AudioRecoderUtils;->cancelRecord()V

    .line 116
    iget-object v1, p0, Lcom/ts/main/auth/FactorytestAudioActivity$3;->this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

    iget-object v1, v1, Lcom/ts/main/auth/FactorytestAudioActivity;->BtnRecord:Landroid/widget/Button;

    const-string v2, "\u6309\u4e0b\u5f55\u97f3"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/ts/main/auth/FactorytestAudioActivity$3;->this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

    iget-object v1, v1, Lcom/ts/main/auth/FactorytestAudioActivity;->BtnRecord:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/ts/main/auth/FactorytestAudioActivity$3;->this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

    iget-object v1, v1, Lcom/ts/main/auth/FactorytestAudioActivity;->BtnLeft:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/ts/main/auth/FactorytestAudioActivity$3;->this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

    iget-object v1, v1, Lcom/ts/main/auth/FactorytestAudioActivity;->sstTextView:Landroid/widget/TextView;

    const-string v2, "\u6309\u4e0b\u5de6\u58f0\u9053\u952e\u6d4b\u8bd5\u5de6\u8fb9\u58f0\u9053"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_0
    return-void
.end method
