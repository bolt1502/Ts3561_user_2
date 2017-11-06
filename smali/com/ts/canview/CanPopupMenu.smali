.class Lcom/ts/canview/CanPopupMenu;
.super Lcom/ts/other/CustomDialog;
.source "CanItemPopupList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final mBk:[I


# instance fields
.field private mCallBack:Lcom/ts/canview/CanItemPopupList$onPopItemClick;

.field private mId:I

.field private mTextViewArray:[Landroid/widget/TextView;

.field private mTitleArray:[Ljava/lang/String;

.field private mViewArray:[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 281
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 282
    sget v2, Lcom/ts/MainUI/R$drawable;->can_comm_msgbox_line2:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 283
    sget v2, Lcom/ts/MainUI/R$drawable;->can_comm_msgbox_line3:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 284
    sget v2, Lcom/ts/MainUI/R$drawable;->can_comm_msgbox_line4:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 285
    sget v2, Lcom/ts/MainUI/R$drawable;->can_comm_msgbox_line5:I

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 286
    sget v2, Lcom/ts/MainUI/R$drawable;->can_comm_msgbox_line6:I

    aput v2, v0, v1

    .line 280
    sput-object v0, Lcom/ts/canview/CanPopupMenu;->mBk:[I

    .line 288
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/ts/other/CustomDialog;-><init>()V

    .line 298
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;I[Ljava/lang/String;ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V
    .locals 0
    .param p1, "Id"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "y"    # I
    .param p4, "text"    # [Ljava/lang/String;
    .param p5, "sel"    # I
    .param p6, "cb"    # Lcom/ts/canview/CanItemPopupList$onPopItemClick;

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/ts/other/CustomDialog;-><init>()V

    .line 292
    invoke-virtual/range {p0 .. p6}, Lcom/ts/canview/CanPopupMenu;->createDlg(ILandroid/content/Context;I[Ljava/lang/String;ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 293
    return-void
.end method

.method private GetStatusBarHeight(Landroid/content/Context;)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 361
    .local v3, "obj":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 362
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    .local v5, "x":I
    const/4 v4, 0x0

    .line 365
    .local v4, "sbar":I
    :try_start_0
    const-string v6, "com.android.internal.R$dimen"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 367
    const-string v6, "status_bar_height"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 368
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 369
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 377
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_0
    const-string v6, "statusBarHeight = "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return v4

    .line 371
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e1":Ljava/lang/Exception;
    const-string v6, ""

    const-string v7, "get status bar height fail"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public createDlg(ILandroid/content/Context;I[Ljava/lang/String;ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V
    .locals 11
    .param p1, "Id"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "y"    # I
    .param p4, "text"    # [Ljava/lang/String;
    .param p5, "sel"    # I
    .param p6, "cb"    # Lcom/ts/canview/CanItemPopupList$onPopItemClick;

    .prologue
    .line 303
    iput p1, p0, Lcom/ts/canview/CanPopupMenu;->mId:I

    .line 304
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/ts/canview/CanPopupMenu;->mCallBack:Lcom/ts/canview/CanItemPopupList$onPopItemClick;

    .line 305
    array-length v8, p4

    const/4 v9, 0x2

    if-ge v8, v9, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    sget v8, Lcom/ts/MainUI/R$layout;->can_popup_bk:I

    invoke-super {p0, v8, p2}, Lcom/ts/other/CustomDialog;->create(ILandroid/content/Context;)Landroid/app/AlertDialog;

    .line 313
    invoke-direct {p0, p2}, Lcom/ts/canview/CanPopupMenu;->GetStatusBarHeight(Landroid/content/Context;)I

    move-result v8

    sub-int v8, p3, v8

    add-int/lit8 p3, v8, -0xf

    .line 317
    const/4 v5, 0x0

    .line 318
    .local v5, "marginLeft":I
    iget-object v8, p0, Lcom/ts/canview/CanPopupMenu;->mWindow:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 319
    .local v7, "wmlp":Landroid/view/WindowManager$LayoutParams;
    const/16 v8, 0x35

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 320
    iput v5, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 321
    iput p3, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 322
    iget-object v8, p0, Lcom/ts/canview/CanPopupMenu;->mWindow:Landroid/view/Window;

    invoke-virtual {v8, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 324
    array-length v4, p4

    .line 325
    .local v4, "line":I
    iget-object v8, p0, Lcom/ts/canview/CanPopupMenu;->mWindow:Landroid/view/Window;

    sget v9, Lcom/ts/MainUI/R$id;->can_comm_scrview:I

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    .line 326
    .local v6, "scrView":Landroid/widget/ScrollView;
    const/4 v8, 0x7

    if-ge v4, v8, :cond_2

    const/4 v8, 0x1

    if-le v4, v8, :cond_2

    .line 328
    sget-object v8, Lcom/ts/canview/CanPopupMenu;->mBk:[I

    add-int/lit8 v9, v4, -0x2

    aget v8, v8, v9

    invoke-virtual {v6, v8}, Landroid/widget/ScrollView;->setBackgroundResource(I)V

    .line 335
    :goto_1
    iget-object v8, p0, Lcom/ts/canview/CanPopupMenu;->mWindow:Landroid/view/Window;

    sget v9, Lcom/ts/MainUI/R$id;->can_comm_lineview:I

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 336
    .local v2, "layout":Landroid/widget/LinearLayout;
    new-array v8, v4, [Landroid/view/View;

    iput-object v8, p0, Lcom/ts/canview/CanPopupMenu;->mViewArray:[Landroid/view/View;

    .line 337
    new-array v8, v4, [Landroid/widget/TextView;

    iput-object v8, p0, Lcom/ts/canview/CanPopupMenu;->mTextViewArray:[Landroid/widget/TextView;

    .line 338
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 339
    .local v3, "li":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-lt v1, v4, :cond_3

    .line 349
    if-ltz p5, :cond_0

    move/from16 v0, p5

    if-ge v0, v4, :cond_0

    .line 351
    iget-object v8, p0, Lcom/ts/canview/CanPopupMenu;->mTextViewArray:[Landroid/widget/TextView;

    aget-object v8, v8, p5

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 332
    .end local v1    # "i":I
    .end local v2    # "layout":Landroid/widget/LinearLayout;
    .end local v3    # "li":Landroid/view/LayoutInflater;
    :cond_2
    sget v8, Lcom/ts/MainUI/R$drawable;->can_comm_msgbox_line6:I

    invoke-virtual {v6, v8}, Landroid/widget/ScrollView;->setBackgroundResource(I)V

    goto :goto_1

    .line 341
    .restart local v1    # "i":I
    .restart local v2    # "layout":Landroid/widget/LinearLayout;
    .restart local v3    # "li":Landroid/view/LayoutInflater;
    :cond_3
    iget-object v8, p0, Lcom/ts/canview/CanPopupMenu;->mViewArray:[Landroid/view/View;

    sget v9, Lcom/ts/MainUI/R$layout;->can_item_popup_menu:I

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    aput-object v9, v8, v1

    .line 342
    iget-object v8, p0, Lcom/ts/canview/CanPopupMenu;->mViewArray:[Landroid/view/View;

    aget-object v8, v8, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 343
    iget-object v9, p0, Lcom/ts/canview/CanPopupMenu;->mTextViewArray:[Landroid/widget/TextView;

    iget-object v8, p0, Lcom/ts/canview/CanPopupMenu;->mViewArray:[Landroid/view/View;

    aget-object v8, v8, v1

    sget v10, Lcom/ts/MainUI/R$id;->val:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    aput-object v8, v9, v1

    .line 344
    iget-object v8, p0, Lcom/ts/canview/CanPopupMenu;->mTextViewArray:[Landroid/widget/TextView;

    aget-object v8, v8, v1

    aget-object v9, p4, v1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v8, p0, Lcom/ts/canview/CanPopupMenu;->mViewArray:[Landroid/view/View;

    aget-object v8, v8, v1

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 346
    iget-object v8, p0, Lcom/ts/canview/CanPopupMenu;->mViewArray:[Landroid/view/View;

    aget-object v8, v8, v1

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/ts/canview/CanPopupMenu;->dismiss()V

    .line 387
    iget-object v0, p0, Lcom/ts/canview/CanPopupMenu;->mCallBack:Lcom/ts/canview/CanItemPopupList$onPopItemClick;

    if-eqz v0, :cond_0

    .line 389
    iget-object v1, p0, Lcom/ts/canview/CanPopupMenu;->mCallBack:Lcom/ts/canview/CanItemPopupList$onPopItemClick;

    iget v2, p0, Lcom/ts/canview/CanPopupMenu;->mId:I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/ts/canview/CanItemPopupList$onPopItemClick;->onItem(II)V

    .line 391
    :cond_0
    return-void
.end method
