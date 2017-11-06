.class Lcom/ts/set/setview/SetMainItemSw$1;
.super Ljava/lang/Object;
.source "SetMainItemSw.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/set/setview/SetMainItemSw;->SetUserCallback(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/set/setview/SetMainItemSw;


# direct methods
.method constructor <init>(Lcom/ts/set/setview/SetMainItemSw;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/set/setview/SetMainItemSw$1;->this$0:Lcom/ts/set/setview/SetMainItemSw;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 39
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemSw$1;->this$0:Lcom/ts/set/setview/SetMainItemSw;

    # getter for: Lcom/ts/set/setview/SetMainItemSw;->switch_ctrl:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/ts/set/setview/SetMainItemSw;->access$0(Lcom/ts/set/setview/SetMainItemSw;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/set/setview/SetMainItemSw$1;->this$0:Lcom/ts/set/setview/SetMainItemSw;

    # getter for: Lcom/ts/set/setview/SetMainItemSw;->switch_ctrl:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/ts/set/setview/SetMainItemSw;->access$0(Lcom/ts/set/setview/SetMainItemSw;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 42
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
