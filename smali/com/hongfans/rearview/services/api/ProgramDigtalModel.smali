.class public Lcom/hongfans/rearview/services/api/ProgramDigtalModel;
.super Ljava/lang/Object;
.source "ProgramDigtalModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/hongfans/rearview/services/api/ProgramDigtalModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _id:I

.field private ad_after:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hongfans/rearview/services/api/ADModel;",
            ">;"
        }
    .end annotation
.end field

.field private ad_before:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hongfans/rearview/services/api/ADModel;",
            ">;"
        }
    .end annotation
.end field

.field private album:Ljava/lang/String;

.field private comeType:I

.field private comefrom:Ljava/lang/String;

.field private curpage:I

.field private duration:I

.field private filepath:Ljava/lang/String;

.field private filepath1:Ljava/lang/String;

.field private id:J

.field private iscollect:I

.field private isnews:I

.field private parentname:Ljava/lang/String;

.field private pdid:I

.field private pic:Ljava/lang/String;

.field private priority:Ljava/lang/String;

.field private programtype:I

.field private remark:Ljava/lang/String;

.field private secondtitle:Ljava/lang/String;

.field private singer:Ljava/lang/String;

.field private songid:Ljava/lang/String;

.field private sourcedataid:I

.field private sourceid:I

.field private title:Ljava/lang/String;

.field private total:I

.field private type:I

