.class public Lcom/ts/can/ford/CanFordSyncActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanFordSyncActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CanFordSyncActivity"

.field public static mfgAcIconClick:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/ford/CanFordSyncActivity;->mfgAcIconClick:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/can/ford/CanFordSyncActivity;->mfgAcIconClick:Z

    .line 20
    const-string v0, "CanFordSyncActivity"

    const-string v1, "-----onCreate-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 33
    :goto_0
    invoke-virtual {p0}, Lcom/ts/can/ford/CanFordSyncActivity;->finish()V

    .line 38
    return-void

    .line 26
    :pswitch_0
    invoke-static {}, Lcom/ts/can/ford/CanFordSyncUIActivity;->ShowSyncClick()V

    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 45
    const-string v0, "CanFordSyncActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method
