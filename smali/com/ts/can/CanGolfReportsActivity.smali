.class public Lcom/ts/can/CanGolfReportsActivity;
.super Lcom/ts/can/CanGolfBaseActivity;
.source "CanGolfReportsActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final TAG:Ljava/lang/String; = "CanGolfReportsActivity"

.field public static final mStrReports:[Ljava/lang/String;


# instance fields
.field private mItemReports:[Lcom/ts/canview/CanItemTextBtnList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mReportData:Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/16 v0, 0x9b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 19
    const-string v2, "Please check vehicle status in instrument cluster"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 20
    const-string v2, "Error: electric parking brake"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 21
    const-string v2, "Brake fluid: owner\'s manual!"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 22
    const-string v2, "Engine overheated. Stop! Owner\'s manual!"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 23
    const-string v2, "Check coolant! Owner\'s manual!"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 24
    const-string v2, "Oil pressure: Stop! Owner\'s manual!"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 25
    const-string v2, "Steering lock faulty. Stop!"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 26
    const-string v2, "Error: not charging battery."

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 27
    const-string v2, "Oil level: top up oil!"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 28
    const-string v2, "Top up AdBlue! Enginestart disabled."

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 29
    const-string v2, "Error: AdBlue. Engine start disabled."

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 30
    const-string v2, "Engine fault:workshop!"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 31
    const-string v2, "Gearbox overheated. Stop! Owner\'s manual!"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 32
    const-string v2, "Gearbox faulty: Workshop!"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 33
    const-string v2, "Loss of pressure: please check tyre pressures."

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 34
    const-string v2, "Loss of pressure: check front-left tyre pressure!"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 35
    const-string v2, "Loss of pressure: check front-right tyre pressure!"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 36
    const-string v2, "Loss of pressure: check rear-left tyre pressure!"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 37
    const-string v2, "Loss of pressure: check rear-right tyre pressure!"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 38
    const-string v2, "Error: Tyre Pressure Monitoring System"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 39
    const-string v2, "Error: gearbox"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 40
    const-string v2, "Error: gearbox. Reverse gear not avaliable"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 41
    const-string v2, "Error: gearbox"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 42
    const-string v2, "Fault: electric parking brake"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 43
    const-string v2, "Check towing bracket!"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 44
    const-string v2, "lgnition lock faulty. Workshop!"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 45
    const-string v2, "Steering lock: workshop!"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 46
    const-string v2, "Error: bend lighting(AFS)"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 47
    const-string v2, "Error: headlight range control"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 48
    const-string v2, "Fault: windscreen wipers"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 49
    const-string v2, "Keyless access system faulty."

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 50
    const-string v2, "Change the key battery!"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 51
    const-string v2, "Battery low"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 52
    const-string v2, "Error: fuel tank system. Workshop!"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 53
    const-string v2, "Please refuel. Note range!"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 54
    const-string v2, "Reduce oil level!"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 55
    const-string v2, "Check oil level!"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 56
    const-string v2, "Oil senser: workshop!"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 57
    const-string v2, "Dieset particulate filter: owner\'s manual!"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 58
    const-string v2, "Top up washer fluid!"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 59
    const-string v2, "Speed of 120 km/h exceeded"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 60
    const-string v2, "Fault: damper control"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 61
    const-string v2, "Top up AdBlue!No engine start in."

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 62
    const-string v2, "Error: AdBlue. No engine start in."

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 63
    const-string v2, "Check brake wear!"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 64
    const-string v2, "Maximum engine revs rpm"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 65
    const-string v2, "Error: brake. Workshop!"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 66
    const-string v2, "Fault: rain sensor"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 67
    const-string v2, "Fault: automatic headlight control"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 68
    const-string v2, "Roll Mode"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 69
    const-string v2, "Button for driver assistance systems faulty."

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 70
    const-string v2, "Gearbox overheated."

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 71
    const-string v2, "Check brake wear!"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 72
    const-string v2, "Drive to heat engine to oil temperature!"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 73
    const-string v2, "Water in fuel filter. Owner\'s manual!"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 74
    const-string v2, "Please refuel with LPG."

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 75
    const-string v2, "Error: LPG. Workshop!"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 76
    const-string v2, "Please refuel with CNG."

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 77
    const-string v2, "Error: CNG. Workshop!"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    .line 78
    const-string v2, "Loss of pressure: please check tyre pressures."

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 79
    const-string v2, "Loss of pressure: check front-left tyre pressure!"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    .line 80
    const-string v2, "Loss of pressure: check front-right tyre pressure!"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    .line 81
    const-string v2, "Loss of pressure: check rear-left tyre pressure!"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    .line 82
    const-string v2, "Loss of pressure: check rear-right tyre pressure!"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    .line 83
    const-string v2, "Check front-left turn signal!"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    .line 84
    const-string v2, "Check front-left side light!"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    .line 85
    const-string v2, "Check left dipped headlight beam!"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    .line 86
    const-string v2, "Check left main headlight beam!"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    .line 87
    const-string v2, "Check left fog light!"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    .line 88
    const-string v2, "Check left side turn signal!"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    .line 89
    const-string v2, "Check left daytime running light!"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    .line 90
    const-string v2, "Check left daytime runninglight/dipped beam!"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    .line 91
    const-string v2, "Check left daytime running light/fog light!"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    .line 92
    const-string v2, "Check left daytime running light/side light!"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    .line 93
    const-string v2, "Check left dipped/main headlight beams!"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    .line 94
    const-string v2, "Check front-right turn signal!"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    .line 95
    const-string v2, "Check front-right side light!"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    .line 96
    const-string v2, "Check right dipped headlight beam!"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    .line 97
    const-string v2, "Check right main headlight beam!"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    .line 98
    const-string v2, "Check right fog light!"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    .line 99
    const-string v2, "Check right side turn signal!"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    .line 100
    const-string v2, "Check right daytime running light"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    .line 101
    const-string v2, "Check right daytime running light/dipped headlight beam!"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    .line 102
    const-string v2, "Check right daytime running light/fog light"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    .line 103
    const-string v2, "Check right daytime running light/side light!"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    .line 104
    const-string v2, "Check right dipped/main headlight beams!"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    .line 105
    const-string v2, "Fault: vehicle lighting"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    .line 106
    const-string v2, "Check rear-left turn signal!"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    .line 107
    const-string v2, "Check left brake light!"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    .line 108
    const-string v2, "Check left tail light!"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    .line 109
    const-string v2, "Check left reversing light!"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    .line 110
    const-string v2, "Check left rear fog light!"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    .line 111
    const-string v2, "Check left brake/tail lights!"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    .line 112
    const-string v2, "Check left rear fog/tail lights!"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    .line 113
    const-string v2, "Check left turn signal/brake/tail lights!"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    .line 114
    const-string v2, "Check left brake light/turn signals!"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    .line 115
    const-string v2, "Check rear-right turn signal!"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    .line 116
    const-string v2, "Check right brake light!"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    .line 117
    const-string v2, "Check right tail light!"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    .line 118
    const-string v2, "Check right reversing light!"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    .line 119
    const-string v2, "Check right rear fog light!"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    .line 120
    const-string v2, "Check right brake/tail lights!"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    .line 121
    const-string v2, "Check right rear fog/tail lights!"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    .line 122
    const-string v2, "Check right turn signal/brake/tail lights!"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    .line 123
    const-string v2, "Check right brake light/turn signals!"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    .line 124
    const-string v2, "Check number plate lighting!"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    .line 125
    const-string v2, "Check third brake light!"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    .line 126
    const-string v2, "Check rear fog light!"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    .line 127
    const-string v2, "Check reversing light!"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    .line 128
    const-string v2, "Trailer: check left turn signal!"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    .line 129
    const-string v2, "Trailer: check right turn signal!"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    .line 130
    const-string v2, "Trailer: check left tail light!"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    .line 131
    const-string v2, "Trailer: check right tail light!"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    .line 132
    const-string v2, "Trailer: check brake lights!"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    .line 133
    const-string v2, "Check front-right cornering light!"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    .line 134
    const-string v2, "Check front-left cornering light!"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    .line 135
    const-string v2, "Chcek left headlight!"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    .line 136
    const-string v2, "Check right headlight!"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    .line 137
    const-string v2, "Error: start-stop system"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    .line 138
    const-string v2, "Brake servo failure."

    aput-object v2, v0, v1

    const/16 v1, 0x78

    .line 139
    const-string v2, "Error: stabilisation control(ESC)"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    .line 140
    const-string v2, "Error: ABS/stabilisation control(ESC)"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    .line 141
    const-string v2, "Stabilisation control(ESC) deactivated."

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    .line 142
    const-string v2, "Traction control(ASR) deactivated."

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    .line 143
    const-string v2, "ESC off-road: direction stability restricted."

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    .line 144
    const-string v2, "ESC sport: directional stability restricted."

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    .line 145
    const-string v2, "Error: Auto Hold"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    .line 146
    const-string v2, "Error: Hill Hold Assist"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    .line 147
    const-string v2, "Parking brake: inspection mode"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    .line 148
    const-string v2, "Fault: Light Assist"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    .line 149
    const-string v2, "Light Assist: clean the windscreen!"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    .line 150
    const-string v2, "ACC and Front Assist not available."

    aput-object v2, v0, v1

    const/16 v1, 0x84

    .line 151
    const-string v2, "ACC and Front Assist: no sensor view."

    aput-object v2, v0, v1

    const/16 v1, 0x85

    .line 152
    const-string v2, "Side Assist currently not available."

    aput-object v2, v0, v1

    const/16 v1, 0x86

    .line 153
    const-string v2, "Error: Side Assist"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    .line 154
    const-string v2, "Lane Assist currently not available"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    .line 155
    const-string v2, "Error: Lane Assist"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    .line 156
    const-string v2, "Lane Assist not available. No sensor view."

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    .line 157
    const-string v2, "Proactive passenger protection not available!"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    .line 158
    const-string v2, "Proactive passenger protection: function restricted."

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    .line 159
    const-string v2, "Driver alert. Take a bresk!"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    .line 160
    const-string v2, "Driver alert. Take a bresk!"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    .line 161
    const-string v2, "Error: ABS"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    .line 162
    const-string v2, "Error: traction control"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    .line 163
    const-string v2, "Error: ABS/traction control(ASR)"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    .line 164
    const-string v2, "Error: traffic sign recognition"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    .line 165
    const-string v2, "Traffic sign recognition: clean windscreen!"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    .line 166
    const-string v2, "Traffic sign recognition: currently restricted."

    aput-object v2, v0, v1

    const/16 v1, 0x94

    .line 167
    const-string v2, "Traction control(ASR) deactivated."

    aput-object v2, v0, v1

    const/16 v1, 0x95

    .line 168
    const-string v2, "Error instrument cluster. Workshop!"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    .line 169
    const-string v2, "Please note: operating temperature not yet reached"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    .line 170
    const-string v2, "Front Assist: no sensor view."

    aput-object v2, v0, v1

    const/16 v1, 0x98

    .line 171
    const-string v2, "Service! See service settings or vehicle status in MFD"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    .line 172
    const-string v2, "Service now!"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    .line 173
    const-string v2, "Door(s)/bonnet/boot lid open  See vehicle statues in MFD"

    aput-object v2, v0, v1

    .line 17
    sput-object v0, Lcom/ts/can/CanGolfReportsActivity;->mStrReports:[Ljava/lang/String;

    .line 174
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ts/can/CanGolfBaseActivity;-><init>()V

    .line 178
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfReportsActivity;->mReportData:Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;

    .line 13
    return-void
.end method


# virtual methods
.method protected QueryData()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/ts/can/CanGolfReportsActivity;->mReportData:Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfReportsActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    const/16 v0, 0x61

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 234
    :cond_0
    return-void
.end method

.method protected ResetData(Z)V
    .locals 7
    .param p1, "check"    # Z

    .prologue
    .line 199
    iget-object v4, p0, Lcom/ts/can/CanGolfReportsActivity;->mReportData:Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;

    invoke-static {v4}, Lcom/lgb/canmodule/CanJni;->GolfGetReports(Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;)V

    .line 200
    iget-object v4, p0, Lcom/ts/can/CanGolfReportsActivity;->mReportData:Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;->UpdateOnce:I

    invoke-static {v4}, Lcom/ts/can/CanGolfReportsActivity;->i2b(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 202
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/ts/can/CanGolfReportsActivity;->mReportData:Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;->Update:I

    invoke-static {v4}, Lcom/ts/can/CanGolfReportsActivity;->i2b(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 204
    :cond_0
    iget-object v4, p0, Lcom/ts/can/CanGolfReportsActivity;->mReportData:Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;

    const/4 v5, 0x0

    iput v5, v4, Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;->Update:I

    .line 205
    iget-object v4, p0, Lcom/ts/can/CanGolfReportsActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v4}, Lcom/ts/canview/CanScrollList;->RemoveAllViews()V

    .line 207
    sget-object v4, Lcom/ts/can/CanGolfReportsActivity;->mStrReports:[Ljava/lang/String;

    array-length v3, v4

    .line 208
    .local v3, "reportsStrNum":I
    iget-object v4, p0, Lcom/ts/can/CanGolfReportsActivity;->mReportData:Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;

    iget v2, v4, Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;->Num:I

    .line 209
    .local v2, "num":I
    iget-object v4, p0, Lcom/ts/can/CanGolfReportsActivity;->mItemReports:[Lcom/ts/canview/CanItemTextBtnList;

    array-length v4, v4

    if-le v2, v4, :cond_1

    .line 211
    iget-object v4, p0, Lcom/ts/can/CanGolfReportsActivity;->mItemReports:[Lcom/ts/canview/CanItemTextBtnList;

    array-length v2, v4

    .line 214
    :cond_1
    const/4 v1, 0x0

    .line 215
    .local v1, "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_3

    .line 226
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "num":I
    .end local v3    # "reportsStrNum":I
    :cond_2
    return-void

    .line 217
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v2    # "num":I
    .restart local v3    # "reportsStrNum":I
    :cond_3
    iget-object v4, p0, Lcom/ts/can/CanGolfReportsActivity;->mReportData:Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;

    iget-object v4, v4, Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;->Reports:[I

    aget v4, v4, v0

    if-ge v4, v3, :cond_4

    .line 219
    iget-object v4, p0, Lcom/ts/can/CanGolfReportsActivity;->mItemReports:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v4, v4, v1

    sget-object v5, Lcom/ts/can/CanGolfReportsActivity;->mStrReports:[Ljava/lang/String;

    iget-object v6, p0, Lcom/ts/can/CanGolfReportsActivity;->mReportData:Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;->Reports:[I

    aget v6, v6, v0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/ts/canview/CanItemTextBtnList;->SetVal(Ljava/lang/String;)V

    .line 220
    iget-object v4, p0, Lcom/ts/can/CanGolfReportsActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v5, p0, Lcom/ts/can/CanGolfReportsActivity;->mItemReports:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 221
    add-int/lit8 v1, v1, 0x1

    .line 215
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfReportsActivity;->ResetData(Z)V

    .line 260
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 184
    invoke-super {p0, p1}, Lcom/ts/can/CanGolfBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 185
    sget v1, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanGolfReportsActivity;->setContentView(I)V

    .line 187
    new-instance v1, Lcom/ts/canview/CanScrollList;

    invoke-direct {v1, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/ts/can/CanGolfReportsActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 189
    const/16 v1, 0x1e

    new-array v1, v1, [Lcom/ts/canview/CanItemTextBtnList;

    iput-object v1, p0, Lcom/ts/can/CanGolfReportsActivity;->mItemReports:[Lcom/ts/canview/CanItemTextBtnList;

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/CanGolfReportsActivity;->mItemReports:[Lcom/ts/canview/CanItemTextBtnList;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 195
    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanGolfReportsActivity;->mItemReports:[Lcom/ts/canview/CanItemTextBtnList;

    new-instance v2, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v2, p0, v3}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    aput-object v2, v1, v0

    .line 193
    iget-object v1, p0, Lcom/ts/can/CanGolfReportsActivity;->mItemReports:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/ts/canview/CanItemTextBtnList;->ShowArrow(Z)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 251
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 252
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onPause()V

    .line 253
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onResume()V

    .line 241
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfReportsActivity;->ResetData(Z)V

    .line 243
    invoke-virtual {p0}, Lcom/ts/can/CanGolfReportsActivity;->QueryData()V

    .line 245
    return-void
.end method
