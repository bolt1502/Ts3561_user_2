.class public Lcom/ts/can/ford/CanFordSyncUIActivity;
.super Lcom/ts/can/ford/CanFordBaseActivity;
.source "CanFordSyncUIActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final ITEM_DLG_BTN0:I = 0x25

.field public static final ITEM_DLG_BTN1:I = 0x26

.field public static final ITEM_DLG_BTN2:I = 0x27

.field public static final ITEM_DLG_BTN3:I = 0x28

.field public static final ITEM_DLG_LINE0:I = 0x20

.field public static final ITEM_DLG_LINE1:I = 0x21

.field public static final ITEM_DLG_LINE2:I = 0x22

.field public static final ITEM_DLG_LINE3:I = 0x23

.field public static final ITEM_DLG_LINE4:I = 0x24

.field public static final ITEM_LT_KB:I = 0x4

.field public static final ITEM_LT_MUSIC:I = 0x1

.field public static final ITEM_LT_PHONE:I = 0x2

.field public static final ITEM_LT_SPEECH:I = 0x3

.field public static final ITEM_MENU_BTN0:I = 0x15

.field public static final ITEM_MENU_BTN1:I = 0x16

.field public static final ITEM_MENU_BTN2:I = 0x17

.field public static final ITEM_MENU_BTN3:I = 0x18

.field public static final ITEM_MENU_LINE0:I = 0x10

.field public static final ITEM_MENU_LINE1:I = 0x11

.field public static final ITEM_MENU_LINE2:I = 0x12

.field public static final ITEM_MENU_LINE3:I = 0x13

.field public static final ITEM_MENU_LINE4:I = 0x14

.field public static final ITEM_RT_BTN:I = 0x50

.field public static final TAG:Ljava/lang/String; = "CanFordSyncUIActivity"

