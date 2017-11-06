.class Lcom/ts/main/common/KeyTouch$1;
.super Ljava/lang/Thread;
.source "KeyTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/common/KeyTouch;->sendTap(FFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/common/KeyTouch;

.field private final synthetic val$TouchState:I

.field private final synthetic val$Touchx:F

.field private final synthetic val$Touchy:F


# direct methods
.method constructor <init>(Lcom/ts/main/common/KeyTouch;IFF)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/common/KeyTouch$1;->this$0:Lcom/ts/main/common/KeyTouch;

    iput p2, p0, Lcom/ts/main/common/KeyTouch$1;->val$TouchState:I

    iput p3, p0, Lcom/ts/main/common/KeyTouch$1;->val$Touchx:F

    iput p4, p0, Lcom/ts/main/common/KeyTouch$1;->val$Touchy:F

    .line 317
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    .line 320
    iget-object v0, p0, Lcom/ts/main/common/KeyTouch$1;->this$0:Lcom/ts/main/common/KeyTouch;

    const/16 v1, 0x1002

    iput v1, v0, Lcom/ts/main/common/KeyTouch;->inputSource:I

    .line 321
    const-string v0, "KeyTouch"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "inputSource="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ts/main/common/KeyTouch$1;->this$0:Lcom/ts/main/common/KeyTouch;

    iget v5, v5, Lcom/ts/main/common/KeyTouch;->inputSource:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 324
    .local v3, "now":J
    iget v0, p0, Lcom/ts/main/common/KeyTouch$1;->val$TouchState:I

    if-ne v0, v8, :cond_1

    .line 326
    iget-object v0, p0, Lcom/ts/main/common/KeyTouch$1;->this$0:Lcom/ts/main/common/KeyTouch;

    iget-boolean v0, v0, Lcom/ts/main/common/KeyTouch;->bDown:Z

    if-eqz v0, :cond_0

    .line 328
    const-string v0, "KeyTouch"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendTap x="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ts/main/common/KeyTouch$1;->val$Touchx:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sendTap y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ts/main/common/KeyTouch$1;->val$Touchy:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "move"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/ts/main/common/KeyTouch$1;->this$0:Lcom/ts/main/common/KeyTouch;

    iget-object v1, p0, Lcom/ts/main/common/KeyTouch$1;->this$0:Lcom/ts/main/common/KeyTouch;

    iget v1, v1, Lcom/ts/main/common/KeyTouch;->inputSource:I

    const/4 v2, 0x2

    iget v5, p0, Lcom/ts/main/common/KeyTouch$1;->val$Touchx:F

    iget v6, p0, Lcom/ts/main/common/KeyTouch$1;->val$Touchy:F

    # invokes: Lcom/ts/main/common/KeyTouch;->injectMotionEvent(IIJFFF)V
    invoke-static/range {v0 .. v7}, Lcom/ts/main/common/KeyTouch;->access$0(Lcom/ts/main/common/KeyTouch;IIJFFF)V

    .line 336
    :goto_0
    iget-object v0, p0, Lcom/ts/main/common/KeyTouch$1;->this$0:Lcom/ts/main/common/KeyTouch;

    iput-boolean v8, v0, Lcom/ts/main/common/KeyTouch;->bDown:Z

    .line 346
    :goto_1
    return-void

    .line 333
    :cond_0
    const-string v0, "KeyTouch"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "sendTap x="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/ts/main/common/KeyTouch$1;->val$Touchx:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "sendTap y="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/ts/main/common/KeyTouch$1;->val$Touchy:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "down"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/ts/main/common/KeyTouch$1;->this$0:Lcom/ts/main/common/KeyTouch;

    iget-object v1, p0, Lcom/ts/main/common/KeyTouch$1;->this$0:Lcom/ts/main/common/KeyTouch;

    iget v1, v1, Lcom/ts/main/common/KeyTouch;->inputSource:I

    iget v5, p0, Lcom/ts/main/common/KeyTouch$1;->val$Touchx:F

    iget v6, p0, Lcom/ts/main/common/KeyTouch$1;->val$Touchy:F

    # invokes: Lcom/ts/main/common/KeyTouch;->injectMotionEvent(IIJFFF)V
    invoke-static/range {v0 .. v7}, Lcom/ts/main/common/KeyTouch;->access$0(Lcom/ts/main/common/KeyTouch;IIJFFF)V

    goto :goto_0

    .line 341
    :cond_1
    const-string v0, "KeyTouch"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "sendTap x="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/ts/main/common/KeyTouch$1;->val$Touchx:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "sendTap y="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/ts/main/common/KeyTouch$1;->val$Touchy:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "up"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/ts/main/common/KeyTouch$1;->this$0:Lcom/ts/main/common/KeyTouch;

    iput-boolean v2, v0, Lcom/ts/main/common/KeyTouch;->bDown:Z

    .line 343
    iget-object v0, p0, Lcom/ts/main/common/KeyTouch$1;->this$0:Lcom/ts/main/common/KeyTouch;

    iget-object v1, p0, Lcom/ts/main/common/KeyTouch$1;->this$0:Lcom/ts/main/common/KeyTouch;

    iget v1, v1, Lcom/ts/main/common/KeyTouch;->inputSource:I

    iget v5, p0, Lcom/ts/main/common/KeyTouch$1;->val$Touchx:F

    iget v6, p0, Lcom/ts/main/common/KeyTouch$1;->val$Touchy:F

    const/4 v7, 0x0

    move v2, v8

    # invokes: Lcom/ts/main/common/KeyTouch;->injectMotionEvent(IIJFFF)V
    invoke-static/range {v0 .. v7}, Lcom/ts/main/common/KeyTouch;->access$0(Lcom/ts/main/common/KeyTouch;IIJFFF)V

    goto :goto_1
.end method
