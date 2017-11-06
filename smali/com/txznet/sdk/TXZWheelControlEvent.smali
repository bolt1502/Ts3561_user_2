.class public final Lcom/txznet/sdk/TXZWheelControlEvent;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final BACK_KEY_CLICKED_EVENTID:I = 0xd

.field public static final BACK_KEY_DOWN_EVENTID:I = 0x19

.field public static final BACK_KEY_LONG_CLICKED_EVENTID:I = 0x11

.field public static final BACK_KEY_UP_EVENTID:I = 0x15

.field public static final DEXTROROTATION_EVENTID:I = 0x65

.field public static final DOWN_KEY_CLICKED_EVENTID:I = 0x68

.field public static final DOWN_KEY_DOUBLE_CLICKED_EVENTID:I = 0x6d

.field public static final DOWN_KEY_DOWN_EVENTID:I = 0x77

.field public static final DOWN_KEY_LONG_CLICKED_EVENTID:I = 0x72

.field public static final DOWN_KEY_UP_EVENTID:I = 0x7c

.field public static final HOME_KEY_CLICKED_EVENTID:I = 0xc

.field public static final HOME_KEY_DOWN_EVENTID:I = 0x18

.field public static final HOME_KEY_LONG_CLICKED_EVENTID:I = 0x10

.field public static final HOME_KEY_UP_EVENTID:I = 0x14

.field public static final LEFT_KEY_CLICKED_EVENTID:I = 0x69

.field public static final LEFT_KEY_DOUBLE_CLICKED_EVENTID:I = 0x6e

.field public static final LEFT_KEY_DOWN_EVENTID:I = 0x78

.field public static final LEFT_KEY_LONG_CLICKED_EVENTID:I = 0x73

.field public static final LEFT_KEY_UP_EVENTID:I = 0x7d

.field public static final LEVOROTATION_EVENTID:I = 0x64

.field public static final OK_KEY_CLICKED_EVENTID:I = 0x66

.field public static final OK_KEY_DOUBLE_CLICKED_EVENTID:I = 0x6b

.field public static final OK_KEY_DOWN_EVENTID:I = 0x75

.field public static final OK_KEY_LONG_CLICKED_EVENTID:I = 0x70

.field public static final OK_KEY_UP_EVENTID:I = 0x7a

.field public static final RIGHT_KEY_CLICKED_EVENTID:I = 0x6a

.field public static final RIGHT_KEY_DOUBLE_CLICKED_EVENTID:I = 0x6f

.field public static final RIGHT_KEY_DOWN_EVENTID:I = 0x79

.field public static final RIGHT_KEY_LONG_CLICKED_EVENTID:I = 0x74

.field public static final RIGHT_KEY_UP_EVENTID:I = 0x7e

.field public static SUBSCRIBER_PRIORITY_DEFAULT:I = 0x0

.field public static SUBSCRIBER_PRIORITY_SYSTEM:I = 0x0

.field public static final UP_KEY_CLICKED_EVENTID:I = 0x67

.field public static final UP_KEY_DOUBLE_CLICKED_EVENTID:I = 0x6c

.field public static final UP_KEY_DOWN_EVENTID:I = 0x76

.field public static final UP_KEY_LONG_CLICKED_EVENTID:I = 0x71

.field public static final UP_KEY_UP_EVENTID:I = 0x7b

.field public static final VOICE_KEY_CLICKED_EVENTID:I = 0xe

.field public static final VOICE_KEY_DOWN_EVENTID:I = 0x1a

.field public static final VOICE_KEY_LONG_CLICKED_EVENTID:I = 0x12

.field public static final VOICE_KEY_UP_EVENTID:I = 0x16

.field public static final VOL_KEY_CLICKED_EVENTID:I = 0xb

.field public static final VOL_KEY_DOWN_EVENTID:I = 0x17

.field public static final VOL_KEY_LONG_CLICKED_EVENTID:I = 0xf

.field public static final VOL_KEY_UP_EVENTID:I = 0x13


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput v0, Lcom/txznet/sdk/TXZWheelControlEvent;->SUBSCRIBER_PRIORITY_DEFAULT:I

    .line 10
    const/4 v0, 0x1

    sput v0, Lcom/txznet/sdk/TXZWheelControlEvent;->SUBSCRIBER_PRIORITY_SYSTEM:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method
