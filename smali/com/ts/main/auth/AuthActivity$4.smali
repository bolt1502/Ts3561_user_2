.class Lcom/ts/main/auth/AuthActivity$4;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/auth/AuthActivity;->UserAll()V
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
    iput-object p1, p0, Lcom/ts/main/auth/AuthActivity$4;->this$0:Lcom/ts/main/auth/AuthActivity;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ts/main/auth/AuthActivity$4;->this$0:Lcom/ts/main/auth/AuthActivity;

    iget-object v0, v0, Lcom/ts/main/auth/AuthActivity;->m_dialgo:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 163
    iget-object v0, p0, Lcom/ts/main/auth/AuthActivity$4;->this$0:Lcom/ts/main/auth/AuthActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ts/main/auth/AuthActivity;->nStep:I

    .line 165
    return-void
.end method
