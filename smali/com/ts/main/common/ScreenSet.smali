.class public Lcom/ts/main/common/ScreenSet;
.super Ljava/lang/Object;
.source "ScreenSet.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenSet"

.field static m_ScreenSet:Lcom/ts/main/common/ScreenSet;


# instance fields
.field private BtnBrightness:Landroid/widget/Button;

.field private BtnCance:Landroid/widget/Button;

.field private BtnContast:Landroid/widget/Button;

.field private BtnDefault:Landroid/widget/Button;

.field private BtnHue:Landroid/widget/Button;

.field private BtnInfoAdd:Landroid/widget/Button;

.field private BtnInfoDec:Landroid/widget/Button;

.field private BtnSaturation:Landroid/widget/Button;

.field DialogView:Landroid/view/View;

.field MyContext:Landroid/content/Context;

.field private TexShowInfo:Landroid/widget/TextView;

.field public bShow:Z

.field mScreenSeekBar:Landroid/widget/SeekBar;

.field mTsDisplay:Lcom/ts/MainUI/TsDisplay;

.field m_Context:Landroid/content/Context;

.field public nAidlHide:I

.field public nAidlShow:I

.field private nShowSrc:I

.field private nShowType:I

.field private wManager:Landroid/view/WindowManager;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/main/common/ScreenSet;->m_ScreenSet:Lcom/ts/main/common/ScreenSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lcom/ts/main/common/ScreenSet;->nShowType:I

    .line 25
    iput v1, p0, Lcom/ts/main/common/ScreenSet;->nShowSrc:I

    .line 26
    iput v1, p0, Lcom/ts/main/common/ScreenSet;->nAidlShow:I

    .line 27
    iput v1, p0, Lcom/ts/main/common/ScreenSet;->nAidlHide:I

    .line 42
    invoke-static {}, Lcom/ts/MainUI/TsDisplay;->GetInstance()Lcom/ts/MainUI/TsDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/common/ScreenSet;->mTsDisplay:Lcom/ts/MainUI/TsDisplay;

    .line 44
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/ts/main/common/ScreenSet;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 300
    iput-boolean v1, p0, Lcom/ts/main/common/ScreenSet;->bShow:Z

    .line 19
    return-void
.end method

.method private ClearBtnState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet;->BtnBrightness:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 48
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet;->BtnContast:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 49
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet;->BtnHue:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 50
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet;->BtnSaturation:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 51
    return-void
.end method

.method public static GetInstance()Lcom/ts/main/common/ScreenSet;
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/ts/main/common/ScreenSet;->m_ScreenSet:Lcom/ts/main/common/ScreenSet;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Lcom/ts/main/common/ScreenSet;

    invoke-direct {v0}, Lcom/ts/main/common/ScreenSet;-><init>()V

    sput-object v0, Lcom/ts/main/common/ScreenSet;->m_ScreenSet:Lcom/ts/main/common/ScreenSet;

    .line 297
    :cond_0
    sget-object v0, Lcom/ts/main/common/ScreenSet;->m_ScreenSet:Lcom/ts/main/common/ScreenSet;

    return-object v0
.end method

