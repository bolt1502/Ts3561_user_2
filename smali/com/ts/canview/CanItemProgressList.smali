.class public Lcom/ts/canview/CanItemProgressList;
.super Ljava/lang/Object;
.source "CanItemProgressList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/canview/CanItemProgressList$onPosChange;
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

.field private mCallBack:Lcom/ts/canview/CanItemProgressList$onPosChange;

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
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x13

    iput v0, p0, Lcom/ts/canview/CanItemProgressList;->mBkX:I

    .line 41
    const/16 v0, 0xf

    iput v0, p0, Lcom/ts/canview/CanItemProgressList;->mBkY:I

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/ts/canview/CanItemProgressList;->Create(Landroid/content/Context;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strVal"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x13

    iput v0, p0, Lcom/ts/canview/CanItemProgressList;->mBkX:I

    .line 41
    const/16 v0, 0xf

    iput v0, p0, Lcom/ts/canview/CanItemProgressList;->mBkY:I

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/ts/canview/CanItemProgressList;->Create(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private Init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 90
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 91
    .local v1, "li":Landroid/view/LayoutInflater;
    sget v2, Lcom/ts/MainUI/R$layout;->can_item_progress_list:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/canview/CanItemProgressList;->mView:Landroid/view/View;

    .line 92
    iget-object v2, p0, Lcom/ts/canview/CanItemProgressList;->mView:Landroid/view/View;

    sget v3, Lcom/ts/MainUI/R$id;->btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ts/canview/CanItemProgressList;->mBtnTitle:Landroid/widget/Button;

    .line 94
    iget-object v2, p0, Lcom/ts/canview/CanItemProgressList;->mView:Landroid/view/View;

    sget v3, Lcom/ts/MainUI/R$id;->btn_add:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ts/other/ParamButton;

    iput-object v2, p0, Lcom/ts/canview/CanItemProgressList;->mBtnAdd:Lcom/ts/other/ParamButton;

    .line 95
    iget-object v2, p0, Lcom/ts/canview/CanItemProgressList;->mBtnAdd:Lcom/ts/other/ParamButton;

    sget v3, Lcom/ts/MainUI/R$drawable;->can_seekbar_inc_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_seekbar_inc_dn:I

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 96
    iget-object v2, p0, Lcom/ts/canview/CanItemProgressList;->mBtnAdd:Lcom/ts/other/ParamButton;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 97
    iget-object v2, p0, Lcom/ts/canview/CanItemProgressList;->mBtnAdd:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v2, p0, Lcom/ts/canview/CanItemProgressList;->mView:Landroid/view/View;

    sget v3, Lcom/ts/MainUI/R$id;->btn_sub:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ts/other/ParamButton;

    iput-object v2, p0, Lcom/ts/canview/CanItemProgressList;->mBtnSub:Lcom/ts/other/ParamButton;

    .line 101
    iget-object v2, p0, Lcom/ts/canview/CanItemProgressList;->mBtnSub:Lcom/ts/other/ParamButton;

    sget v3, Lcom/ts/MainUI/R$drawable;->can_seekbar_dec_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_seekbar_dec_dn:I

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 102
    iget-object v2, p0, Lcom/ts/canview/CanItemProgressList;->mBtnSub:Lcom/ts/other/ParamButton;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 103
    iget-object v2, p0, Lcom/ts/canview/CanItemProgressList;->mBtnSub:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$drawable;->can_seekbar_progress:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 107
    .local v0, "bmpDa":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/canview/CanItemProgressList;->mBmpProgress:Landroid/graphics/Bitmap;

    .line 109
    iget-object v2, p0, Lcom/ts/canview/CanItemProgressList;->mBmpProgress:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/ts/canview/CanItemProgressList;->mBmpW:I

    .line 110
    iget-object v2, p0, Lcom/ts/canview/CanItemProgressList;->mBmpProgress:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/ts/canview/CanItemProgressList;->mBmpH:I

    .line 112
    iget-object v2, p0, Lcom/ts/canview/CanItemProgressList;->mView:Landroid/view/View;

    sget v3, Lcom/ts/MainUI/R$id;->val:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ts/canview/CanItemProgressList;->mVal:Landroid/widget/TextView;

    .line 114
    iget-object v2, p0, Lcom/ts/canview/CanItemProgressList;->mView:Landroid/view/View;

    sget v3, Lcom/ts/MainUI/R$id;->img_progress:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ts/other/CustomImgView;

    iput-object v2, p0, Lcom/ts/canview/CanItemProgressList;->mImgProgress:Lcom/ts/other/CustomImgView;

    .line 115
    iget-object v2, p0, Lcom/ts/canview/CanItemProgressList;->mImgProgress:Lcom/ts/other/CustomImgView;

    invoke-virtual {v2, p0}, Lcom/ts/other/CustomImgView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    iget-object v2, p0, Lcom/ts/canview/CanItemProgressList;->mImgProgress:Lcom/ts/other/CustomImgView;

    new-instance v3, Lcom/ts/canview/CanItemProgressList$1;

    invoke-direct {v3, p0}, Lcom/ts/canview/CanItemProgressList$1;-><init>(Lcom/ts/canview/CanItemProgressList;)V

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomImgView;->setUserPaint(Lcom/ts/other/CustomImgView$onPaint;)V

    .line 147
    iput v5, p0, Lcom/ts/canview/CanItemProgressList;->mStep:I

    .line 148
    const/4 v2, 0x0

    iput v2, p0, Lcom/ts/canview/CanItemProgressList;->mMin:I

    .line 149
    const/16 v2, 0x64

    iput v2, p0, Lcom/ts/canview/CanItemProgressList;->mMax:I

    .line 151
    return-void
.end method

.method static synthetic access$0(Lcom/ts/canview/CanItemProgressList;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/ts/canview/CanItemProgressList;->mBkX:I

    return v0
.end method

.method static synthetic access$1(Lcom/ts/canview/CanItemProgressList;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/ts/canview/CanItemProgressList;->mBkY:I

    return v0
.end method

.method static synthetic access$2(Lcom/ts/canview/CanItemProgressList;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/ts/canview/CanItemProgressList;->mCur:I

    return v0
.end method

.method static synthetic access$3(Lcom/ts/canview/CanItemProgressList;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/ts/canview/CanItemProgressList;->mMin:I

    return v0
.end method

.method static synthetic access$4(Lcom/ts/canview/CanItemProgressList;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/ts/canview/CanItemProgressList;->mMax:I

    return v0
.end method

.method static synthetic access$5(Lcom/ts/canview/CanItemProgressList;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/ts/canview/CanItemProgressList;->mBmpH:I

    return v0
.end method

.method static synthetic access$6(Lcom/ts/canview/CanItemProgressList;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ts/canview/CanItemProgressList;->mBmpProgress:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private dealTouch(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 242
    iget v0, p0, Lcom/ts/canview/CanItemProgressList;->mCur:I

    .line 243
    .local v0, "pos":I
    iget v1, p0, Lcom/ts/canview/CanItemProgressList;->mBkX:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/ts/canview/CanItemProgressList;->mBmpW:I

    iget v3, p0, Lcom/ts/canview/CanItemProgressList;->mMax:I

    iget v4, p0, Lcom/ts/canview/CanItemProgressList;->mMin:I

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/ts/canview/CanItemProgressList;->mMax:I

    iget v3, p0, Lcom/ts/canview/CanItemProgressList;->mMin:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/ts/canview/CanItemProgressList;->mBmpW:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/ts/canview/CanItemProgressList;->mStep:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/ts/canview/CanItemProgressList;->mStep:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/ts/canview/CanItemProgressList;->mMin:I

    add-int v0, v1, v2

    .line 244
    invoke-virtual {p0, v0}, Lcom/ts/canview/CanItemProgressList;->Adjust(I)I

    .line 245
    return-void
.end method


# virtual methods
.method public Adjust(I)I
    .locals 4
    .param p1, "val"    # I

    .prologue
    .line 216
    move v0, p1

    .line 217
    .local v0, "pos":I
    iget v1, p0, Lcom/ts/canview/CanItemProgressList;->mMin:I

    if-ge p1, v1, :cond_0

    .line 219
    iget v0, p0, Lcom/ts/canview/CanItemProgressList;->mMin:I

    .line 222
    :cond_0
    iget v1, p0, Lcom/ts/canview/CanItemProgressList;->mMax:I

    if-le p1, v1, :cond_1

    .line 224
    iget v0, p0, Lcom/ts/canview/CanItemProgressList;->mMax:I

    .line 227
    :cond_1
    iget v1, p0, Lcom/ts/canview/CanItemProgressList;->mCur:I

    if-eq v0, v1, :cond_3

    .line 229
    iget-object v1, p0, Lcom/ts/canview/CanItemProgressList;->mCallBack:Lcom/ts/canview/CanItemProgressList$onPosChange;

    if-eqz v1, :cond_2

    .line 231
    iget-object v1, p0, Lcom/ts/canview/CanItemProgressList;->mCallBack:Lcom/ts/canview/CanItemProgressList$onPosChange;

    iget v2, p0, Lcom/ts/canview/CanItemProgressList;->mId:I

    invoke-interface {v1, v2, v0}, Lcom/ts/canview/CanItemProgressList$onPosChange;->onChanged(II)V

    .line 233
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

    .line 236
    :cond_3
    return v0
.end method

.method public Create(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/ts/canview/CanItemProgressList;->Init(Landroid/content/Context;)V

    .line 76
    if-eqz p2, :cond_0

    .line 78
    iget-object v0, p0, Lcom/ts/canview/CanItemProgressList;->mBtnTitle:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(I)V

    .line 80
    :cond_0
    return-void
.end method

.method public Create(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strVal"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/ts/canview/CanItemProgressList;->Init(Landroid/content/Context;)V

    .line 70
    iget-object v0, p0, Lcom/ts/canview/CanItemProgressList;->mBtnTitle:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public GetBtnAdd()Lcom/ts/other/ParamButton;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/ts/canview/CanItemProgressList;->mBtnAdd:Lcom/ts/other/ParamButton;

    return-object v0
.end method

.method public GetBtnSub()Lcom/ts/other/ParamButton;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/ts/canview/CanItemProgressList;->mBtnSub:Lcom/ts/other/ParamButton;

    return-object v0
.end method

.method public GetProgress()Lcom/ts/other/CustomImgView;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/ts/canview/CanItemProgressList;->mImgProgress:Lcom/ts/other/CustomImgView;

    return-object v0
.end method

.method public GetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/ts/canview/CanItemProgressList;->mView:Landroid/view/View;

    return-object v0
.end method

.method public SetCurVal(I)V
    .locals 3
    .param p1, "val"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/ts/canview/CanItemProgressList;->mCur:I

    .line 167
    iget-object v0, p0, Lcom/ts/canview/CanItemProgressList;->mImgProgress:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0}, Lcom/ts/other/CustomImgView;->invalidate()V

    .line 168
    iget-boolean v0, p0, Lcom/ts/canview/CanItemProgressList;->mbUserVal:Z

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/ts/canview/CanItemProgressList;->mVal:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :cond_0
    return-void
.end method

.method public SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "callback"    # Lcom/ts/canview/CanItemProgressList$onPosChange;

    .prologue
    .line 84
    iput p1, p0, Lcom/ts/canview/CanItemProgressList;->mId:I

    .line 85
    iput-object p2, p0, Lcom/ts/canview/CanItemProgressList;->mCallBack:Lcom/ts/canview/CanItemProgressList$onPosChange;

    .line 86
    return-void
.end method

.method public SetMinMax(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/ts/canview/CanItemProgressList;->mMin:I

    .line 161
    iput p2, p0, Lcom/ts/canview/CanItemProgressList;->mMax:I

    .line 162
    return-void
.end method

.method public SetStep(I)V
    .locals 0
    .param p1, "step"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/ts/canview/CanItemProgressList;->mStep:I

    .line 156
    return-void
.end method

.method public SetUserValText()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/canview/CanItemProgressList;->mbUserVal:Z

    .line 177
    return-void
.end method

.method public SetValText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/ts/canview/CanItemProgressList;->mVal:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 192
    return-void
.end method

.method public SetValText(Ljava/lang/String;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/ts/canview/CanItemProgressList;->mVal:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    return-void
.end method

.method public ShowGone(I)V
    .locals 1
    .param p1, "show"    # I

    .prologue
    .line 262
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    .line 263
    return-void

    .line 262
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ShowGone(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 267
    if-eqz p1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/ts/canview/CanItemProgressList;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/ts/canview/CanItemProgressList;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 199
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 212
    :goto_0
    return-void

    .line 202
    :pswitch_0
    iget v1, p0, Lcom/ts/canview/CanItemProgressList;->mCur:I

    iget v2, p0, Lcom/ts/canview/CanItemProgressList;->mStep:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/ts/canview/CanItemProgressList;->mStep:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/ts/canview/CanItemProgressList;->mStep:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/ts/canview/CanItemProgressList;->Adjust(I)I

    goto :goto_0

    .line 206
    :pswitch_1
    iget v1, p0, Lcom/ts/canview/CanItemProgressList;->mCur:I

    iget v2, p0, Lcom/ts/canview/CanItemProgressList;->mStep:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/ts/canview/CanItemProgressList;->mStep:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/ts/canview/CanItemProgressList;->mStep:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/ts/canview/CanItemProgressList;->Adjust(I)I

    goto :goto_0

    .line 199
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
    .line 251
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 257
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 254
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/ts/canview/CanItemProgressList;->dealTouch(II)V

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setValueAlign()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 293
    iget-object v1, p0, Lcom/ts/canview/CanItemProgressList;->mVal:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 294
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x6e

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 295
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 296
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 297
    iget-object v1, p0, Lcom/ts/canview/CanItemProgressList;->mVal:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    iget-object v1, p0, Lcom/ts/canview/CanItemProgressList;->mVal:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 299
    iget-object v1, p0, Lcom/ts/canview/CanItemProgressList;->mVal:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 300
    iget-object v1, p0, Lcom/ts/canview/CanItemProgressList;->mVal:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 301
    return-void
.end method
