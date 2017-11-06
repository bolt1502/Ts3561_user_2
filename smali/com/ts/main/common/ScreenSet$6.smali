.class Lcom/ts/main/common/ScreenSet$6;
.super Ljava/lang/Object;
.source "ScreenSet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/common/ScreenSet;->InintBtn(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/common/ScreenSet;


# direct methods
.method constructor <init>(Lcom/ts/main/common/ScreenSet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/common/ScreenSet$6;->this$0:Lcom/ts/main/common/ScreenSet;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet$6;->this$0:Lcom/ts/main/common/ScreenSet;

    invoke-virtual {v0}, Lcom/ts/main/common/ScreenSet;->Hide()V

    .line 172
    return-void
.end method