.field public static final mDlgBgArr:[I

.field public static final mDlgYArr:[I

.field public static final mIcoBatArr:[I

.field public static final mIcoSigArr:[I

.field public static final mIconArr:[I

.field public static mIsJump:Z

.field public static mIsNeedFinish:Z

.field public static mIsSyncWin:Z

.field protected static mVerUS:Z


# instance fields
.field protected mBtnCall:Lcom/ts/other/ParamButton;

.field protected mBtnDev:Lcom/ts/other/ParamButton;

.field protected mBtnDn:Lcom/ts/other/ParamButton;

.field protected mBtnHang:Lcom/ts/other/ParamButton;

.field protected mBtnInfo:Lcom/ts/other/ParamButton;

.field protected mBtnLeft:Lcom/ts/other/ParamButton;

.field protected mBtnLtKeyboard:Lcom/ts/other/ParamButton;

.field protected mBtnLtMusic:Lcom/ts/other/ParamButton;

.field protected mBtnLtPhone:Lcom/ts/other/ParamButton;

.field protected mBtnLtSpeech:Lcom/ts/other/ParamButton;

.field protected mBtnMenu:Lcom/ts/other/ParamButton;

.field protected mBtnNext:Lcom/ts/other/ParamButton;

.field protected mBtnNum:[Lcom/ts/other/ParamButton;

.field protected mBtnNumJ:Lcom/ts/other/ParamButton;

.field protected mBtnNumX:Lcom/ts/other/ParamButton;

.field protected mBtnOK:Lcom/ts/other/ParamButton;

.field protected mBtnPrev:Lcom/ts/other/ParamButton;

.field protected mBtnRight:Lcom/ts/other/ParamButton;

.field protected mBtnRnd:Lcom/ts/other/ParamButton;

.field protected mBtnUp:Lcom/ts/other/ParamButton;

.field protected mDlgBtnNum:I

.field protected mDlgKey:[Lcom/ts/can/ford/SyncSKey;

.field protected mDlgLine:[Lcom/ts/can/ford/SyncLine;

.field protected mDlgLineNum:I

.field protected mDlgType:I

.field protected mIcoBattery:Lcom/ts/other/CustomImgView;

.field protected mIcoBt:Lcom/ts/other/CustomImgView;

.field protected mIcoCall:Lcom/ts/other/CustomImgView;

.field protected mIcoCurSrc:Lcom/ts/other/CustomImgView;

.field protected mIcoInfo:Lcom/ts/other/CustomImgView;

.field protected mIcoSM:Lcom/ts/other/CustomImgView;

.field protected mIcoSignal:Lcom/ts/other/CustomImgView;

.field protected mIcoSpk:Lcom/ts/other/CustomImgView;

.field protected mIcoSync:Lcom/ts/other/CustomImgView;

.field protected mImgDlgBg:[Lcom/ts/other/CustomImgView;

.field protected mLastTimeTick:J

.field protected mLayoutDlg:Landroid/widget/RelativeLayout;

.field protected mLayoutMenu:Landroid/widget/RelativeLayout;

.field protected mLayoutUS:Landroid/widget/RelativeLayout;

.field protected mManDlg:Lcom/ts/other/RelativeLayoutManager;

.field protected mManMenu:Lcom/ts/other/RelativeLayoutManager;

.field protected mManUS:Lcom/ts/other/RelativeLayoutManager;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mMediaTimeData:Lcom/lgb/canmodule/CanDataInfo$SyncMediaTime;

.field protected mMenuInfoData:Lcom/lgb/canmodule/CanDataInfo$SyncMenuInfo;

.field protected mMenuKey:[Lcom/ts/can/ford/SyncSKey;

.field protected mMenuLine:[Lcom/ts/can/ford/SyncLine;

.field protected mPhoneTimeData:Lcom/lgb/canmodule/CanDataInfo$SyncPhoneTime;

.field protected mStatusData:Lcom/lgb/canmodule/CanDataInfo$SyncStatus;

.field protected mStrDnData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

.field protected mStrShortData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

.field protected mStrUpData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

.field protected mSyncTime:Lcom/ts/other/CustomTextView;

.field protected mTimeUpdate:Z

.field protected mUSLine:[Lcom/ts/can/ford/SyncLine;

.field protected mWinData:Lcom/lgb/canmodule/CanDataInfo$SyncWin;

.field protected mX:I

.field protected mY:I

.field protected mfgShowKb:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 67
    const/16 v0, 0x101

    new-array v0, v0, [I

    .line 71
    sget v1, Lcom/ts/MainUI/R$drawable;->can_sync_icon_03:I

    aput v1, v0, v4

    const/4 v1, 0x6

    .line 74
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_06:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 77
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_09:I

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 79
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_0b:I

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 81
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_0d:I

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 85
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_11:I

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 86
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_12:I

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 89
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_15:I

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 91
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_17:I

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 96
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_1c:I

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 97
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_1d:I

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 98
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_1e:I

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 99
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_1f:I

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 101
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_21:I

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 102
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_22:I

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 103
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_23:I

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 104
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_24:I

    aput v2, v0, v1

    const/16 v1, 0x25

    .line 105
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_25:I

    aput v2, v0, v1

    const/16 v1, 0x26

    .line 106
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_26:I

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 107
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_27:I

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 108
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_28:I

    aput v2, v0, v1

    const/16 v1, 0x29

    .line 109
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_29:I

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 112
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_2c:I

    aput v2, v0, v1

    const/16 v1, 0x40

    .line 132
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_40:I

    aput v2, v0, v1

    const/16 v1, 0x41

    .line 133
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_41:I

    aput v2, v0, v1

    const/16 v1, 0x43

    .line 135
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_43:I

    aput v2, v0, v1

    const/16 v1, 0x44

    .line 136
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_44:I

    aput v2, v0, v1

    const/16 v1, 0x45

    .line 137
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_45:I

    aput v2, v0, v1

    const/16 v1, 0x46

    .line 138
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_46:I

    aput v2, v0, v1

    const/16 v1, 0x47

    .line 139
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_47:I

    aput v2, v0, v1

    const/16 v1, 0x49

    .line 141
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_49:I

    aput v2, v0, v1

    const/16 v1, 0x4a

    .line 142
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_4a:I

    aput v2, v0, v1

    const/16 v1, 0x4b

    .line 143
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_4b:I

    aput v2, v0, v1

    const/16 v1, 0x4c

    .line 144
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_4c:I

    aput v2, v0, v1

    const/16 v1, 0x4d

    .line 145
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_4d:I

    aput v2, v0, v1

    const/16 v1, 0x4e

    .line 146
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_4e:I

    aput v2, v0, v1

    const/16 v1, 0x4f

    .line 147
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_4f:I

    aput v2, v0, v1

    const/16 v1, 0x50

    .line 148
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_50:I

    aput v2, v0, v1

    const/16 v1, 0x51

    .line 149
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_51:I

    aput v2, v0, v1

    const/16 v1, 0x52

    .line 150
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_52:I

    aput v2, v0, v1

    const/16 v1, 0x53

    .line 151
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_53:I

    aput v2, v0, v1

    const/16 v1, 0x54

    .line 152
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_54:I

    aput v2, v0, v1

    const/16 v1, 0x55

    .line 153
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_55:I

    aput v2, v0, v1

    const/16 v1, 0x56

    .line 154
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_56:I

    aput v2, v0, v1

    const/16 v1, 0x57

    .line 155
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_57:I

    aput v2, v0, v1

    const/16 v1, 0x58

    .line 156
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_58:I

    aput v2, v0, v1

    const/16 v1, 0x59

    .line 157
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_59:I

    aput v2, v0, v1

    const/16 v1, 0x5a

    .line 158
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_5a:I

    aput v2, v0, v1

    const/16 v1, 0x5b

    .line 159
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_5b:I

    aput v2, v0, v1

    const/16 v1, 0x5c

    .line 160
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_5c:I

    aput v2, v0, v1

    const/16 v1, 0x5d

    .line 161
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_5d:I

    aput v2, v0, v1

    const/16 v1, 0x5e

    .line 162
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_5e:I

    aput v2, v0, v1

    const/16 v1, 0x5f

    .line 163
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_5f:I

    aput v2, v0, v1

    const/16 v1, 0x60

    .line 164
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_60:I

    aput v2, v0, v1

    const/16 v1, 0x61

    .line 165
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_61:I

    aput v2, v0, v1

    const/16 v1, 0x62

    .line 166
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_62:I

    aput v2, v0, v1

    const/16 v1, 0x63

    .line 167
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_63:I

    aput v2, v0, v1

    const/16 v1, 0x64

    .line 168
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_64:I

    aput v2, v0, v1

    const/16 v1, 0x65

    .line 169
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_65:I

    aput v2, v0, v1

    const/16 v1, 0x66

    .line 170
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_66:I

    aput v2, v0, v1

    const/16 v1, 0x67

    .line 171
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_67:I

    aput v2, v0, v1

    const/16 v1, 0x68

    .line 172
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_68:I

    aput v2, v0, v1

    const/16 v1, 0x69

    .line 173
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_69:I

    aput v2, v0, v1

    const/16 v1, 0x6a

    .line 174
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_6a:I

    aput v2, v0, v1

    const/16 v1, 0x6b

    .line 175
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_6b:I

    aput v2, v0, v1

    const/16 v1, 0x6d

    .line 177
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_6d:I

    aput v2, v0, v1

    const/16 v1, 0x6e

    .line 178
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_6e:I

    aput v2, v0, v1

    const/16 v1, 0x6f

    .line 179
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_6f:I

    aput v2, v0, v1

    const/16 v1, 0x70

    .line 180
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_70:I

    aput v2, v0, v1

    const/16 v1, 0x71

    .line 181
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_71:I

    aput v2, v0, v1

    const/16 v1, 0x72

    .line 182
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_72:I

    aput v2, v0, v1

    const/16 v1, 0x73

    .line 183
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_73:I

    aput v2, v0, v1

    const/16 v1, 0x74

    .line 184
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_74:I

    aput v2, v0, v1

    const/16 v1, 0x75

    .line 185
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_75:I

    aput v2, v0, v1

    const/16 v1, 0x76

    .line 186
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_76:I

    aput v2, v0, v1

    const/16 v1, 0x77

    .line 187
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_77:I

    aput v2, v0, v1

    const/16 v1, 0x78

    .line 188
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_78:I

    aput v2, v0, v1

    const/16 v1, 0x79

    .line 189
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_79:I

    aput v2, v0, v1

    const/16 v1, 0x7a

    .line 190
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_7a:I

    aput v2, v0, v1

    const/16 v1, 0x7b

    .line 191
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_7b:I

    aput v2, v0, v1

    const/16 v1, 0x7c

    .line 192
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_7c:I

    aput v2, v0, v1

    const/16 v1, 0x7d

    .line 193
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_7d:I

    aput v2, v0, v1

    const/16 v1, 0x7e

    .line 194
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_7e:I

    aput v2, v0, v1

    const/16 v1, 0x7f

    .line 195
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_7f:I

    aput v2, v0, v1

    const/16 v1, 0x80

    .line 196
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_80:I

    aput v2, v0, v1

    const/16 v1, 0x81

    .line 197
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_81:I

    aput v2, v0, v1

    const/16 v1, 0x82

    .line 198
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_82:I

    aput v2, v0, v1

    const/16 v1, 0x83

    .line 199
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_83:I

    aput v2, v0, v1

    const/16 v1, 0x84

    .line 200
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_84:I

    aput v2, v0, v1

    const/16 v1, 0x85

    .line 201
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_85:I

    aput v2, v0, v1

    const/16 v1, 0x86

    .line 202
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_86:I

    aput v2, v0, v1

    const/16 v1, 0x87

    .line 203
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_87:I

    aput v2, v0, v1

    const/16 v1, 0x88

    .line 204
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_88:I

    aput v2, v0, v1

    const/16 v1, 0x89

    .line 205
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_89:I

    aput v2, v0, v1

    const/16 v1, 0x8a

    .line 206
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_8a:I

    aput v2, v0, v1

    const/16 v1, 0x8b

    .line 207
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_8b:I

    aput v2, v0, v1

    const/16 v1, 0x8c

    .line 208
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_8c:I

    aput v2, v0, v1

    const/16 v1, 0x8d

    .line 209
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_8d:I

    aput v2, v0, v1

    const/16 v1, 0x8e

    .line 210
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_8e:I

    aput v2, v0, v1

    const/16 v1, 0x8f

    .line 211
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_8f:I

    aput v2, v0, v1

    const/16 v1, 0x90

    .line 212
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_90:I

    aput v2, v0, v1

    const/16 v1, 0x91

    .line 213
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_91:I

    aput v2, v0, v1

    const/16 v1, 0x92

    .line 214
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_92:I

    aput v2, v0, v1

    const/16 v1, 0x93

    .line 215
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_93:I

    aput v2, v0, v1

    const/16 v1, 0x94

    .line 216
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_94:I

    aput v2, v0, v1

    const/16 v1, 0x95

    .line 217
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_95:I

    aput v2, v0, v1

    const/16 v1, 0x96

    .line 218
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_96:I

    aput v2, v0, v1

    const/16 v1, 0x97

    .line 219
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_97:I

    aput v2, v0, v1

    const/16 v1, 0x98

    .line 220
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_98:I

    aput v2, v0, v1

    const/16 v1, 0x99

    .line 221
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_99:I

    aput v2, v0, v1

    const/16 v1, 0x9a

    .line 222
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_9a:I

    aput v2, v0, v1

    const/16 v1, 0x9b

    .line 223
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_9b:I

    aput v2, v0, v1

    const/16 v1, 0x9c

    .line 224
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_9c:I

    aput v2, v0, v1

    const/16 v1, 0x9d

    .line 225
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_9d:I

    aput v2, v0, v1

    const/16 v1, 0x9e

    .line 226
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_9e:I

    aput v2, v0, v1

    const/16 v1, 0x9f

    .line 227
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_9f:I

    aput v2, v0, v1

    const/16 v1, 0xa0

    .line 228
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_a0:I

    aput v2, v0, v1

    const/16 v1, 0xa1

    .line 229
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_a1:I

    aput v2, v0, v1

    const/16 v1, 0xa2

    .line 230
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_a2:I

    aput v2, v0, v1

    const/16 v1, 0xa3

    .line 231
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_a3:I

    aput v2, v0, v1

    const/16 v1, 0xa4

    .line 232
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_a4:I

    aput v2, v0, v1

    const/16 v1, 0xa5

    .line 233
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_a5:I

    aput v2, v0, v1

    const/16 v1, 0xa6

    .line 234
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_a6:I

    aput v2, v0, v1

    const/16 v1, 0xa7

    .line 235
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_a7:I

    aput v2, v0, v1

    const/16 v1, 0xa8

    .line 236
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_a8:I

    aput v2, v0, v1

    const/16 v1, 0xa9

    .line 237
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_a9:I

    aput v2, v0, v1

    const/16 v1, 0xaa

    .line 238
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_aa:I

    aput v2, v0, v1

    const/16 v1, 0xab

    .line 239
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_ab:I

    aput v2, v0, v1

    const/16 v1, 0xac

    .line 240
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_ac:I

    aput v2, v0, v1

    const/16 v1, 0xae

    .line 242
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_ae:I

    aput v2, v0, v1

    const/16 v1, 0xaf

    .line 243
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_af:I

    aput v2, v0, v1

    const/16 v1, 0xb0

    .line 244
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_b0:I

    aput v2, v0, v1

    const/16 v1, 0xb1

    .line 245
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_b1:I

    aput v2, v0, v1

    const/16 v1, 0xb2

    .line 246
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_b2:I

    aput v2, v0, v1

    const/16 v1, 0xb3

    .line 247
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_b3:I

    aput v2, v0, v1

    const/16 v1, 0xb4

    .line 248
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_b4:I

    aput v2, v0, v1

    const/16 v1, 0xb5

    .line 249
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_b5:I

    aput v2, v0, v1

    const/16 v1, 0xb6

    .line 250
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_b6:I

    aput v2, v0, v1

    const/16 v1, 0xb7

    .line 251
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_b7:I

    aput v2, v0, v1

    const/16 v1, 0xb8

    .line 252
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_b8:I

    aput v2, v0, v1

    const/16 v1, 0xb9

    .line 253
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_b9:I

    aput v2, v0, v1

    const/16 v1, 0xba

    .line 254
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_ba:I

    aput v2, v0, v1

    const/16 v1, 0xbb

    .line 255
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_bb:I

    aput v2, v0, v1

    const/16 v1, 0xbc

    .line 256
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_bc:I

    aput v2, v0, v1

    const/16 v1, 0xbd

    .line 257
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_bd:I

    aput v2, v0, v1

    const/16 v1, 0xbe

    .line 258
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_be:I

    aput v2, v0, v1

    const/16 v1, 0xbf

    .line 259
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_bf:I

    aput v2, v0, v1

    const/16 v1, 0xc0

    .line 260
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_c0:I

    aput v2, v0, v1

    const/16 v1, 0xc1

    .line 261
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_c1:I

    aput v2, v0, v1

    const/16 v1, 0xc2

    .line 262
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_c2:I

    aput v2, v0, v1

    const/16 v1, 0xc3

    .line 263
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_c3:I

    aput v2, v0, v1

    const/16 v1, 0xc4

    .line 264
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_c4:I

    aput v2, v0, v1

    const/16 v1, 0xc5

    .line 265
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_c5:I

    aput v2, v0, v1

    const/16 v1, 0xc6

    .line 266
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_c6:I

    aput v2, v0, v1

    const/16 v1, 0xcc

    .line 272
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_cc:I

    aput v2, v0, v1

    const/16 v1, 0xcd

    .line 273
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_cd:I

    aput v2, v0, v1

    const/16 v1, 0xcf

    .line 275
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_cf:I

    aput v2, v0, v1

    const/16 v1, 0xd0

    .line 276
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_d0:I

    aput v2, v0, v1

    const/16 v1, 0xd1

    .line 277
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_d1:I

    aput v2, v0, v1

    const/16 v1, 0xd2

    .line 278
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_d2:I

    aput v2, v0, v1

    const/16 v1, 0xd3

    .line 279
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_d3:I

    aput v2, v0, v1

    const/16 v1, 0xd4

    .line 280
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_d4:I

    aput v2, v0, v1

    const/16 v1, 0xd5

    .line 281
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_d5:I

    aput v2, v0, v1

    const/16 v1, 0xd6

    .line 282
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_d6:I

    aput v2, v0, v1

    const/16 v1, 0xd7

    .line 283
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_d7:I

    aput v2, v0, v1

    const/16 v1, 0xd8

    .line 284
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_d8:I

    aput v2, v0, v1

    const/16 v1, 0xd9

    .line 285
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_d9:I

    aput v2, v0, v1

    const/16 v1, 0xda

    .line 286
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_da:I

    aput v2, v0, v1

    const/16 v1, 0xdb

    .line 287
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_db:I

    aput v2, v0, v1

    const/16 v1, 0xdc

    .line 288
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_dc:I

    aput v2, v0, v1

    const/16 v1, 0xdd

    .line 289
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_dd:I

    aput v2, v0, v1

    const/16 v1, 0xde

    .line 290
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_de:I

    aput v2, v0, v1

    const/16 v1, 0xdf

    .line 291
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_df:I

    aput v2, v0, v1

    const/16 v1, 0xe0

    .line 292
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_e0:I

    aput v2, v0, v1

    const/16 v1, 0xe5

    .line 297
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_e5:I

    aput v2, v0, v1

    const/16 v1, 0xf7

    .line 315
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_f7:I

    aput v2, v0, v1

    const/16 v1, 0xf8

    .line 316
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_f8:I

    aput v2, v0, v1

    const/16 v1, 0xf9

    .line 317
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_f9:I

    aput v2, v0, v1

    const/16 v1, 0xfa

    .line 318
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_fa:I

    aput v2, v0, v1

    const/16 v1, 0xfb

    .line 319
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_icon_fb:I

    aput v2, v0, v1

    .line 66
    sput-object v0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIconArr:[I

    .line 328
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 329
    sget v1, Lcom/ts/MainUI/R$drawable;->can_sync_box01:I

    aput v1, v0, v3

    .line 330
    sget v1, Lcom/ts/MainUI/R$drawable;->can_sync_box02:I

    aput v1, v0, v5

    .line 331
    sget v1, Lcom/ts/MainUI/R$drawable;->can_sync_box03:I

    aput v1, v0, v6

    .line 332
    sget v1, Lcom/ts/MainUI/R$drawable;->can_sync_box04:I

    aput v1, v0, v4

    .line 333
    sget v1, Lcom/ts/MainUI/R$drawable;->can_sync_box05:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 334
    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_box:I

    aput v2, v0, v1

    .line 327
    sput-object v0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mDlgBgArr:[I

    .line 338
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 339
    sget v1, Lcom/ts/MainUI/R$drawable;->can_sync_stutas_61:I

    aput v1, v0, v3

    .line 340
    sget v1, Lcom/ts/MainUI/R$drawable;->can_sync_stutas_62:I

    aput v1, v0, v5

    .line 341
    sget v1, Lcom/ts/MainUI/R$drawable;->can_sync_stutas_63:I

    aput v1, v0, v6

    .line 342
    sget v1, Lcom/ts/MainUI/R$drawable;->can_sync_stutas_64:I

    aput v1, v0, v4

    .line 343
    sget v1, Lcom/ts/MainUI/R$drawable;->can_sync_stutas_65:I

    aput v1, v0, v7

    .line 337
    sput-object v0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoBatArr:[I

    .line 348
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 349
    sget v1, Lcom/ts/MainUI/R$drawable;->can_sync_stutas_67:I

    aput v1, v0, v3

    .line 350
    sget v1, Lcom/ts/MainUI/R$drawable;->can_sync_stutas_68:I

    aput v1, v0, v5

    .line 351
    sget v1, Lcom/ts/MainUI/R$drawable;->can_sync_stutas_69:I

    aput v1, v0, v6

    .line 352
    sget v1, Lcom/ts/MainUI/R$drawable;->can_sync_stutas_6a:I

    aput v1, v0, v4

    .line 353
    sget v1, Lcom/ts/MainUI/R$drawable;->can_sync_stutas_6b:I

    aput v1, v0, v7

    .line 347
    sput-object v0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoSigArr:[I

    .line 357
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 356
    sput-object v0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mDlgYArr:[I

    .line 440
    sput-boolean v3, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIsSyncWin:Z

    .line 441
    sput-boolean v3, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIsJump:Z

    .line 442
    sput-boolean v3, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIsNeedFinish:Z

    return-void

    .line 357
    nop

    :array_0
    .array-data 4
        0xda
        0xb6
        0x90
        0x72
        0x54
        0x30
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x4

    .line 37
    invoke-direct {p0}, Lcom/ts/can/ford/CanFordBaseActivity;-><init>()V

    .line 388
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    .line 393
    new-array v0, v2, [Lcom/ts/can/ford/SyncLine;

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMenuLine:[Lcom/ts/can/ford/SyncLine;

    .line 394
    new-array v0, v1, [Lcom/ts/can/ford/SyncSKey;

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMenuKey:[Lcom/ts/can/ford/SyncSKey;

    .line 396
    new-array v0, v2, [Lcom/ts/can/ford/SyncLine;

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mDlgLine:[Lcom/ts/can/ford/SyncLine;

    .line 397
    new-array v0, v1, [Lcom/ts/can/ford/SyncSKey;

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mDlgKey:[Lcom/ts/can/ford/SyncSKey;

    .line 399
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ts/can/ford/SyncLine;

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mUSLine:[Lcom/ts/can/ford/SyncLine;

    .line 417
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mImgDlgBg:[Lcom/ts/other/CustomImgView;

    .line 420
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$SyncWin;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$SyncWin;-><init>()V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mWinData:Lcom/lgb/canmodule/CanDataInfo$SyncWin;

    .line 421
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$SyncPhoneTime;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$SyncPhoneTime;-><init>()V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mPhoneTimeData:Lcom/lgb/canmodule/CanDataInfo$SyncPhoneTime;

    .line 422
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$SyncMediaTime;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$SyncMediaTime;-><init>()V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMediaTimeData:Lcom/lgb/canmodule/CanDataInfo$SyncMediaTime;

    .line 423
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$SyncMenuInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$SyncMenuInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMenuInfoData:Lcom/lgb/canmodule/CanDataInfo$SyncMenuInfo;

    .line 424
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$SyncStr;-><init>()V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStrUpData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    .line 425
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$SyncStr;-><init>()V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStrDnData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    .line 426
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$SyncStr;-><init>()V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStrShortData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    .line 427
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$SyncStatus;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$SyncStatus;-><init>()V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStatusData:Lcom/lgb/canmodule/CanDataInfo$SyncStatus;

    .line 432
    const/16 v0, 0xe1

    iput v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mX:I

    const/16 v0, 0x30

    iput v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mY:I

    .line 37
    return-void
.end method

.method public static DealCallEnd()V
    .locals 1

    .prologue
    .line 1312
    sget-boolean v0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIsJump:Z

    if-eqz v0, :cond_0

    .line 1314
    sget-boolean v0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIsSyncWin:Z

    if-eqz v0, :cond_0

    .line 1316
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIsNeedFinish:Z

    .line 1320
    :cond_0
    return-void
.end method

.method public static DealVoiceEnd()V
    .locals 1

    .prologue
    .line 1324
    sget-boolean v0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIsJump:Z

    if-eqz v0, :cond_0

    .line 1326
    sget-boolean v0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIsSyncWin:Z

    if-eqz v0, :cond_0

    .line 1328
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIsNeedFinish:Z

    .line 1331
    :cond_0
    return-void
.end method

.method protected static IsUsVer()Z
    .locals 1

    .prologue
    .line 1075
    sget-boolean v0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mVerUS:Z

    return v0
.end method

.method protected static MediaClick()V
    .locals 1

    .prologue
    .line 1081
    invoke-static {}, Lcom/ts/can/ford/CanFordSyncUIActivity;->IsUsVer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    const/16 v0, 0x81

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->FordSyncCtrl(I)V

    .line 1089
    :goto_0
    return-void

    .line 1087
    :cond_0
    const/16 v0, 0x1b

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->FordSyncCtrl(I)V

    goto :goto_0
.end method

.method private ResetData(Z)V
    .locals 1
    .param p1, "check"    # Z

    .prologue
    .line 1057
    sget-boolean v0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mVerUS:Z

    if-eqz v0, :cond_0

    .line 1059
    invoke-direct {p0, p1}, Lcom/ts/can/ford/CanFordSyncUIActivity;->UpdateUsUI(Z)V

    .line 1066
    :goto_0
    invoke-direct {p0, p1}, Lcom/ts/can/ford/CanFordSyncUIActivity;->UpdateStatus(Z)V

    .line 1068
    return-void

    .line 1063
    :cond_0
    invoke-direct {p0, p1}, Lcom/ts/can/ford/CanFordSyncUIActivity;->UpdateCnUI(Z)V

    goto :goto_0
.end method

.method private SetLine(Lcom/ts/can/ford/SyncLine;Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;)V
    .locals 6
    .param p1, "line"    # Lcom/ts/can/ford/SyncLine;
    .param p2, "item"    # Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;

    .prologue
    .line 782
    sget-object v3, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIconArr:[I

    iget v4, p2, Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;->LeftIco:I

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    sget-object v4, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIconArr:[I

    iget v5, p2, Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;->RightIco:I

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    invoke-virtual {p1, v3, v4}, Lcom/ts/can/ford/SyncLine;->SetIco(II)V

    .line 783
    iget v3, p2, Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;->CanSelect:I

    invoke-virtual {p1, v3}, Lcom/ts/can/ford/SyncLine;->SetCanSel(I)V

    .line 784
    iget-object v3, p2, Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;->szText:[B

    invoke-virtual {p0, v3}, Lcom/ts/can/ford/CanFordSyncUIActivity;->GetUnicodeStr([B)Ljava/lang/String;

    move-result-object v2

    .line 785
    .local v2, "strLine":Ljava/lang/String;
    const-string v3, "CanFordSyncUIActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "strLine = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const/4 v0, -0x1

    .line 787
    .local v0, "color":I
    const/4 v1, 0x1

    .line 788
    .local v1, "show":I
    iget v3, p2, Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;->LineAttrib:I

    packed-switch v3, :pswitch_data_0

    .line 816
    const/4 v1, 0x0

    .line 817
    const-string v2, ""

    .line 822
    :goto_0
    invoke-virtual {p1, v2, v0}, Lcom/ts/can/ford/SyncLine;->SetText(Ljava/lang/String;I)V

    .line 825
    return-void

    .line 791
    :pswitch_0
    const/4 v0, -0x1

    .line 792
    goto :goto_0

    .line 795
    :pswitch_1
    const/4 v0, -0x1

    .line 796
    goto :goto_0

    .line 799
    :pswitch_2
    const v0, -0xbbbbbc

    .line 800
    goto :goto_0

    .line 803
    :pswitch_3
    const v0, -0xbbbbbc

    .line 804
    goto :goto_0

    .line 807
    :pswitch_4
    const v0, -0xbbbbbc

    .line 808
    goto :goto_0

    .line 811
    :pswitch_5
    const/4 v1, 0x0

    .line 812
    const-string v2, ""

    .line 813
    goto :goto_0

    .line 788
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private SetSoftKey(Lcom/ts/can/ford/SyncSKey;Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;)V
    .locals 5
    .param p1, "key"    # Lcom/ts/can/ford/SyncSKey;
    .param p2, "item"    # Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;

    .prologue
    .line 829
    const-string v3, ""

    .line 830
    .local v3, "strLine":Ljava/lang/String;
    const/4 v0, 0x0

    .line 831
    .local v0, "ico":I
    const/4 v1, 0x0

    .line 832
    .local v1, "sel":I
    const/4 v2, 0x1

    .line 833
    .local v2, "show":I
    iget v4, p2, Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;->LineAttrib:I

    sparse-switch v4, :sswitch_data_0

    .line 859
    const-string v3, "--"

    .line 860
    const/4 v2, 0x0

    .line 864
    :goto_0
    sget-object v4, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIconArr:[I

    aget v4, v4, v0

    invoke-virtual {p1, v3, v4}, Lcom/ts/can/ford/SyncSKey;->SetTextIco(Ljava/lang/String;I)V

    .line 865
    invoke-virtual {p1, v1}, Lcom/ts/can/ford/SyncSKey;->SetSel(I)V

    .line 866
    invoke-virtual {p1, v2}, Lcom/ts/can/ford/SyncSKey;->Show(I)V

    .line 867
    return-void

    .line 836
    :sswitch_0
    iget-object v4, p2, Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;->szText:[B

    invoke-virtual {p0, v4}, Lcom/ts/can/ford/CanFordSyncUIActivity;->GetUnicodeStr([B)Ljava/lang/String;

    move-result-object v3

    .line 837
    const/4 v2, 0x0

    .line 838
    goto :goto_0

    .line 841
    :sswitch_1
    iget v0, p2, Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;->LeftIco:I

    .line 842
    goto :goto_0

    .line 845
    :sswitch_2
    iget v0, p2, Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;->LeftIco:I

    .line 846
    const/4 v1, 0x1

    .line 847
    goto :goto_0

    .line 850
    :sswitch_3
    iget-object v4, p2, Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;->szText:[B

    invoke-virtual {p0, v4}, Lcom/ts/can/ford/CanFordSyncUIActivity;->GetUnicodeStr([B)Ljava/lang/String;

    move-result-object v3

    .line 851
    goto :goto_0

    .line 854
    :sswitch_4
    iget-object v4, p2, Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;->szText:[B

    invoke-virtual {p0, v4}, Lcom/ts/can/ford/CanFordSyncUIActivity;->GetUnicodeStr([B)Ljava/lang/String;

    move-result-object v3

    .line 855
    const/4 v1, 0x1

    .line 856
    goto :goto_0

    .line 833
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xa -> :sswitch_3
        0xb -> :sswitch_4
    .end sparse-switch
.end method

.method public static ShowSync()V
    .locals 1

    .prologue
    .line 1286
    sget-boolean v0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIsSyncWin:Z

    if-nez v0, :cond_0

    .line 1288
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIsJump:Z

    .line 1289
    const-class v0, Lcom/ts/can/ford/CanFordSyncUIActivity;

    invoke-static {v0}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    .line 1292
    :cond_0
    return-void
.end method

.method public static ShowSyncClick()V
    .locals 2

    .prologue
    .line 1296
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 1298
    invoke-static {}, Lcom/ts/can/ford/CanFordSyncUIActivity;->MediaClick()V

    .line 1302
    :cond_0
    sget-boolean v0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIsSyncWin:Z

    if-nez v0, :cond_1

    .line 1304
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIsJump:Z

    .line 1305
    const-class v0, Lcom/ts/can/ford/CanFordSyncUIActivity;

    invoke-static {v0}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    .line 1308
    :cond_1
    return-void
.end method

.method private UpdateCnUI(Z)V
    .locals 12
    .param p1, "check"    # Z

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 871
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mPhoneTimeData:Lcom/lgb/canmodule/CanDataInfo$SyncPhoneTime;

    iget-object v6, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMediaTimeData:Lcom/lgb/canmodule/CanDataInfo$SyncMediaTime;

    iget-object v7, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMenuInfoData:Lcom/lgb/canmodule/CanDataInfo$SyncMenuInfo;

    iget-object v8, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mWinData:Lcom/lgb/canmodule/CanDataInfo$SyncWin;

    invoke-static {v3, v6, v7, v8}, Lcom/lgb/canmodule/CanJni;->FordGetSyncCnUI(Lcom/lgb/canmodule/CanDataInfo$SyncPhoneTime;Lcom/lgb/canmodule/CanDataInfo$SyncMediaTime;Lcom/lgb/canmodule/CanDataInfo$SyncMenuInfo;Lcom/lgb/canmodule/CanDataInfo$SyncWin;)V

    .line 872
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMenuInfoData:Lcom/lgb/canmodule/CanDataInfo$SyncMenuInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$SyncMenuInfo;->UpdateOnce:I

    invoke-static {v3}, Lcom/ts/can/ford/CanFordSyncUIActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 874
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMenuInfoData:Lcom/lgb/canmodule/CanDataInfo$SyncMenuInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$SyncMenuInfo;->Update:I

    invoke-static {v3}, Lcom/ts/can/ford/CanFordSyncUIActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 876
    :cond_0
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMenuInfoData:Lcom/lgb/canmodule/CanDataInfo$SyncMenuInfo;

    iput v5, v3, Lcom/lgb/canmodule/CanDataInfo$SyncMenuInfo;->Update:I

    .line 878
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v9, :cond_8

    .line 885
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v9, :cond_a

    .line 891
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v9, :cond_c

    .line 896
    const/4 v2, 0x0

    :goto_3
    if-lt v2, v11, :cond_d

    .line 901
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMenuInfoData:Lcom/lgb/canmodule/CanDataInfo$SyncMenuInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$SyncMenuInfo;->DialogType:I

    invoke-virtual {p0, v3}, Lcom/ts/can/ford/CanFordSyncUIActivity;->CreateDlg(I)V

    .line 907
    const/4 v2, 0x0

    :goto_4
    iget v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mDlgLineNum:I

    if-lt v2, v3, :cond_e

    .line 912
    iget v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mDlgBtnNum:I

    if-eqz v3, :cond_1

    .line 914
    const/4 v2, 0x0

    :goto_5
    if-lt v2, v11, :cond_f

    .line 920
    :cond_1
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMenuInfoData:Lcom/lgb/canmodule/CanDataInfo$SyncMenuInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$SyncMenuInfo;->MenuIcon:I

    packed-switch v3, :pswitch_data_0

    .line 943
    :pswitch_0
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoCurSrc:Lcom/ts/other/CustomImgView;

    invoke-virtual {v3, v5}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 951
    .end local v2    # "i":I
    :cond_2
    :goto_6
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mPhoneTimeData:Lcom/lgb/canmodule/CanDataInfo$SyncPhoneTime;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$SyncPhoneTime;->UpdateOnce:I

    invoke-static {v3}, Lcom/ts/can/ford/CanFordSyncUIActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 953
    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mPhoneTimeData:Lcom/lgb/canmodule/CanDataInfo$SyncPhoneTime;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$SyncPhoneTime;->Update:I

    invoke-static {v3}, Lcom/ts/can/ford/CanFordSyncUIActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 955
    :cond_3
    const-string v3, "CanFordSyncUIActivity"

    const-string v6, "mPhoneTimeData.Update"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mPhoneTimeData:Lcom/lgb/canmodule/CanDataInfo$SyncPhoneTime;

    iput v5, v3, Lcom/lgb/canmodule/CanDataInfo$SyncPhoneTime;->Update:I

    .line 957
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mSyncTime:Lcom/ts/other/CustomTextView;

    const-string v6, "%02d:%02d"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mPhoneTimeData:Lcom/lgb/canmodule/CanDataInfo$SyncPhoneTime;

    iget v8, v8, Lcom/lgb/canmodule/CanDataInfo$SyncPhoneTime;->Min:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v8, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mPhoneTimeData:Lcom/lgb/canmodule/CanDataInfo$SyncPhoneTime;

    iget v8, v8, Lcom/lgb/canmodule/CanDataInfo$SyncPhoneTime;->Sec:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 958
    iput-boolean v4, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mTimeUpdate:Z

    .line 959
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mPhoneTimeData:Lcom/lgb/canmodule/CanDataInfo$SyncPhoneTime;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$SyncPhoneTime;->Tick:I

    int-to-long v6, v3

    iput-wide v6, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mLastTimeTick:J

    .line 963
    :cond_4
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMediaTimeData:Lcom/lgb/canmodule/CanDataInfo$SyncMediaTime;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$SyncMediaTime;->UpdateOnce:I

    invoke-static {v3}, Lcom/ts/can/ford/CanFordSyncUIActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 965
    if-eqz p1, :cond_5

    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMediaTimeData:Lcom/lgb/canmodule/CanDataInfo$SyncMediaTime;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$SyncMediaTime;->Update:I

    invoke-static {v3}, Lcom/ts/can/ford/CanFordSyncUIActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 967
    :cond_5
    const-string v3, "CanFordSyncUIActivity"

    const-string v6, "mMediaTimeData.Update"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMediaTimeData:Lcom/lgb/canmodule/CanDataInfo$SyncMediaTime;

    iput v5, v3, Lcom/lgb/canmodule/CanDataInfo$SyncMediaTime;->Update:I

    .line 969
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mSyncTime:Lcom/ts/other/CustomTextView;

    const-string v6, "%02d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMediaTimeData:Lcom/lgb/canmodule/CanDataInfo$SyncMediaTime;

    iget v8, v8, Lcom/lgb/canmodule/CanDataInfo$SyncMediaTime;->Hour:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v8, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMediaTimeData:Lcom/lgb/canmodule/CanDataInfo$SyncMediaTime;

    iget v8, v8, Lcom/lgb/canmodule/CanDataInfo$SyncMediaTime;->Min:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMediaTimeData:Lcom/lgb/canmodule/CanDataInfo$SyncMediaTime;

    iget v8, v8, Lcom/lgb/canmodule/CanDataInfo$SyncMediaTime;->Sec:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 970
    iput-boolean v4, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mTimeUpdate:Z

    .line 971
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMediaTimeData:Lcom/lgb/canmodule/CanDataInfo$SyncMediaTime;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$SyncMediaTime;->Tick:I

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mLastTimeTick:J

    .line 975
    :cond_6
    iget-boolean v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mTimeUpdate:Z

    if-eqz v3, :cond_7

    .line 977
    invoke-static {}, Lcom/ts/can/ford/CanFordSyncUIActivity;->GetTickCount()J

    move-result-wide v0

    .line 978
    .local v0, "curTick":J
    iget-wide v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mLastTimeTick:J

    const-wide/16 v6, 0x7d0

    add-long/2addr v3, v6

    cmp-long v3, v0, v3

    if-lez v3, :cond_7

    .line 980
    const-string v3, "CanFordSyncUIActivity"

    const-string v4, "Hide Time"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iput-wide v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mLastTimeTick:J

    .line 982
    iput-boolean v5, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mTimeUpdate:Z

    .line 983
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mSyncTime:Lcom/ts/other/CustomTextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 986
    .end local v0    # "curTick":J
    :cond_7
    return-void

    .line 880
    .restart local v2    # "i":I
    :cond_8
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMenuLine:[Lcom/ts/can/ford/SyncLine;

    aget-object v6, v3, v2

    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMenuInfoData:Lcom/lgb/canmodule/CanDataInfo$SyncMenuInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$SyncMenuInfo;->MenuSelected:I

    add-int/lit8 v3, v3, -0x1

    if-ne v3, v2, :cond_9

    move v3, v4

    :goto_7
    invoke-virtual {v6, v3}, Lcom/ts/can/ford/SyncLine;->SetSel(Z)V

    .line 878
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    move v3, v5

    .line 880
    goto :goto_7

    .line 887
    :cond_a
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mDlgLine:[Lcom/ts/can/ford/SyncLine;

    aget-object v6, v3, v2

    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMenuInfoData:Lcom/lgb/canmodule/CanDataInfo$SyncMenuInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$SyncMenuInfo;->DialogSelected:I

    add-int/lit8 v3, v3, -0x1

    if-ne v3, v2, :cond_b

    move v3, v4

    :goto_8
    invoke-virtual {v6, v3}, Lcom/ts/can/ford/SyncLine;->SetSel(Z)V

    .line 885
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_b
    move v3, v5

    .line 887
    goto :goto_8

    .line 893
    :cond_c
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMenuLine:[Lcom/ts/can/ford/SyncLine;

    aget-object v3, v3, v2

    iget-object v6, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mWinData:Lcom/lgb/canmodule/CanDataInfo$SyncWin;

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$SyncWin;->NormalItem:[Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;

    aget-object v6, v6, v2

    invoke-direct {p0, v3, v6}, Lcom/ts/can/ford/CanFordSyncUIActivity;->SetLine(Lcom/ts/can/ford/SyncLine;Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;)V

    .line 891
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 898
    :cond_d
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMenuKey:[Lcom/ts/can/ford/SyncSKey;

    aget-object v3, v3, v2

    iget-object v6, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mWinData:Lcom/lgb/canmodule/CanDataInfo$SyncWin;

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$SyncWin;->NormalSoftKey:[Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;

    aget-object v6, v6, v2

    invoke-direct {p0, v3, v6}, Lcom/ts/can/ford/CanFordSyncUIActivity;->SetSoftKey(Lcom/ts/can/ford/SyncSKey;Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;)V

    .line 896
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 909
    :cond_e
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mDlgLine:[Lcom/ts/can/ford/SyncLine;

    aget-object v3, v3, v2

    iget-object v6, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mWinData:Lcom/lgb/canmodule/CanDataInfo$SyncWin;

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$SyncWin;->DialogItem:[Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;

    aget-object v6, v6, v2

    invoke-direct {p0, v3, v6}, Lcom/ts/can/ford/CanFordSyncUIActivity;->SetLine(Lcom/ts/can/ford/SyncLine;Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;)V

    .line 907
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 916
    :cond_f
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mDlgKey:[Lcom/ts/can/ford/SyncSKey;

    aget-object v3, v3, v2

    iget-object v6, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mWinData:Lcom/lgb/canmodule/CanDataInfo$SyncWin;

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$SyncWin;->DialogSoftKey:[Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;

    aget-object v6, v6, v2

    invoke-direct {p0, v3, v6}, Lcom/ts/can/ford/CanFordSyncUIActivity;->SetSoftKey(Lcom/ts/can/ford/SyncSKey;Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;)V

    .line 914
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 923
    :pswitch_1
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoCurSrc:Lcom/ts/other/CustomImgView;

    sget v6, Lcom/ts/MainUI/R$drawable;->can_sync_icon_02:I

    invoke-virtual {v3, v6}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    goto/16 :goto_6

    .line 927
    :pswitch_2
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoCurSrc:Lcom/ts/other/CustomImgView;

    sget v6, Lcom/ts/MainUI/R$drawable;->can_sync_icon_0a:I

    invoke-virtual {v3, v6}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    goto/16 :goto_6

    .line 931
    :pswitch_3
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoCurSrc:Lcom/ts/other/CustomImgView;

    sget v6, Lcom/ts/MainUI/R$drawable;->can_sync_icon_08:I

    invoke-virtual {v3, v6}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    goto/16 :goto_6

    .line 935
    :pswitch_4
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoCurSrc:Lcom/ts/other/CustomImgView;

    sget v6, Lcom/ts/MainUI/R$drawable;->can_sync_icon_05:I

    invoke-virtual {v3, v6}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    goto/16 :goto_6

    .line 939
    :pswitch_5
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoCurSrc:Lcom/ts/other/CustomImgView;

    sget v6, Lcom/ts/MainUI/R$drawable;->can_sync_icon_0c:I

    invoke-virtual {v3, v6}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    goto/16 :goto_6

    .line 920
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private UpdateStatus(Z)V
    .locals 5
    .param p1, "check"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1021
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStatusData:Lcom/lgb/canmodule/CanDataInfo$SyncStatus;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->FordGetSyncSta(Lcom/lgb/canmodule/CanDataInfo$SyncStatus;)V

    .line 1022
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStatusData:Lcom/lgb/canmodule/CanDataInfo$SyncStatus;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$SyncStatus;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/ford/CanFordSyncUIActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1024
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStatusData:Lcom/lgb/canmodule/CanDataInfo$SyncStatus;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$SyncStatus;->Update:I

    invoke-static {v0}, Lcom/ts/can/ford/CanFordSyncUIActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStatusData:Lcom/lgb/canmodule/CanDataInfo$SyncStatus;

    iput v3, v0, Lcom/lgb/canmodule/CanDataInfo$SyncStatus;->Update:I

    .line 1027
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoSync:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStatusData:Lcom/lgb/canmodule/CanDataInfo$SyncStatus;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$SyncStatus;->fgModuleExist:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 1028
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoInfo:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStatusData:Lcom/lgb/canmodule/CanDataInfo$SyncStatus;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$SyncStatus;->fgInfoKeyAvalid:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 1029
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoBt:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStatusData:Lcom/lgb/canmodule/CanDataInfo$SyncStatus;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$SyncStatus;->fgBTConnected:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 1030
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoSM:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStatusData:Lcom/lgb/canmodule/CanDataInfo$SyncStatus;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$SyncStatus;->fgShowShortMsg:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 1031
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoSpk:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStatusData:Lcom/lgb/canmodule/CanDataInfo$SyncStatus;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$SyncStatus;->fgVoice:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 1032
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoCall:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStatusData:Lcom/lgb/canmodule/CanDataInfo$SyncStatus;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$SyncStatus;->fgCalling:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 1033
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStatusData:Lcom/lgb/canmodule/CanDataInfo$SyncStatus;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$SyncStatus;->PhoneBattery:I

    if-gt v0, v4, :cond_1

    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStatusData:Lcom/lgb/canmodule/CanDataInfo$SyncStatus;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$SyncStatus;->PhoneBattery:I

    if-gez v0, :cond_4

    .line 1035
    :cond_1
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoBattery:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0, v3}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 1042
    :goto_0
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStatusData:Lcom/lgb/canmodule/CanDataInfo$SyncStatus;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$SyncStatus;->PhoneSigNum:I

    if-gt v0, v4, :cond_2

    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStatusData:Lcom/lgb/canmodule/CanDataInfo$SyncStatus;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$SyncStatus;->PhoneSigNum:I

    if-gez v0, :cond_5

    .line 1044
    :cond_2
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoSignal:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0, v3}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 1053
    :cond_3
    :goto_1
    return-void

    .line 1039
    :cond_4
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoBattery:Lcom/ts/other/CustomImgView;

    sget-object v1, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoBatArr:[I

    iget-object v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStatusData:Lcom/lgb/canmodule/CanDataInfo$SyncStatus;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$SyncStatus;->PhoneBattery:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    goto :goto_0

    .line 1048
    :cond_5
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoSignal:Lcom/ts/other/CustomImgView;

    sget-object v1, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoSigArr:[I

    iget-object v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStatusData:Lcom/lgb/canmodule/CanDataInfo$SyncStatus;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$SyncStatus;->PhoneSigNum:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    goto :goto_1
.end method

.method private UpdateUsUI(Z)V
    .locals 4
    .param p1, "check"    # Z

    .prologue
    const/4 v3, 0x0

    .line 990
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStrUpData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    iget-object v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStrDnData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    iget-object v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStrShortData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    invoke-static {v0, v1, v2}, Lcom/lgb/canmodule/CanJni;->FordGetSyncUsUI(Lcom/lgb/canmodule/CanDataInfo$SyncStr;Lcom/lgb/canmodule/CanDataInfo$SyncStr;Lcom/lgb/canmodule/CanDataInfo$SyncStr;)V

    .line 991
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStrUpData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$SyncStr;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/ford/CanFordSyncUIActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 993
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStrUpData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$SyncStr;->Update:I

    invoke-static {v0}, Lcom/ts/can/ford/CanFordSyncUIActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStrUpData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    iput v3, v0, Lcom/lgb/canmodule/CanDataInfo$SyncStr;->Update:I

    .line 996
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mUSLine:[Lcom/ts/can/ford/SyncLine;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStrUpData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$SyncStr;->szText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ts/can/ford/SyncLine;->SetText(Ljava/lang/String;)V

    .line 1000
    :cond_1
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStrDnData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$SyncStr;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/ford/CanFordSyncUIActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1002
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStrDnData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$SyncStr;->Update:I

    invoke-static {v0}, Lcom/ts/can/ford/CanFordSyncUIActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1004
    :cond_2
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStrDnData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    iput v3, v0, Lcom/lgb/canmodule/CanDataInfo$SyncStr;->Update:I

    .line 1005
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mUSLine:[Lcom/ts/can/ford/SyncLine;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStrDnData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$SyncStr;->szText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ts/can/ford/SyncLine;->SetText(Ljava/lang/String;)V

    .line 1009
    :cond_3
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStrShortData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$SyncStr;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/ford/CanFordSyncUIActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1011
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStrShortData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$SyncStr;->Update:I

    invoke-static {v0}, Lcom/ts/can/ford/CanFordSyncUIActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1013
    :cond_4
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStrShortData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    iput v3, v0, Lcom/lgb/canmodule/CanDataInfo$SyncStr;->Update:I

    .line 1014
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mUSLine:[Lcom/ts/can/ford/SyncLine;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStrShortData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$SyncStr;->szText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ts/can/ford/SyncLine;->SetText(Ljava/lang/String;)V

    .line 1017
    :cond_5
    return-void
.end method


# virtual methods
.method protected AddIco(III)Lcom/ts/other/CustomImgView;
    .locals 4
    .param p1, "x"    # I
    .param p2, "up"    # I
    .param p3, "sel"    # I

    .prologue
    const/16 v3, 0x21

    .line 645
    iget-object v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0xa

    invoke-virtual {v1, p1, v2, v3, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v0

    .line 646
    .local v0, "ico":Lcom/ts/other/CustomImgView;
    const/4 v1, -0x1

    if-eq v1, p3, :cond_0

    .line 648
    invoke-virtual {v0, p2, p3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 650
    :cond_0
    return-object v0
.end method

.method protected AddImgBtn(IIIII)Lcom/ts/other/ParamButton;
    .locals 2
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "up"    # I
    .param p5, "dn"    # I

    .prologue
    .line 522
    iget-object v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 523
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 524
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    invoke-virtual {v0, p4, p5}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 526
    return-object v0
.end method

.method protected CreateDlg(I)V
    .locals 12
    .param p1, "dlgType"    # I

    .prologue
    const/4 v1, 0x0

    .line 655
    const/4 v9, 0x0

    .local v9, "lines":I
    const/4 v6, 0x0

    .line 656
    .local v6, "btn":I
    packed-switch p1, :pswitch_data_0

    .line 699
    :goto_0
    :pswitch_0
    const-string v0, "CanFordSyncUIActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CreateDlg type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lines = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " btn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iput v9, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mDlgLineNum:I

    .line 701
    iput v6, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mDlgBtnNum:I

    .line 702
    shl-int/lit8 v0, v9, 0x8

    or-int v7, v0, v6

    .line 703
    .local v7, "curTyep":I
    iget v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mDlgType:I

    if-ne v0, v7, :cond_1

    .line 736
    :cond_0
    return-void

    .line 662
    .end local v7    # "curTyep":I
    :pswitch_1
    const/4 v9, 0x1

    .line 663
    goto :goto_0

    .line 666
    :pswitch_2
    const/4 v9, 0x1

    .line 667
    const/4 v6, 0x1

    .line 668
    goto :goto_0

    .line 671
    :pswitch_3
    const/4 v9, 0x2

    .line 672
    goto :goto_0

    .line 675
    :pswitch_4
    const/4 v9, 0x2

    .line 676
    const/4 v6, 0x1

    .line 677
    goto :goto_0

    .line 680
    :pswitch_5
    const/4 v9, 0x3

    .line 681
    goto :goto_0

    .line 684
    :pswitch_6
    const/4 v9, 0x3

    .line 685
    const/4 v6, 0x1

    .line 686
    goto :goto_0

    .line 691
    :pswitch_7
    const/4 v9, 0x5

    .line 692
    const/4 v6, 0x1

    .line 693
    goto :goto_0

    .line 708
    .restart local v7    # "curTyep":I
    :cond_1
    iput v7, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mDlgType:I

    .line 709
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mManDlg:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v0}, Lcom/ts/other/RelativeLayoutManager;->RemoveAllViews()V

    .line 710
    add-int v10, v9, v6

    .line 711
    .local v10, "totalline":I
    if-nez v10, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/ts/can/ford/CanFordSyncUIActivity;->SetMenuEnable(Z)V

    .line 712
    if-eqz v10, :cond_0

    .line 719
    sget-object v0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mDlgYArr:[I

    add-int/lit8 v2, v10, -0x1

    aget v0, v0, v2

    iget v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mY:I

    sub-int v11, v0, v2

    .line 720
    .local v11, "y":I
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mManDlg:Lcom/ts/other/RelativeLayoutManager;

    iget-object v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mImgDlgBg:[Lcom/ts/other/CustomImgView;

    add-int/lit8 v3, v10, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2, v1, v11}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    .line 721
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-lt v8, v9, :cond_3

    .line 726
    if-eqz v6, :cond_0

    .line 728
    const/4 v8, 0x0

    :goto_3
    const/4 v0, 0x4

    if-ge v8, v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mManDlg:Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mDlgKey:[Lcom/ts/can/ford/SyncSKey;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/ts/can/ford/SyncSKey;->GetView()Landroid/view/View;

    move-result-object v1

    mul-int/lit8 v2, v8, 0x71

    add-int/lit16 v2, v2, 0xed

    iget v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mX:I

    sub-int/2addr v2, v3

    add-int/lit8 v3, v11, 0xf

    mul-int/lit8 v4, v9, 0x40

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    .line 728
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v8    # "i":I
    .end local v11    # "y":I
    :cond_2
    move v0, v1

    .line 711
    goto :goto_1

    .line 723
    .restart local v8    # "i":I
    .restart local v11    # "y":I
    :cond_3
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mManDlg:Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mDlgLine:[Lcom/ts/can/ford/SyncLine;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/ts/can/ford/SyncLine;->GetView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mX:I

    rsub-int v2, v2, 0xed

    add-int/lit8 v3, v11, 0xb

    mul-int/lit8 v4, v8, 0x40

    add-int/2addr v3, v4

    const/16 v4, 0x1b9

    const/16 v5, 0x3b

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 721
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 656
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method protected GetUnicodeStr([B)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 1261
    const-string v1, ""

    .line 1264
    .local v1, "str":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .end local v1    # "str":Ljava/lang/String;
    const/4 v2, 0x2

    const/4 v3, 0x0

    aget-byte v3, p1, v3

    const-string v4, "UNICODE"

    invoke-direct {v1, p1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1272
    .restart local v1    # "str":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1266
    .end local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1269
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_0
.end method

.method protected InitUI()V
    .locals 15

    .prologue
    const/16 v14, 0x95

    const/16 v13, 0x38b

    const/16 v12, 0x2c7

    const/4 v2, 0x0

    const/16 v11, 0x329

    .line 532
    new-instance v1, Lcom/ts/other/RelativeLayoutManager;

    sget v0, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/CanFordSyncUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-direct {v1, v0}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/widget/RelativeLayout;)V

    iput-object v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 534
    const/4 v1, 0x1

    sget v4, Lcom/ts/MainUI/R$drawable;->can_sync_music_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_sync_music_dn:I

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnLtMusic:Lcom/ts/other/ParamButton;

    .line 535
    const/4 v1, 0x2

    const/16 v3, 0x8c

    sget v4, Lcom/ts/MainUI/R$drawable;->can_sync_phone_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_sync_phone_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnLtPhone:Lcom/ts/other/ParamButton;

    .line 536
    const/4 v1, 0x3

    const/16 v3, 0x116

    sget v4, Lcom/ts/MainUI/R$drawable;->can_sync_mike_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_sync_mike_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnLtSpeech:Lcom/ts/other/ParamButton;

    .line 537
    const/4 v1, 0x4

    const/16 v3, 0x19f

    sget v4, Lcom/ts/MainUI/R$drawable;->can_sync_dial_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_sync_dial_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnLtKeyboard:Lcom/ts/other/ParamButton;

    .line 539
    const/16 v10, 0xc

    .line 540
    .local v10, "rtYdt":I
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x2c2

    const/16 v3, 0x3b

    sget v4, Lcom/ts/MainUI/R$drawable;->can_sync_right_box:I

    invoke-virtual {v0, v1, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 542
    const/16 v4, 0x5a

    const/16 v6, 0x45

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_on_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_on_dn:I

    move-object v3, p0

    move v5, v11

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnUp:Lcom/ts/other/ParamButton;

    .line 543
    const/16 v4, 0x69

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_left_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_left_dn:I

    move-object v3, p0

    move v5, v12

    move v6, v14

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnLeft:Lcom/ts/other/ParamButton;

    .line 544
    const/16 v4, 0x5c

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_ok_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_ok_dn:I

    move-object v3, p0

    move v5, v11

    move v6, v14

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnOK:Lcom/ts/other/ParamButton;

    .line 545
    const/16 v4, 0x6a

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_right_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_right_dn:I

    move-object v3, p0

    move v5, v13

    move v6, v14

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnRight:Lcom/ts/other/ParamButton;

    .line 546
    const/16 v4, 0x5b

    const/16 v6, 0xe7

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_dn_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_dn_dn:I

    move-object v3, p0

    move v5, v11

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnDn:Lcom/ts/other/ParamButton;

    .line 547
    const/16 v4, 0x56

    const/16 v6, 0x139

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_info_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_info_dn:I

    move-object v3, p0

    move v5, v12

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnInfo:Lcom/ts/other/ParamButton;

    .line 548
    const/16 v4, 0x52

    const/16 v6, 0x139

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_menu_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_menu_dn:I

    move-object v3, p0

    move v5, v11

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnMenu:Lcom/ts/other/ParamButton;

    .line 549
    const/16 v4, 0xd1

    const/16 v6, 0x139

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_dev_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_dev_dn:I

    move-object v3, p0

    move v5, v13

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnDev:Lcom/ts/other/ParamButton;

    .line 550
    const/16 v4, 0x58

    const/16 v6, 0x18a

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_seekup_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_seekup_dn:I

    move-object v3, p0

    move v5, v12

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnPrev:Lcom/ts/other/ParamButton;

    .line 551
    const/16 v4, 0x57

    const/16 v6, 0x18a

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_random_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_random_dn:I

    move-object v3, p0

    move v5, v11

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnRnd:Lcom/ts/other/ParamButton;

    .line 552
    const/16 v4, 0x59

    const/16 v6, 0x18a

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_seekdn_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_seekdn_dn:I

    move-object v3, p0

    move v5, v13

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnNext:Lcom/ts/other/ParamButton;

    .line 555
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x1

    const/16 v4, 0x5e

    const/16 v6, 0x45

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_num01_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_num01_dn:I

    move-object v3, p0

    move v5, v12

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v3

    aput-object v3, v0, v1

    .line 556
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    const/16 v4, 0x5f

    const/16 v6, 0x45

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_num02_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_num02_dn:I

    move-object v3, p0

    move v5, v11

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v3

    aput-object v3, v0, v1

    .line 557
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x3

    const/16 v4, 0x60

    const/16 v6, 0x45

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_num03_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_num03_dn:I

    move-object v3, p0

    move v5, v13

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v3

    aput-object v3, v0, v1

    .line 558
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x4

    const/16 v4, 0x61

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_num04_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_num04_dn:I

    move-object v3, p0

    move v5, v12

    move v6, v14

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v3

    aput-object v3, v0, v1

    .line 559
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x5

    const/16 v4, 0x62

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_num05_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_num05_dn:I

    move-object v3, p0

    move v5, v11

    move v6, v14

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v3

    aput-object v3, v0, v1

    .line 560
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x6

    const/16 v4, 0x63

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_num06_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_num06_dn:I

    move-object v3, p0

    move v5, v13

    move v6, v14

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v3

    aput-object v3, v0, v1

    .line 561
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x7

    const/16 v4, 0x64

    const/16 v6, 0xe7

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_num07_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_num07_dn:I

    move-object v3, p0

    move v5, v12

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v3

    aput-object v3, v0, v1

    .line 562
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    const/16 v1, 0x8

    const/16 v4, 0x65

    const/16 v6, 0xe7

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_num08_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_num08_dn:I

    move-object v3, p0

    move v5, v11

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v3

    aput-object v3, v0, v1

    .line 563
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    const/16 v1, 0x9

    const/16 v4, 0x66

    const/16 v6, 0xe7

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_num09_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_num09_dn:I

    move-object v3, p0

    move v5, v13

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v3

    aput-object v3, v0, v1

    .line 564
    const/16 v4, 0x67

    const/16 v6, 0x139

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_aste_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_aste_dn:I

    move-object v3, p0

    move v5, v12

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnNumX:Lcom/ts/other/ParamButton;

    .line 565
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    const/16 v4, 0x5d

    const/16 v6, 0x139

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_num00_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_num00_dn:I

    move-object v3, p0

    move v5, v11

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    aput-object v1, v0, v2

    .line 566
    const/16 v4, 0x68

    const/16 v6, 0x139

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_well_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_well_dn:I

    move-object v3, p0

    move v5, v13

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnNumJ:Lcom/ts/other/ParamButton;

    .line 567
    const/16 v4, 0x55

    const/16 v6, 0x18a

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_dialout_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_dialout_dn:I

    move-object v3, p0

    move v5, v12

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnCall:Lcom/ts/other/ParamButton;

    .line 568
    const/16 v4, 0x54

    const/16 v6, 0x18a

    sget v7, Lcom/ts/MainUI/R$drawable;->can_sync_hangup_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_sync_hangup_dn:I

    move-object v3, p0

    move v5, v11

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnHang:Lcom/ts/other/ParamButton;

    .line 570
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0xfa

    const/16 v3, 0xa

    const/16 v4, 0x2d

    const/16 v5, 0x2c

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoCurSrc:Lcom/ts/other/CustomImgView;

    .line 572
    const/16 v0, 0x12c

    sget v1, Lcom/ts/MainUI/R$drawable;->can_sync_status_sync_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_sync_status_sync_dn:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddIco(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoSync:Lcom/ts/other/CustomImgView;

    .line 573
    const/16 v0, 0x14f

    sget v1, Lcom/ts/MainUI/R$drawable;->can_sync_status_info_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_sync_status_info_dn:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddIco(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoInfo:Lcom/ts/other/CustomImgView;

    .line 574
    const/16 v0, 0x172

    sget v1, Lcom/ts/MainUI/R$drawable;->can_sync_stutas_cd:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_sync_stutas_cc:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddIco(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoBt:Lcom/ts/other/CustomImgView;

    .line 576
    const/16 v0, 0x195

    const/4 v1, -0x1

    sget v3, Lcom/ts/MainUI/R$drawable;->can_sync_stutas_5d:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddIco(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoSM:Lcom/ts/other/CustomImgView;

    .line 577
    const/16 v0, 0x1b8

    const/4 v1, -0x1

    sget v3, Lcom/ts/MainUI/R$drawable;->can_sync_stutas_82:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddIco(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoSpk:Lcom/ts/other/CustomImgView;

    .line 578
    const/16 v0, 0x1db

    const/4 v1, -0x1

    sget v3, Lcom/ts/MainUI/R$drawable;->can_sync_stutas_29:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddIco(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoCall:Lcom/ts/other/CustomImgView;

    .line 579
    const/16 v0, 0x1fe

    sget v1, Lcom/ts/MainUI/R$drawable;->can_sync_stutas_61:I

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v1, v3}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddIco(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoBattery:Lcom/ts/other/CustomImgView;

    .line 580
    const/16 v0, 0x221

    sget v1, Lcom/ts/MainUI/R$drawable;->can_sync_stutas_67:I

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v1, v3}, Lcom/ts/can/ford/CanFordSyncUIActivity;->AddIco(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoSignal:Lcom/ts/other/CustomImgView;

    .line 582
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x2f2

    const/16 v3, 0xa

    const/16 v4, 0xc8

    const/16 v5, 0x21

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mSyncTime:Lcom/ts/other/CustomTextView;

    .line 583
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mSyncTime:Lcom/ts/other/CustomTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 584
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mSyncTime:Lcom/ts/other/CustomTextView;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 587
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/16 v0, 0xa

    if-lt v9, v0, :cond_0

    .line 594
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mLayoutMenu:Landroid/widget/RelativeLayout;

    .line 595
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v4, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mLayoutMenu:Landroid/widget/RelativeLayout;

    iget v5, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mX:I

    iget v6, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mY:I

    iget v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mX:I

    rsub-int v7, v0, 0x2c1

    iget v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mY:I

    rsub-int v8, v0, 0x1f4

    invoke-virtual/range {v3 .. v8}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 597
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mLayoutDlg:Landroid/widget/RelativeLayout;

    .line 598
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v4, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mLayoutDlg:Landroid/widget/RelativeLayout;

    iget v5, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mX:I

    iget v6, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mY:I

    iget v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mX:I

    rsub-int v7, v0, 0x2c1

    iget v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mY:I

    rsub-int v8, v0, 0x1f4

    invoke-virtual/range {v3 .. v8}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 600
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mLayoutUS:Landroid/widget/RelativeLayout;

    .line 601
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v4, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mLayoutUS:Landroid/widget/RelativeLayout;

    iget v5, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mX:I

    iget v6, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mY:I

    iget v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mX:I

    rsub-int v7, v0, 0x2c1

    iget v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mY:I

    rsub-int v8, v0, 0x1f4

    invoke-virtual/range {v3 .. v8}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 603
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mLayoutMenu:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/widget/RelativeLayout;)V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mManMenu:Lcom/ts/other/RelativeLayoutManager;

    .line 604
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mLayoutDlg:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/widget/RelativeLayout;)V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mManDlg:Lcom/ts/other/RelativeLayoutManager;

    .line 605
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mLayoutUS:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/widget/RelativeLayout;)V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mManUS:Lcom/ts/other/RelativeLayoutManager;

    .line 607
    const/4 v9, 0x0

    :goto_1
    const/4 v0, 0x3

    if-lt v9, v0, :cond_1

    .line 613
    const/4 v9, 0x0

    :goto_2
    const/4 v0, 0x5

    if-lt v9, v0, :cond_2

    .line 623
    const/4 v9, 0x0

    :goto_3
    const/4 v0, 0x4

    if-lt v9, v0, :cond_3

    .line 632
    const/4 v9, 0x0

    :goto_4
    const/4 v0, 0x6

    if-lt v9, v0, :cond_4

    .line 638
    invoke-virtual {p0}, Lcom/ts/can/ford/CanFordSyncUIActivity;->ShowRtBtn()V

    .line 640
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mLayoutMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v2}, Lcom/ts/can/ford/CanFordSyncUIActivity;->setViewShow(Landroid/view/View;Z)V

    .line 641
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v9

    invoke-virtual {v0, v9}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 590
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v9

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 587
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mUSLine:[Lcom/ts/can/ford/SyncLine;

    new-instance v1, Lcom/ts/can/ford/SyncLine;

    invoke-direct {v1, p0}, Lcom/ts/can/ford/SyncLine;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v9

    .line 610
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mManUS:Lcom/ts/other/RelativeLayoutManager;

    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mUSLine:[Lcom/ts/can/ford/SyncLine;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/ts/can/ford/SyncLine;->GetView()Landroid/view/View;

    move-result-object v4

    iget v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mX:I

    rsub-int v5, v0, 0xed

    add-int/lit8 v0, v9, 0x2

    mul-int/lit8 v0, v0, 0x40

    add-int/lit8 v0, v0, 0x3b

    iget v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mY:I

    sub-int v6, v0, v1

    const/16 v7, 0x1b9

    const/16 v8, 0x3b

    invoke-virtual/range {v3 .. v8}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 607
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMenuLine:[Lcom/ts/can/ford/SyncLine;

    new-instance v1, Lcom/ts/can/ford/SyncLine;

    add-int/lit8 v3, v9, 0x10

    invoke-direct {v1, p0, v3, p0}, Lcom/ts/can/ford/SyncLine;-><init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;)V

    aput-object v1, v0, v9

    .line 616
    iget-object v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mManMenu:Lcom/ts/other/RelativeLayoutManager;

    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMenuLine:[Lcom/ts/can/ford/SyncLine;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/ts/can/ford/SyncLine;->GetView()Landroid/view/View;

    move-result-object v4

    iget v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mX:I

    rsub-int v5, v0, 0xed

    mul-int/lit8 v0, v9, 0x40

    add-int/lit8 v0, v0, 0x3b

    iget v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mY:I

    sub-int v6, v0, v1

    const/16 v7, 0x1b9

    const/16 v8, 0x3b

    invoke-virtual/range {v3 .. v8}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 619
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mDlgLine:[Lcom/ts/can/ford/SyncLine;

    new-instance v1, Lcom/ts/can/ford/SyncLine;

    add-int/lit8 v3, v9, 0x20

    invoke-direct {v1, p0, v3, p0}, Lcom/ts/can/ford/SyncLine;-><init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;)V

    aput-object v1, v0, v9

    .line 613
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 625
    :cond_3
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMenuKey:[Lcom/ts/can/ford/SyncSKey;

    new-instance v1, Lcom/ts/can/ford/SyncSKey;

    add-int/lit8 v3, v9, 0x15

    invoke-direct {v1, p0, v3, p0}, Lcom/ts/can/ford/SyncSKey;-><init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;)V

    aput-object v1, v0, v9

    .line 626
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mManMenu:Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMenuKey:[Lcom/ts/can/ford/SyncSKey;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/ts/can/ford/SyncSKey;->GetView()Landroid/view/View;

    move-result-object v1

    mul-int/lit8 v3, v9, 0x71

    add-int/lit16 v3, v3, 0xed

    iget v4, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mX:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mY:I

    rsub-int v4, v4, 0x188

    invoke-virtual {v0, v1, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    .line 627
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMenuKey:[Lcom/ts/can/ford/SyncSKey;

    aget-object v0, v0, v9

    invoke-virtual {v0, v2}, Lcom/ts/can/ford/SyncSKey;->Show(Z)V

    .line 629
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mDlgKey:[Lcom/ts/can/ford/SyncSKey;

    new-instance v1, Lcom/ts/can/ford/SyncSKey;

    add-int/lit8 v3, v9, 0x25

    invoke-direct {v1, p0, v3, p0}, Lcom/ts/can/ford/SyncSKey;-><init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;)V

    aput-object v1, v0, v9

    .line 623
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 634
    :cond_4
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mImgDlgBg:[Lcom/ts/other/CustomImgView;

    new-instance v1, Lcom/ts/other/CustomImgView;

    invoke-direct {v1, p0}, Lcom/ts/other/CustomImgView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v9

    .line 635
    iget-object v0, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mImgDlgBg:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v9

    sget-object v1, Lcom/ts/can/ford/CanFordSyncUIActivity;->mDlgBgArr:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 632
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4
.end method

.method protected SetMenuEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 740
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 745
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 749
    return-void

    .line 742
    :cond_0
    iget-object v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMenuLine:[Lcom/ts/can/ford/SyncLine;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/ts/can/ford/SyncLine;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    .line 740
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 747
    :cond_1
    iget-object v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMenuKey:[Lcom/ts/can/ford/SyncSKey;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/ts/can/ford/SyncSKey;->SetEnable(Z)V

    .line 745
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected ShowRtBtn()V
    .locals 4

    .prologue
    .line 754
    iget-boolean v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mfgShowKb:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 755
    .local v1, "showMedia":Z
    :goto_0
    iget-object v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnUp:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 756
    iget-object v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnDn:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 757
    iget-object v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnLeft:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 758
    iget-object v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnRight:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 759
    iget-object v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnOK:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 760
    iget-object v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnInfo:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 761
    iget-object v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnMenu:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 762
    iget-object v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnDev:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 763
    iget-object v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnPrev:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 764
    iget-object v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnRnd:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 765
    iget-object v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnNext:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 768
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    .line 773
    iget-object v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnNumX:Lcom/ts/other/ParamButton;

    iget-boolean v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mfgShowKb:Z

    invoke-virtual {v2, v3}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 774
    iget-object v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnNumJ:Lcom/ts/other/ParamButton;

    iget-boolean v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mfgShowKb:Z

    invoke-virtual {v2, v3}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 775
    iget-object v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnCall:Lcom/ts/other/ParamButton;

    iget-boolean v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mfgShowKb:Z

    invoke-virtual {v2, v3}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 776
    iget-object v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnHang:Lcom/ts/other/ParamButton;

    iget-boolean v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mfgShowKb:Z

    invoke-virtual {v2, v3}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 778
    return-void

    .line 754
    .end local v0    # "i":I
    .end local v1    # "showMedia":Z
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 770
    .restart local v0    # "i":I
    .restart local v1    # "showMedia":Z
    :cond_1
    iget-object v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mBtnNum:[Lcom/ts/other/ParamButton;

    aget-object v2, v2, v0

    iget-boolean v3, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mfgShowKb:Z

    invoke-virtual {v2, v3}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 768
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public UserAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1199
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/ford/CanFordSyncUIActivity;->ResetData(Z)V

    .line 1200
    sget-boolean v0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIsNeedFinish:Z

    if-eqz v0, :cond_0

    .line 1202
    sput-boolean v1, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIsNeedFinish:Z

    .line 1203
    sput-boolean v1, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIsJump:Z

    .line 1204
    invoke-virtual {p0}, Lcom/ts/can/ford/CanFordSyncUIActivity;->finish()V

    .line 1206
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v8, 0x1f

    const/16 v7, 0x1e

    const/16 v6, 0x1d

    const/16 v5, 0x1c

    const/4 v2, 0x1

    .line 1095
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1096
    .local v0, "id":I
    const-string v1, "CanFordSyncUIActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onClick item  = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    packed-switch v0, :pswitch_data_0

    .line 1185
    :pswitch_0
    const/16 v1, 0x50

    if-lt v0, v1, :cond_0

    .line 1187
    add-int/lit8 v1, v0, -0x50

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->FordSyncCtrl(I)V

    .line 1191
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 1101
    :pswitch_2
    invoke-static {}, Lcom/ts/can/ford/CanFordSyncUIActivity;->MediaClick()V

    goto :goto_0

    .line 1105
    :pswitch_3
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->FordSyncCtrl(I)V

    goto :goto_0

    .line 1109
    :pswitch_4
    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->FordSyncCtrl(I)V

    goto :goto_0

    .line 1113
    :pswitch_5
    iget-boolean v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mfgShowKb:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mfgShowKb:Z

    .line 1114
    invoke-virtual {p0}, Lcom/ts/can/ford/CanFordSyncUIActivity;->ShowRtBtn()V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1113
    goto :goto_1

    .line 1118
    :pswitch_6
    const/16 v1, 0x91

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->FordSyncCtrl(I)V

    goto :goto_0

    .line 1122
    :pswitch_7
    const/16 v1, 0x92

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->FordSyncCtrl(I)V

    goto :goto_0

    .line 1126
    :pswitch_8
    const/16 v1, 0x93

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->FordSyncCtrl(I)V

    goto :goto_0

    .line 1130
    :pswitch_9
    const/16 v1, 0x94

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->FordSyncCtrl(I)V

    goto :goto_0

    .line 1134
    :pswitch_a
    const/16 v1, 0x95

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->FordSyncCtrl(I)V

    goto :goto_0

    .line 1138
    :pswitch_b
    invoke-static {v5}, Lcom/lgb/canmodule/CanJni;->FordSyncCtrl(I)V

    goto :goto_0

    .line 1142
    :pswitch_c
    invoke-static {v6}, Lcom/lgb/canmodule/CanJni;->FordSyncCtrl(I)V

    goto :goto_0

    .line 1146
    :pswitch_d
    invoke-static {v7}, Lcom/lgb/canmodule/CanJni;->FordSyncCtrl(I)V

    goto :goto_0

    .line 1150
    :pswitch_e
    invoke-static {v8}, Lcom/lgb/canmodule/CanJni;->FordSyncCtrl(I)V

    goto :goto_0

    .line 1169
    :pswitch_f
    invoke-static {v5}, Lcom/lgb/canmodule/CanJni;->FordSyncCtrl(I)V

    goto :goto_0

    .line 1173
    :pswitch_10
    invoke-static {v6}, Lcom/lgb/canmodule/CanJni;->FordSyncCtrl(I)V

    goto :goto_0

    .line 1177
    :pswitch_11
    invoke-static {v7}, Lcom/lgb/canmodule/CanJni;->FordSyncCtrl(I)V

    goto :goto_0

    .line 1181
    :pswitch_12
    invoke-static {v8}, Lcom/lgb/canmodule/CanJni;->FordSyncCtrl(I)V

    goto :goto_0

    .line 1097
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 450
    invoke-super {p0, p1}, Lcom/ts/can/ford/CanFordBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 451
    const/16 v0, 0xd

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 453
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/CanFordSyncUIActivity;->setContentView(I)V

    .line 454
    invoke-virtual {p0}, Lcom/ts/can/ford/CanFordSyncUIActivity;->InitUI()V

    .line 463
    :goto_0
    return-void

    .line 459
    :cond_0
    const-string v0, "CanFordSyncUIActivity"

    const-string v1, "-----NOT FORD PROTOCAL-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {p0}, Lcom/ts/can/ford/CanFordSyncUIActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 471
    invoke-super {p0}, Lcom/ts/can/ford/CanFordBaseActivity;->onDestroy()V

    .line 472
    sput-boolean v0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIsJump:Z

    .line 473
    sput-boolean v0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIsNeedFinish:Z

    .line 474
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1279
    move-object v0, p1

    check-cast v0, Lcom/ts/other/ParamButton;

    .line 1280
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0}, Lcom/ts/other/ParamButton;->getIntParam()I

    move-result v1

    add-int/lit8 v1, v1, 0x30

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->FordSyncCtrl(I)V

    .line 1281
    const/4 v1, 0x1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 516
    const-string v0, "CanFordSyncUIActivity"

    const-string v1, "-----on New Intent-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-super {p0, p1}, Lcom/ts/can/ford/CanFordBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 518
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 507
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 508
    invoke-super {p0}, Lcom/ts/can/ford/CanFordBaseActivity;->onPause()V

    .line 509
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIsSyncWin:Z

    .line 510
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 482
    invoke-super {p0}, Lcom/ts/can/ford/CanFordBaseActivity;->onResume()V

    .line 483
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 484
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v2

    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 486
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$SyncVer;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$SyncVer;-><init>()V

    .line 487
    .local v0, "ver":Lcom/lgb/canmodule/CanDataInfo$SyncVer;
    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->FordGetSyncVer(Lcom/lgb/canmodule/CanDataInfo$SyncVer;)V

    .line 489
    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$SyncVer;->Ver:I

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    sput-boolean v2, Lcom/ts/can/ford/CanFordSyncUIActivity;->mVerUS:Z

    .line 490
    sget-boolean v2, Lcom/ts/can/ford/CanFordSyncUIActivity;->mVerUS:Z

    if-eqz v2, :cond_1

    move v1, v4

    .line 491
    .local v1, "verCn":Z
    :goto_1
    iget-object v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mLayoutMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2, v1}, Lcom/ts/can/ford/CanFordSyncUIActivity;->setViewShow(Landroid/view/View;Z)V

    .line 492
    iget-object v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mLayoutDlg:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2, v1}, Lcom/ts/can/ford/CanFordSyncUIActivity;->setViewShow(Landroid/view/View;Z)V

    .line 493
    iget-object v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mLayoutUS:Landroid/widget/RelativeLayout;

    sget-boolean v5, Lcom/ts/can/ford/CanFordSyncUIActivity;->mVerUS:Z

    invoke-virtual {p0, v2, v5}, Lcom/ts/can/ford/CanFordSyncUIActivity;->setViewShow(Landroid/view/View;Z)V

    .line 494
    iget-object v2, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIcoCurSrc:Lcom/ts/other/CustomImgView;

    invoke-virtual {v2, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 495
    invoke-direct {p0, v4}, Lcom/ts/can/ford/CanFordSyncUIActivity;->ResetData(Z)V

    .line 497
    sput-boolean v3, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIsSyncWin:Z

    .line 498
    sput-boolean v4, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIsNeedFinish:Z

    .line 500
    const-string v2, "CanFordSyncUIActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-----Is jump = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/ts/can/ford/CanFordSyncUIActivity;->mIsJump:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-void

    .end local v1    # "verCn":Z
    :cond_0
    move v2, v4

    .line 489
    goto :goto_0

    :cond_1
    move v1, v3

    .line 490
    goto :goto_1
.end method

.method protected testData()V
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    .line 1213
    invoke-static {}, Lcom/ts/can/ford/CanFordSyncUIActivity;->GetTickCount()J

    move-result-wide v2

    .line 1214
    .local v2, "t1":J
    iget-object v6, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mPhoneTimeData:Lcom/lgb/canmodule/CanDataInfo$SyncPhoneTime;

    iget-object v7, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMediaTimeData:Lcom/lgb/canmodule/CanDataInfo$SyncMediaTime;

    iget-object v8, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mMenuInfoData:Lcom/lgb/canmodule/CanDataInfo$SyncMenuInfo;

    iget-object v9, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mWinData:Lcom/lgb/canmodule/CanDataInfo$SyncWin;

    invoke-static {v6, v7, v8, v9}, Lcom/lgb/canmodule/CanJni;->FordGetSyncCnUI(Lcom/lgb/canmodule/CanDataInfo$SyncPhoneTime;Lcom/lgb/canmodule/CanDataInfo$SyncMediaTime;Lcom/lgb/canmodule/CanDataInfo$SyncMenuInfo;Lcom/lgb/canmodule/CanDataInfo$SyncWin;)V

    .line 1215
    invoke-static {}, Lcom/ts/can/ford/CanFordSyncUIActivity;->GetTickCount()J

    move-result-wide v4

    .line 1221
    .local v4, "t2":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v11, :cond_0

    .line 1227
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v11, :cond_1

    .line 1233
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v10, :cond_2

    .line 1239
    const/4 v0, 0x0

    :goto_3
    if-lt v0, v10, :cond_3

    .line 1251
    :goto_4
    iget-object v6, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStrUpData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    iget-object v7, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStrDnData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    iget-object v8, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStrShortData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    invoke-static {v6, v7, v8}, Lcom/lgb/canmodule/CanJni;->FordGetSyncUsUI(Lcom/lgb/canmodule/CanDataInfo$SyncStr;Lcom/lgb/canmodule/CanDataInfo$SyncStr;Lcom/lgb/canmodule/CanDataInfo$SyncStr;)V

    .line 1252
    const-string v6, "CanFordSyncUIActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "StrUp = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStrUpData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    iget-object v8, v8, Lcom/lgb/canmodule/CanDataInfo$SyncStr;->szText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    const-string v6, "CanFordSyncUIActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "StrDn =  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStrDnData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    iget-object v8, v8, Lcom/lgb/canmodule/CanDataInfo$SyncStr;->szText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const-string v6, "CanFordSyncUIActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "StrShort = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mStrShortData:Lcom/lgb/canmodule/CanDataInfo$SyncStr;

    iget-object v8, v8, Lcom/lgb/canmodule/CanDataInfo$SyncStr;->szText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const-string v6, "CanFordSyncUIActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "-----onResume-----, time = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v8, v4, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    return-void

    .line 1223
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mWinData:Lcom/lgb/canmodule/CanDataInfo$SyncWin;

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$SyncWin;->NormalItem:[Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;->szText:[B

    invoke-virtual {p0, v6}, Lcom/ts/can/ford/CanFordSyncUIActivity;->GetUnicodeStr([B)Ljava/lang/String;

    move-result-object v1

    .line 1224
    .local v1, "str":Ljava/lang/String;
    const-string v6, "CanFordSyncUIActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mWinData.NormalItem["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "].szText = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1229
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mWinData:Lcom/lgb/canmodule/CanDataInfo$SyncWin;

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$SyncWin;->DialogItem:[Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;->szText:[B

    invoke-virtual {p0, v6}, Lcom/ts/can/ford/CanFordSyncUIActivity;->GetUnicodeStr([B)Ljava/lang/String;

    move-result-object v1

    .line 1230
    .restart local v1    # "str":Ljava/lang/String;
    const-string v6, "CanFordSyncUIActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mWinData.DialogItem["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "].szText = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1235
    .end local v1    # "str":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mWinData:Lcom/lgb/canmodule/CanDataInfo$SyncWin;

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$SyncWin;->NormalSoftKey:[Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;->szText:[B

    invoke-virtual {p0, v6}, Lcom/ts/can/ford/CanFordSyncUIActivity;->GetUnicodeStr([B)Ljava/lang/String;

    move-result-object v1

    .line 1236
    .restart local v1    # "str":Ljava/lang/String;
    const-string v6, "CanFordSyncUIActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mWinData.NormalSoftKey["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "].szText = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 1241
    .end local v1    # "str":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/ts/can/ford/CanFordSyncUIActivity;->mWinData:Lcom/lgb/canmodule/CanDataInfo$SyncWin;

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$SyncWin;->DialogSoftKey:[Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;->szText:[B

    invoke-virtual {p0, v6}, Lcom/ts/can/ford/CanFordSyncUIActivity;->GetUnicodeStr([B)Ljava/lang/String;

    move-result-object v1

    .line 1242
    .restart local v1    # "str":Ljava/lang/String;
    const-string v6, "CanFordSyncUIActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mWinData.DialogSoftKey["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "].szText = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 1245
    .end local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto/16 :goto_4
.end method
