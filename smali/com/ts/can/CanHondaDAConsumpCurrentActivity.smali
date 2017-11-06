.class public Lcom/ts/can/CanHondaDAConsumpCurrentActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanHondaDAConsumpCurrentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final BTN_HISTORY:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanGolfSDPActivity"

.field public static mThis:Z


# instance fields
.field private mBtnHistory:Lcom/ts/other/ParamButton;

.field private mCenTitle:[Lcom/ts/other/CustomTextView;

.field private mConsump:[Lcom/ts/other/CustomTextView;

.field private mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

.field private mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mMark:[Lcom/ts/other/CustomTextView;

.field private mProg:[Lcom/ts/canview/MyProgressBar;

.field private mRange:Lcom/ts/other/CustomTextView;

.field private mStrRange:Ljava/lang/String;

.field private mTitle:[Lcom/ts/other/CustomTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mThis:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 36
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    .line 19
    return-void
.end method

.method public static DealDisp()Z
    .locals 1

    .prologue
    .line 332
    sget-boolean v0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mThis:Z

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, 0x1

    .line 341
    :goto_0
    return v0

    .line 338
    :cond_0
    const-class v0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;

    invoke-static {v0}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    .line 341
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private GetRangeVal(II)Ljava/lang/String;
    .locals 3
    .param p1, "range"    # I
    .param p2, "dw"    # I

    .prologue
    .line 285
    const-string v0, ""

    .line 286
    .local v0, "strRange":Ljava/lang/String;
    const v1, 0xffff

    if-lt p1, v1, :cond_0

    .line 288
    const-string v0, "---- "

    .line 295
    :goto_0
    if-nez p2, :cond_1

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "km"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    :goto_1
    return-object v0

    .line 292
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 301
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "mi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private GetYhDW(I)Ljava/lang/String;
    .locals 1
    .param p1, "dw"    # I

    .prologue
    .line 244
    const-string v0, ""

    .line 245
    .local v0, "ret":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 263
    :goto_0
    return-object v0

    .line 248
    :pswitch_0
    const-string v0, "mpg"

    .line 249
    goto :goto_0

    .line 252
    :pswitch_1
    const-string v0, "km/l"

    .line 253
    goto :goto_0

    .line 256
    :pswitch_2
    const-string v0, "l/100km"

    .line 257
    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private GetYhVal(II)Ljava/lang/String;
    .locals 6
    .param p1, "yh"    # I
    .param p2, "dw"    # I

    .prologue
    .line 268
    const-string v0, ""

    .line 269
    .local v0, "ret":Ljava/lang/String;
    const v1, 0xffff

    if-lt p1, v1, :cond_0

    .line 271
    const-string v0, "--.- "

    .line 279
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->GetYhDW(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    return-object v0

    .line 276
    :cond_0
    const-string v1, "%.1f "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-float v4, p1

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected QueryData()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 216
    const/16 v0, 0x14

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 218
    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->CrstourQuery(II)V

    .line 228
    :goto_0
    return-void

    .line 220
    :cond_0
    const/16 v0, 0x60

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 222
    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Yg9XbsQuery(II)V

    goto :goto_0

    .line 226
    :cond_1
    const/16 v0, 0x33

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->HondaDAQuery(II)V

    goto :goto_0
.end method

.method protected ResetData(Z)V
    .locals 8
    .param p1, "check"    # Z

    .prologue
    const v7, 0xffff

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 145
    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->HondaDAGetConsumpCurrnt(Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;)V

    .line 146
    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->Update:I

    invoke-static {v1}, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iput v5, v1, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->Update:I

    .line 151
    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mMark:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->Yhlc:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mMark:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->Yhlc:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mConsump:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->DwJsyh:I

    invoke-direct {p0, v2}, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->GetYhDW(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    aget-object v1, v1, v5

    const/16 v2, 0x15

    invoke-virtual {v1, v5, v2}, Lcom/ts/canview/MyProgressBar;->SetMinMax(II)V

    .line 156
    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->Jsyh:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    .line 158
    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->Yhlc:I

    mul-int/lit8 v0, v1, 0xa

    .line 159
    .local v0, "maxpos":I
    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    aget-object v1, v1, v6

    invoke-virtual {v1, v5, v0}, Lcom/ts/canview/MyProgressBar;->SetMinMax(II)V

    .line 160
    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    aget-object v1, v1, v4

    invoke-virtual {v1, v5, v0}, Lcom/ts/canview/MyProgressBar;->SetMinMax(II)V

    .line 161
    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->Dqpjyh:I

    if-lt v1, v0, :cond_3

    .line 163
    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->Dqpjyh:I

    if-ne v7, v1, :cond_2

    .line 165
    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    aget-object v1, v1, v6

    invoke-virtual {v1, v5}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    .line 178
    :goto_0
    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->Lspjyh:I

    if-lt v1, v0, :cond_5

    .line 180
    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->Lspjyh:I

    if-ne v7, v1, :cond_4

    .line 182
    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    aget-object v1, v1, v4

    invoke-virtual {v1, v5}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    .line 194
    :goto_1
    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mConsump:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->Dqpjyh:I

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->DwDqlspjyh:I

    invoke-direct {p0, v2, v3}, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->GetYhVal(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mConsump:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->Lspjyh:I

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->DwDqlspjyh:I

    invoke-direct {p0, v2, v3}, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->GetYhVal(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mRange:Lcom/ts/other/CustomTextView;

    const-string v2, "%s %s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mStrRange:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->Range:I

    iget-object v5, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->DwRange:I

    invoke-direct {p0, v4, v5}, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->GetRangeVal(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .end local v0    # "maxpos":I
    :cond_1
    return-void

    .line 169
    .restart local v0    # "maxpos":I
    :cond_2
    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    aget-object v1, v1, v6

    invoke-virtual {v1, v0}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    goto :goto_0

    .line 175
    :cond_3
    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->Dqpjyh:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    goto :goto_0

    .line 186
    :cond_4
    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    aget-object v1, v1, v4

    invoke-virtual {v1, v0}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    goto :goto_1

    .line 191
    :cond_5
    iget-object v1, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->Lspjyh:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    goto :goto_1
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->ResetData(Z)V

    .line 328
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 312
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 321
    :goto_0
    return-void

    .line 315
    :pswitch_0
    const-class v1, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x28

    const/4 v9, 0x1

    const/16 v7, 0x2f

    const/4 v8, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v2, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->setContentView(I)V

    .line 50
    new-instance v2, Lcom/ts/other/RelativeLayoutManager;

    sget v3, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v2, p0, v3}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 52
    new-instance v2, Lcom/ts/other/RelativeLayoutManager;

    sget v3, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v2, p0, v3}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 53
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x3e

    const/16 v4, 0x45

    sget v5, Lcom/ts/MainUI/R$drawable;->can_btyh_line:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 54
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x3e

    const/16 v4, 0xb6

    sget v5, Lcom/ts/MainUI/R$drawable;->can_btyh_line:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 55
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x3e

    const/16 v4, 0x17e

    sget v5, Lcom/ts/MainUI/R$drawable;->can_btyh_line:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 58
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x174

    const/16 v4, 0x10

    const/16 v5, 0x12c

    const/16 v6, 0x2e

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v1

    .line 59
    .local v1, "tv":Lcom/ts/other/CustomTextView;
    sget v2, Lcom/ts/MainUI/R$string;->can_bcjszk:I

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(I)V

    .line 60
    invoke-virtual {v1, v10}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 62
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/ts/other/CustomTextView;

    iput-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mTitle:[Lcom/ts/other/CustomTextView;

    .line 63
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/ts/other/CustomTextView;

    iput-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCenTitle:[Lcom/ts/other/CustomTextView;

    .line 64
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/ts/canview/MyProgressBar;

    iput-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    .line 65
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/ts/other/CustomTextView;

    iput-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mConsump:[Lcom/ts/other/CustomTextView;

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x44

    const/16 v4, 0x103

    const/16 v5, 0x85

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v1

    .line 103
    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 104
    invoke-virtual {v1, v10}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 105
    sget v2, Lcom/ts/MainUI/R$string;->can_pjyh:I

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(I)V

    .line 107
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/ts/other/CustomTextView;

    iput-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mMark:[Lcom/ts/other/CustomTextView;

    .line 108
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mMark:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x1b5

    const/16 v5, 0x4f

    const/16 v6, 0x2d

    const/16 v7, 0x22

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v8

    .line 109
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mMark:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v8

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 110
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mMark:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v8

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 111
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mMark:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v8

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mMark:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x237

    const/16 v5, 0x4f

    const/16 v6, 0x2d

    const/16 v7, 0x22

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v9

    .line 114
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mMark:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v9

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 115
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mMark:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v9

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 116
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mMark:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v9

    const-string v3, "10"

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mMark:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x2b9

    const/16 v5, 0x4f

    const/16 v6, 0x2d

    const/16 v7, 0x22

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v11

    .line 119
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mMark:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v11

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 120
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mMark:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v11

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 121
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mMark:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v11

    const-string v3, "20"

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mTitle:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v8

    sget v3, Lcom/ts/MainUI/R$string;->can_ssyh:I

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setText(I)V

    .line 125
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCenTitle:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v8

    invoke-virtual {v2, v8}, Lcom/ts/other/CustomTextView;->ShowGone(Z)V

    .line 126
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCenTitle:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v9

    sget v3, Lcom/ts/MainUI/R$string;->can_bczk:I

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setText(I)V

    .line 127
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCenTitle:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v11

    sget v3, Lcom/ts/MainUI/R$string;->can_yslc:I

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setText(I)V

    .line 130
    invoke-virtual {p0}, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$string;->can_range_xhlc:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mStrRange:Ljava/lang/String;

    .line 132
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x275

    const/16 v4, 0x186

    const/16 v5, 0x14a

    const/16 v6, 0x32

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mRange:Lcom/ts/other/CustomTextView;

    .line 133
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mRange:Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mStrRange:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mRange:Lcom/ts/other/CustomTextView;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 135
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mRange:Lcom/ts/other/CustomTextView;

    invoke-virtual {v2, v10}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 137
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x19a

    const/16 v4, 0x1bc

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mBtnHistory:Lcom/ts/other/ParamButton;

    .line 138
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mBtnHistory:Lcom/ts/other/ParamButton;

    sget v3, Lcom/ts/MainUI/R$string;->can_lsxx:I

    invoke-virtual {p0, v2, v3}, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->SetCommBtn(Lcom/ts/other/ParamButton;I)V

    .line 139
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mBtnHistory:Lcom/ts/other/ParamButton;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 140
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mBtnHistory:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void

    .line 69
    :cond_0
    if-nez v0, :cond_1

    .line 71
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mTitle:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x44

    const/16 v5, 0x77

    const/16 v6, 0x85

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 72
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCenTitle:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0xe5

    const/16 v5, 0x77

    const/16 v6, 0xaf

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 73
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mConsump:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x307

    const/16 v5, 0x77

    const/16 v6, 0xe6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 75
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    new-instance v3, Lcom/ts/canview/MyProgressBar;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_btyh_pro_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_btyh_pro_dn:I

    invoke-direct {v3, p0, v4, v5}, Lcom/ts/canview/MyProgressBar;-><init>(Landroid/content/Context;II)V

    aput-object v3, v2, v0

    .line 76
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    aget-object v3, v3, v0

    const/16 v4, 0x1b5

    const/16 v5, 0x7c

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    .line 90
    :goto_1
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mTitle:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 91
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mTitle:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v10}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 93
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCenTitle:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 94
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCenTitle:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v10}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 97
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mConsump:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 98
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mConsump:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v10}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mTitle:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x44

    add-int/lit8 v5, v0, -0x1

    mul-int/lit8 v5, v5, 0x4e

    add-int/lit16 v5, v5, 0xdc

    const/16 v6, 0x85

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 82
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mCenTitle:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0xe5

    add-int/lit8 v5, v0, -0x1

    mul-int/lit8 v5, v5, 0x4e

    add-int/lit16 v5, v5, 0xdc

    const/16 v6, 0xaf

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 83
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mConsump:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x307

    add-int/lit8 v5, v0, -0x1

    mul-int/lit8 v5, v5, 0x4e

    add-int/lit16 v5, v5, 0xdc

    const/16 v6, 0xe6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 84
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mTitle:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v8}, Lcom/ts/other/CustomTextView;->ShowGone(Z)V

    .line 86
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    new-instance v3, Lcom/ts/canview/MyProgressBar;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_btyh_pro_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_btyh_pro_dn:I

    invoke-direct {v3, p0, v4, v5}, Lcom/ts/canview/MyProgressBar;-><init>(Landroid/content/Context;II)V

    aput-object v3, v2, v0

    .line 87
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    aget-object v3, v3, v0

    const/16 v4, 0x1b5

    add-int/lit8 v5, v0, -0x1

    mul-int/lit8 v5, v5, 0x4e

    add-int/lit16 v5, v5, 0xe1

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 208
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 209
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 210
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mThis:Z

    .line 212
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 235
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->ResetData(Z)V

    .line 237
    invoke-virtual {p0}, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->QueryData()V

    .line 238
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->mThis:Z

    .line 240
    return-void
.end method
