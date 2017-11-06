.class public Lcom/txznet/comm/ui/Tn/T2;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static TZ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public T:I

.field public T0:I

.field public T1:I

.field public T2:I

.field public T3:I

.field public T5:I

.field public T7:I

.field public TB:I

.field public TF:I

.field public TG:I

.field public TH:I

.field public TJ:I

.field public TL:I

.field public TN:I

.field public TO:I

.field public TP:I

.field public TQ:I

.field public TR:I

.field public TW:I

.field public TY:I

.field public Tc:I

.field public Te:I

.field public Tf:I

.field public Tg:I

.field public Tk:I

.field public Tn:I

.field public To:I

.field public Tr:I

.field public Tt:I

.field public Tu:I

.field public Tw:I

.field public Ty:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x18

    const/16 v6, 0x24

    const/16 v5, 0x14

    const/16 v4, 0x1c

    const/16 v3, 0x1a

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    .line 64
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "base_color1"

    const-string v2, "#FFFFFFFF"

    invoke-static {v2}, Lcom/txznet/comm/ui/TG/T;->T(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "base_color2"

    const-string v2, "#4BD2FD"

    invoke-static {v2}, Lcom/txznet/comm/ui/TG/T;->T(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "base_color3"

    const-string v2, "#F8E71C"

    invoke-static {v2}, Lcom/txznet/comm/ui/TG/T;->T(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "base_color4"

    const-string v2, "#80FFFFFF"

    invoke-static {v2}, Lcom/txznet/comm/ui/TG/T;->T(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "share_baseColor1"

    const-string v2, "#FFF54545"

    invoke-static {v2}, Lcom/txznet/comm/ui/TG/T;->T(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "share_baseColor2"

    const-string v2, "#FF00CF4A"

    invoke-static {v2}, Lcom/txznet/comm/ui/TG/T;->T(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "base_size1"

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "base_size2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "base_size3"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "base_size4"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "list_indexSize1"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "weather_tmpSize1"

    const/16 v2, 0x60

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "weather_tmpSize2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "weather_stateSize1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "weather_airSize1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "share_nameSize1"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "share_nameSize2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "share_valueSize1"

    const/16 v2, 0x55

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "share_riseSize1"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "share_itemSize1"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "list_introSize1"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "list_pageSize1"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "sim_itemSize1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "sim_itemSize2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/txznet/comm/ui/Tn/T2;->TZ:Ljava/util/HashMap;

    const-string v1, "sim_itemSize3"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/16 v4, 0x38

    const/16 v3, 0x30

    const/16 v2, 0x2c

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/16 v0, 0xf

    iput v0, p0, Lcom/txznet/comm/ui/Tn/T2;->T:I

    .line 9
    iput v2, p0, Lcom/txznet/comm/ui/Tn/T2;->T3:I

    .line 10
    iput v2, p0, Lcom/txznet/comm/ui/Tn/T2;->T2:I

    .line 11
    iput v4, p0, Lcom/txznet/comm/ui/Tn/T2;->TN:I

    .line 12
    iput v4, p0, Lcom/txznet/comm/ui/Tn/T2;->Te:I

    .line 14
    iput v1, p0, Lcom/txznet/comm/ui/Tn/T2;->Tw:I

    .line 15
    iput v1, p0, Lcom/txznet/comm/ui/Tn/T2;->Ty:I

    .line 16
    iput v1, p0, Lcom/txznet/comm/ui/Tn/T2;->Tn:I

    .line 17
    iput v1, p0, Lcom/txznet/comm/ui/Tn/T2;->TG:I

    .line 18
    iput v1, p0, Lcom/txznet/comm/ui/Tn/T2;->TR:I

    .line 21
    iput v5, p0, Lcom/txznet/comm/ui/Tn/T2;->TW:I

    .line 22
    iput v5, p0, Lcom/txznet/comm/ui/Tn/T2;->TJ:I

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/txznet/comm/ui/Tn/T2;->TB:I

    .line 24
    const/16 v0, 0xf

    iput v0, p0, Lcom/txznet/comm/ui/Tn/T2;->TP:I

    .line 25
    const/4 v0, 0x6

    iput v0, p0, Lcom/txznet/comm/ui/Tn/T2;->Tr:I

    .line 28
    iput v2, p0, Lcom/txznet/comm/ui/Tn/T2;->T7:I

    .line 29
    iput v2, p0, Lcom/txznet/comm/ui/Tn/T2;->TO:I

    .line 30
    iput v3, p0, Lcom/txznet/comm/ui/Tn/T2;->To:I

    .line 31
    iput v3, p0, Lcom/txznet/comm/ui/Tn/T2;->TQ:I

    .line 34
    iput v4, p0, Lcom/txznet/comm/ui/Tn/T2;->TL:I

    .line 37
    const/16 v0, 0x160

    iput v0, p0, Lcom/txznet/comm/ui/Tn/T2;->TH:I

    .line 38
    const/16 v0, 0xdc

    iput v0, p0, Lcom/txznet/comm/ui/Tn/T2;->T0:I

    .line 39
    const/16 v0, 0xbb

    iput v0, p0, Lcom/txznet/comm/ui/Tn/T2;->Tc:I

    .line 42
    iput v3, p0, Lcom/txznet/comm/ui/Tn/T2;->Tk:I

    .line 43
    iput v3, p0, Lcom/txznet/comm/ui/Tn/T2;->TF:I

    .line 56
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/txznet/comm/ui/Tn/T2;->Tg:I

    .line 57
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/txznet/comm/ui/Tn/T2;->TY:I

    return-void
.end method
