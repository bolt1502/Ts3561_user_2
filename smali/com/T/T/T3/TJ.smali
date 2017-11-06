.class public Lcom/T/T/T3/TJ;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static T2:Lcom/T/T/T3/TJ;


# instance fields
.field protected final T:Lcom/T/T/T3/TB;

.field private final T3:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final TN:Lcom/T/T/TN/Te;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/T/T/TN/Te",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/T/T/T3/T/TS;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/T/T/T3/TJ;

    invoke-direct {v0}, Lcom/T/T/T3/TJ;-><init>()V

    sput-object v0, Lcom/T/T/T3/TJ;->T2:Lcom/T/T/T3/TJ;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    .line 127
    new-instance v0, Lcom/T/T/TN/Te;

    invoke-direct {v0}, Lcom/T/T/TN/Te;-><init>()V

    iput-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    .line 129
    new-instance v0, Lcom/T/T/T3/TB;

    invoke-direct {v0}, Lcom/T/T/T3/TB;-><init>()V

    iput-object v0, p0, Lcom/T/T/T3/TJ;->T:Lcom/T/T/T3/TB;

    .line 132
    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/lang/Character;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/lang/Byte;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/lang/Short;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/math/BigDecimal;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/util/Date;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/sql/Date;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/sql/Time;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/sql/Timestamp;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/T/T/T3/T/TQ;->T:Lcom/T/T/T3/T/TQ;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/sql/Timestamp;

    sget-object v2, Lcom/T/T/T3/T/T3J;->T:Lcom/T/T/T3/T/T3J;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/sql/Date;

    sget-object v2, Lcom/T/T/T3/T/T32;->T:Lcom/T/T/T3/T/T32;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/sql/Time;

    sget-object v2, Lcom/T/T/T3/T/T3G;->T:Lcom/T/T/T3/T/T3G;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/Date;

    sget-object v2, Lcom/T/T/T3/T/TO;->T:Lcom/T/T/T3/T/TO;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/Calendar;

    sget-object v2, Lcom/T/T/T3/T/TG;->T:Lcom/T/T/T3/T/TG;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Lcom/T/T/Te;

    sget-object v2, Lcom/T/T/T3/T/TZ;->T:Lcom/T/T/T3/T/TZ;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Lcom/T/T/T3;

    sget-object v2, Lcom/T/T/T3/T/T1;->T:Lcom/T/T/T3/T/T1;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/Map;

    sget-object v2, Lcom/T/T/T3/T/T8;->T:Lcom/T/T/T3/T/T8;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/HashMap;

    sget-object v2, Lcom/T/T/T3/T/T8;->T:Lcom/T/T/T3/T/T8;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/T/T/T3/T/T8;->T:Lcom/T/T/T3/T/T8;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/TreeMap;

    sget-object v2, Lcom/T/T/T3/T/T8;->T:Lcom/T/T/T3/T/T8;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    sget-object v2, Lcom/T/T/T3/T/T8;->T:Lcom/T/T/T3/T/T8;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/T/T/T3/T/T8;->T:Lcom/T/T/T3/T/T8;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/Collection;

    sget-object v2, Lcom/T/T/T3/T/T7;->T:Lcom/T/T/T3/T/T7;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/List;

    sget-object v2, Lcom/T/T/T3/T/T7;->T:Lcom/T/T/T3/T/T7;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/T/T/T3/T/T7;->T:Lcom/T/T/T3/T/T7;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Object;

    sget-object v2, Lcom/T/T/T3/T/Tx;->T:Lcom/T/T/T3/T/Tx;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/T/T/T3/T/T3e;->T:Lcom/T/T/T3/T/T3e;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/T/T/T3/T/TJ;->T:Lcom/T/T/T3/T/TJ;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/T/T/T3/T/TJ;->T:Lcom/T/T/T3/T/TJ;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/T/T/T3/T/TV;->T:Lcom/T/T/T3/T/TV;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/T/T/T3/T/TV;->T:Lcom/T/T/T3/T/TV;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/T/T/T3/T/TV;->T:Lcom/T/T/T3/T/TV;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/T/T/T3/T/TV;->T:Lcom/T/T/T3/T/TV;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/T/T/T3/T/T5;->T:Lcom/T/T/T3/T/T5;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/T/T/T3/T/T5;->T:Lcom/T/T/T3/T/T5;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/T/T/T3/T/TD;->T:Lcom/T/T/T3/T/TD;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lcom/T/T/T3/T/TD;->T:Lcom/T/T/T3/T/TD;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/T/T/T3/T/Te;->T:Lcom/T/T/T3/T/Te;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/T/T/T3/T/TN;->T:Lcom/T/T/T3/T/TN;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/T/T/T3/T/Tk;->T:Lcom/T/T/T3/T/Tk;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lcom/T/T/T3/T/Tk;->T:Lcom/T/T/T3/T/Tk;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/T/T/T3/T/TV;->T:Lcom/T/T/T3/T/TV;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lcom/T/T/T3/T/TV;->T:Lcom/T/T/T3/T/TV;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/T/T/T3/T/Tw;->T:Lcom/T/T/T3/T/Tw;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/T/T/T3/T/Tw;->T:Lcom/T/T/T3/T/Tw;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Class;

    sget-object v2, Lcom/T/T/T3/T/TP;->T:Lcom/T/T/T3/T/TP;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, [C

    sget-object v2, Lcom/T/T/T3/T/TR;->T:Lcom/T/T/T3/T/TR;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v2, Lcom/T/T/T3/T/Tw;->T:Lcom/T/T/T3/T/Tw;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v2, Lcom/T/T/T3/T/T5;->T:Lcom/T/T/T3/T/T5;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v2, Lcom/T/T/T3/T/TD;->T:Lcom/T/T/T3/T/TD;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/T/T/T3/T/T33;->T:Lcom/T/T/T3/T/T33;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/ref/WeakReference;

    sget-object v2, Lcom/T/T/T3/T/T33;->T:Lcom/T/T/T3/T/T33;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/ref/SoftReference;

    sget-object v2, Lcom/T/T/T3/T/T33;->T:Lcom/T/T/T3/T/T33;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/UUID;

    sget-object v2, Lcom/T/T/T3/T/T37;->T:Lcom/T/T/T3/T/T37;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/TimeZone;

    sget-object v2, Lcom/T/T/T3/T/T3R;->T:Lcom/T/T/T3/T/T3R;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/Locale;

    sget-object v2, Lcom/T/T/T3/T/TA;->T:Lcom/T/T/T3/T/TA;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/net/InetAddress;

    sget-object v2, Lcom/T/T/T3/T/TF;->T:Lcom/T/T/T3/T/TF;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/net/Inet4Address;

    sget-object v2, Lcom/T/T/T3/T/TF;->T:Lcom/T/T/T3/T/TF;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/net/Inet6Address;

    sget-object v2, Lcom/T/T/T3/T/TF;->T:Lcom/T/T/T3/T/TF;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/net/InetSocketAddress;

    sget-object v2, Lcom/T/T/T3/T/Tt;->T:Lcom/T/T/T3/T/Tt;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/io/File;

    sget-object v2, Lcom/T/T/T3/T/Tc;->T:Lcom/T/T/T3/T/Tc;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 225
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/net/URI;

    sget-object v2, Lcom/T/T/T3/T/T3B;->T:Lcom/T/T/T3/T/T3B;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/net/URL;

    sget-object v2, Lcom/T/T/T3/T/T3P;->T:Lcom/T/T/T3/T/T3P;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/regex/Pattern;

    sget-object v2, Lcom/T/T/T3/T/T4;->T:Lcom/T/T/T3/T/T4;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/nio/charset/Charset;

    sget-object v2, Lcom/T/T/T3/T/TB;->T:Lcom/T/T/T3/T/TB;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Number;

    sget-object v2, Lcom/T/T/T3/T/TV;->T:Lcom/T/T/T3/T/TV;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    sget-object v2, Lcom/T/T/T3/T/T3;->T:Lcom/T/T/T3/T/T3;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/concurrent/atomic/AtomicLongArray;

    sget-object v2, Lcom/T/T/T3/T/T3;->T:Lcom/T/T/T3/T/T3;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/StackTraceElement;

    sget-object v2, Lcom/T/T/T3/T/T3N;->T:Lcom/T/T/T3/T/T3N;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 234
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/io/Serializable;

    sget-object v2, Lcom/T/T/T3/T/Tx;->T:Lcom/T/T/T3/T/Tx;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Cloneable;

    sget-object v2, Lcom/T/T/T3/T/Tx;->T:Lcom/T/T/T3/T/Tx;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Comparable;

    sget-object v2, Lcom/T/T/T3/T/Tx;->T:Lcom/T/T/T3/T/Tx;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/io/Closeable;

    sget-object v2, Lcom/T/T/T3/T/Tx;->T:Lcom/T/T/T3/T/Tx;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 239
    return-void
.end method

.method public static T()Lcom/T/T/T3/TJ;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/T/T/T3/TJ;->T2:Lcom/T/T/T3/TJ;

    return-object v0
.end method

.method public static T(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lcom/T/T/T3/TJ;->T3(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 375
    .local v0, "field":Ljava/lang/reflect/Field;
    if-nez v0, :cond_0

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/T/T/T3/TJ;->T3(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 378
    :cond_0
    if-nez v0, :cond_1

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/T/T/T3/TJ;->T3(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 381
    :cond_1
    return-object v0
.end method

.method private static T3(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 386
    .local v2, "item":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 394
    .end local v2    # "item":Ljava/lang/reflect/Field;
    :goto_1
    return-object v2

    .line 385
    .restart local v2    # "item":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    .end local v2    # "item":Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_2

    .line 391
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/T/T/T3/TJ;->T(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    goto :goto_1

    .line 394
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public T(Lcom/T/T/T3/TJ;Ljava/lang/Class;Lcom/T/T/TN/T2;)Lcom/T/T/T3/T/T0;
    .locals 2
    .param p1, "mapping"    # Lcom/T/T/T3/TJ;
    .param p3, "fieldInfo"    # Lcom/T/T/TN/T2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T/T/T3/TJ;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/T/T/TN/T2;",
            ")",
            "Lcom/T/T/T3/T/T0;"
        }
    .end annotation

    .prologue
    .line 336
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Lcom/T/T/TN/T2;->T()Ljava/lang/Class;

    move-result-object v0

    .line 338
    .local v0, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 339
    :cond_0
    new-instance v1, Lcom/T/T/T3/T/Ty;

    invoke-direct {v1, p1, p2, p3}, Lcom/T/T/T3/T/Ty;-><init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;Lcom/T/T/TN/T2;)V

    .line 358
    :goto_0
    return-object v1

    .line 342
    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_2

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_3

    .line 343
    :cond_2
    new-instance v1, Lcom/T/T/T3/T/Tu;

    invoke-direct {v1, p1, p2, p3}, Lcom/T/T/T3/T/Tu;-><init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;Lcom/T/T/TN/T2;)V

    goto :goto_0

    .line 346
    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_4

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_5

    .line 347
    :cond_4
    new-instance v1, Lcom/T/T/T3/T/T6;

    invoke-direct {v1, p1, p2, p3}, Lcom/T/T/T3/T/T6;-><init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;Lcom/T/T/TN/T2;)V

    goto :goto_0

    .line 350
    :cond_5
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_6

    .line 351
    new-instance v1, Lcom/T/T/T3/T/T3w;

    invoke-direct {v1, p1, p2, p3}, Lcom/T/T/T3/T/T3w;-><init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;Lcom/T/T/TN/T2;)V

    goto :goto_0

    .line 354
    :cond_6
    const-class v1, Ljava/util/List;

    if-eq v0, v1, :cond_7

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_8

    .line 355
    :cond_7
    new-instance v1, Lcom/T/T/T3/T/T2;

    invoke-direct {v1, p1, p2, p3}, Lcom/T/T/T3/T/T2;-><init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;Lcom/T/T/TN/T2;)V

    goto :goto_0

    .line 358
    :cond_8
    new-instance v1, Lcom/T/T/T3/T/TL;

    invoke-direct {v1, p1, p2, p3}, Lcom/T/T/T3/T/TL;-><init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;Lcom/T/T/TN/T2;)V

    goto :goto_0
