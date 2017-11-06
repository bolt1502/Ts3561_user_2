.class Lcom/ts/main/radio/RdsDlg;
.super Lcom/ts/other/CustomDialog;
.source "RadioMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/main/radio/RdsDlg$onInputOK;
    }
.end annotation


# instance fields
.field private final PTY_TOTAL:I

.field private mBtnCancle:Landroid/widget/Button;

.field private mBtnList:[Lcom/ts/other/ParamButton;

.field private mBtnOK:Landroid/widget/Button;

.field private mId:I

.field private mOK:Lcom/ts/main/radio/RdsDlg$onInputOK;

.field private mPtyClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x1e

    .line 1152
    invoke-direct {p0}, Lcom/ts/other/CustomDialog;-><init>()V

    .line 1142
    iput v0, p0, Lcom/ts/main/radio/RdsDlg;->PTY_TOTAL:I

    .line 1143
    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/main/radio/RdsDlg;->mBtnList:[Lcom/ts/other/ParamButton;

    .line 1206
    new-instance v0, Lcom/ts/main/radio/RdsDlg$1;

    invoke-direct {v0, p0}, Lcom/ts/main/radio/RdsDlg$1;-><init>(Lcom/ts/main/radio/RdsDlg;)V

    iput-object v0, p0, Lcom/ts/main/radio/RdsDlg;->mPtyClick:Landroid/view/View$OnClickListener;

    .line 1153
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/main/radio/RdsDlg;->mId:I

    .line 1154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ts/main/radio/RdsDlg$onInputOK;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ok"    # Lcom/ts/main/radio/RdsDlg$onInputOK;

    .prologue
    const/16 v0, 0x1e

    .line 1156
    invoke-direct {p0}, Lcom/ts/other/CustomDialog;-><init>()V

    .line 1142
    iput v0, p0, Lcom/ts/main/radio/RdsDlg;->PTY_TOTAL:I

    .line 1143
    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/main/radio/RdsDlg;->mBtnList:[Lcom/ts/other/ParamButton;

    .line 1206
    new-instance v0, Lcom/ts/main/radio/RdsDlg$1;

    invoke-direct {v0, p0}, Lcom/ts/main/radio/RdsDlg$1;-><init>(Lcom/ts/main/radio/RdsDlg;)V

    iput-object v0, p0, Lcom/ts/main/radio/RdsDlg;->mPtyClick:Landroid/view/View$OnClickListener;

    .line 1158
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/main/radio/RdsDlg;->mId:I

    .line 1159
    invoke-virtual {p0, p1, p2}, Lcom/ts/main/radio/RdsDlg;->createDlg(Landroid/content/Context;Lcom/ts/main/radio/RdsDlg$onInputOK;)V

    .line 1160
    return-void
.end method

.method static synthetic access$0(Lcom/ts/main/radio/RdsDlg;)I
    .locals 1

    .prologue
    .line 1140
    iget v0, p0, Lcom/ts/main/radio/RdsDlg;->mId:I

    return v0
.end method

.method static synthetic access$1(Lcom/ts/main/radio/RdsDlg;)[Lcom/ts/other/ParamButton;
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/ts/main/radio/RdsDlg;->mBtnList:[Lcom/ts/other/ParamButton;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ts/main/radio/RdsDlg;I)V
    .locals 0

    .prologue
    .line 1140
    iput p1, p0, Lcom/ts/main/radio/RdsDlg;->mId:I

    return-void
.end method


# virtual methods
.method public createDlg(Landroid/content/Context;Lcom/ts/main/radio/RdsDlg$onInputOK;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ok"    # Lcom/ts/main/radio/RdsDlg$onInputOK;

    .prologue
    const/high16 v8, -0x10000

    const/4 v7, 0x0

    .line 1164
    iput v7, p0, Lcom/ts/main/radio/RdsDlg;->mId:I

    .line 1165
    sget v4, Lcom/ts/MainUI/R$layout;->radio_rds_inputbox:I

    invoke-super {p0, v4, p1}, Lcom/ts/other/CustomDialog;->create(ILandroid/content/Context;)Landroid/app/AlertDialog;

    .line 1166
    iget-object v4, p0, Lcom/ts/main/radio/RdsDlg;->mWindow:Landroid/view/Window;

    sget v5, Lcom/ts/MainUI/R$id;->rad_rds_input_ok:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/ts/main/radio/RdsDlg;->mBtnOK:Landroid/widget/Button;

    .line 1167
    iget-object v4, p0, Lcom/ts/main/radio/RdsDlg;->mWindow:Landroid/view/Window;

    sget v5, Lcom/ts/MainUI/R$id;->rad_rds_input_cancle:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/ts/main/radio/RdsDlg;->mBtnCancle:Landroid/widget/Button;

    .line 1168
    iget-object v4, p0, Lcom/ts/main/radio/RdsDlg;->mBtnOK:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1169
    iget-object v4, p0, Lcom/ts/main/radio/RdsDlg;->mBtnCancle:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1170
    iput-object p2, p0, Lcom/ts/main/radio/RdsDlg;->mOK:Lcom/ts/main/radio/RdsDlg$onInputOK;

    .line 1172
    iget-object v4, p0, Lcom/ts/main/radio/RdsDlg;->mWindow:Landroid/view/Window;

    sget v5, Lcom/ts/MainUI/R$id;->rad_rds_list:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1174
    .local v1, "ll":Landroid/widget/LinearLayout;
    const/16 v4, 0x40

    new-array v3, v4, [C

    .line 1177
    .local v3, "szPty":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x1e

    if-lt v0, v4, :cond_0

    .line 1204
    return-void

    .line 1179
    :cond_0
    iget-object v4, p0, Lcom/ts/main/radio/RdsDlg;->mBtnList:[Lcom/ts/other/ParamButton;

    new-instance v5, Lcom/ts/other/ParamButton;

    invoke-direct {v5, p1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v0

    .line 1180
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/16 v5, 0x37

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1181
    .local v2, "rl":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/ts/main/radio/RdsDlg;->mBtnList:[Lcom/ts/other/ParamButton;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Lcom/ts/other/ParamButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1182
    iget-object v4, p0, Lcom/ts/main/radio/RdsDlg;->mBtnList:[Lcom/ts/other/ParamButton;

    aget-object v4, v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 1183
    iget-object v4, p0, Lcom/ts/main/radio/RdsDlg;->mBtnList:[Lcom/ts/other/ParamButton;

    aget-object v4, v4, v0

    invoke-virtual {v4, v0}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 1184
    iget-object v4, p0, Lcom/ts/main/radio/RdsDlg;->mBtnList:[Lcom/ts/other/ParamButton;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1185
    iget-object v4, p0, Lcom/ts/main/radio/RdsDlg;->mBtnList:[Lcom/ts/other/ParamButton;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7, v7, v7, v7}, Lcom/ts/other/ParamButton;->setPadding(IIII)V

    .line 1186
    iget-object v4, p0, Lcom/ts/main/radio/RdsDlg;->mBtnList:[Lcom/ts/other/ParamButton;

    aget-object v4, v4, v0

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5, v8, v8, v7}, Lcom/ts/other/ParamButton;->setStateColor(IIII)V

    .line 1187
    iget-object v4, p0, Lcom/ts/main/radio/RdsDlg;->mBtnList:[Lcom/ts/other/ParamButton;

    aget-object v4, v4, v0

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {v4, v7, v5}, Lcom/ts/other/ParamButton;->setTextSize(IF)V

    .line 1188
    iget-object v4, p0, Lcom/ts/main/radio/RdsDlg;->mBtnList:[Lcom/ts/other/ParamButton;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/ts/main/radio/RdsDlg;->mPtyClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1190
    if-lez v0, :cond_1

    .line 1192
    invoke-static {v3, v0}, Lcom/yyw/ts70xhw/Radio;->GetPtyStr([CI)I

    .line 1193
    iget-object v4, p0, Lcom/ts/main/radio/RdsDlg;->mBtnList:[Lcom/ts/other/ParamButton;

    aget-object v4, v4, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 1201
    :goto_1
    iget-object v4, p0, Lcom/ts/main/radio/RdsDlg;->mBtnList:[Lcom/ts/other/ParamButton;

    aget-object v4, v4, v0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1197
    :cond_1
    iget-object v4, p0, Lcom/ts/main/radio/RdsDlg;->mBtnList:[Lcom/ts/other/ParamButton;

    aget-object v4, v4, v7

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 1198
    iget-object v4, p0, Lcom/ts/main/radio/RdsDlg;->mBtnList:[Lcom/ts/other/ParamButton;

    aget-object v4, v4, v7

    const-string v5, "NO PTY"

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1226
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1227
    .local v0, "id":I
    sget v1, Lcom/ts/MainUI/R$id;->rad_rds_input_ok:I

    if-ne v0, v1, :cond_1

    .line 1229
    invoke-virtual {p0}, Lcom/ts/main/radio/RdsDlg;->dismiss()V

    .line 1230
    iget v1, p0, Lcom/ts/main/radio/RdsDlg;->mId:I

    invoke-static {v1}, Lcom/yyw/ts70xhw/Radio;->RdsPty(I)I

    .line 1239
    :cond_0
    :goto_0
    return-void

    .line 1232
    :cond_1
    sget v1, Lcom/ts/MainUI/R$id;->rad_rds_input_cancle:I

    if-ne v0, v1, :cond_0

    .line 1234
    invoke-virtual {p0}, Lcom/ts/main/radio/RdsDlg;->dismiss()V

    goto :goto_0
.end method
