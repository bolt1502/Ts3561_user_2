.class Lcom/ts/can/CanToyotaHybridActivity$1;
.super Ljava/lang/Object;
.source "CanToyotaHybridActivity.java"

# interfaces
.implements Lcom/ts/other/CustomImgView$onPaint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/CanToyotaHybridActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/CanToyotaHybridActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/CanToyotaHybridActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/CanToyotaHybridActivity$1;->this$0:Lcom/ts/can/CanToyotaHybridActivity;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public userPaint(Lcom/ts/other/CustomImgView;Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 7
    .param p1, "view"    # Lcom/ts/other/CustomImgView;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/16 v2, 0x1d

    const/16 v6, 0x198

    const/16 v5, 0x9d

    const/16 v4, 0x90

    const/16 v3, 0x2f

    .line 54
    iget-object v0, p0, Lcom/ts/can/CanToyotaHybridActivity$1;->this$0:Lcom/ts/can/CanToyotaHybridActivity;

    # getter for: Lcom/ts/can/CanToyotaHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;
    invoke-static {v0}, Lcom/ts/can/CanToyotaHybridActivity;->access$0(Lcom/ts/can/CanToyotaHybridActivity;)Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    move-result-object v0

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->UpdateOnce:I

    if-nez v0, :cond_0

    .line 56
    sget v0, Lcom/ts/MainUI/R$drawable;->can_fdj_cl_up:I

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1, v2}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 57
    sget v0, Lcom/ts/MainUI/R$drawable;->can_fdj_md_up:I

    const/16 v1, 0xc9

    const/16 v2, 0x53

    invoke-virtual {p1, v0, v1, v2}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 58
    sget v0, Lcom/ts/MainUI/R$drawable;->can_cl_md_up:I

    invoke-virtual {p1, v0, v4, v3}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 59
    sget v0, Lcom/ts/MainUI/R$drawable;->can_md_dc_up:I

    invoke-virtual {p1, v0, v6, v5}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 60
    sget v0, Lcom/ts/MainUI/R$drawable;->can_ydhh_dc_08:I

    const/16 v1, 0x26b

    const/16 v2, 0xb1

    invoke-virtual {p1, v0, v1, v2}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 119
    :goto_0
    sget v0, Lcom/ts/MainUI/R$drawable;->can_ydhh_fdj:I

    const/16 v1, 0x5d

    const/16 v2, 0x1b

    invoke-virtual {p1, v0, v1, v2}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 120
    const/4 v0, 0x0

    return v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanToyotaHybridActivity$1;->this$0:Lcom/ts/can/CanToyotaHybridActivity;

    # getter for: Lcom/ts/can/CanToyotaHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;
    invoke-static {v0}, Lcom/ts/can/CanToyotaHybridActivity;->access$0(Lcom/ts/can/CanToyotaHybridActivity;)Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    move-result-object v0

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->FdjQdCl:I

    invoke-static {v0}, Lcom/ts/can/CanToyotaHybridActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    sget v0, Lcom/ts/MainUI/R$drawable;->can_fdj_cl_dn:I

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1, v2}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 73
    :goto_1
    iget-object v0, p0, Lcom/ts/can/CanToyotaHybridActivity$1;->this$0:Lcom/ts/can/CanToyotaHybridActivity;

    # getter for: Lcom/ts/can/CanToyotaHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;
    invoke-static {v0}, Lcom/ts/can/CanToyotaHybridActivity;->access$0(Lcom/ts/can/CanToyotaHybridActivity;)Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    move-result-object v0

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->FdjQdMd:I

    invoke-static {v0}, Lcom/ts/can/CanToyotaHybridActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    sget v0, Lcom/ts/MainUI/R$drawable;->can_fdj_md_dn:I

    const/16 v1, 0xc9

    const/16 v2, 0x53

    invoke-virtual {p1, v0, v1, v2}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 82
    :goto_2
    iget-object v0, p0, Lcom/ts/can/CanToyotaHybridActivity$1;->this$0:Lcom/ts/can/CanToyotaHybridActivity;

    # getter for: Lcom/ts/can/CanToyotaHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;
    invoke-static {v0}, Lcom/ts/can/CanToyotaHybridActivity;->access$0(Lcom/ts/can/CanToyotaHybridActivity;)Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    move-result-object v0

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->MdQdCl:I

    invoke-static {v0}, Lcom/ts/can/CanToyotaHybridActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    sget v0, Lcom/ts/MainUI/R$drawable;->can_md_cl:I

    invoke-virtual {p1, v0, v4, v3}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 95
    :goto_3
    iget-object v0, p0, Lcom/ts/can/CanToyotaHybridActivity$1;->this$0:Lcom/ts/can/CanToyotaHybridActivity;

    # getter for: Lcom/ts/can/CanToyotaHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;
    invoke-static {v0}, Lcom/ts/can/CanToyotaHybridActivity;->access$0(Lcom/ts/can/CanToyotaHybridActivity;)Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    move-result-object v0

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->MdQdDc:I

    invoke-static {v0}, Lcom/ts/can/CanToyotaHybridActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 97
    sget v0, Lcom/ts/MainUI/R$drawable;->can_md_dc_dn:I

    invoke-virtual {p1, v0, v6, v5}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 108
    :goto_4
    iget-object v0, p0, Lcom/ts/can/CanToyotaHybridActivity$1;->this$0:Lcom/ts/can/CanToyotaHybridActivity;

    # getter for: Lcom/ts/can/CanToyotaHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;
    invoke-static {v0}, Lcom/ts/can/CanToyotaHybridActivity;->access$0(Lcom/ts/can/CanToyotaHybridActivity;)Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    move-result-object v0

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->Battery:I

    if-ltz v0, :cond_7

    iget-object v0, p0, Lcom/ts/can/CanToyotaHybridActivity$1;->this$0:Lcom/ts/can/CanToyotaHybridActivity;

    # getter for: Lcom/ts/can/CanToyotaHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;
    invoke-static {v0}, Lcom/ts/can/CanToyotaHybridActivity;->access$0(Lcom/ts/can/CanToyotaHybridActivity;)Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    move-result-object v0

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->Battery:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_7

    .line 110
    # getter for: Lcom/ts/can/CanToyotaHybridActivity;->mBattery:[I
    invoke-static {}, Lcom/ts/can/CanToyotaHybridActivity;->access$1()[I

    move-result-object v0

    iget-object v1, p0, Lcom/ts/can/CanToyotaHybridActivity$1;->this$0:Lcom/ts/can/CanToyotaHybridActivity;

    # getter for: Lcom/ts/can/CanToyotaHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;
    invoke-static {v1}, Lcom/ts/can/CanToyotaHybridActivity;->access$0(Lcom/ts/can/CanToyotaHybridActivity;)Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    move-result-object v1

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->Battery:I

    aget v0, v0, v1

    const/16 v1, 0x26b

    const/16 v2, 0xb1

    invoke-virtual {p1, v0, v1, v2}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    goto/16 :goto_0

    .line 70
    :cond_1
    sget v0, Lcom/ts/MainUI/R$drawable;->can_fdj_cl_up:I

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1, v2}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    goto :goto_1

    .line 79
    :cond_2
    sget v0, Lcom/ts/MainUI/R$drawable;->can_fdj_md_up:I

    const/16 v1, 0xc9

    const/16 v2, 0x53

    invoke-virtual {p1, v0, v1, v2}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    goto :goto_2

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/ts/can/CanToyotaHybridActivity$1;->this$0:Lcom/ts/can/CanToyotaHybridActivity;

    # getter for: Lcom/ts/can/CanToyotaHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;
    invoke-static {v0}, Lcom/ts/can/CanToyotaHybridActivity;->access$0(Lcom/ts/can/CanToyotaHybridActivity;)Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    move-result-object v0

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->ClQdMd:I

    invoke-static {v0}, Lcom/ts/can/CanToyotaHybridActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    sget v0, Lcom/ts/MainUI/R$drawable;->can_cl_md_dn:I

    invoke-virtual {p1, v0, v4, v3}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    goto :goto_3

    .line 92
    :cond_4
    sget v0, Lcom/ts/MainUI/R$drawable;->can_cl_md_up:I

    invoke-virtual {p1, v0, v4, v3}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    goto :goto_3

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/ts/can/CanToyotaHybridActivity$1;->this$0:Lcom/ts/can/CanToyotaHybridActivity;

    # getter for: Lcom/ts/can/CanToyotaHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;
    invoke-static {v0}, Lcom/ts/can/CanToyotaHybridActivity;->access$0(Lcom/ts/can/CanToyotaHybridActivity;)Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    move-result-object v0

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->DcQdMd:I

    invoke-static {v0}, Lcom/ts/can/CanToyotaHybridActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 101
    sget v0, Lcom/ts/MainUI/R$drawable;->can_dc_md:I

    invoke-virtual {p1, v0, v6, v5}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    goto :goto_4

    .line 105
    :cond_6
    sget v0, Lcom/ts/MainUI/R$drawable;->can_md_dc_up:I

    invoke-virtual {p1, v0, v6, v5}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    goto :goto_4

    .line 114
    :cond_7
    sget v0, Lcom/ts/MainUI/R$drawable;->can_ydhh_dc_08:I

    const/16 v1, 0x26b

    const/16 v2, 0xb1

    invoke-virtual {p1, v0, v1, v2}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    goto/16 :goto_0
.end method
