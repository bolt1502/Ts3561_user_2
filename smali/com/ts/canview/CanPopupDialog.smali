.class public Lcom/ts/canview/CanPopupDialog;
.super Lcom/ts/other/CustomDialog;
.source "CanPopupDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/canview/CanPopupDialog$OnItemClick;
    }
.end annotation


# static fields
.field private static final mBk:[I


# instance fields
.field private mCallBack:Lcom/ts/canview/CanPopupDialog$OnItemClick;

.field private mTextViewArray:[Landroid/widget/TextView;

.field private mViewArray:[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 32
    sget v2, Lcom/ts/MainUI/R$drawable;->can_comm_msgbox_line2:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 33
    sget v2, Lcom/ts/MainUI/R$drawable;->can_comm_msgbox_line3:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 34
    sget v2, Lcom/ts/MainUI/R$drawable;->can_comm_msgbox_line4:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 35
    sget v2, Lcom/ts/MainUI/R$drawable;->can_comm_msgbox_line5:I

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 36
    sget v2, Lcom/ts/MainUI/R$drawable;->can_comm_msgbox_line6:I

    aput v2, v0, v1

    .line 30
    sput-object v0, Lcom/ts/canview/CanPopupDialog;->mBk:[I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[IILandroid/view/View;Lcom/ts/canview/CanPopupDialog$OnItemClick;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # [I
    .param p3, "sel"    # I
    .param p4, "anchor"    # Landroid/view/View;
    .param p5, "cb"    # Lcom/ts/canview/CanPopupDialog$OnItemClick;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ts/other/CustomDialog;-><init>()V

    .line 42
    array-length v0, p2

    new-array v2, v0, [Ljava/lang/String;

    .line 44
    .local v2, "array":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, p2

    if-lt v6, v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 48
    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/CanPopupDialog;->createDlg(Landroid/content/Context;[Ljava/lang/String;ILandroid/view/View;Lcom/ts/canview/CanPopupDialog$OnItemClick;)V

    .line 50
    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    aget v1, p2, v6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    .line 44
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;ILandroid/view/View;Lcom/ts/canview/CanPopupDialog$OnItemClick;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # [Ljava/lang/String;
    .param p3, "sel"    # I
    .param p4, "anchor"    # Landroid/view/View;
    .param p5, "cb"    # Lcom/ts/canview/CanPopupDialog$OnItemClick;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/ts/other/CustomDialog;-><init>()V

    .line 54
    invoke-virtual/range {p0 .. p5}, Lcom/ts/canview/CanPopupDialog;->createDlg(Landroid/content/Context;[Ljava/lang/String;ILandroid/view/View;Lcom/ts/canview/CanPopupDialog$OnItemClick;)V

    .line 55
    return-void
.end method

.method private GetStatusBarHeight(Landroid/content/Context;)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 116
    .local v3, "obj":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 117
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    .local v5, "x":I
    const/4 v4, 0x0

    .line 120
    .local v4, "sbar":I
    :try_start_0
    const-string v6, "com.android.internal.R$dimen"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 122
    const-string v6, "status_bar_height"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 132
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_0
    return v4

    .line 126
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e1":Ljava/lang/Exception;
    const-string v6, ""

    const-string v7, "get status bar height fail"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public createDlg(Landroid/content/Context;[Ljava/lang/String;ILandroid/view/View;Lcom/ts/canview/CanPopupDialog$OnItemClick;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # [Ljava/lang/String;
    .param p3, "sel"    # I
    .param p4, "anchor"    # Landroid/view/View;
    .param p5, "cb"    # Lcom/ts/canview/CanPopupDialog$OnItemClick;

    .prologue
    .line 60
    iput-object p5, p0, Lcom/ts/canview/CanPopupDialog;->mCallBack:Lcom/ts/canview/CanPopupDialog$OnItemClick;

    .line 61
    array-length v7, p2

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    sget v7, Lcom/ts/MainUI/R$layout;->can_popup_bk:I

    invoke-super {p0, v7, p1}, Lcom/ts/other/CustomDialog;->create(ILandroid/content/Context;)Landroid/app/AlertDialog;

    .line 67
    const/4 v7, 0x2

    new-array v4, v7, [I

    .line 68
    .local v4, "location":[I
    invoke-virtual {p4, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 69
    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v4, v8

    invoke-direct {p0, p1}, Lcom/ts/canview/CanPopupDialog;->GetStatusBarHeight(Landroid/content/Context;)I

    move-result v9

    sub-int/2addr v8, v9

    aput v8, v4, v7

    .line 71
    iget-object v7, p0, Lcom/ts/canview/CanPopupDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 72
    .local v6, "wmlp":Landroid/view/WindowManager$LayoutParams;
    const/16 v7, 0x33

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 73
    const/4 v7, 0x0

    aget v7, v4, v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 74
    const/4 v7, 0x1

    aget v7, v4, v7

    array-length v8, p2

    mul-int/lit8 v8, v8, 0x54

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0xf

    if-ltz v7, :cond_2

    .line 75
    const/4 v7, 0x1

    aget v7, v4, v7

    array-length v8, p2

    mul-int/lit8 v8, v8, 0x54

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0xf

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 79
    :goto_1
    iget-object v7, p0, Lcom/ts/canview/CanPopupDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v7, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 81
    array-length v3, p2

    .line 82
    .local v3, "line":I
    iget-object v7, p0, Lcom/ts/canview/CanPopupDialog;->mWindow:Landroid/view/Window;

    sget v8, Lcom/ts/MainUI/R$id;->can_comm_scrview:I

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    .line 83
    .local v5, "scrView":Landroid/widget/ScrollView;
    const/4 v7, 0x7

    if-ge v3, v7, :cond_3

    const/4 v7, 0x1

    if-le v3, v7, :cond_3

    .line 85
    sget-object v7, Lcom/ts/canview/CanPopupDialog;->mBk:[I

    add-int/lit8 v8, v3, -0x2

    aget v7, v7, v8

    invoke-virtual {v5, v7}, Landroid/widget/ScrollView;->setBackgroundResource(I)V

    .line 92
    :goto_2
    iget-object v7, p0, Lcom/ts/canview/CanPopupDialog;->mWindow:Landroid/view/Window;

    sget v8, Lcom/ts/MainUI/R$id;->can_comm_lineview:I

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 93
    .local v1, "layout":Landroid/widget/LinearLayout;
    new-array v7, v3, [Landroid/view/View;

    iput-object v7, p0, Lcom/ts/canview/CanPopupDialog;->mViewArray:[Landroid/view/View;

    .line 94
    new-array v7, v3, [Landroid/widget/TextView;

    iput-object v7, p0, Lcom/ts/canview/CanPopupDialog;->mTextViewArray:[Landroid/widget/TextView;

    .line 95
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 96
    .local v2, "li":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-lt v0, v3, :cond_4

    .line 106
    if-ltz p3, :cond_0

    if-ge p3, v3, :cond_0

    .line 108
    iget-object v7, p0, Lcom/ts/canview/CanPopupDialog;->mTextViewArray:[Landroid/widget/TextView;

    aget-object v7, v7, p3

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 77
    .end local v0    # "i":I
    .end local v1    # "layout":Landroid/widget/LinearLayout;
    .end local v2    # "li":Landroid/view/LayoutInflater;
    .end local v3    # "line":I
    .end local v5    # "scrView":Landroid/widget/ScrollView;
    :cond_2
    const/4 v7, 0x1

    aget v7, v4, v7

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0xf

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 89
    .restart local v3    # "line":I
    .restart local v5    # "scrView":Landroid/widget/ScrollView;
    :cond_3
    sget v7, Lcom/ts/MainUI/R$drawable;->can_comm_msgbox_line6:I

    invoke-virtual {v5, v7}, Landroid/widget/ScrollView;->setBackgroundResource(I)V

    goto :goto_2

    .line 98
    .restart local v0    # "i":I
    .restart local v1    # "layout":Landroid/widget/LinearLayout;
    .restart local v2    # "li":Landroid/view/LayoutInflater;
    :cond_4
    iget-object v7, p0, Lcom/ts/canview/CanPopupDialog;->mViewArray:[Landroid/view/View;

    sget v8, Lcom/ts/MainUI/R$layout;->can_item_popup_menu:I

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    aput-object v8, v7, v0

    .line 99
    iget-object v7, p0, Lcom/ts/canview/CanPopupDialog;->mViewArray:[Landroid/view/View;

    aget-object v7, v7, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    iget-object v8, p0, Lcom/ts/canview/CanPopupDialog;->mTextViewArray:[Landroid/widget/TextView;

    iget-object v7, p0, Lcom/ts/canview/CanPopupDialog;->mViewArray:[Landroid/view/View;

    aget-object v7, v7, v0

    sget v9, Lcom/ts/MainUI/R$id;->val:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v0

    .line 101
    iget-object v7, p0, Lcom/ts/canview/CanPopupDialog;->mTextViewArray:[Landroid/widget/TextView;

    aget-object v7, v7, v0

    aget-object v8, p2, v0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v7, p0, Lcom/ts/canview/CanPopupDialog;->mViewArray:[Landroid/view/View;

    aget-object v7, v7, v0

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    iget-object v7, p0, Lcom/ts/canview/CanPopupDialog;->mViewArray:[Landroid/view/View;

    aget-object v7, v7, v0

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/ts/canview/CanPopupDialog;->dismiss()V

    .line 139
    iget-object v0, p0, Lcom/ts/canview/CanPopupDialog;->mCallBack:Lcom/ts/canview/CanPopupDialog$OnItemClick;

    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/ts/canview/CanPopupDialog;->mCallBack:Lcom/ts/canview/CanPopupDialog$OnItemClick;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/ts/canview/CanPopupDialog$OnItemClick;->onItem(I)V

    .line 143
    :cond_0
    return-void
.end method
