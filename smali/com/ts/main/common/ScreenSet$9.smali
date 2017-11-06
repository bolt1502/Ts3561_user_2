.class Lcom/ts/main/common/ScreenSet$9;
.super Ljava/lang/Object;
.source "ScreenSet.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Lcom/ts/main/common/ScreenSet$9;->this$0:Lcom/ts/main/common/ScreenSet;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "arg0"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 229
    add-int/lit8 v0, p2, 0x1

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 p2, v0, 0xa

    .line 230
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet$9;->this$0:Lcom/ts/main/common/ScreenSet;

    iget-object v0, v0, Lcom/ts/main/common/ScreenSet;->mTsDisplay:Lcom/ts/MainUI/TsDisplay;

    iget-object v1, p0, Lcom/ts/main/common/ScreenSet$9;->this$0:Lcom/ts/main/common/ScreenSet;

    # getter for: Lcom/ts/main/common/ScreenSet;->nShowSrc:I
    invoke-static {v1}, Lcom/ts/main/common/ScreenSet;->access$1(Lcom/ts/main/common/ScreenSet;)I

    move-result v1

    iget-object v2, p0, Lcom/ts/main/common/ScreenSet$9;->this$0:Lcom/ts/main/common/ScreenSet;

    # getter for: Lcom/ts/main/common/ScreenSet;->nShowType:I
    invoke-static {v2}, Lcom/ts/main/common/ScreenSet;->access$2(Lcom/ts/main/common/ScreenSet;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/ts/MainUI/TsDisplay;->UISetVal(III)V

    .line 231
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet$9;->this$0:Lcom/ts/main/common/ScreenSet;

    # getter for: Lcom/ts/main/common/ScreenSet;->TexShowInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/ts/main/common/ScreenSet;->access$3(Lcom/ts/main/common/ScreenSet;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    iget-object v2, p0, Lcom/ts/main/common/ScreenSet$9;->this$0:Lcom/ts/main/common/ScreenSet;

    iget-object v2, v2, Lcom/ts/main/common/ScreenSet;->mTsDisplay:Lcom/ts/MainUI/TsDisplay;

    iget-object v3, p0, Lcom/ts/main/common/ScreenSet$9;->this$0:Lcom/ts/main/common/ScreenSet;

    # getter for: Lcom/ts/main/common/ScreenSet;->nShowSrc:I
    invoke-static {v3}, Lcom/ts/main/common/ScreenSet;->access$1(Lcom/ts/main/common/ScreenSet;)I

    move-result v3

    iget-object v4, p0, Lcom/ts/main/common/ScreenSet$9;->this$0:Lcom/ts/main/common/ScreenSet;

    # getter for: Lcom/ts/main/common/ScreenSet;->nShowType:I
    invoke-static {v4}, Lcom/ts/main/common/ScreenSet;->access$2(Lcom/ts/main/common/ScreenSet;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/ts/MainUI/TsDisplay;->UIGetVal(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 223
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 217
    return-void
.end method
