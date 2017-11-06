.class public Lcom/ts/set/setview/SetSoundProgressList;
.super Ljava/lang/Object;
.source "SetSoundProgressList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/set/setview/SetSoundProgressList$onPosChange;
    }
.end annotation


# static fields
.field private static final ITEM_ADD:I = 0x2

.field private static final ITEM_SUB:I = 0x1


# instance fields
.field private mBkX:I

.field private mBkY:I

.field private mBmpH:I

.field private mBmpProgress:Landroid/graphics/Bitmap;

.field private mBmpW:I

.field private mBtnAdd:Lcom/ts/other/ParamButton;

.field private mBtnSub:Lcom/ts/other/ParamButton;

.field private mBtnTitle:Landroid/widget/Button;

.field private mCallBack:Lcom/ts/set/setview/SetSoundProgressList$onPosChange;

.field private mCur:I

.field private mCurRead:I

.field private mId:I

.field private mImgProgress:Lcom/ts/other/CustomImgView;

.field private mMax:I

.field private mMin:I

.field private mStep:I

.field private mVal:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mbUserVal:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBkX:I

    .line 40
    iput v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBkY:I

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/ts/set/setview/SetSoundProgressList;->Create(Landroid/content/Context;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strVal"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBkX:I

    .line 40
    iput v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBkY:I

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/ts/set/setview/SetSoundProgressList;->Create(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method private Init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 90
    .local v1, "li":Landroid/view/LayoutInflater;
    sget v2, Lcom/ts/MainUI/R$layout;->set_sound_progress_list:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mView:Landroid/view/View;

    .line 91
    iget-object v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mView:Landroid/view/View;

    sget v3, Lcom/ts/MainUI/R$id;->btn_sound:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBtnTitle:Landroid/widget/Button;

    .line 93
    iget-object v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mView:Landroid/view/View;

    sget v3, Lcom/ts/MainUI/R$id;->btn_sound_add:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ts/other/ParamButton;

    iput-object v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBtnAdd:Lcom/ts/other/ParamButton;

    .line 94
    iget-object v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBtnAdd:Lcom/ts/other/ParamButton;

    sget v3, Lcom/ts/MainUI/R$drawable;->setup_bal_dn_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->setup_bal_dn_dn:I

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 95
    iget-object v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBtnAdd:Lcom/ts/other/ParamButton;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 96
    iget-object v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBtnAdd:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mView:Landroid/view/View;

    sget v3, Lcom/ts/MainUI/R$id;->btn_sound_sub:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ts/other/ParamButton;

    iput-object v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBtnSub:Lcom/ts/other/ParamButton;

    .line 100
    iget-object v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBtnSub:Lcom/ts/other/ParamButton;

    sget v3, Lcom/ts/MainUI/R$drawable;->setup_bal_up_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->setup_bal_up_dn:I

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 101
    iget-object v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBtnSub:Lcom/ts/other/ParamButton;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 102
    iget-object v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBtnSub:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$drawable;->setup_seekbar_progress:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 106
    .local v0, "bmpDa":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBmpProgress:Landroid/graphics/Bitmap;

    .line 108
    iget-object v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBmpProgress:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBmpW:I

    .line 109
    iget-object v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBmpProgress:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBmpH:I

    .line 111
    iget-object v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mView:Landroid/view/View;

    sget v3, Lcom/ts/MainUI/R$id;->val_sound:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mVal:Landroid/widget/TextView;

    .line 113
    iget-object v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mView:Landroid/view/View;

    sget v3, Lcom/ts/MainUI/R$id;->img_sound_progress:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ts/other/CustomImgView;

    iput-object v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mImgProgress:Lcom/ts/other/CustomImgView;

    .line 114
    iget-object v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mImgProgress:Lcom/ts/other/CustomImgView;

    invoke-virtual {v2, p0}, Lcom/ts/other/CustomImgView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    iget-object v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mImgProgress:Lcom/ts/other/CustomImgView;

    new-instance v3, Lcom/ts/set/setview/SetSoundProgressList$1;

    invoke-direct {v3, p0}, Lcom/ts/set/setview/SetSoundProgressList$1;-><init>(Lcom/ts/set/setview/SetSoundProgressList;)V

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomImgView;->setUserPaint(Lcom/ts/other/CustomImgView$onPaint;)V

    .line 146
    iput v5, p0, Lcom/ts/set/setview/SetSoundProgressList;->mStep:I

    .line 147
    const/4 v2, 0x0

    iput v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mMin:I

    .line 148
    const/16 v2, 0x64

    iput v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mMax:I

    .line 150
    return-void
.end method

.method static synthetic access$0(Lcom/ts/set/setview/SetSoundProgressList;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBkX:I

    return v0
.end method

.method static synthetic access$1(Lcom/ts/set/setview/SetSoundProgressList;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBkY:I

    return v0
.end method

.method static synthetic access$2(Lcom/ts/set/setview/SetSoundProgressList;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mCur:I

    return v0
.end method

.method static synthetic access$3(Lcom/ts/set/setview/SetSoundProgressList;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mMin:I

    return v0
.end method

.method static synthetic access$4(Lcom/ts/set/setview/SetSoundProgressList;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mMax:I

    return v0
.end method

.method static synthetic access$5(Lcom/ts/set/setview/SetSoundProgressList;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBmpH:I

    return v0
.end method

.method static synthetic access$6(Lcom/ts/set/setview/SetSoundProgressList;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBmpProgress:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private dealTouch(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 244
    iget v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mCur:I

    .line 245
    .local v0, "pos":I
    iget v1, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBkX:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBmpW:I

    iget v3, p0, Lcom/ts/set/setview/SetSoundProgressList;->mMax:I

    iget v4, p0, Lcom/ts/set/setview/SetSoundProgressList;->mMin:I

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mMax:I

    iget v3, p0, Lcom/ts/set/setview/SetSoundProgressList;->mMin:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBmpW:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mStep:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mStep:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mMin:I

    add-int v0, v1, v2

    .line 246
    invoke-virtual {p0, v0}, Lcom/ts/set/setview/SetSoundProgressList;->Adjust(I)I

    .line 247
    return-void
.end method


# virtual methods
.method public Adjust(I)I
    .locals 4
    .param p1, "val"    # I

    .prologue
    .line 217
    move v0, p1

    .line 218
    .local v0, "pos":I
    iget v1, p0, Lcom/ts/set/setview/SetSoundProgressList;->mMin:I

    if-ge p1, v1, :cond_0

    .line 220
    iget v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mMin:I

    .line 223
    :cond_0
    iget v1, p0, Lcom/ts/set/setview/SetSoundProgressList;->mMax:I

    if-le p1, v1, :cond_1

    .line 225
    iget v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mMax:I

    .line 228
    :cond_1
    iget v1, p0, Lcom/ts/set/setview/SetSoundProgressList;->mCur:I

    if-eq v0, v1, :cond_3

    .line 231
    iget-object v1, p0, Lcom/ts/set/setview/SetSoundProgressList;->mCallBack:Lcom/ts/set/setview/SetSoundProgressList$onPosChange;

    if-eqz v1, :cond_2

    .line 233
    iget-object v1, p0, Lcom/ts/set/setview/SetSoundProgressList;->mCallBack:Lcom/ts/set/setview/SetSoundProgressList$onPosChange;

    iget v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mId:I

    invoke-interface {v1, v2, v0}, Lcom/ts/set/setview/SetSoundProgressList$onPosChange;->onChanged(II)V

    .line 235
    :cond_2
    const-string v1, "Adjust"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pos = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_3
    return v0
.end method

.method public Create(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/ts/set/setview/SetSoundProgressList;->Init(Landroid/content/Context;)V

    .line 75
    if-eqz p2, :cond_0

    .line 77
    iget-object v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBtnTitle:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(I)V

    .line 79
    :cond_0
    return-void
.end method

.method public Create(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strVal"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/ts/set/setview/SetSoundProgressList;->Init(Landroid/content/Context;)V

    .line 69
    iget-object v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mBtnTitle:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method public GetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mView:Landroid/view/View;

    return-object v0
.end method

.method public SetCurVal(I)V
    .locals 3
    .param p1, "val"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/ts/set/setview/SetSoundProgressList;->mCur:I

    .line 166
    iget-object v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mImgProgress:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0}, Lcom/ts/other/CustomImgView;->invalidate()V

    .line 167
    iget-boolean v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mbUserVal:Z

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mVal:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_0
    return-void
.end method

.method public SetIdCallBack(ILcom/ts/set/setview/SetSoundProgressList$onPosChange;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "callback"    # Lcom/ts/set/setview/SetSoundProgressList$onPosChange;

    .prologue
    .line 83
    iput p1, p0, Lcom/ts/set/setview/SetSoundProgressList;->mId:I

    .line 84
    iput-object p2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mCallBack:Lcom/ts/set/setview/SetSoundProgressList$onPosChange;

    .line 85
    return-void
.end method

.method public SetMinMax(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/ts/set/setview/SetSoundProgressList;->mMin:I

    .line 160
    iput p2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mMax:I

    .line 161
    return-void
.end method

.method public SetStep(I)V
    .locals 0
    .param p1, "step"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/ts/set/setview/SetSoundProgressList;->mStep:I

    .line 155
    return-void
.end method

.method public SetUserValText()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mbUserVal:Z

    .line 176
    return-void
.end method

.method public SetValText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mVal:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 191
    return-void
.end method

.method public SetValText(Ljava/lang/String;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mVal:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method

.method public ShowGone(I)V
    .locals 1
    .param p1, "show"    # I

    .prologue
    .line 264
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ts/set/setview/SetSoundProgressList;->ShowGone(Z)V

    .line 265
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ShowGone(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 269
    if-eqz p1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/ts/set/setview/SetSoundProgressList;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 198
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 212
    :goto_0
    return-void

    .line 202
    :pswitch_0
    iget v1, p0, Lcom/ts/set/setview/SetSoundProgressList;->mCur:I

    iget v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mStep:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mStep:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mStep:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/ts/set/setview/SetSoundProgressList;->Adjust(I)I

    goto :goto_0

    .line 206
    :pswitch_1
    iget v1, p0, Lcom/ts/set/setview/SetSoundProgressList;->mCur:I

    iget v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mStep:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mStep:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/ts/set/setview/SetSoundProgressList;->mStep:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/ts/set/setview/SetSoundProgressList;->Adjust(I)I

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 253
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 259
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 256
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/ts/set/setview/SetSoundProgressList;->dealTouch(II)V

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
