.class Lcom/ts/main/radio/RadioMainActivity$1;
.super Ljava/lang/Object;
.source "RadioMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/main/radio/RadioMainActivity;
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
    iput-object p1, p0, Lcom/ts/main/radio/RadioMainActivity$1;->this$0:Lcom/ts/main/radio/RadioMainActivity;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 252
    # getter for: Lcom/ts/main/radio/RadioMainActivity;->mRunCnt:I
    invoke-static {}, Lcom/ts/main/radio/RadioMainActivity;->access$0()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/ts/main/radio/RadioMainActivity;->access$1(I)V

    .line 254
    # getter for: Lcom/ts/main/radio/RadioMainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/ts/main/radio/RadioMainActivity;->access$2()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 255
    return-void
.end method
