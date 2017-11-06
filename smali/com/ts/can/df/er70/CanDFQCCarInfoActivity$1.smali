.class Lcom/ts/can/df/er70/CanDFQCCarInfoActivity$1;
.super Ljava/lang/Object;
.source "CanDFQCCarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity$1;->this$0:Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 154
    :goto_0
    return v2

    .line 143
    :pswitch_0
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity$1;->this$0:Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;

    const/4 v1, 0x1

    # invokes: Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->setBatterySelected(Z)V
    invoke-static {v0, v1}, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->access$0(Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;Z)V

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity$1;->this$0:Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    # invokes: Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->setBatterySelected(Z)V
    invoke-static {v0, v1}, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->access$0(Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;Z)V

    goto :goto_0

    .line 151
    :pswitch_2
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity$1;->this$0:Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;

    # invokes: Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->setBatterySelected(Z)V
    invoke-static {v0, v2}, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->access$0(Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;Z)V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
