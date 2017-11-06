.class Lcom/ts/main/auth/FactorytestAudioActivity$4;
.super Ljava/lang/Object;
.source "FactorytestAudioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/ts/main/auth/FactorytestAudioActivity$4;->this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity$4;->this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

    iget-object v0, v0, Lcom/ts/main/auth/FactorytestAudioActivity;->BtnRecord:Landroid/widget/Button;

    const-string v1, "\u5f00\u59cb\u5f55\u97f3"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity$4;->this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

    iget-object v0, v0, Lcom/ts/main/auth/FactorytestAudioActivity;->mAudioRecoderUtils:Lcom/ts/main/auth/AudioRecoderUtils;

    invoke-virtual {v0}, Lcom/ts/main/auth/AudioRecoderUtils;->startRecord()V

    .line 145
    return-void
.end method
