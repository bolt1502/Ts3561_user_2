.class public Lcom/ts/bt/BtDialActivity;
.super Lcom/ts/bt/BtBaseActivity;
.source "BtDialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final BT_ACTIVITY_ID:I = 0x2

.field public static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "BTDialPadActivity"


# instance fields
.field NumClickListen:Landroid/view/View$OnClickListener;

.field private bt:Lcom/ts/bt/BtExe;

.field private btnCall:Landroid/widget/ImageButton;

.field private btnDel:Landroid/widget/ImageButton;

.field private btnHangup:Landroid/widget/ImageButton;

.field private btnMicMute:Landroid/widget/ImageButton;

.field private btnNum0:Landroid/widget/ImageButton;

.field private btnNum1:Landroid/widget/ImageButton;

.field private btnNum2:Landroid/widget/ImageButton;

.field private btnNum3:Landroid/widget/ImageButton;

.field private btnNum4:Landroid/widget/ImageButton;

.field private btnNum5:Landroid/widget/ImageButton;

.field private btnNum6:Landroid/widget/ImageButton;

.field private btnNum7:Landroid/widget/ImageButton;

.field private btnNum8:Landroid/widget/ImageButton;

.field private btnNum9:Landroid/widget/ImageButton;

.field private btnNumJ:Landroid/widget/ImageButton;

.field private btnNumX:Landroid/widget/ImageButton;

.field private btnSW:Landroid/widget/ImageButton;

.field private btnSound:Landroid/widget/ImageButton;

.field protected mOldSta:I

.field private mbLongTouch:Z

.field private tvInput:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/ts/bt/BtBaseActivity;-><init>()V

    .line 274
    new-instance v0, Lcom/ts/bt/BtDialActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/bt/BtDialActivity$1;-><init>(Lcom/ts/bt/BtDialActivity;)V

    iput-object v0, p0, Lcom/ts/bt/BtDialActivity;->NumClickListen:Landroid/view/View$OnClickListener;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/ts/bt/BtDialActivity;)Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/ts/bt/BtDialActivity;->mbLongTouch:Z

    return v0
.end method

