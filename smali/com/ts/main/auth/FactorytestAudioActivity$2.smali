.class Lcom/ts/main/auth/FactorytestAudioActivity$2;
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
    iput-object p1, p0, Lcom/ts/main/auth/FactorytestAudioActivity$2;->this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity$2;->this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

    sget v1, Lcom/ts/MainUI/R$raw;->right:I

    invoke-virtual {v0, v1}, Lcom/ts/main/auth/FactorytestAudioActivity;->PlaySource(I)V

    .line 95
    const-string v0, "\u97f3\u9891\u6d4b\u8bd5OK"

    invoke-static {v0}, Lcom/ts/main/auth/factory_test;->AddToSort(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/ts/main/auth/factory_test;->WriteReport()V

    .line 97
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestAudioActivity$2;->this$0:Lcom/ts/main/auth/FactorytestAudioActivity;

    const-string v1, "\u6d4b\u8bd5\u5b8c\u6210"

    const/4 v2, 0x0

    # invokes: Lcom/ts/main/auth/FactorytestAudioActivity;->ShowOneMessage(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/ts/main/auth/FactorytestAudioActivity;->access$0(Lcom/ts/main/auth/FactorytestAudioActivity;Ljava/lang/String;I)V

    .line 100
    return-void
.end method
