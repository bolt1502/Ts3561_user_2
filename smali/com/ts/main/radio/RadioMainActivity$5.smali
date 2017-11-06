.class Lcom/ts/main/radio/RadioMainActivity$5;
.super Ljava/lang/Object;
.source "RadioMainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/radio/RadioMainActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/radio/RadioMainActivity;


# direct methods
.method constructor <init>(Lcom/ts/main/radio/RadioMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/radio/RadioMainActivity$5;->this$0:Lcom/ts/main/radio/RadioMainActivity;

    .line 1026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 1033
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1034
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1062
    :cond_0
    :goto_0
    return v4

    .line 1037
    :pswitch_0
    const-string v1, "RadioMainActivity"

    const-string v2, "ACTION_DOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity$5;->this$0:Lcom/ts/main/radio/RadioMainActivity;

    invoke-static {v1, v4}, Lcom/ts/main/radio/RadioMainActivity;->access$8(Lcom/ts/main/radio/RadioMainActivity;Z)V

    .line 1039
    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity$5;->this$0:Lcom/ts/main/radio/RadioMainActivity;

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity$5;->this$0:Lcom/ts/main/radio/RadioMainActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    # invokes: Lcom/ts/main/radio/RadioMainActivity;->PtToStep(F)I
    invoke-static {v2, v3}, Lcom/ts/main/radio/RadioMainActivity;->access$9(Lcom/ts/main/radio/RadioMainActivity;F)I

    move-result v2

    # invokes: Lcom/ts/main/radio/RadioMainActivity;->SetStep(I)V
    invoke-static {v1, v2}, Lcom/ts/main/radio/RadioMainActivity;->access$10(Lcom/ts/main/radio/RadioMainActivity;I)V

    goto :goto_0

    .line 1043
    :pswitch_1
    const-string v1, "RadioMainActivity"

    const-string v2, "ACTION_MOVE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity$5;->this$0:Lcom/ts/main/radio/RadioMainActivity;

    # getter for: Lcom/ts/main/radio/RadioMainActivity;->mbAdjMove:Z
    invoke-static {v1}, Lcom/ts/main/radio/RadioMainActivity;->access$3(Lcom/ts/main/radio/RadioMainActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1046
    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity$5;->this$0:Lcom/ts/main/radio/RadioMainActivity;

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity$5;->this$0:Lcom/ts/main/radio/RadioMainActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    # invokes: Lcom/ts/main/radio/RadioMainActivity;->PtToStep(F)I
    invoke-static {v2, v3}, Lcom/ts/main/radio/RadioMainActivity;->access$9(Lcom/ts/main/radio/RadioMainActivity;F)I

    move-result v2

    # invokes: Lcom/ts/main/radio/RadioMainActivity;->SetStep(I)V
    invoke-static {v1, v2}, Lcom/ts/main/radio/RadioMainActivity;->access$10(Lcom/ts/main/radio/RadioMainActivity;I)V

    goto :goto_0

    .line 1051
    :pswitch_2
    const-string v1, "RadioMainActivity"

    const-string v2, "ACTION_UP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity$5;->this$0:Lcom/ts/main/radio/RadioMainActivity;

    # getter for: Lcom/ts/main/radio/RadioMainActivity;->mbAdjMove:Z
    invoke-static {v1}, Lcom/ts/main/radio/RadioMainActivity;->access$3(Lcom/ts/main/radio/RadioMainActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1054
    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity$5;->this$0:Lcom/ts/main/radio/RadioMainActivity;

    # getter for: Lcom/ts/main/radio/RadioMainActivity;->mAdjStep:I
    invoke-static {v1}, Lcom/ts/main/radio/RadioMainActivity;->access$4(Lcom/ts/main/radio/RadioMainActivity;)I

    move-result v1

    invoke-static {v1}, Lcom/yyw/ts70xhw/Radio;->TuneFset(I)I

    .line 1055
    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity$5;->this$0:Lcom/ts/main/radio/RadioMainActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ts/main/radio/RadioMainActivity;->access$8(Lcom/ts/main/radio/RadioMainActivity;Z)V

    goto :goto_0

    .line 1034
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
