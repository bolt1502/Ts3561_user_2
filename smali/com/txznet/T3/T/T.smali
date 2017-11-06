.class public Lcom/txznet/T3/T/T;
.super Lcom/txznet/comm/T/T3;
.source "Proguard"


# static fields
.field static T:Lcom/txznet/T3/T/TN;

.field private static T2:Z

.field static T3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TG:Landroid/view/View$OnClickListener;

.field private TN:Lcom/txznet/T3/T/T3;

.field private Te:Landroid/widget/RelativeLayout;

.field private Tn:Landroid/view/View$OnClickListener;

.field private Tw:Landroid/widget/ImageButton;

.field private Ty:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/txznet/T3/T/T;->T2:Z

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/txznet/comm/T/T3;-><init>()V

    .line 78
    new-instance v0, Lcom/txznet/T3/T/T$1;

    invoke-direct {v0, p0}, Lcom/txznet/T3/T/T$1;-><init>(Lcom/txznet/T3/T/T;)V

    iput-object v0, p0, Lcom/txznet/T3/T/T;->Tn:Landroid/view/View$OnClickListener;

    .line 86
    new-instance v0, Lcom/txznet/T3/T/T$2;

    invoke-direct {v0, p0}, Lcom/txznet/T3/T/T$2;-><init>(Lcom/txznet/T3/T/T;)V

    iput-object v0, p0, Lcom/txznet/T3/T/T;->TG:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static T(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "position"    # I

    .prologue
    .line 133
    new-instance v5, Lcom/txznet/T3/T/Te;

    invoke-direct {v5, p1}, Lcom/txznet/T3/T/Te;-><init>(Landroid/content/Context;)V

    .line 134
    .local v5, "dialog":Lcom/txznet/T3/T/Te;
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/txznet/T3/T/Te;->setCanceledOnTouchOutside(Z)V

    .line 135
    invoke-virtual {v5}, Lcom/txznet/T3/T/Te;->T()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 136
    .local v1, "editText":Landroid/widget/EditText;
    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v5}, Lcom/txznet/T3/T/Te;->T3()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 138
    .local v6, "titleTxt":Landroid/widget/TextView;
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    new-instance v0, Lcom/txznet/T3/T/T$3;

    move-object v2, p1

    move-object v3, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/txznet/T3/T/T$3;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;ILcom/txznet/T3/T/Te;)V

    invoke-virtual {v5, v0}, Lcom/txznet/T3/T/Te;->T(Landroid/view/View$OnClickListener;)V

    .line 173
    new-instance v0, Lcom/txznet/T3/T/T$4;

    invoke-direct {v0, v5}, Lcom/txznet/T3/T/T$4;-><init>(Lcom/txznet/T3/T/Te;)V

    invoke-virtual {v5, v0}, Lcom/txznet/T3/T/Te;->T3(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {v5}, Lcom/txznet/T3/T/Te;->show()V

    .line 180
    return-void
.end method

.method private T(Z)V
    .locals 3
    .param p1, "editable"    # Z

    .prologue
    const/16 v1, 0x8

    .line 46
    iget-object v2, p0, Lcom/txznet/T3/T/T;->Te:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 47
    sget-object v0, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/txznet/T3/T/T;->Te:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 50
    :cond_0
    sget-object v0, Lcom/txznet/T3/T/T;->T:Lcom/txznet/T3/T/TN;

    invoke-virtual {v0, p1}, Lcom/txznet/T3/T/TN;->T(Z)V

    .line 51
    return-void

    :cond_1
    move v0, v1

    .line 46
    goto :goto_0
.end method

.method private TN()V
    .locals 2

    .prologue
    .line 102
    sget v0, Lcom/txznet/txz/comm/R$id;->lv_command:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/txznet/T3/T/T3;

    iput-object v0, p0, Lcom/txznet/T3/T/T;->TN:Lcom/txznet/T3/T/T3;

    .line 103
    sget v0, Lcom/txznet/txz/comm/R$id;->imgbnt_add:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/txznet/T3/T/T;->Tw:Landroid/widget/ImageButton;

    .line 104
    iget-object v0, p0, Lcom/txznet/T3/T/T;->Tw:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/txznet/T3/T/T;->TG:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    sget v0, Lcom/txznet/txz/comm/R$id;->layout_addcommand:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/txznet/T3/T/T;->Te:Landroid/widget/RelativeLayout;

    .line 106
    iget-object v0, p0, Lcom/txznet/T3/T/T;->Te:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/txznet/T3/T/T;->TG:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    sget v0, Lcom/txznet/txz/comm/R$id;->imgbnt_backToSetting:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txznet/T3/T/T;->Ty:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/txznet/T3/T/T;->Ty:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txznet/T3/T/T;->Tn:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method private Te()V
    .locals 4

    .prologue
    .line 112
    invoke-static {}, Lcom/txznet/comm/T3/T/T3;->TN()[Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "keywords":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 114
    sget-object v2, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 116
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 117
    sget-object v2, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/txznet/comm/T/T3;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v0, Lcom/txznet/txz/comm/R$layout;->layout_asrcommand:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T;->setContentView(I)V

    .line 33
    invoke-direct {p0}, Lcom/txznet/T3/T/T;->TN()V

    .line 34
    invoke-direct {p0}, Lcom/txznet/T3/T/T;->Te()V

    .line 35
    new-instance v0, Lcom/txznet/T3/T/TN;

    invoke-direct {v0, p0}, Lcom/txznet/T3/T/TN;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/txznet/T3/T/T;->T:Lcom/txznet/T3/T/TN;

    .line 36
    iget-object v0, p0, Lcom/txznet/T3/T/T;->TN:Lcom/txznet/T3/T/T3;

    sget-object v1, Lcom/txznet/T3/T/T;->T:Lcom/txznet/T3/T/TN;

    invoke-virtual {v0, v1}, Lcom/txznet/T3/T/T3;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/txznet/T3/T/T;->T:Lcom/txznet/T3/T/TN;

    .line 68
    invoke-super {p0}, Lcom/txznet/comm/T/T3;->onDestroy()V

    .line 69
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    sget-object v0, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/txznet/T3/T/T;->Te()V

    .line 58
    :cond_0
    sget-object v0, Lcom/txznet/T3/T/T;->T:Lcom/txznet/T3/T/TN;

    if-nez v0, :cond_1

    .line 59
    new-instance v0, Lcom/txznet/T3/T/TN;

    invoke-direct {v0, p0}, Lcom/txznet/T3/T/TN;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/txznet/T3/T/T;->T:Lcom/txznet/T3/T/TN;

    .line 61
    :cond_1
    sget-object v0, Lcom/txznet/T3/T/T;->T:Lcom/txznet/T3/T/TN;

    invoke-virtual {v0}, Lcom/txznet/T3/T/TN;->notifyDataSetChanged()V

    .line 62
    invoke-super {p0, p1}, Lcom/txznet/comm/T/T3;->onNewIntent(Landroid/content/Intent;)V

    .line 63
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/txznet/T3/T/T;->T2:Z

    invoke-direct {p0, v0}, Lcom/txznet/T3/T/T;->T(Z)V

    .line 42
    invoke-super {p0}, Lcom/txznet/comm/T/T3;->onResume()V

    .line 43
    return-void
.end method
