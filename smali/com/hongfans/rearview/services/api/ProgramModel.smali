.class public Lcom/hongfans/rearview/services/api/ProgramModel;
.super Ljava/lang/Object;
.source "ProgramModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/hongfans/rearview/services/api/ProgramModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _id:I

.field private description:Ljava/lang/String;

.field private id:I

.field private isnews:I

.field private issub:Z

.field private latestprogram:Ljava/lang/String;

.field private manipulate:I

.field public modelPm:I

.field private num:I

.field private qtid:I

.field private qtpid:I

.field private smallpic:Ljava/lang/String;

.field private star:I

.field private thumbs:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/hongfans/rearview/services/api/ProgramModel$1;

    invoke-direct {v0}, Lcom/hongfans/rearview/services/api/ProgramModel$1;-><init>()V

    sput-object v0, Lcom/hongfans/rearview/services/api/ProgramModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "pl"    # Landroid/os/Parcel;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->_id:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->id:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->qtid:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->qtpid:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->title:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->thumbs:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->star:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->latestprogram:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->description:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->manipulate:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->isnews:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->issub:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->num:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->smallpic:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->type:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->modelPm:I

    .line 83
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/hongfans/rearview/services/api/ProgramModel;
    .locals 5
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 87
    new-instance v0, Lcom/hongfans/rearview/services/api/ProgramModel;

    invoke-direct {v0}, Lcom/hongfans/rearview/services/api/ProgramModel;-><init>()V

    .line 88
    .local v0, "pm":Lcom/hongfans/rearview/services/api/ProgramModel;
    const-string v3, "id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    const-string v3, "id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->id:I

    .line 91
    :cond_0
    const-string v3, "qtid"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    const-string v3, "qtid"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->qtid:I

    .line 95
    :cond_1
    const-string v3, "qtpid"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    const-string v3, "qtpid"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->qtpid:I

    .line 99
    :cond_2
    const-string v3, "title"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    const-string v3, "title"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->title:Ljava/lang/String;

    .line 103
    :cond_3
    const-string v3, "thumbs"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 105
    const-string v3, "thumbs"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->thumbs:Ljava/lang/String;

    .line 106
    iget-object v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->thumbs:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 108
    iget-object v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->thumbs:Ljava/lang/String;

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "temp":[Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 111
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->smallpic:Ljava/lang/String;

    .line 115
    .end local v1    # "temp":[Ljava/lang/String;
    :cond_4
    const-string v3, "star"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 117
    const-string v3, "star"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->star:I

    .line 120
    :cond_5
    const-string v3, "latestprogram"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 122
    const-string v3, "latestprogram"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->latestprogram:Ljava/lang/String;

    .line 124
    :cond_6
    const-string v3, "description"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 126
    const-string v3, "description"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->description:Ljava/lang/String;

    .line 128
    :cond_7
    const-string v3, "manipulate"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 130
    const-string v3, "manipulate"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->manipulate:I

    .line 132
    :cond_8
    const-string v3, "isnews"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 134
    const-string v3, "isnews"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->isnews:I

    .line 136
    :cond_9
    const-string v3, "num"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 138
    const-string v3, "num"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->num:I

    .line 140
    :cond_a
    const-string v3, "issub"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 141
    const-string v3, "issub"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c

    :goto_0
    iput-boolean v2, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->issub:Z

    .line 143
    :cond_b
    return-object v0

    .line 141
    :cond_c
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->id:I

    return v0
.end method

.method public getIsnews()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->isnews:I

    return v0
.end method

.method public getIssub()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->issub:Z

    return v0
.end method

.method public getLatestprogram()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->latestprogram:Ljava/lang/String;

    return-object v0
.end method

.method public getManipulate()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->manipulate:I

    return v0
.end method

.method public getModelPm()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->modelPm:I

    return v0
.end method

.method public getNum()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->num:I

    return v0
.end method

.method public getQtid()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->qtid:I

    return v0
.end method

.method public getQtpid()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->qtpid:I

    return v0
.end method

.method public getSmallpic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->smallpic:Ljava/lang/String;

    return-object v0
.end method

.method public getStar()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->star:I

    return v0
.end method

.method public getThumbs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->thumbs:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->type:I

    return v0
.end method

.method public get_id()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->_id:I

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->description:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->id:I

    .line 164
    return-void
.end method

.method public setIsnews(I)V
    .locals 0
    .param p1, "isnews"    # I

    .prologue
    .line 263
    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->isnews:I

    .line 264
    return-void
.end method

.method public setIssub(Z)V
    .locals 0
    .param p1, "issub"    # Z

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->issub:Z

    .line 254
    return-void
.end method

.method public setLatestprogram(Ljava/lang/String;)V
    .locals 0
    .param p1, "latestprogram"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->latestprogram:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setManipulate(I)V
    .locals 0
    .param p1, "manipulate"    # I

    .prologue
    .line 243
    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->manipulate:I

    .line 244
    return-void
.end method

.method public setModelPm(I)V
    .locals 0
    .param p1, "modelPm"    # I

    .prologue
    .line 303
    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->modelPm:I

    .line 304
    return-void
.end method

.method public setNum(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 283
    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->num:I

    .line 284
    return-void
.end method

.method public setQtid(I)V
    .locals 0
    .param p1, "qtid"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->qtid:I

    .line 174
    return-void
.end method

.method public setQtpid(I)V
    .locals 0
    .param p1, "qtpid"    # I

    .prologue
    .line 183
    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->qtpid:I

    .line 184
    return-void
.end method

.method public setSmallpic(Ljava/lang/String;)V
    .locals 0
    .param p1, "smallpic"    # Ljava/lang/String;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->smallpic:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setStar(I)V
    .locals 0
    .param p1, "star"    # I

    .prologue
    .line 213
    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->star:I

    .line 214
    return-void
.end method

.method public setThumbs(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbs"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->thumbs:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->title:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 293
    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->type:I

    .line 294
    return-void
.end method

.method public set_id(I)V
    .locals 0
    .param p1, "_id"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->_id:I

    .line 154
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 316
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->qtid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->qtpid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->thumbs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->star:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->latestprogram:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->manipulate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->isnews:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget-boolean v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->issub:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 328
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->num:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->smallpic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->modelPm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    return-void

    .line 327
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
