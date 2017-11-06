.class Lcom/ts/bt/WrcActivity$1;
.super Ljava/lang/Object;
.source "WrcActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/bt/WrcActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/bt/WrcActivity;


# direct methods
.method constructor <init>(Lcom/ts/bt/WrcActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/bt/WrcActivity$1;->this$0:Lcom/ts/bt/WrcActivity;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-static {}, Lcom/ts/main/txz/Wrc;->GetInstance()Lcom/ts/main/txz/Wrc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/txz/Wrc;->startScan()V

    .line 53
    return-void
.end method
