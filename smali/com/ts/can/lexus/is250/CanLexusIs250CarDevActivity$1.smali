.class Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;
.super Ljava/lang/Object;
.source "CanLexusIs250CarDevActivity.java"

# interfaces
.implements Lcom/ts/other/CustomImgView$onPaint;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public userPaint(Lcom/ts/other/CustomImgView;Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 17
    .param p1, "view"    # Lcom/ts/other/CustomImgView;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 170
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$0(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    move-result-object v12

    iget v12, v12, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->UpdateOnce:I

    if-nez v12, :cond_0

    .line 172
    const/4 v12, 0x0

    .line 260
    :goto_0
    return v12

    .line 175
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$0(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    move-result-object v12

    iget v12, v12, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->Mode:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$0(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    move-result-object v12

    iget v12, v12, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->Frq:I

    if-eqz v12, :cond_7

    .line 177
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    const/4 v13, 0x1

    # invokes: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->ShowPage(I)V
    invoke-static {v12, v13}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$1(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;I)V

    .line 178
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$0(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    move-result-object v12

    iget v12, v12, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->Band:I

    const/4 v13, 0x1

    if-le v12, v13, :cond_3

    const/4 v11, 0x1

    .line 179
    .local v11, "isAm":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mImgBandDW:Lcom/ts/other/CustomImgView;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$2(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/ts/other/CustomImgView;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextV1:Landroid/widget/TextView;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$3(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Landroid/widget/TextView;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->RadioBand:[Ljava/lang/String;
    invoke-static {v13}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$4(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;
    invoke-static {v14}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$0(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    move-result-object v14

    iget v14, v14, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->Band:I

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$0(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    move-result-object v12

    iget v12, v12, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->Pre:I

    if-nez v12, :cond_4

    .line 184
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextV2:Landroid/widget/TextView;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$5(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Landroid/widget/TextView;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$0(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    move-result-object v12

    iget v12, v12, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->Frq:I

    div-int/lit16 v12, v12, 0x3e8

    rem-int/lit8 v5, v12, 0xa

    .line 190
    .local v5, "Qian":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$0(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    move-result-object v12

    iget v12, v12, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->Frq:I

    div-int/lit8 v12, v12, 0x64

    rem-int/lit8 v1, v12, 0xa

    .line 191
    .local v1, "Bai":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$0(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    move-result-object v12

    iget v12, v12, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->Frq:I

    div-int/lit8 v12, v12, 0xa

    rem-int/lit8 v8, v12, 0xa

    .line 192
    .local v8, "Shi":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$0(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    move-result-object v12

    iget v12, v12, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->Frq:I

    rem-int/lit8 v2, v12, 0xa

    .line 194
    .local v2, "Ge":I
    const/4 v10, 0x0

    .line 195
    .local v10, "fmdtx":I
    const/16 v9, 0xa

    .line 196
    .local v9, "amdtx":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$0(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    move-result-object v12

    iget v12, v12, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->Band:I

    const/4 v13, 0x3

    if-lt v12, v13, :cond_5

    .line 199
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$0(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    move-result-object v12

    iget v12, v12, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->Frq:I

    const/16 v13, 0x3e8

    if-lt v12, v13, :cond_1

    .line 201
    sget-object v12, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mFreqNumArr:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    const/16 v13, 0x1bc

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 204
    :cond_1
    sget-object v12, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mFreqNumArr:[I

    aget v12, v12, v1

    const/16 v13, 0x1ec

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 205
    sget-object v12, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mFreqNumArr:[I

    aget v12, v12, v8

    const/16 v13, 0x21c

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 206
    sget-object v12, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mFreqNumArr:[I

    aget v12, v12, v2

    const/16 v13, 0x24c

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 260
    .end local v1    # "Bai":I
    .end local v2    # "Ge":I
    .end local v5    # "Qian":I
    .end local v8    # "Shi":I
    .end local v9    # "amdtx":I
    .end local v10    # "fmdtx":I
    .end local v11    # "isAm":I
    :cond_2
    :goto_3
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 178
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 187
    .restart local v11    # "isAm":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextV2:Landroid/widget/TextView;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$5(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Landroid/widget/TextView;

    move-result-object v12

    const-string v13, "CH%d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;
    invoke-static/range {v16 .. v16}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$0(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->Pre:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 221
    .restart local v1    # "Bai":I
    .restart local v2    # "Ge":I
    .restart local v5    # "Qian":I
    .restart local v8    # "Shi":I
    .restart local v9    # "amdtx":I
    .restart local v10    # "fmdtx":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$0(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    move-result-object v12

    iget v12, v12, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->Frq:I

    const/16 v13, 0x2710

    if-lt v12, v13, :cond_6

    .line 223
    sget-object v12, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mFreqNumArr:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    const/16 v13, 0x182

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 225
    :cond_6
    sget-object v12, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mFreqNumArr:[I

    aget v12, v12, v5

    const/16 v13, 0x1b2

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 226
    sget-object v12, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mFreqNumArr:[I

    aget v12, v12, v1

    const/16 v13, 0x1e2

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 227
    sget-object v12, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mFreqNumArr:[I

    aget v12, v12, v8

    const/16 v13, 0x227

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 228
    sget-object v12, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mFreqNumArr:[I

    aget v12, v12, v2

    const/16 v13, 0x257

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 229
    sget v12, Lcom/ts/MainUI/R$drawable;->can_yg_radio_point:I

    const/16 v13, 0x206

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    goto/16 :goto_3

    .line 233
    .end local v1    # "Bai":I
    .end local v2    # "Ge":I
    .end local v5    # "Qian":I
    .end local v8    # "Shi":I
    .end local v9    # "amdtx":I
    .end local v10    # "fmdtx":I
    .end local v11    # "isAm":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$0(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    move-result-object v12

    iget v12, v12, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->Mode:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_8

    .line 235
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    const/4 v13, 0x2

    # invokes: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->ShowPage(I)V
    invoke-static {v12, v13}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$1(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;I)V

    .line 237
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextV2:Landroid/widget/TextView;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$5(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Landroid/widget/TextView;

    move-result-object v12

    const-string v13, "TR %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;
    invoke-static/range {v16 .. v16}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$0(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->Track:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$0(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    move-result-object v12

    iget v12, v12, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->PlayMin:I

    div-int/lit8 v12, v12, 0xa

    rem-int/lit8 v4, v12, 0xa

    .line 239
    .local v4, "MShi":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$0(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    move-result-object v12

    iget v12, v12, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->PlayMin:I

    rem-int/lit8 v3, v12, 0xa

    .line 241
    .local v3, "MGe":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$0(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    move-result-object v12

    iget v12, v12, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->PlaySec:I

    div-int/lit8 v12, v12, 0xa

    rem-int/lit8 v7, v12, 0xa

    .line 242
    .local v7, "SShi":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$0(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    move-result-object v12

    iget v12, v12, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->PlaySec:I

    rem-int/lit8 v6, v12, 0xa

    .line 244
    .local v6, "SGe":I
    sget-object v12, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mFreqNumArr:[I

    aget v12, v12, v4

    const/16 v13, 0x182

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 245
    sget-object v12, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mFreqNumArr:[I

    aget v12, v12, v3

    const/16 v13, 0x1b2

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 246
    sget v12, Lcom/ts/MainUI/R$drawable;->can_yg_radio_colon:I

    const/16 v13, 0x1e2

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 247
    sget-object v12, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mFreqNumArr:[I

    aget v12, v12, v7

    const/16 v13, 0x212

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 248
    sget-object v12, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mFreqNumArr:[I

    aget v12, v12, v6

    const/16 v13, 0x242

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 250
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$0(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    move-result-object v12

    iget v12, v12, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->PlaySta:I

    const/4 v13, 0x6

    if-gt v12, v13, :cond_2

    .line 251
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextPlaySta:Landroid/widget/TextView;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$6(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Landroid/widget/TextView;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->CdSta:[Ljava/lang/String;
    invoke-static {v13}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$7(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;
    invoke-static {v14}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$0(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    move-result-object v14

    iget v14, v14, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->PlaySta:I

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 254
    .end local v3    # "MGe":I
    .end local v4    # "MShi":I
    .end local v6    # "SGe":I
    .end local v7    # "SShi":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    # getter for: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;
    invoke-static {v12}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$0(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    move-result-object v12

    iget v12, v12, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->Mode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_2

    .line 256
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;->this$0:Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;

    const/4 v13, 0x3

    # invokes: Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->ShowPage(I)V
    invoke-static {v12, v13}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->access$1(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;I)V

    goto/16 :goto_3
.end method
