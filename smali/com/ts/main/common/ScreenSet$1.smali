.class Lcom/ts/main/common/ScreenSet$1;
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
    iput-object p1, p0, Lcom/ts/main/common/ScreenSet$1;->this$0:Lcom/ts/main/common/ScreenSet;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet$1;->this$0:Lcom/ts/main/common/ScreenSet;

    # invokes: Lcom/ts/main/common/ScreenSet;->ClearBtnState()V
    invoke-static {v0}, Lcom/ts/main/common/ScreenSet;->access$0(Lcom/ts/main/common/ScreenSet;)V

    .line 82
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet$1;->this$0:Lcom/ts/main/common/ScreenSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/main/common/ScreenSet;->SetBtnState(I)V

    .line 83
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet$1;->this$0:Lcom/ts/main/common/ScreenSet;

    iget-object v0, v0, Lcom/ts/main/common/ScreenSet;->mScreenSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/ts/main/common/ScreenSet$1;->this$0:Lcom/ts/main/common/ScreenSet;

    iget-object v1, v1, Lcom/ts/main/common/ScreenSet;->mTsDisplay:Lcom/ts/MainUI/TsDisplay;

    iget-object v2, p0, Lcom/ts/main/common/ScreenSet$1;->this$0:Lcom/ts/main/common/ScreenSet;

    # getter for: Lcom/ts/main/common/ScreenSet;->nShowSrc:I
    invoke-static {v2}, Lcom/ts/main/common/ScreenSet;->access$1(Lcom/ts/main/common/ScreenSet;)I

    move-result v2

    .line 84
    iget-object v3, p0, Lcom/ts/main/common/ScreenSet$1;->this$0:Lcom/ts/main/common/ScreenSet;

    # getter for: Lcom/ts/main/common/ScreenSet;->nShowType:I
    invoke-static {v3}, Lcom/ts/main/common/ScreenSet;->access$2(Lcom/ts/main/common/ScreenSet;)I

    move-result v3

    .line 83
    invoke-virtual {v1, v2, v3}, Lcom/ts/MainUI/TsDisplay;->UIGetVal(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 85
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet$1;->this$0:Lcom/ts/main/common/ScreenSet;

    # getter for: Lcom/ts/main/common/ScreenSet;->TexShowInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/ts/main/common/ScreenSet;->access$3(Lcom/ts/main/common/ScreenSet;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    iget-object v2, p0, Lcom/ts/main/common/ScreenSet$1;->this$0:Lcom/ts/main/common/ScreenSet;

    iget-object v2, v2, Lcom/ts/main/common/ScreenSet;->mTsDisplay:Lcom/ts/MainUI/TsDisplay;

    iget-object v3, p0, Lcom/ts/main/common/ScreenSet$1;->this$0:Lcom/ts/main/common/ScreenSet;

    # getter for: Lcom/ts/main/common/ScreenSet;->nShowSrc:I
    invoke-static {v3}, Lcom/ts/main/common/ScreenSet;->access$1(Lcom/ts/main/common/ScreenSet;)I

    move-result v3

    iget-object v4, p0, Lcom/ts/main/common/ScreenSet$1;->this$0:Lcom/ts/main/common/ScreenSet;

    # getter for: Lcom/ts/main/common/ScreenSet;->nShowType:I
    invoke-static {v4}, Lcom/ts/main/common/ScreenSet;->access$2(Lcom/ts/main/common/ScreenSet;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/ts/MainUI/TsDisplay;->UIGetVal(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method
