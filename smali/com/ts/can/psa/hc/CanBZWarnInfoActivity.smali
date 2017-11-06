.class public Lcom/ts/can/psa/hc/CanBZWarnInfoActivity;
.super Lcom/ts/can/psa/hc/CanBZLogInfoActivity;
.source "CanBZWarnInfoActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CanBZWarnInfoActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/ts/can/psa/hc/CanBZLogInfoActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/hc/CanBZWarnInfoActivity;->SetLogType(I)V

    .line 17
    return-void
.end method
