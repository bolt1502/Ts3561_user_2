.class Lcom/ts/bt/BtDialActivity$2;
.super Ljava/lang/Object;
.source "BtDialActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/bt/BtDialActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/bt/BtDialActivity;


# direct methods
.method constructor <init>(Lcom/ts/bt/BtDialActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/bt/BtDialActivity$2;->this$0:Lcom/ts/bt/BtDialActivity;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity$2;->this$0:Lcom/ts/bt/BtDialActivity;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Lcom/ts/bt/BtDialActivity;->addKey(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity$2;->this$0:Lcom/ts/bt/BtDialActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ts/bt/BtDialActivity;->access$1(Lcom/ts/bt/BtDialActivity;Z)V

    .line 168
    const/4 v0, 0x0

    return v0
.end method