.method static synthetic access$0(Lcom/ts/main/common/ScreenSet;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/ts/main/common/ScreenSet;->ClearBtnState()V

    return-void
.end method

.method static synthetic access$1(Lcom/ts/main/common/ScreenSet;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/ts/main/common/ScreenSet;->nShowSrc:I

    return v0
.end method

.method static synthetic access$2(Lcom/ts/main/common/ScreenSet;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/ts/main/common/ScreenSet;->nShowType:I

    return v0
.end method

.method static synthetic access$3(Lcom/ts/main/common/ScreenSet;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet;->TexShowInfo:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public Hide()V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet;->DialogView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 248
    const-string v0, "ScreenSet"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hide "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ts/main/common/ScreenSet;->nAidlHide:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet;->wManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/ts/main/common/ScreenSet;->DialogView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/main/common/ScreenSet;->DialogView:Landroid/view/View;

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/main/common/ScreenSet;->bShow:Z

    .line 254
    :cond_0
    return-void
.end method

.method public Inint(Landroid/content/Context;)V
    .locals 0
    .param p1, "Ctx"    # Landroid/content/Context;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/ts/main/common/ScreenSet;->MyContext:Landroid/content/Context;

    .line 242
    return-void
.end method

.method InintBtn(Landroid/view/View;)V
    .locals 2
    .param p1, "DialogView"    # Landroid/view/View;

    .prologue
    .line 72
    .line 73
    sget v0, Lcom/ts/MainUI/R$id;->screenset_showinfo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    iput-object v0, p0, Lcom/ts/main/common/ScreenSet;->TexShowInfo:Landroid/widget/TextView;

    .line 77
    sget v0, Lcom/ts/MainUI/R$id;->screensettings_brightnessid:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 76
    iput-object v0, p0, Lcom/ts/main/common/ScreenSet;->BtnBrightness:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet;->BtnBrightness:Landroid/widget/Button;

    new-instance v1, Lcom/ts/main/common/ScreenSet$1;

    invoke-direct {v1, p0}, Lcom/ts/main/common/ScreenSet$1;-><init>(Lcom/ts/main/common/ScreenSet;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    sget v0, Lcom/ts/MainUI/R$id;->screensettings_contrastid:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 93
    iput-object v0, p0, Lcom/ts/main/common/ScreenSet;->BtnContast:Landroid/widget/Button;

    .line 95
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet;->BtnContast:Landroid/widget/Button;

    new-instance v1, Lcom/ts/main/common/ScreenSet$2;

    invoke-direct {v1, p0}, Lcom/ts/main/common/ScreenSet$2;-><init>(Lcom/ts/main/common/ScreenSet;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    sget v0, Lcom/ts/MainUI/R$id;->screensettings_hueid:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/main/common/ScreenSet;->BtnHue:Landroid/widget/Button;

    .line 112
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet;->BtnHue:Landroid/widget/Button;

    new-instance v1, Lcom/ts/main/common/ScreenSet$3;

    invoke-direct {v1, p0}, Lcom/ts/main/common/ScreenSet$3;-><init>(Lcom/ts/main/common/ScreenSet;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    sget v0, Lcom/ts/MainUI/R$id;->screensettings_saturationid:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 128
    iput-object v0, p0, Lcom/ts/main/common/ScreenSet;->BtnSaturation:Landroid/widget/Button;

    .line 130
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet;->BtnSaturation:Landroid/widget/Button;

    new-instance v1, Lcom/ts/main/common/ScreenSet$4;

    invoke-direct {v1, p0}, Lcom/ts/main/common/ScreenSet$4;-><init>(Lcom/ts/main/common/ScreenSet;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    sget v0, Lcom/ts/MainUI/R$id;->screensettings_defaultid:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 145
    iput-object v0, p0, Lcom/ts/main/common/ScreenSet;->BtnDefault:Landroid/widget/Button;

    .line 147
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet;->BtnDefault:Landroid/widget/Button;

    new-instance v1, Lcom/ts/main/common/ScreenSet$5;

    invoke-direct {v1, p0}, Lcom/ts/main/common/ScreenSet$5;-><init>(Lcom/ts/main/common/ScreenSet;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    sget v0, Lcom/ts/MainUI/R$id;->screensettings_cancelid:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 164
    iput-object v0, p0, Lcom/ts/main/common/ScreenSet;->BtnCance:Landroid/widget/Button;

    .line 166
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet;->BtnCance:Landroid/widget/Button;

    new-instance v1, Lcom/ts/main/common/ScreenSet$6;

    invoke-direct {v1, p0}, Lcom/ts/main/common/ScreenSet$6;-><init>(Lcom/ts/main/common/ScreenSet;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    sget v0, Lcom/ts/MainUI/R$id;->screensettings_addingid:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 177
    iput-object v0, p0, Lcom/ts/main/common/ScreenSet;->BtnInfoAdd:Landroid/widget/Button;

    .line 179
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet;->BtnInfoAdd:Landroid/widget/Button;

    new-instance v1, Lcom/ts/main/common/ScreenSet$7;

    invoke-direct {v1, p0}, Lcom/ts/main/common/ScreenSet$7;-><init>(Lcom/ts/main/common/ScreenSet;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    sget v0, Lcom/ts/MainUI/R$id;->screensettings_reduceid:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 193
    iput-object v0, p0, Lcom/ts/main/common/ScreenSet;->BtnInfoDec:Landroid/widget/Button;

    .line 195
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet;->BtnInfoDec:Landroid/widget/Button;

    new-instance v1, Lcom/ts/main/common/ScreenSet$8;

    invoke-direct {v1, p0}, Lcom/ts/main/common/ScreenSet$8;-><init>(Lcom/ts/main/common/ScreenSet;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    sget v0, Lcom/ts/MainUI/R$id;->screenset_seekBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 208
    iput-object v0, p0, Lcom/ts/main/common/ScreenSet;->mScreenSeekBar:Landroid/widget/SeekBar;

    .line 210
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet;->mScreenSeekBar:Landroid/widget/SeekBar;

    .line 211
    new-instance v1, Lcom/ts/main/common/ScreenSet$9;

    invoke-direct {v1, p0}, Lcom/ts/main/common/ScreenSet$9;-><init>(Lcom/ts/main/common/ScreenSet;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 237
    return-void
.end method

.method SetBtnState(I)V
    .locals 2
    .param p1, "nMode"    # I

    .prologue
    const/4 v1, 0x1

    .line 54
    iput p1, p0, Lcom/ts/main/common/ScreenSet;->nShowType:I

    .line 55
    packed-switch p1, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet;->BtnBrightness:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 60
    :pswitch_1
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet;->BtnContast:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 63
    :pswitch_2
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet;->BtnHue:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 66
    :pswitch_3
    iget-object v0, p0, Lcom/ts/main/common/ScreenSet;->BtnSaturation:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public Show(I)V
    .locals 8
    .param p1, "nSrc"    # I

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0xc8

    .line 258
    iput p1, p0, Lcom/ts/main/common/ScreenSet;->nShowSrc:I

    .line 259
    iget-object v1, p0, Lcom/ts/main/common/ScreenSet;->DialogView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/ts/main/common/ScreenSet;->MyContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 263
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/ts/MainUI/R$layout;->screensetting:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/main/common/ScreenSet;->DialogView:Landroid/view/View;

    .line 265
    iget-object v1, p0, Lcom/ts/main/common/ScreenSet;->DialogView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/ts/main/common/ScreenSet;->InintBtn(Landroid/view/View;)V

    .line 266
    invoke-direct {p0}, Lcom/ts/main/common/ScreenSet;->ClearBtnState()V

    .line 267
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ts/main/common/ScreenSet;->SetBtnState(I)V

    .line 268
    iget-object v1, p0, Lcom/ts/main/common/ScreenSet;->mScreenSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/ts/main/common/ScreenSet;->mTsDisplay:Lcom/ts/MainUI/TsDisplay;

    iget v3, p0, Lcom/ts/main/common/ScreenSet;->nShowSrc:I

    iget v4, p0, Lcom/ts/main/common/ScreenSet;->nShowType:I

    invoke-virtual {v2, v3, v4}, Lcom/ts/MainUI/TsDisplay;->UIGetVal(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 269
    iget-object v1, p0, Lcom/ts/main/common/ScreenSet;->TexShowInfo:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ts/main/common/ScreenSet;->mTsDisplay:Lcom/ts/MainUI/TsDisplay;

    iget v4, p0, Lcom/ts/main/common/ScreenSet;->nShowSrc:I

    iget v5, p0, Lcom/ts/main/common/ScreenSet;->nShowType:I

    invoke-virtual {v3, v4, v5}, Lcom/ts/MainUI/TsDisplay;->UIGetVal(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v1, p0, Lcom/ts/main/common/ScreenSet;->MyContext:Landroid/content/Context;

    .line 271
    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 270
    iput-object v1, p0, Lcom/ts/main/common/ScreenSet;->wManager:Landroid/view/WindowManager;

    .line 272
    iget-object v1, p0, Lcom/ts/main/common/ScreenSet;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 273
    iget-object v1, p0, Lcom/ts/main/common/ScreenSet;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 276
    iget-object v1, p0, Lcom/ts/main/common/ScreenSet;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x53

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 278
    iget-object v1, p0, Lcom/ts/main/common/ScreenSet;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 279
    iget-object v1, p0, Lcom/ts/main/common/ScreenSet;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 281
    iget-object v1, p0, Lcom/ts/main/common/ScreenSet;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x320

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 282
    iget-object v1, p0, Lcom/ts/main/common/ScreenSet;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 283
    iget-object v1, p0, Lcom/ts/main/common/ScreenSet;->wManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/ts/main/common/ScreenSet;->DialogView:Landroid/view/View;

    iget-object v3, p0, Lcom/ts/main/common/ScreenSet;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    iput-boolean v7, p0, Lcom/ts/main/common/ScreenSet;->bShow:Z

    .line 289
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method

.method public Task(I)V
    .locals 4
    .param p1, "nState"    # I

    .prologue
    const/4 v3, 0x0

    .line 304
    iget v0, p0, Lcom/ts/main/common/ScreenSet;->nAidlShow:I

    if-eqz v0, :cond_0

    .line 306
    const-string v0, "ScreenSet"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nAidlShow "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ts/main/common/ScreenSet;->nAidlShow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget v0, p0, Lcom/ts/main/common/ScreenSet;->nAidlShow:I

    invoke-virtual {p0, v0}, Lcom/ts/main/common/ScreenSet;->Show(I)V

    .line 308
    iput v3, p0, Lcom/ts/main/common/ScreenSet;->nAidlShow:I

    .line 310
    :cond_0
    iget v0, p0, Lcom/ts/main/common/ScreenSet;->nAidlHide:I

    if-eqz v0, :cond_1

    .line 312
    const-string v0, "ScreenSet"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nAidlHide "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ts/main/common/ScreenSet;->nAidlHide:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p0}, Lcom/ts/main/common/ScreenSet;->Hide()V

    .line 314
    iput v3, p0, Lcom/ts/main/common/ScreenSet;->nAidlHide:I

    .line 316
    :cond_1
    return-void
.end method
