.class Lcom/ts/main/auth/FactorytestAudioActivity$1;
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
    iput-object p1, p0, Lcom/ts/main/auth/FactorytestAudioActivity$1;->this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity$1;->this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

    sget v1, Lcom/ts/MainUI/R$raw;->left:I

    invoke-virtual {v0, v1}, Lcom/ts/main/auth/FactorytestAudioActivity;->PlaySource(I)V

    .line 80
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity$1;->this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

    iget-object v0, v0, Lcom/ts/main/auth/FactorytestAudioActivity;->BtnRight:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity$1;->this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

    iget-object v0, v0, Lcom/ts/main/auth/FactorytestAudioActivity;->BtnLeft:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity$1;->this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

    iget-object v0, v0, Lcom/ts/main/auth/FactorytestAudioActivity;->sstTextView:Landroid/widget/TextView;

    const-string v1, "\u6309\u4e0b\u53f3\u58f0\u9053\u952e\u6d4b\u8bd5\u53f3\u8fb9\u58f0\u9053"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method
