.class Lcom/ts/main/auth/TestMainActivity$5;
.super Ljava/lang/Object;
.source "TestMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/auth/TestMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/auth/TestMainActivity;


# direct methods
.method constructor <init>(Lcom/ts/main/auth/TestMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/auth/TestMainActivity$5;->this$0:Lcom/ts/main/auth/TestMainActivity;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/ts/main/auth/TestMainActivity$5;->this$0:Lcom/ts/main/auth/TestMainActivity;

    const/4 v1, 0x2

    iput v1, v0, Lcom/ts/main/auth/TestMainActivity;->nTestMode:I

    .line 193
    return-void
.end method