.field private updatetime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel$1;

    invoke-direct {v0}, Lcom/hongfans/rearview/services/api/ProgramDigtalModel$1;-><init>()V

    sput-object v0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->programtype:I

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pic:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comefrom:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->album:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->singer:Ljava/lang/String;

    .line 51
    iput v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->type:I

    .line 52
    iput v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->isnews:I

    .line 56
    iput v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comeType:I

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "pl"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->programtype:I

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pic:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comefrom:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->album:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->singer:Ljava/lang/String;

    .line 51
    iput v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->type:I

    .line 52
    iput v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->isnews:I

    .line 56
    iput v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comeType:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->id:J

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pdid:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->curpage:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->updatetime:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->duration:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourceid:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourcedataid:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->total:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->programtype:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pic:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->parentname:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->filepath:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->filepath1:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->priority:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->title:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comefrom:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->album:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->singer:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->isnews:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->type:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->remark:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->_id:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->secondtitle:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->songid:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->iscollect:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comeType:I

    .line 90
    const-class v0, Lcom/hongfans/rearview/services/api/ADModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_before:Ljava/util/ArrayList;

    .line 91
    const-class v0, Lcom/hongfans/rearview/services/api/ADModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_after:Ljava/util/ArrayList;

    .line 92
    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/hongfans/rearview/services/api/ProgramDigtalModel;
    .locals 11
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;

    invoke-direct {v7}, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;-><init>()V

    .line 96
    .local v7, "pm":Lcom/hongfans/rearview/services/api/ProgramDigtalModel;
    const-string v9, "id"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 97
    const-string v9, "id"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->id:J

    .line 99
    :cond_0
    const-string v9, "sourceid"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 100
    const-string v9, "sourceid"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v9

    iput v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourceid:I

    .line 102
    :cond_1
    const-string v9, "sourcedataid"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 103
    const-string v9, "sourcedataid"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v9

    iput v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourcedataid:I

    .line 105
    :cond_2
    const-string v9, "title"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 106
    const-string v9, "title"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->title:Ljava/lang/String;

    .line 109
    :cond_3
    const-string v9, "duration"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 110
    const-string v9, "duration"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v9

    iput v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->duration:I

    .line 138
    :cond_4
    const-string v9, "filepath1"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 139
    const-string v9, "filepath1"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->filepath1:Ljava/lang/String;

    .line 141
    :cond_5
    const-string v9, "priority"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 142
    const-string v9, "priority"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->priority:Ljava/lang/String;

    .line 144
    :cond_6
    const-string v9, "pdid"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 145
    const-string v9, "pdid"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v9

    iput v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pdid:I

    .line 147
    :cond_7
    const-string v9, "parentname"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 148
    const-string v9, "parentname"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->parentname:Ljava/lang/String;

    .line 150
    :cond_8
    const-string v9, "programtype"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 151
    const-string v9, "programtype"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v9

    iput v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->programtype:I

    .line 153
    :cond_9
    const-string v9, "iscollect"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 154
    const-string v9, "iscollect"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v9

    iput v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->iscollect:I

    .line 156
    :cond_a
    const-string v9, "pic"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 157
    const-string v9, "pic"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 158
    .local v6, "pic1":Ljava/lang/Object;
    if-eqz v6, :cond_b

    .line 159
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, "pic":Ljava/lang/String;
    const-string v9, "\\|"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 161
    .local v8, "split":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v8, v9

    iput-object v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pic:Ljava/lang/String;

    .line 164
    .end local v5    # "pic":Ljava/lang/String;
    .end local v6    # "pic1":Ljava/lang/Object;
    .end local v8    # "split":[Ljava/lang/String;
    :cond_b
    const-string v9, "singer"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 165
    const-string v9, "singer"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->singer:Ljava/lang/String;

    .line 167
    :cond_c
    const-string v9, "fromsource"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 168
    const-string v9, "fromsource"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comefrom:Ljava/lang/String;

    .line 170
    :cond_d
    const-string v9, "songid"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 171
    const-string v9, "songid"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->songid:Ljava/lang/String;

    .line 173
    :cond_e
    const-string v9, "comeType"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 174
    const-string v9, "comeType"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v9

    iput v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comeType:I

    .line 176
    :cond_f
    const-string v9, "ad_before"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v0, "ad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/hongfans/rearview/services/api/ADModel;>;"
    const-string v9, "ad_before"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 179
    .local v1, "arr":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_13

    .line 180
    new-instance v3, Lcom/hongfans/rearview/services/api/ADModel;

    invoke-direct {v3}, Lcom/hongfans/rearview/services/api/ADModel;-><init>()V

    .line 181
    .local v3, "model":Lcom/hongfans/rearview/services/api/ADModel;
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 182
    .local v4, "obj":Lorg/json/JSONObject;
    const-string v9, "ad_type"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 183
    const-string v9, "ad_type"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/hongfans/rearview/services/api/ADModel;->setAd_type(Ljava/lang/String;)V

    .line 185
    :cond_10
    const-string v9, "video_text"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 186
    const-string v9, "video_text"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/hongfans/rearview/services/api/ADModel;->setVideo_text(Ljava/lang/String;)V

    .line 188
    :cond_11
    const-string v9, "video_url"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 189
    const-string v9, "video_url"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/hongfans/rearview/services/api/ADModel;->setVideo_url(Ljava/lang/String;)V

    .line 191
    :cond_12
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    .end local v3    # "model":Lcom/hongfans/rearview/services/api/ADModel;
    .end local v4    # "obj":Lorg/json/JSONObject;
    :cond_13
    iput-object v0, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_before:Ljava/util/ArrayList;

    .line 195
    .end local v0    # "ad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/hongfans/rearview/services/api/ADModel;>;"
    .end local v1    # "arr":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :cond_14
    const-string v9, "ad_after"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .restart local v0    # "ad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/hongfans/rearview/services/api/ADModel;>;"
    const-string v9, "ad_after"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 198
    .restart local v1    # "arr":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_18

    .line 199
    new-instance v3, Lcom/hongfans/rearview/services/api/ADModel;

    invoke-direct {v3}, Lcom/hongfans/rearview/services/api/ADModel;-><init>()V

    .line 200
    .restart local v3    # "model":Lcom/hongfans/rearview/services/api/ADModel;
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 201
    .restart local v4    # "obj":Lorg/json/JSONObject;
    const-string v9, "ad_type"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 202
    const-string v9, "ad_type"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/hongfans/rearview/services/api/ADModel;->setAd_type(Ljava/lang/String;)V

    .line 204
    :cond_15
    const-string v9, "video_text"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 205
    const-string v9, "video_text"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/hongfans/rearview/services/api/ADModel;->setVideo_text(Ljava/lang/String;)V

    .line 207
    :cond_16
    const-string v9, "video_url"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 208
    const-string v9, "video_url"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/hongfans/rearview/services/api/ADModel;->setVideo_url(Ljava/lang/String;)V

    .line 210
    :cond_17
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 212
    .end local v3    # "model":Lcom/hongfans/rearview/services/api/ADModel;
    .end local v4    # "obj":Lorg/json/JSONObject;
    :cond_18
    iput-object v0, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_after:Ljava/util/ArrayList;

    .line 215
    .end local v0    # "ad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/hongfans/rearview/services/api/ADModel;>;"
    .end local v1    # "arr":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :cond_19
    return-object v7
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public getAfterAD()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hongfans/rearview/services/api/ADModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_after:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getBeforeAD()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hongfans/rearview/services/api/ADModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_before:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getComeType()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comeType:I

    return v0
.end method

.method public getComefrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comefrom:Ljava/lang/String;

    return-object v0
.end method

.method public getCurpage()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->curpage:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->duration:I

    return v0
.end method

