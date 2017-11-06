.class Lcom/ts/can/CanTeramontACActivity$1;
.super Ljava/lang/Object;
.source "CanTeramontACActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/can/CanTeramontACActivity;->addArrayView(Landroid/widget/RelativeLayout;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/CanTeramontACActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/CanTeramontACActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/CanTeramontACActivity$1;->this$0:Lcom/ts/can/CanTeramontACActivity;

    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 787
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 788
    .local v1, "tag":I
    iget-object v2, p0, Lcom/ts/can/CanTeramontACActivity$1;->this$0:Lcom/ts/can/CanTeramontACActivity;

    # getter for: Lcom/ts/can/CanTeramontACActivity;->windowId:I
    invoke-static {v2}, Lcom/ts/can/CanTeramontACActivity;->access$0(Lcom/ts/can/CanTeramontACActivity;)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    const/16 v0, 0xb1

    .line 789
    .local v0, "cmd":I
    :goto_0
    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    .line 790
    iget-object v2, p0, Lcom/ts/can/CanTeramontACActivity$1;->this$0:Lcom/ts/can/CanTeramontACActivity;

    # getter for: Lcom/ts/can/CanTeramontACActivity;->window:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/ts/can/CanTeramontACActivity;->access$1(Lcom/ts/can/CanTeramontACActivity;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 791
    invoke-static {}, Lcom/ts/can/CanTeramontACActivity;->GetTickCount()J

    move-result-wide v2

    sput-wide v2, Lcom/ts/can/CanFunc;->mLastACTick:J

    .line 793
    return-void

    .line 788
    .end local v0    # "cmd":I
    :cond_0
    const/16 v0, 0xb0

    goto :goto_0
.end method
