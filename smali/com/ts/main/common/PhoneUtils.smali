.class public Lcom/ts/main/common/PhoneUtils;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static answerCall(Landroid/telephony/TelephonyManager;)V
    .locals 2
    .param p0, "telephony"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 94
    invoke-static {}, Lcom/ts/main/common/KeyTouch;->GetInstance()Lcom/ts/main/common/KeyTouch;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/ts/main/common/KeyTouch;->sendKeyClick(I)V

    .line 95
    return-void
.end method

.method public static getITelephony(Landroid/telephony/TelephonyManager;)Lcom/android/internal/telephony/ITelephony;
    .locals 5
    .param p0, "telephony"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getITelephony"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 26
    .local v0, "getITelephonyMethod":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 27
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ITelephony;

    return-object v1
.end method

.method public static rejectCall(Landroid/telephony/TelephonyManager;)V
    .locals 2
    .param p0, "telephony"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 35
    invoke-static {}, Lcom/ts/main/common/KeyTouch;->GetInstance()Lcom/ts/main/common/KeyTouch;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/ts/main/common/KeyTouch;->sendKeyClick(I)V

    .line 37
    return-void
.end method


# virtual methods
.method public autoAnswerPhone(Landroid/content/Context;Landroid/telephony/TelephonyManager;)V
    .locals 14
    .param p1, "myContext"    # Landroid/content/Context;
    .param p2, "mTelephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 40
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/ts/main/common/PhoneUtils;->getITelephony(Landroid/telephony/TelephonyManager;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 42
    .local v3, "itelephony":Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v3    # "itelephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v12, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .local v2, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/view/KeyEvent;

    const/4 v12, 0x0

    const/16 v13, 0x4f

    invoke-direct {v4, v12, v13}, Landroid/view/KeyEvent;-><init>(II)V

    .line 48
    .local v4, "keyEvent":Landroid/view/KeyEvent;
    const-string v12, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v2, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 49
    const-string v12, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {p1, v2, v12}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 51
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v12, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v4, Landroid/view/KeyEvent;

    .end local v4    # "keyEvent":Landroid/view/KeyEvent;
    const/4 v12, 0x1

    const/16 v13, 0x4f

    invoke-direct {v4, v12, v13}, Landroid/view/KeyEvent;-><init>(II)V

    .line 53
    .restart local v4    # "keyEvent":Landroid/view/KeyEvent;
    const-string v12, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v2, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    const-string v12, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {p1, v2, v12}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 56
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v5, "localIntent1":Landroid/content/Intent;
    const/high16 v12, 0x40000000    # 2.0f

    invoke-virtual {v5, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 58
    const-string v12, "state"

    const/4 v13, 0x1

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    const-string v12, "microphone"

    const/4 v13, 0x1

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    const-string v12, "name"

    const-string v13, "Headset"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v12, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {p1, v5, v12}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 63
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v6, "localIntent2":Landroid/content/Intent;
    new-instance v9, Landroid/view/KeyEvent;

    const/4 v12, 0x0

    .line 65
    const/16 v13, 0x4f

    .line 64
    invoke-direct {v9, v12, v13}, Landroid/view/KeyEvent;-><init>(II)V

    .line 66
    .local v9, "localKeyEvent1":Landroid/view/KeyEvent;
    const-string v12, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v6, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 67
    const-string v12, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {p1, v6, v12}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 69
    new-instance v7, Landroid/content/Intent;

    const-string v12, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v7, "localIntent3":Landroid/content/Intent;
    new-instance v10, Landroid/view/KeyEvent;

    const/4 v12, 0x1

    .line 71
    const/16 v13, 0x4f

    .line 70
    invoke-direct {v10, v12, v13}, Landroid/view/KeyEvent;-><init>(II)V

    .line 72
    .local v10, "localKeyEvent2":Landroid/view/KeyEvent;
    const-string v12, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v7, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 73
    const-string v12, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {p1, v7, v12}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 75
    new-instance v8, Landroid/content/Intent;

    const-string v12, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v8, "localIntent4":Landroid/content/Intent;
    const/high16 v12, 0x40000000    # 2.0f

    invoke-virtual {v8, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    const-string v12, "state"

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    const-string v12, "microphone"

    const/4 v13, 0x1

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    const-string v12, "name"

    const-string v13, "Headset"

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v12, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {p1, v8, v12}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 81
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "keyEvent":Landroid/view/KeyEvent;
    .end local v5    # "localIntent1":Landroid/content/Intent;
    .end local v6    # "localIntent2":Landroid/content/Intent;
    .end local v7    # "localIntent3":Landroid/content/Intent;
    .end local v8    # "localIntent4":Landroid/content/Intent;
    .end local v9    # "localKeyEvent1":Landroid/view/KeyEvent;
    .end local v10    # "localKeyEvent2":Landroid/view/KeyEvent;
    :catch_1
    move-exception v1

    .line 82
    .local v1, "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v11, "meidaButtonIntent":Landroid/content/Intent;
    new-instance v4, Landroid/view/KeyEvent;

    const/4 v12, 0x1

    const/16 v13, 0x4f

    invoke-direct {v4, v12, v13}, Landroid/view/KeyEvent;-><init>(II)V

    .line 85
    .restart local v4    # "keyEvent":Landroid/view/KeyEvent;
    const-string v12, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v11, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 86
    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
