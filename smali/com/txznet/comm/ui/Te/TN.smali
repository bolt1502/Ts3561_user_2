.class public Lcom/txznet/comm/ui/Te/TN;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static T2:Lcom/txznet/comm/ui/Te/TN;


# instance fields
.field public T:Z

.field private T0:Lcom/txznet/comm/ui/TR/T3/TJ;

.field public T3:Lcom/txznet/comm/ui/TR/T;

.field private T5:Z

.field private T7:Lcom/txznet/comm/ui/TR/T3/T3;

.field private TB:Lcom/txznet/comm/ui/TR/T3/Tw;

.field private TF:Ljava/lang/String;

.field private TG:Lcom/txznet/comm/ui/TR/T3/T7;

.field private TH:Lcom/txznet/comm/ui/TR/T3/TP;

.field private TJ:Lcom/txznet/comm/ui/TR/T3/T2;

.field private TL:Lcom/txznet/comm/ui/TR/T3/Ty;

.field private TN:Lcom/txznet/comm/ui/Te/T2;

.field private TO:Lcom/txznet/comm/ui/TR/T3/TR;

.field private TP:Lcom/txznet/comm/ui/TR/T3/TL;

.field private TQ:Lcom/txznet/comm/ui/TR/T3/Te;

.field private TR:Lcom/txznet/comm/ui/TR/T3/T;

.field private TW:Lcom/txznet/comm/ui/TR/T3/TH;

.field private Tc:Lcom/txznet/comm/ui/TR/T3/TN;

.field private Te:Lcom/txznet/comm/ui/TR/T3/TB;

.field private Tk:I

.field private Tn:Lcom/txznet/comm/ui/TR/T3/TO;

.field private To:Lcom/txznet/comm/ui/TR/T3/TG;

.field private Tr:Lcom/txznet/comm/ui/TR/T3/TQ;

.field private Tt:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/txznet/comm/ui/TR/T3;",
            ">;"
        }
    .end annotation
.end field

.field private Tu:I

.field private Tw:Z

