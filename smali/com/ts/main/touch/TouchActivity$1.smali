.class Lcom/ts/main/touch/TouchActivity$1;
.super Ljava/lang/Thread;
.source "TouchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/touch/TouchActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/touch/TouchActivity;


# direct methods
.method constructor <init>(Lcom/ts/main/touch/TouchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/touch/TouchActivity$1;->this$0:Lcom/ts/main/touch/TouchActivity;

    .line 111
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 116
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Lcom/ts/main/touch/TouchActivity$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    iget-object v1, p0, Lcom/ts/main/touch/TouchActivity$1;->this$0:Lcom/ts/main/touch/TouchActivity;

    invoke-virtual {v1}, Lcom/ts/main/touch/TouchActivity;->finish()V

    .line 123
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
