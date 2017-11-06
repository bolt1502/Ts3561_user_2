.class public Lcom/ts/set/setview/SetDisplayItemProgressList;
.super Ljava/lang/Object;
.source "SetDisplayItemProgressList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/set/setview/SetDisplayItemProgressList$onPosChange;
    }
.end annotation


# instance fields
.field private mBmpProgress:Landroid/graphics/Bitmap;

.field private mBtnTitle:Landroid/widget/Button;

.field private mCallBack:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mId:I

.field private mMax:I

.field private mVal:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private m_SeekBar:Landroid/widget/SeekBar;

.field private nVal:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->nVal:I

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/ts/set/setview/SetDisplayItemProgressList;->Create(Landroid/content/Context;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strVal"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->nVal:I

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/ts/set/setview/SetDisplayItemProgressList;->Create(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private Init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 100
    .local v1, "li":Landroid/view/LayoutInflater;
    sget v2, Lcom/ts/MainUI/R$layout;->set_diaplay_item_progress_list:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->mView:Landroid/view/View;

    .line 101
    iget-object v2, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->mView:Landroid/view/View;

    sget v3, Lcom/ts/MainUI/R$id;->btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->mBtnTitle:Landroid/widget/Button;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$drawable;->setup_general_seekbar_progress:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 106
    .local v0, "bmpDa":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->mBmpProgress:Landroid/graphics/Bitmap;

    .line 110
    iget-object v2, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->mView:Landroid/view/View;

    sget v3, Lcom/ts/MainUI/R$id;->val:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->mVal:Landroid/widget/TextView;

    .line 112
    iget-object v2, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->mView:Landroid/view/View;

    sget v3, Lcom/ts/MainUI/R$id;->img_progress:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->m_SeekBar:Landroid/widget/SeekBar;

    .line 113
    iget v2, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->nVal:I

    invoke-virtual {p0, v2}, Lcom/ts/set/setview/SetDisplayItemProgressList;->SetCurVal(I)V

    .line 115
    return-void
.end method


# virtual methods
.method public Create(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/ts/set/setview/SetDisplayItemProgressList;->Init(Landroid/content/Context;)V

    .line 70
    if-eqz p2, :cond_0

    .line 72
    iget-object v0, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->mBtnTitle:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(I)V

    .line 74
    :cond_0
    return-void
.end method

.method public Create(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strVal"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/ts/set/setview/SetDisplayItemProgressList;->Init(Landroid/content/Context;)V

    .line 64
    iget-object v0, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->mBtnTitle:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method

.method public GetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->mView:Landroid/view/View;

    return-object v0
.end method

.method public SetCurVal(I)V
    .locals 1
    .param p1, "nPos"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->m_SeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 86
    iget-object v0, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->mVal:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 88
    iput p1, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->nVal:I

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ts/set/setview/SetDisplayItemProgressList;->SetValText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public SetIdCallBack(ILandroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "callback"    # Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .prologue
    .line 78
    iput p1, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->mId:I

    .line 79
    iget-object v0, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->m_SeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 80
    iput-object p2, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->mCallBack:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 81
    iget-object v0, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->m_SeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->mCallBack:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 82
    return-void
.end method

.method public SetMinMax(II)V
    .locals 2
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 120
    iput p2, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->mMax:I

    .line 121
    iget-object v0, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->m_SeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 122
    return-void
.end method

.method public SetValText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->mVal:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 137
    return-void
.end method

.method public SetValText(Ljava/lang/String;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/ts/set/setview/SetDisplayItemProgressList;->mVal:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    return-void
.end method
