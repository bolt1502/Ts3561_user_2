.class Lcom/ts/main/auth/AuthActivity$1;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/auth/AuthActivity;->ShowOneMessage(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/auth/AuthActivity;

.field private final synthetic val$nFinish:I


# direct methods
.method constructor <init>(Lcom/ts/main/auth/AuthActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/auth/AuthActivity$1;->this$0:Lcom/ts/main/auth/AuthActivity;

    iput p2, p0, Lcom/ts/main/auth/AuthActivity$1;->val$nFinish:I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 79
    iget v0, p0, Lcom/ts/main/auth/AuthActivity$1;->val$nFinish:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/ts/main/auth/AuthActivity$1;->this$0:Lcom/ts/main/auth/AuthActivity;

    invoke-virtual {v0}, Lcom/ts/main/auth/AuthActivity;->finish()V

    .line 89
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/ts/main/auth/AuthActivity$1;->this$0:Lcom/ts/main/auth/AuthActivity;

    iget-object v0, v0, Lcom/ts/main/auth/AuthActivity;->m_dialgo:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 86
    iget-object v0, p0, Lcom/ts/main/auth/AuthActivity$1;->this$0:Lcom/ts/main/auth/AuthActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ts/main/auth/AuthActivity;->nStep:I

    goto :goto_0
.end method
