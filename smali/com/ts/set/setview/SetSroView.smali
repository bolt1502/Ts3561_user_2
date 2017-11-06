.class public Lcom/ts/set/setview/SetSroView;
.super Ljava/lang/Object;
.source "SetSroView.java"


# static fields
.field public static inflater:Landroid/view/LayoutInflater;

.field public static m_llSetMain:Landroid/widget/LinearLayout;

.field public static m_svSetMain:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/ts/set/setview/SetSroView;->m_svSetMain:Landroid/widget/ScrollView;

    .line 17
    sput-object v0, Lcom/ts/set/setview/SetSroView;->m_llSetMain:Landroid/widget/LinearLayout;

    .line 18
    sput-object v0, Lcom/ts/set/setview/SetSroView;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddView(Landroid/view/View;)V
    .locals 4
    .param p0, "vw"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 51
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x3bb

    const/16 v2, 0x42

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x22

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 53
    sget-object v1, Lcom/ts/set/setview/SetSroView;->m_llSetMain:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    return-void
.end method

.method public static AddView(Landroid/view/View;II)V
    .locals 3
    .param p0, "vw"    # Landroid/view/View;
    .param p1, "nWidth"    # I
    .param p2, "nHeight"    # I

    .prologue
    const/4 v2, 0x0

    .line 57
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x22

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 59
    sget-object v1, Lcom/ts/set/setview/SetSroView;->m_llSetMain:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    return-void
.end method

.method public static Inint(Landroid/content/Context;)V
    .locals 3
    .param p0, "tx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 22
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ts/set/setview/SetSroView;->m_svSetMain:Landroid/widget/ScrollView;

    .line 23
    sget-object v0, Lcom/ts/set/setview/SetSroView;->m_svSetMain:Landroid/widget/ScrollView;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 24
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ts/set/setview/SetSroView;->m_llSetMain:Landroid/widget/LinearLayout;

    .line 25
    sget-object v0, Lcom/ts/set/setview/SetSroView;->m_llSetMain:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 26
    sget-object v0, Lcom/ts/set/setview/SetSroView;->m_llSetMain:Landroid/widget/LinearLayout;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 27
    sget-object v0, Lcom/ts/set/setview/SetSroView;->m_svSetMain:Landroid/widget/ScrollView;

    sget-object v1, Lcom/ts/set/setview/SetSroView;->m_llSetMain:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 28
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lcom/ts/set/setview/SetSroView;->inflater:Landroid/view/LayoutInflater;

    .line 30
    return-void
.end method

.method public static Inint(Landroid/content/Context;I)V
    .locals 2
    .param p0, "tx"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 33
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ts/set/setview/SetSroView;->m_svSetMain:Landroid/widget/ScrollView;

    .line 34
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ts/set/setview/SetSroView;->m_llSetMain:Landroid/widget/LinearLayout;

    .line 35
    sget-object v0, Lcom/ts/set/setview/SetSroView;->m_llSetMain:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 36
    sget-object v0, Lcom/ts/set/setview/SetSroView;->m_llSetMain:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 38
    sget-object v0, Lcom/ts/set/setview/SetSroView;->m_svSetMain:Landroid/widget/ScrollView;

    sget-object v1, Lcom/ts/set/setview/SetSroView;->m_llSetMain:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 39
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lcom/ts/set/setview/SetSroView;->inflater:Landroid/view/LayoutInflater;

    .line 41
    return-void
.end method

.method public static Show(Landroid/content/Context;)V
    .locals 2
    .param p0, "tx"    # Landroid/content/Context;

    .prologue
    .line 45
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 46
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "tx":Landroid/content/Context;
    sget-object v0, Lcom/ts/set/setview/SetSroView;->m_svSetMain:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method public static b2i(Z)I
    .locals 1
    .param p0, "bData"    # Z

    .prologue
    .line 65
    if-eqz p0, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
