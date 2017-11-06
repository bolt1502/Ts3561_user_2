.class Lcom/ts/main/auth/DelateMainActivity$1;
.super Ljava/lang/Object;
.source "DelateMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/auth/DelateMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/auth/DelateMainActivity;


# direct methods
.method constructor <init>(Lcom/ts/main/auth/DelateMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/auth/DelateMainActivity$1;->this$0:Lcom/ts/main/auth/DelateMainActivity;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ts/main/auth/DelateMainActivity$1;->this$0:Lcom/ts/main/auth/DelateMainActivity;

    invoke-virtual {v0}, Lcom/ts/main/auth/DelateMainActivity;->finish()V

    .line 45
    return-void
.end method
