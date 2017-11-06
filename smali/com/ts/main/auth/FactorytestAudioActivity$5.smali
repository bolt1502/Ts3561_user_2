.class Lcom/ts/main/auth/FactorytestAudioActivity$5;
.super Ljava/lang/Object;
.source "FactorytestAudioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/auth/FactorytestAudioActivity;->ShowOneMessage(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

.field private final synthetic val$nFinish:I


# direct methods
.method constructor <init>(Lcom/ts/main/auth/FactorytestAudioActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/auth/FactorytestAudioActivity$5;->this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

    iput p2, p0, Lcom/ts/main/auth/FactorytestAudioActivity$5;->val$nFinish:I

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 158
    iget v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity$5;->val$nFinish:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity$5;->this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

    invoke-virtual {v0}, Lcom/ts/main/auth/FactorytestAudioActivity;->finish()V

    .line 169
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity$5;->this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

    iget-object v0, v0, Lcom/ts/main/auth/FactorytestAudioActivity;->m_dialgo:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 165
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity$5;->this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

    invoke-virtual {v0}, Lcom/ts/main/auth/FactorytestAudioActivity;->StopMp()V

    .line 166
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity$5;->this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

    const-class v1, Lcom/ts/main/auth/FactoryMainActivity;

    invoke-virtual {v0, v1}, Lcom/ts/main/auth/FactorytestAudioActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0
.end method
