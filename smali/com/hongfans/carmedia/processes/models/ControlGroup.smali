.class public Lcom/hongfans/carmedia/processes/models/ControlGroup;
.super Ljava/lang/Object;
.source "ControlGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/hongfans/carmedia/processes/models/ControlGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final group:Ljava/lang/String;

.field public final id:I

.field public final subsystems:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/hongfans/carmedia/processes/models/ControlGroup$1;

    invoke-direct {v0}, Lcom/hongfans/carmedia/processes/models/ControlGroup$1;-><init>()V

    sput-object v0, Lcom/hongfans/carmedia/processes/models/ControlGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/carmedia/processes/models/ControlGroup;->id:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/carmedia/processes/models/ControlGroup;->subsystems:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/carmedia/processes/models/ControlGroup;->group:Ljava/lang/String;

    .line 59
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "fields":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/hongfans/carmedia/processes/models/ControlGroup;->id:I

    .line 51
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/hongfans/carmedia/processes/models/ControlGroup;->subsystems:Ljava/lang/String;

    .line 52
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/hongfans/carmedia/processes/models/ControlGroup;->group:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 72
    const-string v0, "%d:%s:%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/hongfans/carmedia/processes/models/ControlGroup;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/hongfans/carmedia/processes/models/ControlGroup;->subsystems:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/hongfans/carmedia/processes/models/ControlGroup;->group:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 66
    iget v0, p0, Lcom/hongfans/carmedia/processes/models/ControlGroup;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object v0, p0, Lcom/hongfans/carmedia/processes/models/ControlGroup;->subsystems:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/hongfans/carmedia/processes/models/ControlGroup;->group:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return-void
.end method