.method public getFilepath1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->filepath1:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 307
    iget-wide v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->id:J

    return-wide v0
.end method

.method public getIscollect()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->iscollect:I

    return v0
.end method

.method public getIsnews()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->isnews:I

    return v0
.end method

.method public getParentname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->parentname:Ljava/lang/String;

    return-object v0
.end method

.method public getPdid()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pdid:I

    return v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->priority:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramtype()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->programtype:I

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->secondtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->singer:Ljava/lang/String;

    return-object v0
.end method

.method public getSongid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->songid:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcedataid()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourcedataid:I

    return v0
.end method

.method public getSourceid()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourceid:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->total:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->type:I

    return v0
.end method

.method public getUpdatetime()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->updatetime:I

    return v0
.end method

.method public get_id()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->_id:I

    return v0
.end method

.method public setAfterAD(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hongfans/rearview/services/api/ADModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "model":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/hongfans/rearview/services/api/ADModel;>;"
    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_after:Ljava/util/ArrayList;

    .line 232
    return-void
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->album:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setBeforeAD(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hongfans/rearview/services/api/ADModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "model":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/hongfans/rearview/services/api/ADModel;>;"
    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_before:Ljava/util/ArrayList;

    .line 224
    return-void
.end method

.method public setComeType(I)V
    .locals 0
    .param p1, "comeType"    # I

    .prologue
    .line 455
    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comeType:I

    .line 456
    return-void
.end method

.method public setComefrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "comefrom"    # Ljava/lang/String;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comefrom:Ljava/lang/String;

    .line 424
    return-void
.end method

.method public setCurpage(I)V
    .locals 0
    .param p1, "curpage"    # I

    .prologue
    .line 303
    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->curpage:I

    .line 304
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 375
    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->duration:I

    .line 376
    return-void
.end method

.method public setFilepath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->filepath:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public setFilepath1(Ljava/lang/String;)V
    .locals 0
    .param p1, "filepath1"    # Ljava/lang/String;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->filepath1:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setId(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 311
    iput-wide p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->id:J

    .line 312
    return-void
.end method

.method public setIscollect(I)V
    .locals 0
    .param p1, "iscollect"    # I

    .prologue
    .line 447
    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->iscollect:I

    .line 448
    return-void
.end method

.method public setIsnews(I)V
    .locals 0
    .param p1, "isnews"    # I

    .prologue
    .line 415
    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->isnews:I

    .line 416
    return-void
.end method

.method public setParentname(Ljava/lang/String;)V
    .locals 0
    .param p1, "parentname"    # Ljava/lang/String;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->parentname:Ljava/lang/String;

    .line 400
    return-void
.end method

.method public setPdid(I)V
    .locals 0
    .param p1, "pid"    # I

    .prologue
    .line 279
    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pdid:I

    .line 280
    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0
    .param p1, "pic"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pic:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setPriority(Ljava/lang/String;)V
    .locals 0
    .param p1, "priority"    # Ljava/lang/String;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->priority:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public setProgramtype(I)V
    .locals 0
    .param p1, "programtype"    # I

    .prologue
    .line 255
    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->programtype:I

    .line 256
    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0
    .param p1, "remark"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->remark:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setSecondTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "secondtitle"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->secondtitle:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setSinger(Ljava/lang/String;)V
    .locals 0
    .param p1, "singer"    # Ljava/lang/String;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->singer:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setSongid(Ljava/lang/String;)V
    .locals 0
    .param p1, "songid"    # Ljava/lang/String;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->songid:Ljava/lang/String;

    .line 440
    return-void
.end method

.method public setSourcedataid(I)V
    .locals 0
    .param p1, "sourcedataid"    # I

    .prologue
    .line 391
    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourcedataid:I

    .line 392
    return-void
.end method

.method public setSourceid(I)V
    .locals 0
    .param p1, "sourceid"    # I

    .prologue
    .line 383
    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourceid:I

    .line 384
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->title:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 287
    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->total:I

    .line 288
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 407
    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->type:I

    .line 408
    return-void
.end method

.method public setUpdatetime(I)V
    .locals 0
    .param p1, "updatetime"    # I

    .prologue
    .line 327
    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->updatetime:I

    .line 328
    return-void
.end method

.method public set_id(I)V
    .locals 0
    .param p1, "_id"    # I

    .prologue
    .line 431
    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->_id:I

    .line 432
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 8

    .prologue
    .line 497
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 499
    .local v4, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "id"

    iget-wide v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->id:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 500
    const-string v5, "pdid"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pdid:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 501
    const-string v5, "curpage"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->curpage:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 502
    const-string v5, "updatetime"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->updatetime:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 503
    const-string v5, "duration"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->duration:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 504
    const-string v5, "sourceid"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourceid:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 505
    const-string v5, "sourcedataid"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourcedataid:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 506
    const-string v5, "total"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->total:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 507
    const-string v5, "programtype"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->programtype:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 508
    const-string v5, "pic"

    iget-object v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pic:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 509
    const-string v5, "parentname"

    iget-object v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->parentname:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 510
    const-string v5, "filepath"

    iget-object v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->filepath:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 511
    const-string v5, "filepath1"

    iget-object v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->filepath1:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 512
    const-string v5, "priority"

    iget-object v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->priority:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    const-string v5, "title"

    iget-object v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->title:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
    const-string v5, "comefrom"

    iget-object v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comefrom:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    const-string v5, "album"

    iget-object v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->album:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 516
    const-string v5, "singer"

    iget-object v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->singer:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    const-string v5, "isnews"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->isnews:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 518
    const-string v5, "type"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->type:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 519
    const-string v5, "remark"

    iget-object v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->remark:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    const-string v5, "_id"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->_id:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 521
    const-string v5, "secondtitle"

    iget-object v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->secondtitle:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 522
    const-string v5, "songid"

    iget-object v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->songid:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    const-string v5, "iscollect"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->iscollect:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 524
    const-string v5, "comeType"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comeType:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 527
    iget-object v5, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_before:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 528
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 529
    .local v2, "ja":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_before:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hongfans/rearview/services/api/ADModel;

    .line 530
    .local v0, "ad":Lcom/hongfans/rearview/services/api/ADModel;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 531
    .local v3, "jo":Lorg/json/JSONObject;
    const-string v6, "ad_type"

    invoke-virtual {v0}, Lcom/hongfans/rearview/services/api/ADModel;->getAd_type()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 532
    const-string v6, "video_text"

    invoke-virtual {v0}, Lcom/hongfans/rearview/services/api/ADModel;->getVideo_text()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 533
    const-string v6, "video_url"

    invoke-virtual {v0}, Lcom/hongfans/rearview/services/api/ADModel;->getVideo_url()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 550
    .end local v0    # "ad":Lcom/hongfans/rearview/services/api/ADModel;
    .end local v2    # "ja":Lorg/json/JSONArray;
    .end local v3    # "jo":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 551
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 552
    const-string v5, ""

    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v5

    .line 535
    .restart local v2    # "ja":Lorg/json/JSONArray;
    :cond_0
    :try_start_1
    const-string v5, "ad_before"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 538
    .end local v2    # "ja":Lorg/json/JSONArray;
    :cond_1
    iget-object v5, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_after:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 539
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 540
    .restart local v2    # "ja":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_after:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hongfans/rearview/services/api/ADModel;

    .line 541
    .restart local v0    # "ad":Lcom/hongfans/rearview/services/api/ADModel;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 542
    .restart local v3    # "jo":Lorg/json/JSONObject;
    const-string v6, "ad_type"

    invoke-virtual {v0}, Lcom/hongfans/rearview/services/api/ADModel;->getAd_type()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 543
    const-string v6, "video_text"

    invoke-virtual {v0}, Lcom/hongfans/rearview/services/api/ADModel;->getVideo_text()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 544
    const-string v6, "video_url"

    invoke-virtual {v0}, Lcom/hongfans/rearview/services/api/ADModel;->getVideo_url()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 546
    .end local v0    # "ad":Lcom/hongfans/rearview/services/api/ADModel;
    .end local v3    # "jo":Lorg/json/JSONObject;
    :cond_2
    const-string v5, "ad_after"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 549
    .end local v2    # "ja":Lorg/json/JSONArray;
    :cond_3
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgramDigtalModel{_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pdid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pdid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curpage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->curpage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updatetime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->updatetime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourceid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourcedataid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourcedataid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", programtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->programtype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remark=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->remark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondtitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->secondtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ad_before="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_before:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ad_after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_after:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pic=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parentname=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->parentname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filepath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filepath1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->filepath1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priority=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->priority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", comefrom=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comefrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", album=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->album:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", singer=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->singer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isnews="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->isnews:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", songid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->songid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iscollect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->iscollect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", comeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 466
    iget-wide v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 467
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pdid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->curpage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->updatetime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourceid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourcedataid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->total:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->programtype:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->parentname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->filepath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->filepath1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->priority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comefrom:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->album:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->singer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 484
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->isnews:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->remark:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 487
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->secondtitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->songid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 490
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->iscollect:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_before:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 493
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_after:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 494
    return-void
.end method