.end method

.method public T(Lcom/T/T/TN/T2;)Lcom/T/T/T3/T/TS;
    .locals 2
    .param p1, "fieldInfo"    # Lcom/T/T/TN/T2;

    .prologue
    .line 366
    invoke-virtual {p1}, Lcom/T/T/TN/T2;->T()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/T/T/TN/T2;->T3()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/T/T/T3/TJ;->T(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;

    move-result-object v0

    return-object v0
.end method

.method public T(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;
    .locals 4
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/T/T/T3/T/TS;"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    invoke-virtual {v3, p2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/T/T/T3/T/TS;

    .line 273
    .local v1, "derializer":Lcom/T/T/T3/T/TS;
    if-eqz v1, :cond_0

    move-object v3, v1

    .line 328
    :goto_0
    return-object v3

    .line 277
    :cond_0
    if-nez p2, :cond_1

    .line 278
    move-object p2, p1

    .line 281
    :cond_1
    iget-object v3, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    invoke-virtual {v3, p2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "derializer":Lcom/T/T/T3/T/TS;
    check-cast v1, Lcom/T/T/T3/T/TS;

    .line 282
    .restart local v1    # "derializer":Lcom/T/T/T3/T/TS;
    if-eqz v1, :cond_2

    move-object v3, v1

    .line 283
    goto :goto_0

    .line 287
    :cond_2
    const-class v3, Lcom/T/T/T/T2;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/T/T/T/T2;

    .line 288
    .local v0, "annotation":Lcom/T/T/T/T2;
    if-eqz v0, :cond_3

    .line 289
    invoke-interface {v0}, Lcom/T/T/T/T2;->T2()Ljava/lang/Class;

    move-result-object v2

    .line 290
    .local v2, "mappingTo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/lang/Void;

    if-eq v2, v3, :cond_3

    .line 291
    invoke-virtual {p0, v2, v2}, Lcom/T/T/T3/TJ;->T(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;

    move-result-object v3

    goto :goto_0

    .line 296
    .end local v2    # "mappingTo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    instance-of v3, p2, Ljava/lang/reflect/WildcardType;

    if-nez v3, :cond_4

    instance-of v3, p2, Ljava/lang/reflect/TypeVariable;

    if-nez v3, :cond_4

    instance-of v3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_5

    .line 297
    :cond_4
    iget-object v3, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    invoke-virtual {v3, p1}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "derializer":Lcom/T/T/T3/T/TS;
    check-cast v1, Lcom/T/T/T3/T/TS;

    .line 300
    .restart local v1    # "derializer":Lcom/T/T/T3/T/TS;
    :cond_5
    if-eqz v1, :cond_6

    move-object v3, v1

    .line 301
    goto :goto_0

    .line 304
    :cond_6
    iget-object v3, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    invoke-virtual {v3, p2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "derializer":Lcom/T/T/T3/T/TS;
    check-cast v1, Lcom/T/T/T3/T/TS;

    .line 305
    .restart local v1    # "derializer":Lcom/T/T/T3/T/TS;
    if-eqz v1, :cond_7

    move-object v3, v1

    .line 306
    goto :goto_0

    .line 309
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 310
    new-instance v1, Lcom/T/T/T3/T/TH;

    .end local v1    # "derializer":Lcom/T/T/T3/T/TS;
    invoke-direct {v1, p1}, Lcom/T/T/T3/T/TH;-><init>(Ljava/lang/Class;)V

    .line 326
    .restart local v1    # "derializer":Lcom/T/T/T3/T/TS;
    :goto_1
    invoke-virtual {p0, p2, v1}, Lcom/T/T/T3/TJ;->T(Ljava/lang/reflect/Type;Lcom/T/T/T3/T/TS;)V

    move-object v3, v1

    .line 328
    goto :goto_0

    .line 311
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 312
    sget-object v3, Lcom/T/T/T3/T/T3;->T:Lcom/T/T/T3/T/T3;

    goto :goto_0

    .line 313
    :cond_9
    const-class v3, Ljava/util/Set;

    if-eq p1, v3, :cond_a

    const-class v3, Ljava/util/HashSet;

    if-eq p1, v3, :cond_a

    const-class v3, Ljava/util/Collection;

    if-eq p1, v3, :cond_a

    const-class v3, Ljava/util/List;

    if-eq p1, v3, :cond_a

    const-class v3, Ljava/util/ArrayList;

    if-ne p1, v3, :cond_b

    .line 315
    :cond_a
    sget-object v1, Lcom/T/T/T3/T/T7;->T:Lcom/T/T/T3/T/T7;

    goto :goto_1

    .line 316
    :cond_b
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 317
    sget-object v1, Lcom/T/T/T3/T/T7;->T:Lcom/T/T/T3/T/T7;

    goto :goto_1

    .line 318
    :cond_c
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 319
    sget-object v1, Lcom/T/T/T3/T/T8;->T:Lcom/T/T/T3/T/T8;

    goto :goto_1

    .line 320
    :cond_d
    const-class v3, Ljava/lang/Throwable;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 321
    new-instance v1, Lcom/T/T/T3/T/T3y;

    .end local v1    # "derializer":Lcom/T/T/T3/T/TS;
    invoke-direct {v1, p0, p1}, Lcom/T/T/T3/T/T3y;-><init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;)V

    .restart local v1    # "derializer":Lcom/T/T/T3/T/TS;
    goto :goto_1

    .line 323
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/T/T/T3/TJ;->T3(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;

    move-result-object v1

    goto :goto_1
.end method

.method public T(Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 250
    iget-object v2, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    invoke-virtual {v2, p1}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/T/T/T3/T/TS;

    .line 251
    .local v0, "derializer":Lcom/T/T/T3/T/TS;
    if-eqz v0, :cond_0

    .line 268
    .end local v0    # "derializer":Lcom/T/T/T3/T/TS;
    :goto_0
    return-object v0

    .line 255
    .restart local v0    # "derializer":Lcom/T/T/T3/T/TS;
    :cond_0
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 256
    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, v2, p1}, Lcom/T/T/T3/TJ;->T(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;

    move-result-object v0

    goto :goto_0

    .line 259
    :cond_1
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3

    move-object v2, p1

    .line 260
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 261
    .local v1, "rawType":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 262
    check-cast v1, Ljava/lang/Class;

    .end local v1    # "rawType":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v1, p1}, Lcom/T/T/T3/TJ;->T(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;

    move-result-object v0

    goto :goto_0

    .line 264
    .restart local v1    # "rawType":Ljava/lang/reflect/Type;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/T/T/T3/TJ;->T(Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;

    move-result-object v0

    goto :goto_0

    .line 268
    .end local v1    # "rawType":Ljava/lang/reflect/Type;
    :cond_3
    sget-object v0, Lcom/T/T/T3/T/Tx;->T:Lcom/T/T/T3/T/Tx;

    goto :goto_0
.end method

.method public T(Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/T/T/T3/T/T0;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/T/T/T3/TJ;->T(Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;

    move-result-object v0

    .line 400
    .local v0, "deserizer":Lcom/T/T/T3/T/TS;
    instance-of v1, v0, Lcom/T/T/T3/T/TM;

    if-eqz v1, :cond_0

    .line 401
    check-cast v0, Lcom/T/T/T3/T/TM;

    .end local v0    # "deserizer":Lcom/T/T/T3/T/TS;
    invoke-virtual {v0}, Lcom/T/T/T3/T/TM;->T3()Ljava/util/Map;

    move-result-object v1

    .line 403
    :goto_0
    return-object v1

    .restart local v0    # "deserizer":Lcom/T/T/T3/T/TS;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_0
.end method

.method public T(Ljava/lang/reflect/Type;Lcom/T/T/T3/T/TS;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "deserializer"    # Lcom/T/T/T3/T/TS;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    invoke-virtual {v0, p1, p2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 363
    return-void
.end method

.method public T3(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;
    .locals 1
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/T/T/T3/T/TS;"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/T/T/T3/T/TM;

    invoke-direct {v0, p0, p1, p2}, Lcom/T/T/T3/T/TM;-><init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public T3()Lcom/T/T/T3/TB;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/T/T/T3/TJ;->T:Lcom/T/T/T3/TB;

    return-object v0
.end method
