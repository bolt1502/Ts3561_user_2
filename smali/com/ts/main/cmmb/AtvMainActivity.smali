.class public Lcom/ts/main/cmmb/AtvMainActivity;
.super Landroid/app/Activity;
.source "AtvMainActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field private static final ATV_DELAY_LIST:I = 0x96

.field private static final ATV_DELAY_NUM:I = 0x32

.field static nOldMode:I


# instance fields
.field AtvFre:Lcom/ts/other/ParamButton;

.field AtvShow:Lcom/ts/main/avin/AvShowMainItem;

.field private Atv_btn_Icondn:[I

.field private Atv_btn_Iconup:[I

.field BtnAtv:[Lcom/ts/other/ParamButton;

.field MyRelativeLayout:Landroid/widget/RelativeLayout;

.field TvMode:[Ljava/lang/String;

.field TvPlayList:Landroid/widget/ListView;

.field bListShow:Z

.field bModeShow:Z

.field listItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field mCstTv:Lcom/ts/MainUI/CstTv;

.field private mEvc:Lcom/ts/MainUI/Evc;

.field nListDelayTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 267
    const/16 v0, 0xff

    sput v0, Lcom/ts/main/cmmb/AtvMainActivity;->nOldMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x7

    const/4 v3, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    new-instance v0, Lcom/ts/main/avin/AvShowMainItem;

    invoke-direct {v0}, Lcom/ts/main/avin/AvShowMainItem;-><init>()V

    iput-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity;->AtvShow:Lcom/ts/main/avin/AvShowMainItem;

    .line 42
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity;->mEvc:Lcom/ts/MainUI/Evc;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity;->MyRelativeLayout:Landroid/widget/RelativeLayout;

    .line 49
    invoke-static {}, Lcom/ts/MainUI/CstTv;->GetInstance()Lcom/ts/MainUI/CstTv;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity;->mCstTv:Lcom/ts/MainUI/CstTv;

    .line 50
    iput v3, p0, Lcom/ts/main/cmmb/AtvMainActivity;->nListDelayTime:I

    .line 52
    new-array v0, v4, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity;->BtnAtv:[Lcom/ts/other/ParamButton;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity;->listItem:Ljava/util/ArrayList;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity;->AtvFre:Lcom/ts/other/ParamButton;

    .line 70
    const/16 v0, 0x8

    new-array v0, v0, [I

    sget v1, Lcom/ts/MainUI/R$drawable;->cmmb_search_up:I

    aput v1, v0, v3

    .line 71
    sget v1, Lcom/ts/MainUI/R$drawable;->cmmb_mute_up:I

    aput v1, v0, v5

    sget v1, Lcom/ts/MainUI/R$drawable;->cmmb_prev_up:I

    aput v1, v0, v6

    .line 72
    sget v1, Lcom/ts/MainUI/R$drawable;->cmmb_down_up:I

    aput v1, v0, v7

    const/4 v1, 0x4

    sget v2, Lcom/ts/MainUI/R$drawable;->cmmb_eq_up:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 73
    sget v2, Lcom/ts/MainUI/R$drawable;->cmmb_system_up:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/ts/MainUI/R$drawable;->cmmb_list_up:I

    aput v2, v0, v1

    .line 74
    sget v1, Lcom/ts/MainUI/R$drawable;->cmmb_set_up:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity;->Atv_btn_Iconup:[I

    .line 75
    const/16 v0, 0x8

    new-array v0, v0, [I

    sget v1, Lcom/ts/MainUI/R$drawable;->cmmb_search_dn:I

    aput v1, v0, v3

    .line 76
    sget v1, Lcom/ts/MainUI/R$drawable;->cmmb_mute_dn:I

    aput v1, v0, v5

    sget v1, Lcom/ts/MainUI/R$drawable;->cmmb_prev_dn:I

    aput v1, v0, v6

    .line 77
    sget v1, Lcom/ts/MainUI/R$drawable;->cmmb_down_dn:I

    aput v1, v0, v7

    const/4 v1, 0x4

    sget v2, Lcom/ts/MainUI/R$drawable;->cmmb_eq_dn:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 78
    sget v2, Lcom/ts/MainUI/R$drawable;->cmmb_system_dn:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/ts/MainUI/R$drawable;->cmmb_list_dn:I

    aput v2, v0, v1

    .line 79
    sget v1, Lcom/ts/MainUI/R$drawable;->cmmb_set_dn:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity;->Atv_btn_Icondn:[I

    .line 81
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "PAL_I"

    aput-object v1, v0, v3

    const-string v1, "PAL_DK"

    aput-object v1, v0, v5

    const-string v1, "PAL_BG"

    aput-object v1, v0, v6

    const-string v1, "PAL_M"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "PAL_N"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 82
    const-string v2, "SECAM_DK"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SECAM_BG"

    aput-object v2, v0, v1

    const-string v1, "NTSC_MN"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity;->TvMode:[Ljava/lang/String;

    .line 85
    iput-boolean v3, p0, Lcom/ts/main/cmmb/AtvMainActivity;->bModeShow:Z

    .line 86
    iput-boolean v3, p0, Lcom/ts/main/cmmb/AtvMainActivity;->bListShow:Z

    .line 39
    return-void
.end method


# virtual methods
.method ShowList()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 134
    const/16 v1, 0x96

    iput v1, p0, Lcom/ts/main/cmmb/AtvMainActivity;->nListDelayTime:I

    .line 135
    iget-boolean v1, p0, Lcom/ts/main/cmmb/AtvMainActivity;->bListShow:Z

    if-eqz v1, :cond_0

    .line 137
    iput-boolean v8, p0, Lcom/ts/main/cmmb/AtvMainActivity;->bListShow:Z

    .line 138
    iget-object v1, p0, Lcom/ts/main/cmmb/AtvMainActivity;->TvPlayList:Landroid/widget/ListView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 175
    :goto_0
    return-void

    .line 143
    :cond_0
    iput-boolean v9, p0, Lcom/ts/main/cmmb/AtvMainActivity;->bListShow:Z

    .line 144
    iget-object v1, p0, Lcom/ts/main/cmmb/AtvMainActivity;->TvPlayList:Landroid/widget/ListView;

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v2, "listItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/16 v1, 0x64

    if-lt v6, v1, :cond_1

    .line 155
    new-instance v0, Landroid/widget/SimpleAdapter;

    .line 156
    sget v3, Lcom/ts/MainUI/R$layout;->activitytvlist:I

    .line 158
    new-array v4, v9, [Ljava/lang/String;

    const-string v1, "tv_save"

    aput-object v1, v4, v8

    .line 160
    new-array v5, v9, [I

    sget v1, Lcom/ts/MainUI/R$id;->btn_tvlist:I

    aput v1, v5, v8

    move-object v1, p0

    .line 155
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 163
    .local v0, "listItemAdapter":Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/ts/main/cmmb/AtvMainActivity;->TvPlayList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    iget-object v1, p0, Lcom/ts/main/cmmb/AtvMainActivity;->TvPlayList:Landroid/widget/ListView;

    new-instance v3, Lcom/ts/main/cmmb/AtvMainActivity$2;

    invoke-direct {v3, p0}, Lcom/ts/main/cmmb/AtvMainActivity$2;-><init>(Lcom/ts/main/cmmb/AtvMainActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 148
    .end local v0    # "listItemAdapter":Landroid/widget/SimpleAdapter;
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 149
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "tv_save"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CH "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 150
    iget-object v4, p0, Lcom/ts/main/cmmb/AtvMainActivity;->mCstTv:Lcom/ts/MainUI/CstTv;

    iget-object v4, v4, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget-object v4, v4, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveCh:[I

    aget v4, v4, v6

    int-to-float v4, v4

    const/high16 v5, 0x41a00000    # 20.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method ShowMode()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 89
    iget-boolean v1, p0, Lcom/ts/main/cmmb/AtvMainActivity;->bModeShow:Z

    if-eqz v1, :cond_0

    .line 91
    iput-boolean v8, p0, Lcom/ts/main/cmmb/AtvMainActivity;->bModeShow:Z

    .line 92
    iget-object v1, p0, Lcom/ts/main/cmmb/AtvMainActivity;->TvPlayList:Landroid/widget/ListView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 131
    :goto_0
    return-void

    .line 97
    :cond_0
    iput-boolean v5, p0, Lcom/ts/main/cmmb/AtvMainActivity;->bModeShow:Z

    .line 98
    iget-object v1, p0, Lcom/ts/main/cmmb/AtvMainActivity;->TvPlayList:Landroid/widget/ListView;

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 100
    const/16 v1, 0x96

    iput v1, p0, Lcom/ts/main/cmmb/AtvMainActivity;->nListDelayTime:I

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v2, "listItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/16 v1, 0x8

    if-lt v6, v1, :cond_1

    .line 109
    new-instance v0, Landroid/widget/SimpleAdapter;

    .line 110
    sget v3, Lcom/ts/MainUI/R$layout;->activitytvlist:I

    .line 112
    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "tv_save"

    aput-object v1, v4, v8

    .line 114
    new-array v5, v5, [I

    sget v1, Lcom/ts/MainUI/R$id;->btn_tvlist:I

    aput v1, v5, v8

    move-object v1, p0

    .line 109
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 117
    .local v0, "listItemAdapter":Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/ts/main/cmmb/AtvMainActivity;->TvPlayList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    iget-object v1, p0, Lcom/ts/main/cmmb/AtvMainActivity;->TvPlayList:Landroid/widget/ListView;

    new-instance v3, Lcom/ts/main/cmmb/AtvMainActivity$1;

    invoke-direct {v3, p0}, Lcom/ts/main/cmmb/AtvMainActivity$1;-><init>(Lcom/ts/main/cmmb/AtvMainActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 103
    .end local v0    # "listItemAdapter":Landroid/widget/SimpleAdapter;
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "tv_save"

    iget-object v3, p0, Lcom/ts/main/cmmb/AtvMainActivity;->TvMode:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method ShowTvBtn(Z)V
    .locals 4
    .param p1, "bShow"    # Z

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 270
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 281
    if-nez p1, :cond_2

    .line 283
    iget-object v1, p0, Lcom/ts/main/cmmb/AtvMainActivity;->AtvFre:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, v3}, Lcom/ts/other/ParamButton;->setVisibility(I)V

    .line 289
    :goto_1
    return-void

    .line 272
    :cond_0
    if-eqz p1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/ts/main/cmmb/AtvMainActivity;->BtnAtv:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setVisibility(I)V

    .line 270
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/ts/main/cmmb/AtvMainActivity;->BtnAtv:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/ts/other/ParamButton;->setVisibility(I)V

    goto :goto_2

    .line 287
    :cond_2
    iget-object v1, p0, Lcom/ts/main/cmmb/AtvMainActivity;->AtvFre:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setVisibility(I)V

    goto :goto_1
.end method

.method protected TvCreateRelative(IIII)Landroid/widget/TextView;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 65
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v1, "tv":Landroid/widget/TextView;
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 66
    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/cmmb/AtvMainActivity;->setViewPos(Landroid/view/View;IIII)V

    .line 67
    return-object v1
.end method

.method public UserAll()V
    .locals 5

    .prologue
    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 293
    iget-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity;->AtvShow:Lcom/ts/main/avin/AvShowMainItem;

    invoke-virtual {v0}, Lcom/ts/main/avin/AvShowMainItem;->SignalDetect()V

    .line 294
    sget v0, Lcom/ts/main/cmmb/AtvMainActivity;->nOldMode:I

    iget-object v1, p0, Lcom/ts/main/cmmb/AtvMainActivity;->AtvShow:Lcom/ts/main/avin/AvShowMainItem;

    iget v1, v1, Lcom/ts/main/avin/AvShowMainItem;->nShowMode:I

    if-eq v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity;->TvPlayList:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 297
    iput-boolean v2, p0, Lcom/ts/main/cmmb/AtvMainActivity;->bListShow:Z

    .line 298
    iput-boolean v2, p0, Lcom/ts/main/cmmb/AtvMainActivity;->bModeShow:Z

    .line 299
    iget-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity;->AtvShow:Lcom/ts/main/avin/AvShowMainItem;

    iget v0, v0, Lcom/ts/main/avin/AvShowMainItem;->nShowMode:I

    sput v0, Lcom/ts/main/cmmb/AtvMainActivity;->nOldMode:I

    .line 300
    iget-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity;->AtvShow:Lcom/ts/main/avin/AvShowMainItem;

    iget v0, v0, Lcom/ts/main/avin/AvShowMainItem;->nShowMode:I

    packed-switch v0, :pswitch_data_0

    .line 318
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity;->AtvFre:Lcom/ts/other/ParamButton;

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity;->mCstTv:Lcom/ts/MainUI/CstTv;

    invoke-virtual {v0}, Lcom/ts/MainUI/CstTv;->isAutoSearch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity;->AtvFre:Lcom/ts/other/ParamButton;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CH:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/main/cmmb/AtvMainActivity;->mCstTv:Lcom/ts/MainUI/CstTv;

    iget-object v2, v2, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v2, v2, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveNum:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 321
    iget-object v2, p0, Lcom/ts/main/cmmb/AtvMainActivity;->mCstTv:Lcom/ts/MainUI/CstTv;

    iget v2, v2, Lcom/ts/MainUI/CstTv;->nCurNum:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :cond_1
    :goto_1
    return-void

    .line 303
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/ts/main/cmmb/AtvMainActivity;->ShowTvBtn(Z)V

    goto :goto_0

    .line 307
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/ts/main/cmmb/AtvMainActivity;->ShowTvBtn(Z)V

    goto :goto_0

    .line 310
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/ts/main/cmmb/AtvMainActivity;->ShowTvBtn(Z)V

    goto :goto_0

    .line 313
    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/ts/main/cmmb/AtvMainActivity;->ShowTvBtn(Z)V

    goto :goto_0

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity;->AtvFre:Lcom/ts/other/ParamButton;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CH:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/main/cmmb/AtvMainActivity;->mCstTv:Lcom/ts/MainUI/CstTv;

    iget-object v2, v2, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v2, v2, Lcom/ts/MainUI/CstTv$TV_SAVE;->nWatchNum:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 324
    iget-object v2, p0, Lcom/ts/main/cmmb/AtvMainActivity;->mCstTv:Lcom/ts/MainUI/CstTv;

    iget v2, v2, Lcom/ts/MainUI/CstTv;->nCurNum:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x50

    .line 179
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    sget v4, Lcom/ts/MainUI/R$layout;->activity_avin_main:I

    invoke-virtual {p0, v4}, Lcom/ts/main/cmmb/AtvMainActivity;->setContentView(I)V

    .line 183
    iget-object v5, p0, Lcom/ts/main/cmmb/AtvMainActivity;->AtvShow:Lcom/ts/main/avin/AvShowMainItem;

    sget v4, Lcom/ts/MainUI/R$id;->activity_avin_mainid:I

    invoke-virtual {p0, v4}, Lcom/ts/main/cmmb/AtvMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    const/4 v6, 0x2

    invoke-virtual {v5, p0, v4, v6}, Lcom/ts/main/avin/AvShowMainItem;->Inint(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    .line 184
    iget-object v4, p0, Lcom/ts/main/cmmb/AtvMainActivity;->AtvShow:Lcom/ts/main/avin/AvShowMainItem;

    invoke-virtual {v4}, Lcom/ts/main/avin/AvShowMainItem;->InintCommonBtn()V

    .line 185
    iget-object v4, p0, Lcom/ts/main/cmmb/AtvMainActivity;->AtvShow:Lcom/ts/main/avin/AvShowMainItem;

    invoke-virtual {v4}, Lcom/ts/main/avin/AvShowMainItem;->GetVideoName()Landroid/widget/TextView;

    move-result-object v4

    sget v5, Lcom/ts/MainUI/R$string;->title_activity_atv_main:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 187
    sget v4, Lcom/ts/MainUI/R$id;->activity_avin_mainid:I

    invoke-virtual {p0, v4}, Lcom/ts/main/cmmb/AtvMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/ts/main/cmmb/AtvMainActivity;->MyRelativeLayout:Landroid/widget/RelativeLayout;

    .line 189
    iget-object v4, p0, Lcom/ts/main/cmmb/AtvMainActivity;->MyRelativeLayout:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ts/other/ParamButton;->initFactory(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    .line 191
    const/16 v4, 0xa

    const/16 v5, 0x104

    invoke-static {v4, v7, v5, v7}, Lcom/ts/other/ParamButton;->fsCreateRelative(IIII)Lcom/ts/other/ParamButton;

    move-result-object v4

    iput-object v4, p0, Lcom/ts/main/cmmb/AtvMainActivity;->AtvFre:Lcom/ts/other/ParamButton;

    .line 192
    iget-object v4, p0, Lcom/ts/main/cmmb/AtvMainActivity;->AtvFre:Lcom/ts/other/ParamButton;

    sget v5, Lcom/ts/MainUI/R$drawable;->cmmb_box:I

    sget v6, Lcom/ts/MainUI/R$drawable;->cmmb_box:I

    .line 193
    sget v7, Lcom/ts/MainUI/R$drawable;->cmmb_box:I

    .line 192
    invoke-virtual {v4, v5, v6, v7}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 194
    iget-object v4, p0, Lcom/ts/main/cmmb/AtvMainActivity;->AtvFre:Lcom/ts/other/ParamButton;

    const/16 v5, -0x100

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 195
    iget-object v4, p0, Lcom/ts/main/cmmb/AtvMainActivity;->AtvFre:Lcom/ts/other/ParamButton;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setTextSize(F)V

    .line 197
    const/4 v2, 0x7

    .line 198
    .local v2, "nNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 246
    new-instance v4, Landroid/widget/ListView;

    invoke-direct {v4, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/ts/main/cmmb/AtvMainActivity;->TvPlayList:Landroid/widget/ListView;

    .line 247
    iget-object v4, p0, Lcom/ts/main/cmmb/AtvMainActivity;->TvPlayList:Landroid/widget/ListView;

    sget v5, Lcom/ts/MainUI/R$drawable;->cmmb_list_box:I

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 248
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x13a

    const/16 v5, 0x1ab

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 249
    .local v3, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0x2bc

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 250
    const/16 v4, 0x41

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 251
    iget-object v4, p0, Lcom/ts/main/cmmb/AtvMainActivity;->TvPlayList:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object v4, p0, Lcom/ts/main/cmmb/AtvMainActivity;->MyRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/ts/main/cmmb/AtvMainActivity;->TvPlayList:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 253
    iget-object v4, p0, Lcom/ts/main/cmmb/AtvMainActivity;->TvPlayList:Landroid/widget/ListView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 255
    return-void

    .line 200
    .end local v3    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const/16 v4, 0xc6

    const/16 v5, 0x8

    div-int v1, v4, v5

    .line 202
    .local v1, "nDet":I
    iget-object v4, p0, Lcom/ts/main/cmmb/AtvMainActivity;->BtnAtv:[Lcom/ts/other/ParamButton;

    mul-int/lit16 v5, v0, 0x8e

    add-int/lit8 v5, v5, 0x18

    .line 203
    const/16 v6, 0x1f4

    const/16 v7, 0x76

    const/16 v8, 0x4e

    .line 202
    invoke-static {v5, v6, v7, v8}, Lcom/ts/other/ParamButton;->fsCreateRelative(IIII)Lcom/ts/other/ParamButton;

    move-result-object v5

    aput-object v5, v4, v0

    .line 205
    iget-object v4, p0, Lcom/ts/main/cmmb/AtvMainActivity;->BtnAtv:[Lcom/ts/other/ParamButton;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/ts/main/cmmb/AtvMainActivity;->Atv_btn_Iconup:[I

    aget v5, v5, v0

    iget-object v6, p0, Lcom/ts/main/cmmb/AtvMainActivity;->Atv_btn_Icondn:[I

    aget v6, v6, v0

    .line 206
    iget-object v7, p0, Lcom/ts/main/cmmb/AtvMainActivity;->Atv_btn_Icondn:[I

    aget v7, v7, v0

    .line 205
    invoke-virtual {v4, v5, v6, v7}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 207
    iget-object v4, p0, Lcom/ts/main/cmmb/AtvMainActivity;->BtnAtv:[Lcom/ts/other/ParamButton;

    aget-object v4, v4, v0

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 208
    iget-object v4, p0, Lcom/ts/main/cmmb/AtvMainActivity;->BtnAtv:[Lcom/ts/other/ParamButton;

    aget-object v4, v4, v0

    new-instance v5, Lcom/ts/main/cmmb/AtvMainActivity$3;

    invoke-direct {v5, p0}, Lcom/ts/main/cmmb/AtvMainActivity$3;-><init>(Lcom/ts/main/cmmb/AtvMainActivity;)V

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 349
    invoke-static {}, Lcom/ts/main/common/ScreenSet;->GetInstance()Lcom/ts/main/common/ScreenSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/common/ScreenSet;->Hide()V

    .line 350
    iget-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity;->AtvShow:Lcom/ts/main/avin/AvShowMainItem;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ts/main/avin/AvShowMainItem;->ShowMode(IZ)I

    .line 351
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 352
    invoke-static {}, Lcom/ts/backcar/BackcarService;->getInstance()Lcom/ts/backcar/BackcarService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/backcar/BackcarService;->StopCamera()V

    .line 354
    invoke-static {}, Lcom/ts/MainUI/TsDisplay;->GetInstance()Lcom/ts/MainUI/TsDisplay;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/TsDisplay;->SetDispParat(I)V

    .line 355
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 356
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 334
    iget-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity;->AtvShow:Lcom/ts/main/avin/AvShowMainItem;

    const/16 v1, 0x32

    iput v1, v0, Lcom/ts/main/avin/AvShowMainItem;->nDelayNum:I

    .line 335
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 336
    iget-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity;->mEvc:Lcom/ts/MainUI/Evc;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 337
    iget-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity;->AtvShow:Lcom/ts/main/avin/AvShowMainItem;

    invoke-virtual {v0, v2, v2}, Lcom/ts/main/avin/AvShowMainItem;->ShowMode(IZ)I

    .line 338
    iget-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity;->AtvShow:Lcom/ts/main/avin/AvShowMainItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ts/main/avin/AvShowMainItem;->nShowMode:I

    .line 339
    invoke-static {}, Lcom/ts/MainUI/TsDisplay;->GetInstance()Lcom/ts/MainUI/TsDisplay;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/TsDisplay;->SetDispParat(I)V

    .line 340
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ts/main/common/MainSet;->SetVideoChannel(I)V

    .line 341
    invoke-static {}, Lcom/ts/backcar/BackcarService;->getInstance()Lcom/ts/backcar/BackcarService;

    move-result-object v1

    sget v0, Lcom/ts/MainUI/R$id;->textureView:I

    invoke-virtual {p0, v0}, Lcom/ts/main/cmmb/AtvMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ts/backcar/AutoFitTextureView;

    invoke-virtual {v1, v0}, Lcom/ts/backcar/BackcarService;->StartCamera(Lcom/ts/backcar/AutoFitTextureView;)V

    .line 343
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 344
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 260
    const-string v0, "onTouchEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "x = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/ts/main/cmmb/AtvMainActivity;->AtvShow:Lcom/ts/main/avin/AvShowMainItem;

    invoke-virtual {v0}, Lcom/ts/main/avin/AvShowMainItem;->DealKeyTouch()V

    .line 265
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 262
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    goto :goto_0
.end method

.method protected setViewPos(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 57
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    .local v0, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 59
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v1, p0, Lcom/ts/main/cmmb/AtvMainActivity;->MyRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 62
    return-void
.end method
