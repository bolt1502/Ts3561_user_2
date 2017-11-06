.class Lcom/ts/main/common/KeyTouch$2;
.super Ljava/lang/Thread;
.source "KeyTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/common/KeyTouch;->sendKeyClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/common/KeyTouch;

.field private final synthetic val$nkeyCode:I


# direct methods
.method constructor <init>(Lcom/ts/main/common/KeyTouch;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/common/KeyTouch$2;->this$0:Lcom/ts/main/common/KeyTouch;

    iput p2, p0, Lcom/ts/main/common/KeyTouch$2;->val$nkeyCode:I

    .line 369
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 374
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 375
    .local v1, "now":J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    iget v6, p0, Lcom/ts/main/common/KeyTouch$2;->val$nkeyCode:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 376
    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/16 v12, 0x101

    move-wide v3, v1

    .line 375
    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    # invokes: Lcom/ts/main/common/KeyTouch;->sendKeySync(Landroid/view/KeyEvent;)V
    invoke-static {v0}, Lcom/ts/main/common/KeyTouch;->access$1(Landroid/view/KeyEvent;)V

    .line 377
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    iget v6, p0, Lcom/ts/main/common/KeyTouch$2;->val$nkeyCode:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 378
    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/16 v12, 0x101

    move-wide v3, v1

    .line 377
    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    # invokes: Lcom/ts/main/common/KeyTouch;->sendKeySync(Landroid/view/KeyEvent;)V
    invoke-static {v0}, Lcom/ts/main/common/KeyTouch;->access$1(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .end local v1    # "now":J
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v13

    .line 382
    .local v13, "e":Ljava/lang/Exception;
    const-string v0, "Exception when sendPointerSync"

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
