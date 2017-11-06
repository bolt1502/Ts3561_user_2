.class Lcom/ts/set/SetColorKeyMainActivity$1;
.super Ljava/lang/Object;
.source "SetColorKeyMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/set/SetColorKeyMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/set/SetColorKeyMainActivity;


# direct methods
.method constructor <init>(Lcom/ts/set/SetColorKeyMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/set/SetColorKeyMainActivity$1;->this$0:Lcom/ts/set/SetColorKeyMainActivity;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 122
    .local v1, "nTag":I
    iget-object v2, p0, Lcom/ts/set/SetColorKeyMainActivity$1;->this$0:Lcom/ts/set/SetColorKeyMainActivity;

    invoke-virtual {v2, v1}, Lcom/ts/set/SetColorKeyMainActivity;->ShowSelectBtn(I)V

    .line 123
    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    if-ltz v1, :cond_0

    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 139
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 127
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/ts/set/SetColorKeyMainActivity$1;->this$0:Lcom/ts/set/SetColorKeyMainActivity;

    iget-object v2, v2, Lcom/ts/set/SetColorKeyMainActivity;->nColor:[I

    iget-object v3, p0, Lcom/ts/set/SetColorKeyMainActivity$1;->this$0:Lcom/ts/set/SetColorKeyMainActivity;

    iget-object v3, v3, Lcom/ts/set/SetColorKeyMainActivity;->SetColor:[I

    mul-int/lit8 v4, v1, 0x3

    add-int/2addr v4, v0

    aget v3, v3, v4

    aput v3, v2, v0

    .line 128
    iget-object v2, p0, Lcom/ts/set/SetColorKeyMainActivity$1;->this$0:Lcom/ts/set/SetColorKeyMainActivity;

    iget-object v3, p0, Lcom/ts/set/SetColorKeyMainActivity$1;->this$0:Lcom/ts/set/SetColorKeyMainActivity;

    iget-object v3, v3, Lcom/ts/set/SetColorKeyMainActivity;->nColor:[I

    aget v3, v3, v0

    invoke-virtual {v2, v0, v3}, Lcom/ts/set/SetColorKeyMainActivity;->SetColor(II)V

    .line 129
    iget-object v2, p0, Lcom/ts/set/SetColorKeyMainActivity$1;->this$0:Lcom/ts/set/SetColorKeyMainActivity;

    const/16 v3, 0x100

    invoke-virtual {v2, v0, v3}, Lcom/ts/set/SetColorKeyMainActivity;->SetColor(II)V

    .line 130
    iget-object v2, p0, Lcom/ts/set/SetColorKeyMainActivity$1;->this$0:Lcom/ts/set/SetColorKeyMainActivity;

    iget-object v2, v2, Lcom/ts/set/SetColorKeyMainActivity;->mSeekBar:[Landroid/widget/SeekBar;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/ts/set/SetColorKeyMainActivity$1;->this$0:Lcom/ts/set/SetColorKeyMainActivity;

    iget-object v3, v3, Lcom/ts/set/SetColorKeyMainActivity;->nColor:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 131
    iget-object v2, p0, Lcom/ts/set/SetColorKeyMainActivity$1;->this$0:Lcom/ts/set/SetColorKeyMainActivity;

    iget-object v2, v2, Lcom/ts/set/SetColorKeyMainActivity;->mShowInfo2:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ts/set/SetColorKeyMainActivity$1;->this$0:Lcom/ts/set/SetColorKeyMainActivity;

    iget-object v4, v4, Lcom/ts/set/SetColorKeyMainActivity;->nColor:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
