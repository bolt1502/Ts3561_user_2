.class Lcom/ts/bt/BtDialActivity$3;
.super Ljava/lang/Object;
.source "BtDialActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lcom/ts/bt/BtDialActivity$3;->this$0:Lcom/ts/bt/BtDialActivity;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 185
    :goto_0
    return v1

    .line 178
    :pswitch_0
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity$3;->this$0:Lcom/ts/bt/BtDialActivity;

    invoke-static {v0, v1}, Lcom/ts/bt/BtDialActivity;->access$1(Lcom/ts/bt/BtDialActivity;Z)V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