.method static synthetic access$1(Lcom/ts/bt/BtDialActivity;Z)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/ts/bt/BtDialActivity;->mbLongTouch:Z

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 134
    sget v0, Lcom/ts/MainUI/R$id;->bt_tv_dial_input:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/bt/BtDialActivity;->tvInput:Landroid/widget/TextView;

    .line 137
    sget v0, Lcom/ts/MainUI/R$id;->bt_btn_dial_num1:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNum1:Landroid/widget/ImageButton;

    .line 138
    sget v0, Lcom/ts/MainUI/R$id;->bt_btn_dial_num2:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNum2:Landroid/widget/ImageButton;

    .line 139
    sget v0, Lcom/ts/MainUI/R$id;->bt_btn_dial_num3:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNum3:Landroid/widget/ImageButton;

    .line 140
    sget v0, Lcom/ts/MainUI/R$id;->bt_btn_dial_num4:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNum4:Landroid/widget/ImageButton;

    .line 141
    sget v0, Lcom/ts/MainUI/R$id;->bt_btn_dial_num5:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNum5:Landroid/widget/ImageButton;

    .line 142
    sget v0, Lcom/ts/MainUI/R$id;->bt_btn_dial_num6:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNum6:Landroid/widget/ImageButton;

    .line 143
    sget v0, Lcom/ts/MainUI/R$id;->bt_btn_dial_num7:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNum7:Landroid/widget/ImageButton;

    .line 144
    sget v0, Lcom/ts/MainUI/R$id;->bt_btn_dial_num8:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNum8:Landroid/widget/ImageButton;

    .line 145
    sget v0, Lcom/ts/MainUI/R$id;->bt_btn_dial_num9:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNum9:Landroid/widget/ImageButton;

    .line 146
    sget v0, Lcom/ts/MainUI/R$id;->bt_btn_dial_numx:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNumX:Landroid/widget/ImageButton;

    .line 147
    sget v0, Lcom/ts/MainUI/R$id;->bt_btn_dial_num0:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNum0:Landroid/widget/ImageButton;

    .line 148
    sget v0, Lcom/ts/MainUI/R$id;->bt_btn_dial_numj:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNumJ:Landroid/widget/ImageButton;

    .line 150
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNum1:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/ts/bt/BtDialActivity;->NumClickListen:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNum2:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/ts/bt/BtDialActivity;->NumClickListen:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNum3:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/ts/bt/BtDialActivity;->NumClickListen:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNum4:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/ts/bt/BtDialActivity;->NumClickListen:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNum5:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/ts/bt/BtDialActivity;->NumClickListen:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNum6:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/ts/bt/BtDialActivity;->NumClickListen:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNum7:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/ts/bt/BtDialActivity;->NumClickListen:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNum8:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/ts/bt/BtDialActivity;->NumClickListen:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNum9:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/ts/bt/BtDialActivity;->NumClickListen:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNumX:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/ts/bt/BtDialActivity;->NumClickListen:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNum0:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/ts/bt/BtDialActivity;->NumClickListen:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNumJ:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/ts/bt/BtDialActivity;->NumClickListen:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNum0:Landroid/widget/ImageButton;

    new-instance v1, Lcom/ts/bt/BtDialActivity$2;

    invoke-direct {v1, p0}, Lcom/ts/bt/BtDialActivity$2;-><init>(Lcom/ts/bt/BtDialActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnNum0:Landroid/widget/ImageButton;

    new-instance v1, Lcom/ts/bt/BtDialActivity$3;

    invoke-direct {v1, p0}, Lcom/ts/bt/BtDialActivity$3;-><init>(Lcom/ts/bt/BtDialActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 191
    sget v0, Lcom/ts/MainUI/R$id;->bt_btn_dial_call:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnCall:Landroid/widget/ImageButton;

    .line 192
    sget v0, Lcom/ts/MainUI/R$id;->bt_btn_dial_end:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnHangup:Landroid/widget/ImageButton;

    .line 193
    sget v0, Lcom/ts/MainUI/R$id;->bt_btn_dial_sw:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnSW:Landroid/widget/ImageButton;

    .line 194
    sget v0, Lcom/ts/MainUI/R$id;->bt_btn_dial_mute:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnMicMute:Landroid/widget/ImageButton;

    .line 195
    sget v0, Lcom/ts/MainUI/R$id;->bt_btn_dial_bkspace:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnDel:Landroid/widget/ImageButton;

    .line 196
    sget v0, Lcom/ts/MainUI/R$id;->bt_btn_dial_sound:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnSound:Landroid/widget/ImageButton;

    .line 198
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnCall:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnDel:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnDel:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnHangup:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnMicMute:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnSound:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity;->btnSW:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 2

    .prologue
    .line 368
    iget v0, p0, Lcom/ts/bt/BtDialActivity;->mOldSta:I

    sget v1, Lcom/ts/bt/BtExe;->mCallSta:I

    if-eq v0, v1, :cond_0

    .line 370
    sget v0, Lcom/ts/bt/BtExe;->mCallSta:I

    iput v0, p0, Lcom/ts/bt/BtDialActivity;->mOldSta:I

    .line 371
    invoke-virtual {p0}, Lcom/ts/bt/BtDialActivity;->updateInputText()V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->isConnected()Z

    .line 382
    return-void
.end method

.method addKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "strKey"    # Ljava/lang/String;

    .prologue
    .line 324
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/ts/bt/BtDialActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->getSta()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/ts/bt/BtDialActivity;->bt:Lcom/ts/bt/BtExe;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/ts/bt/BtExe;->sendDTMFCode(B)V

    .line 329
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ts/bt/BtDialActivity;->inputAdd(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/ts/bt/BtDialActivity;->updateInputText()V

    .line 331
    return-void
.end method

.method clearInput()V
    .locals 1

    .prologue
    .line 343
    const-string v0, ""

    sput-object v0, Lcom/ts/bt/BtDialActivity;->mBaseStrDialNo:Ljava/lang/String;

    .line 344
    invoke-virtual {p0}, Lcom/ts/bt/BtDialActivity;->updateInputText()V

    .line 345
    return-void
.end method

.method inputAdd(Ljava/lang/String;)V
    .locals 2
    .param p1, "c"    # Ljava/lang/String;

    .prologue
    .line 349
    sget-object v0, Lcom/ts/bt/BtDialActivity;->mBaseStrDialNo:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ts/bt/BtDialActivity;->mBaseStrDialNo:Ljava/lang/String;

    .line 350
    invoke-virtual {p0}, Lcom/ts/bt/BtDialActivity;->updateInputText()V

    .line 351
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 211
    .local v0, "id":I
    sget v1, Lcom/ts/MainUI/R$id;->bt_btn_dial_bkspace:I

    if-ne v0, v1, :cond_2

    .line 213
    sget-object v1, Lcom/ts/bt/BtDialActivity;->mBaseStrDialNo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_1

    .line 215
    const-string v1, ""

    sput-object v1, Lcom/ts/bt/BtDialActivity;->mBaseStrDialNo:Ljava/lang/String;

    .line 221
    :goto_0
    invoke-virtual {p0}, Lcom/ts/bt/BtDialActivity;->updateInputText()V

    .line 272
    :cond_0
    :goto_1
    return-void

    .line 219
    :cond_1
    sget-object v1, Lcom/ts/bt/BtDialActivity;->mBaseStrDialNo:Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/ts/bt/BtDialActivity;->mBaseStrDialNo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ts/bt/BtDialActivity;->mBaseStrDialNo:Ljava/lang/String;

    goto :goto_0

    .line 222
    :cond_2
    sget v1, Lcom/ts/MainUI/R$id;->bt_btn_dial_mute:I

    if-ne v0, v1, :cond_3

    .line 223
    iget-object v1, p0, Lcom/ts/bt/BtDialActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->micMute()V

    goto :goto_1

    .line 225
    :cond_3
    sget v1, Lcom/ts/MainUI/R$id;->bt_btn_dial_sw:I

    if-ne v0, v1, :cond_4

    .line 227
    iget-object v1, p0, Lcom/ts/bt/BtDialActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->getCallValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/ts/bt/BtDialActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->audioSwitch()V

    goto :goto_1

    .line 230
    :cond_4
    sget v1, Lcom/ts/MainUI/R$id;->bt_btn_dial_call:I

    if-ne v0, v1, :cond_8

    .line 232
    sget v1, Lcom/ts/bt/BtExe;->mCallSta:I

    if-le v1, v3, :cond_6

    .line 234
    const/4 v1, 0x3

    sget v2, Lcom/ts/bt/BtExe;->mCallSta:I

    if-ne v1, v2, :cond_5

    .line 236
    iget-object v1, p0, Lcom/ts/bt/BtDialActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->answer()V

    goto :goto_1

    .line 242
    :cond_5
    invoke-static {}, Lcom/ts/bt/BtCallMsgbox;->GetInstance()Lcom/ts/bt/BtCallMsgbox;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/ts/bt/BtCallMsgbox;->Show(I)V

    goto :goto_1

    .line 247
    :cond_6
    sget-object v1, Lcom/ts/bt/BtDialActivity;->mBaseStrDialNo:Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/ts/bt/BtDialActivity;->mBaseStrDialNo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 249
    iget-object v1, p0, Lcom/ts/bt/BtDialActivity;->bt:Lcom/ts/bt/BtExe;

    sget-object v2, Lcom/ts/bt/BtDialActivity;->mBaseStrDialNo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ts/bt/BtExe;->dial(Ljava/lang/String;)V

    goto :goto_1

    .line 253
    :cond_7
    sget-object v1, Lcom/ts/bt/BtExe;->mLastPhoneNo:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ts/bt/BtExe;->mLastPhoneNo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    sget-object v1, Lcom/ts/bt/BtExe;->mLastPhoneNo:Ljava/lang/String;

    sput-object v1, Lcom/ts/bt/BtDialActivity;->mBaseStrDialNo:Ljava/lang/String;

    .line 257
    invoke-virtual {p0}, Lcom/ts/bt/BtDialActivity;->updateInputText()V

    goto :goto_1

    .line 264
    :cond_8
    sget v1, Lcom/ts/MainUI/R$id;->bt_btn_dial_end:I

    if-ne v0, v1, :cond_9

    .line 266
    invoke-virtual {p0}, Lcom/ts/bt/BtDialActivity;->clearInput()V

    .line 267
    iget-object v1, p0, Lcom/ts/bt/BtDialActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->hangup()V

    goto :goto_1

    .line 268
    :cond_9
    sget v1, Lcom/ts/MainUI/R$id;->bt_btn_dial_sound:I

    if-ne v0, v1, :cond_0

    .line 270
    invoke-static {}, Lcom/ts/main/common/MainVolume;->GetInstance()Lcom/ts/main/common/MainVolume;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/main/common/MainVolume;->VolWinShow()V

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/ts/bt/BtBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    sget v0, Lcom/ts/MainUI/R$layout;->activity_bt_dial:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtDialActivity;->setContentView(I)V

    .line 96
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/BtDialActivity;->bt:Lcom/ts/bt/BtExe;

    .line 98
    invoke-direct {p0}, Lcom/ts/bt/BtDialActivity;->initView()V

    .line 99
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onDestroy()V

    .line 119
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 124
    .local v0, "id":I
    sget v1, Lcom/ts/MainUI/R$id;->bt_btn_dial_bkspace:I

    if-ne v0, v1, :cond_0

    .line 125
    const-string v1, ""

    sput-object v1, Lcom/ts/bt/BtDialActivity;->mBaseStrDialNo:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/ts/bt/BtDialActivity;->updateInputText()V

    .line 127
    const/4 v1, 0x1

    .line 129
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 337
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 338
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onPause()V

    .line 339
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onResume()V

    .line 109
    const/4 v0, 0x2

    invoke-virtual {p0, p0, v0}, Lcom/ts/bt/BtDialActivity;->SubItemsInit(Landroid/app/Activity;I)V

    .line 110
    invoke-virtual {p0}, Lcom/ts/bt/BtDialActivity;->updateInputText()V

    .line 111
    sget v0, Lcom/ts/bt/BtExe;->mCallSta:I

    iput v0, p0, Lcom/ts/bt/BtDialActivity;->mOldSta:I

    .line 112
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 113
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onStart()V

    .line 104
    return-void
.end method

.method updateInputText()V
    .locals 4

    .prologue
    .line 355
    sget-object v1, Lcom/ts/bt/BtDialActivity;->mBaseStrDialNo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 356
    .local v0, "len":I
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/ts/bt/BtDialActivity;->tvInput:Landroid/widget/TextView;

    sget-object v2, Lcom/ts/bt/BtDialActivity;->mBaseStrDialNo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/ts/bt/BtDialActivity;->tvInput:Landroid/widget/TextView;

    sget-object v2, Lcom/ts/bt/BtDialActivity;->mBaseStrDialNo:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1e

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