.field private Ty:Lcom/txznet/comm/ui/TR/T3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/txznet/comm/ui/Te/TN;

    invoke-direct {v0}, Lcom/txznet/comm/ui/Te/TN;-><init>()V

    sput-object v0, Lcom/txznet/comm/ui/Te/TN;->T2:Lcom/txznet/comm/ui/Te/TN;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/txznet/comm/ui/Te/TN;->Tw:Z

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tk:I

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/txznet/comm/ui/Te/TN;->T:Z

    .line 197
    new-instance v0, Lcom/txznet/comm/ui/Te/TN$2;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Te/TN$2;-><init>(Lcom/txznet/comm/ui/Te/TN;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->T3:Lcom/txznet/comm/ui/TR/T;

    .line 206
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tt:Ljava/util/LinkedList;

    .line 242
    iput-boolean v1, p0, Lcom/txznet/comm/ui/Te/TN;->T5:Z

    .line 243
    iput v1, p0, Lcom/txznet/comm/ui/Te/TN;->Tu:I

    .line 77
    return-void
.end method

.method static synthetic T(Lcom/txznet/comm/ui/Te/TN;)Lcom/txznet/comm/ui/Te/T2;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/comm/ui/Te/TN;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TN:Lcom/txznet/comm/ui/Te/T2;

    return-object v0
.end method

.method public static T()Lcom/txznet/comm/ui/Te/TN;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/txznet/comm/ui/Te/TN;->T2:Lcom/txznet/comm/ui/Te/TN;

    return-object v0
.end method

.method private T0()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/Te/TN;->T2(I)V

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/comm/ui/Te/TN;->T5:Z

    .line 248
    return-void
.end method

.method private T2(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/txznet/comm/ui/Te/TN;->T5:Z

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/TR/T3/TO;->T(I)V

    goto :goto_0
.end method

.method static synthetic T3(Lcom/txznet/comm/ui/Te/TN;)V
    .locals 0
    .param p0, "x0"    # Lcom/txznet/comm/ui/Te/TN;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/txznet/comm/ui/Te/TN;->Tc()V

    return-void
.end method

.method private Tc()V
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/txznet/comm/ui/Te/TN;->T5:Z

    if-nez v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iget v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tu:I

    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/Te/TN;->T2(I)V

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/comm/ui/Te/TN;->T5:Z

    goto :goto_0
.end method


# virtual methods
.method public T(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 294
    iput p1, p0, Lcom/txznet/comm/ui/Te/TN;->Tu:I

    .line 295
    invoke-direct {p0, p1}, Lcom/txznet/comm/ui/Te/TN;->T2(I)V

    .line 296
    return-void
.end method

.method public T(II)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "selection"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Te:Lcom/txznet/comm/ui/TR/T3/TB;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Te:Lcom/txznet/comm/ui/TR/T3/TB;

    invoke-virtual {v0, p1, p2}, Lcom/txznet/comm/ui/TR/T3/TB;->T(II)V

    .line 289
    invoke-static {}, Lcom/txznet/comm/ui/TN/T3;->T()Lcom/txznet/comm/ui/TN/T3;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/txznet/comm/ui/TN/T3;->T(II)V

    .line 291
    :cond_0
    return-void
.end method

.method public T(ILandroid/view/View;)V
    .locals 1
    .param p1, "targetView"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TN:Lcom/txznet/comm/ui/Te/T2;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TN:Lcom/txznet/comm/ui/Te/T2;

    invoke-virtual {v0, p1, p2}, Lcom/txznet/comm/ui/Te/T2;->T(ILandroid/view/View;)Ljava/lang/Object;

    .line 275
    :cond_0
    return-void
.end method

.method public T(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 164
    const-string v0, "[UI2.0] add third record view"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 165
    if-eqz p1, :cond_0

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tw:Z

    .line 167
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TN:Lcom/txznet/comm/ui/Te/T2;

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/Te/T2;->T(Landroid/view/View;)V

    .line 169
    :cond_0
    return-void
.end method

.method public T(Lcom/txznet/comm/ui/TR/T3/TB;)V
    .locals 0
    .param p1, "listView"    # Lcom/txznet/comm/ui/TR/T3/TB;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/txznet/comm/ui/Te/TN;->Te:Lcom/txznet/comm/ui/TR/T3/TB;

    .line 264
    return-void
.end method

.method public T(Lcom/txznet/comm/ui/TR/T3;)V
    .locals 3
    .param p1, "msgView"    # Lcom/txznet/comm/ui/TR/T3;

    .prologue
    const/4 v2, 0x0

    .line 209
    iput-object p1, p0, Lcom/txznet/comm/ui/Te/TN;->Ty:Lcom/txznet/comm/ui/TR/T3;

    .line 210
    if-eqz p1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tt:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_0
    invoke-static {}, Lcom/txznet/comm/ui/TN/T3;->T()Lcom/txznet/comm/ui/TN/T3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/TN/T3;->T(Lcom/txznet/comm/ui/TR/T2;)V

    .line 214
    instance-of v0, p1, Lcom/txznet/comm/ui/TR/T3/TB;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/txznet/comm/ui/TR/T3;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->T3:Lcom/txznet/comm/ui/TR/T;

    invoke-virtual {p1, v0}, Lcom/txznet/comm/ui/TR/T3;->T(Lcom/txznet/comm/ui/TR/T;)V

    .line 216
    invoke-direct {p0}, Lcom/txznet/comm/ui/Te/TN;->T0()V

    .line 223
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->T3:Lcom/txznet/comm/ui/TR/T;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/txznet/comm/ui/TR/T;->T(Landroid/view/animation/Animation;I)V

    .line 220
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->T3:Lcom/txznet/comm/ui/TR/T;

    const/4 v1, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/txznet/comm/ui/TR/T;->T(Landroid/view/animation/Animation;I)V

    .line 222
    invoke-direct {p0}, Lcom/txznet/comm/ui/Te/TN;->Tc()V

    goto :goto_0
.end method

.method public T(Z)V
    .locals 1
    .param p1, "next"    # Z

    .prologue
    .line 312
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Te:Lcom/txznet/comm/ui/TR/T3/TB;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Te:Lcom/txznet/comm/ui/TR/T3/TB;

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/TR/T3/TB;->T(Z)V

    .line 315
    :cond_0
    return-void
.end method

.method public T2()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 135
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T2()I

    move-result v0

    iput v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tk:I

    .line 136
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->TN()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init view prefix:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 139
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T3()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 140
    invoke-static {}, Lcom/txznet/comm/ui/Te/T/Tw;->Te()Lcom/txznet/comm/ui/Te/T/Tw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/Tw;->TN()V

    .line 141
    invoke-static {}, Lcom/txznet/comm/ui/Te/T/Tw;->Te()Lcom/txznet/comm/ui/Te/T/Tw;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TN:Lcom/txznet/comm/ui/Te/T2;

    .line 147
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Te/TN;->T3()V

    .line 148
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T3()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 149
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    new-instance v1, Lcom/txznet/comm/ui/TR/T/TQ;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lcom/txznet/comm/ui/TR/T/TQ;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/TR/T3/TO;->T(Lcom/txznet/comm/ui/TR/T/TQ;)Lcom/txznet/comm/ui/TR/TN$T;

    move-result-object v0

    iget-object v0, v0, Lcom/txznet/comm/ui/TR/TN$T;->T3:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/txznet/comm/ui/Te/TN;->T3(Landroid/view/View;)V

    .line 153
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Te:Lcom/txznet/comm/ui/TR/T3/TB;

    if-nez v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TG:Lcom/txznet/comm/ui/TR/T3/T7;

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Te:Lcom/txznet/comm/ui/TR/T3/TB;

    .line 156
    :cond_2
    iput-boolean v3, p0, Lcom/txznet/comm/ui/Te/TN;->T:Z

    .line 157
    return-void

    .line 142
    :cond_3
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T3()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 143
    invoke-static {}, Lcom/txznet/comm/ui/Te/T/TN;->Te()Lcom/txznet/comm/ui/Te/T/TN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/TN;->TN()V

    .line 144
    invoke-static {}, Lcom/txznet/comm/ui/Te/T/TN;->Te()Lcom/txznet/comm/ui/Te/T/TN;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TN:Lcom/txznet/comm/ui/Te/T2;

    goto :goto_0

    .line 150
    :cond_4
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T3()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 151
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    new-instance v1, Lcom/txznet/comm/ui/TR/T/TQ;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lcom/txznet/comm/ui/TR/T/TQ;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/TR/T3/TO;->T(Lcom/txznet/comm/ui/TR/T/TQ;)Lcom/txznet/comm/ui/TR/TN$T;

    move-result-object v0

    iget-object v0, v0, Lcom/txznet/comm/ui/TR/TN$T;->T3:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/txznet/comm/ui/Te/TN;->T3(Landroid/view/View;)V

    goto :goto_1
.end method

.method public T3()V
    .locals 4

    .prologue
    .line 92
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UI2.0]start init view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 95
    :try_start_0
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "RecordView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/TO;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    .line 96
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/TO;->T3()V

    .line 97
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PoiListView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/T7;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TG:Lcom/txznet/comm/ui/TR/T3/T7;

    .line 98
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TG:Lcom/txznet/comm/ui/TR/T3/T7;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/T7;->T3()V

    .line 99
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "AudioListView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/T;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TR:Lcom/txznet/comm/ui/TR/T3/T;

    .line 100
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TR:Lcom/txznet/comm/ui/TR/T3/T;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/T;->T3()V

    .line 101
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WeChatListView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/TH;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TW:Lcom/txznet/comm/ui/TR/T3/TH;

    .line 102
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TW:Lcom/txznet/comm/ui/TR/T3/TH;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/TH;->T3()V

    .line 103
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ChatToSysView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/Tw;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TB:Lcom/txznet/comm/ui/TR/T3/Tw;

    .line 104
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TB:Lcom/txznet/comm/ui/TR/T3/Tw;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/Tw;->T3()V

    .line 105
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ChatFromSysView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/T2;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TJ:Lcom/txznet/comm/ui/TR/T3/T2;

    .line 106
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TJ:Lcom/txznet/comm/ui/TR/T3/T2;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/T2;->T3()V

    .line 107
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TtsListView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/TL;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TP:Lcom/txznet/comm/ui/TR/T3/TL;

    .line 108
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TP:Lcom/txznet/comm/ui/TR/T3/TL;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/TL;->T3()V

    .line 109
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SimListView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/TQ;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->Tr:Lcom/txznet/comm/ui/TR/T3/TQ;

    .line 110
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->Tr:Lcom/txznet/comm/ui/TR/T3/TQ;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/TQ;->T3()V

    .line 111
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CallListView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/T3;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->T7:Lcom/txznet/comm/ui/TR/T3/T3;

    .line 112
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->T7:Lcom/txznet/comm/ui/TR/T3/T3;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/T3;->T3()V

    .line 113
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HelpListView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/TR;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TO:Lcom/txznet/comm/ui/TR/T3/TR;

    .line 114
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TO:Lcom/txznet/comm/ui/TR/T3/TR;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/TR;->T3()V

    .line 115
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CinemaListView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/TG;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->To:Lcom/txznet/comm/ui/TR/T3/TG;

    .line 116
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->To:Lcom/txznet/comm/ui/TR/T3/TG;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/TG;->T3()V

    .line 117
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ChatShockView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/Te;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TQ:Lcom/txznet/comm/ui/TR/T3/Te;

    .line 118
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TQ:Lcom/txznet/comm/ui/TR/T3/Te;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/Te;->T3()V

    .line 119
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ChatWeatherView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/Ty;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TL:Lcom/txznet/comm/ui/TR/T3/Ty;

    .line 120
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TL:Lcom/txznet/comm/ui/TR/T3/Ty;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/Ty;->T3()V

    .line 121
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "NoTtsQrcodeView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/TP;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TH:Lcom/txznet/comm/ui/TR/T3/TP;

    .line 122
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TH:Lcom/txznet/comm/ui/TR/T3/TP;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/TP;->T3()V

    .line 123
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ListTitleView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/TJ;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->T0:Lcom/txznet/comm/ui/TR/T3/TJ;

    .line 124
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->T0:Lcom/txznet/comm/ui/TR/T3/TJ;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/TJ;->T3()V

    .line 125
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ChatMapView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/TN;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->Tc:Lcom/txznet/comm/ui/TR/T3/TN;

    .line 126
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->Tc:Lcom/txznet/comm/ui/TR/T3/TN;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/TN;->T3()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "[UI2.0]init view error!"

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public T3(I)V
    .locals 1
    .param p1, "volume"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/txznet/comm/ui/Te/TN;->T5:Z

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/TR/T3/TO;->T3(I)V

    .line 309
    :cond_0
    return-void
.end method

.method public T3(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tw:Z

    if-nez v0, :cond_0

    .line 184
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TN:Lcom/txznet/comm/ui/Te/T2;

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/Te/T2;->T(Landroid/view/View;)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    new-instance v0, Lcom/txznet/comm/ui/Te/TN$1;

    invoke-direct {v0, p0, p1}, Lcom/txznet/comm/ui/Te/TN$1;-><init>(Lcom/txznet/comm/ui/Te/TN;Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method public T7()Lcom/txznet/comm/ui/TR/T3/TR;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TO:Lcom/txznet/comm/ui/TR/T3/TR;

    return-object v0
.end method

.method public TB()Lcom/txznet/comm/ui/TR/T3/TL;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TP:Lcom/txznet/comm/ui/TR/T3/TL;

    return-object v0
.end method

.method public TG()Lcom/txznet/comm/ui/TR/T3/T;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TR:Lcom/txznet/comm/ui/TR/T3/T;

    return-object v0
.end method

.method public TH()Lcom/txznet/comm/ui/TR/T3/TP;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TH:Lcom/txznet/comm/ui/TR/T3/TP;

    return-object v0
.end method

.method public TJ()Lcom/txznet/comm/ui/TR/T3/Tw;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TB:Lcom/txznet/comm/ui/TR/T3/Tw;

    return-object v0
.end method

.method public TL()Lcom/txznet/comm/ui/TR/T3/Ty;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TL:Lcom/txznet/comm/ui/TR/T3/Ty;

    return-object v0
.end method

.method public TN()V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    if-nez v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T3()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 176
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    new-instance v1, Lcom/txznet/comm/ui/TR/T/TQ;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lcom/txznet/comm/ui/TR/T/TQ;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/TR/T3/TO;->T(Lcom/txznet/comm/ui/TR/T/TQ;)Lcom/txznet/comm/ui/TR/TN$T;

    move-result-object v0

    iget-object v0, v0, Lcom/txznet/comm/ui/TR/TN$T;->T3:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/txznet/comm/ui/Te/TN;->T3(Landroid/view/View;)V

    goto :goto_0

    .line 177
    :cond_2
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T3()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    new-instance v1, Lcom/txznet/comm/ui/TR/T/TQ;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lcom/txznet/comm/ui/TR/T/TQ;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/TR/T3/TO;->T(Lcom/txznet/comm/ui/TR/T/TQ;)Lcom/txznet/comm/ui/TR/TN$T;

    move-result-object v0

    iget-object v0, v0, Lcom/txznet/comm/ui/TR/TN$T;->T3:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/txznet/comm/ui/Te/TN;->T3(Landroid/view/View;)V

    goto :goto_0
.end method

.method public TO()Lcom/txznet/comm/ui/TR/T3/TG;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->To:Lcom/txznet/comm/ui/TR/T3/TG;

    return-object v0
.end method

.method public TP()Lcom/txznet/comm/ui/TR/T3/TQ;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tr:Lcom/txznet/comm/ui/TR/T3/TQ;

    return-object v0
.end method

.method public TQ()Lcom/txznet/comm/ui/TR/T3/TN;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tc:Lcom/txznet/comm/ui/TR/T3/TN;

    return-object v0
.end method

.method public TR()Lcom/txznet/comm/ui/TR/T3/TH;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TW:Lcom/txznet/comm/ui/TR/T3/TH;

    return-object v0
.end method

.method public TW()Lcom/txznet/comm/ui/TR/T3/T2;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TJ:Lcom/txznet/comm/ui/TR/T3/T2;

    return-object v0
.end method

.method public Te()V
    .locals 3

    .prologue
    .line 226
    iget-object v2, p0, Lcom/txznet/comm/ui/Te/TN;->Tt:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 233
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/txznet/comm/ui/Te/TN;->Tt:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3;

    .line 230
    .local v1, "msgView":Lcom/txznet/comm/ui/TR/T3;
    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3;->T2()V

    goto :goto_1

    .line 232
    .end local v1    # "msgView":Lcom/txznet/comm/ui/TR/T3;
    :cond_1
    iget-object v2, p0, Lcom/txznet/comm/ui/Te/TN;->Tt:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    goto :goto_0
.end method

.method public Tn()Lcom/txznet/comm/ui/TR/T3/T7;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TG:Lcom/txznet/comm/ui/TR/T3/T7;

    return-object v0
.end method

.method public To()Lcom/txznet/comm/ui/TR/T3/Te;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TQ:Lcom/txznet/comm/ui/TR/T3/Te;

    return-object v0
.end method

.method public Tr()Lcom/txznet/comm/ui/TR/T3/T3;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->T7:Lcom/txznet/comm/ui/TR/T3/T3;

    return-object v0
.end method

.method public Tw()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/TR/T3/TO;->T2()V

    .line 240
    :cond_0
    return-void
.end method

.method public Ty()Lcom/txznet/comm/ui/Te/T2;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TN:Lcom/txznet/comm/ui/Te/T2;

    if-nez v0, :cond_0

    .line 319
    invoke-static {}, Lcom/txznet/comm/ui/Te/T/Tw;->Te()Lcom/txznet/comm/ui/Te/T/Tw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/Tw;->TN()V

    .line 320
    invoke-static {}, Lcom/txznet/comm/ui/Te/T/Tw;->Te()Lcom/txznet/comm/ui/Te/T/Tw;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TN:Lcom/txznet/comm/ui/Te/T2;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TN:Lcom/txznet/comm/ui/Te/T2;

    return-object v0
.end method
