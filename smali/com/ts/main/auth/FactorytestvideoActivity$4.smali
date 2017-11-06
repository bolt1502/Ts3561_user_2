.class Lcom/ts/main/auth/FactorytestvideoActivity$4;
.super Ljava/lang/Object;
.source "FactorytestvideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/auth/FactorytestvideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/auth/FactorytestvideoActivity;


# direct methods
.method constructor <init>(Lcom/ts/main/auth/FactorytestvideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/auth/FactorytestvideoActivity$4;->this$0:Lcom/ts/main/auth/FactorytestvideoActivity;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestvideoActivity$4;->this$0:Lcom/ts/main/auth/FactorytestvideoActivity;

    const-class v1, Lcom/ts/main/auth/FactorytestAudioActivity;

    invoke-virtual {v0, v1}, Lcom/ts/main/auth/FactorytestvideoActivity;->enterSubWin(Ljava/lang/Class;)V

    .line 97
    const-string v0, "\u89c6\u9891\u6d4b\u8bd5OK"

    invoke-static {v0}, Lcom/ts/main/auth/factory_test;->AddToSort(Ljava/lang/String;)V

    .line 98
    return-void
.end method
