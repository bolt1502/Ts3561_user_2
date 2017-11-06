.class public Lcom/ts/dvdplayer/definition/MediaDef;
.super Ljava/lang/Object;
.source "MediaDef.java"


# static fields
.field public static final ALBUM_HEIGHT:I = 0x122

.field public static final ALBUM_WIDTH:I = 0x122

.field public static final DEVICE_DISC:I = 0x4

.field public static final DEVICE_DVDBOX:I = 0x5

.field public static final DEVICE_MAX:I = 0x5

.field public static DEVICE_NAME_SD:Ljava/lang/String; = null

.field public static DEVICE_NAME_USB:Ljava/lang/String; = null

.field public static final DEVICE_NONE:I = 0x0

.field public static DEVICE_PATH_SD:Ljava/lang/String; = null

.field public static DEVICE_PATH_USB:Ljava/lang/String; = null

.field public static final DEVICE_SD:I = 0x1

.field public static final DEVICE_USB:I = 0x2

.field public static final DEVICE_USB2:I = 0x3

.field public static final DISC_CD:I = 0x3

.field public static final DISC_CDG:I = 0x5

.field public static final DISC_CDPIC:I = 0x4

.field public static final DISC_DATA:I = 0x6

.field public static final DISC_DVD:I = 0x1

.field public static final DISC_NONE:I = 0x0

.field public static final DISC_VCD:I = 0x2

.field public static final GET_ONCE_ITEM_COUNT:I = 0x14

.field public static final MEDIA_AUDIO:I = 0x1

.field public static final MEDIA_DEBUG:Z = true

.field public static final MEDIA_DVD:I = 0x6

.field public static final MEDIA_FAVORITE:I = 0x4

.field public static final MEDIA_IMAGE:I = 0x3

.field public static final MEDIA_RANDOM_ALL:I = 0x1

.field public static final MEDIA_RANDOM_MAX:I = 0x1

.field public static final MEDIA_RANDOM_NONE:I = 0x0

.field public static final MEDIA_REPEAT_ALL:I = 0x0

.field public static final MEDIA_REPEAT_CHAPTER:I = 0x2

.field public static final MEDIA_REPEAT_FOLDER:I = 0x4

.field public static final MEDIA_REPEAT_MAX:I = 0x4

.field public static final MEDIA_REPEAT_ONE:I = 0x1

.field public static final MEDIA_REPEAT_TITLE:I = 0x3

.field public static final MEDIA_TYPE_MAX:I = 0x4

.field public static final MEDIA_UNKNOWN:I = 0x0

.field public static final MEDIA_VCD:I = 0x5

.field public static final MEDIA_VIDEO:I = 0x2

.field public static final MSG_DISMISS_WAIT_DIALOG:I = 0x10010202

.field public static final MSG_UPDATE_LIST_DATA:I = 0x10010201

.field public static final MSG_UPDATE_LIST_DATA_SERVICE:I = 0x10010203

.field public static final PLAY_STATUS_FF:I = 0x3

.field public static final PLAY_STATUS_NONE:I = 0x0

.field public static final PLAY_STATUS_PAUSE:I = 0x2

.field public static final PLAY_STATUS_PLAY:I = 0x1

.field public static final PLAY_STATUS_REW:I = 0x4

.field public static final PLAY_STATUS_STOP:I = 0x5

.field public static final PROGRESS_MAX:I = 0x3e8

.field public static final STATUS_END:I = 0x7

.field public static final STATUS_ERROR:I = 0x8

.field public static final STATUS_IDLE:I = 0x0

.field public static final STATUS_INITIALIZED:I = 0x1

.field public static final STATUS_PAUSED:I = 0x5

.field public static final STATUS_PREPARED:I = 0x3

.field public static final STATUS_PREPARING:I = 0x2

.field public static final STATUS_STARTED:I = 0x4

.field public static final STATUS_STOPPED:I = 0x6

.field public static final UI_MODE_LOADING:I = 0x0

.field public static final UI_MODE_SHOW_AUDIO:I = 0x1

.field public static final UI_MODE_SHOW_DVD:I = 0x5

.field public static final UI_MODE_SHOW_FORBIDDEN:I = 0x6

.field public static final UI_MODE_SHOW_IMAGE:I = 0x3

.field public static final UI_MODE_SHOW_NO_DEVICE:I = 0x8

.field public static final UI_MODE_SHOW_NO_DISC:I = 0x7

.field public static final UI_MODE_SHOW_NO_MEDIA:I = 0x9

.field public static final UI_MODE_SHOW_UNKNOWN_DISC:I = 0xa

.field public static final UI_MODE_SHOW_VCD:I = 0x4

.field public static final UI_MODE_SHOW_VIDEO:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    const-string v0, "ext_sdcard1"

    sput-object v0, Lcom/ts/dvdplayer/definition/MediaDef;->DEVICE_NAME_SD:Ljava/lang/String;

    .line 9
    const-string v0, "udisk"

    sput-object v0, Lcom/ts/dvdplayer/definition/MediaDef;->DEVICE_NAME_USB:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/mnt/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ts/dvdplayer/definition/MediaDef;->DEVICE_NAME_SD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ts/dvdplayer/definition/MediaDef;->DEVICE_PATH_SD:Ljava/lang/String;

    .line 12
    const-string v0, "/mnt/udisk"

    sput-object v0, Lcom/ts/dvdplayer/definition/MediaDef;->DEVICE_PATH_USB:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
