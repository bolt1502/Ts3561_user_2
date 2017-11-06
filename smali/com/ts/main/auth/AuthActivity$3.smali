.class Lcom/ts/main/auth/AuthActivity$3;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/auth/AuthActivity;->ShowNetIsNotOK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/auth/AuthActivity;


# direct methods
.method constructor <init>(Lcom/ts/main/auth/AuthActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/auth/AuthActivity$3;->this$0:Lcom/ts/main/auth/AuthActivity;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ts/main/auth/AuthActivity$3;->this$0:Lcom/ts/main/auth/AuthActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ts/main/auth/AuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 118
    iget-object v0, p0, Lcom/ts/main/auth/AuthActivity$3;->this$0:Lcom/ts/main/auth/AuthActivity;

    invoke-virtual {v0}, Lcom/ts/main/auth/AuthActivity;->finish()V

    .line 119
    return-void
.end method
