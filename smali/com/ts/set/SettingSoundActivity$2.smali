.class Lcom/ts/set/SettingSoundActivity$2;
.super Ljava/lang/Object;
.source "SettingSoundActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/set/SettingSoundActivity;->InitUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/set/SettingSoundActivity;


# direct methods
.method constructor <init>(Lcom/ts/set/SettingSoundActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/set/SettingSoundActivity$2;->this$0:Lcom/ts/set/SettingSoundActivity;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 276
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 277
    const-string v0, "SettingSoundActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity$2;->this$0:Lcom/ts/set/SettingSoundActivity;

    # getter for: Lcom/ts/set/SettingSoundActivity;->mSwExamp:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/ts/set/SettingSoundActivity;->access$0(Lcom/ts/set/SettingSoundActivity;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/set/SettingSoundActivity$2;->this$0:Lcom/ts/set/SettingSoundActivity;

    # getter for: Lcom/ts/set/SettingSoundActivity;->mSwExamp:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/ts/set/SettingSoundActivity;->access$0(Lcom/ts/set/SettingSoundActivity;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 280
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
